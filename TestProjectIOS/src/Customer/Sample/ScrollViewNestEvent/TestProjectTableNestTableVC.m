//
//  TestProjectTableNestTableVC.m
//  TestProjectIOS
//
//  Created by liwenfan on 2023/9/14.
//

#import "TestProjectTableNestTableVC.h"

#import "TestProjectCustomerHeader.h"
#import "TestProjectTestTableFooterView.h"

@interface TestProjectScrollViewModel : NSObject

@property (nonatomic, assign) CGPoint contentOffset;

@end

@implementation TestProjectScrollViewModel

@end

@interface TestProjectNestScrollView : UIScrollView <UIGestureRecognizerDelegate>

//
@property (nonatomic, weak) UIView *tableFooterView;
//手指按下的位置
@property (nonatomic, assign) CGPoint startPoint;
//childVC页面滑动的手势
@property (nonatomic, weak) UIGestureRecognizer *otherGesture;
//自己的滚动手势
@property (nonatomic, weak) UIGestureRecognizer *gesture;
@property (nonatomic, strong) UITouch *touch;

@end

@implementation TestProjectNestScrollView

- (BOOL)gestureRecognizer:(UIGestureRecognizer *)gestureRecognizer shouldRecognizeSimultaneouslyWithGestureRecognizer:(UIGestureRecognizer *)otherGestureRecognizer {
    if (otherGestureRecognizer.view.superview.superview == self.tableFooterView && gestureRecognizer.view == self) {
        //瀑布流的手势和自己的手势有冲突时的解决
        //在TestProjectTestTableFooterView上的位置
        CGPoint endPoint = [otherGestureRecognizer locationInView:otherGestureRecognizer.view.superview.superview];
        self.otherGesture = otherGestureRecognizer;
        self.gesture = gestureRecognizer;
        if (fabs(self.startPoint.x - endPoint.x) > fabs(self.startPoint.y - endPoint.y)) {
            //横向移动的位置大于纵向移动的位置，则使用瀑布流的手势，禁用自己的手势
            self.gesture.enabled = NO;
        } else {
            //使用自己的手势，禁用瀑布流的手势
            self.otherGesture.enabled = NO;
        }
        return NO;
    }
    return NO;
}

- (BOOL)gestureRecognizer:(UIGestureRecognizer *)gestureRecognizer shouldReceiveTouch:(nonnull UITouch *)touch {
    //在TestProjectTestTableFooterView上的位置
    self.startPoint = [touch locationInView:touch.view.superview.superview.superview.superview.superview.superview];
    self.touch = touch;
    return YES;
}

- (UIView *)hitTest:(CGPoint)point withEvent:(UIEvent *)event {
    self.gesture.enabled = YES;
    self.otherGesture.enabled = YES;
    return [super hitTest:point withEvent:event];
}

@end

@interface TestProjectTableNestTableVC () <UIScrollViewDelegate, TestProjectScrollTabControllerProtocol>

@property (nonatomic, strong) TestProjectViewModelTableView *tableView;
@property (nonatomic, strong) TestProjectNestScrollView *scrollView;
@property (nonatomic, strong) UIView *scrollContentView;
@property (nonatomic, strong) TestProjectTestTableFooterView *footerView;
@property (nonatomic, assign) BOOL footerViewIsToTop;
@property (nonatomic, weak) TestProjectTestTableVC *currentTestTableVC;
//保存每个瀑布流tab的页面contentOffset的数据，当切换完后设置回当前的contentOffset
@property (nonatomic, strong) NSMutableDictionary *scrollViewPositionDic;

@end

@implementation TestProjectTableNestTableVC

- (BOOL)enableLog {
    return NO;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    dispatch_async(dispatch_get_global_queue(0, 0), ^{
        NSMutableArray *dataSourceMutArr = [NSMutableArray array];
        for (NSInteger i = 0; i < 20; i++) {
            TestProjectTableViewModel *tableModel = [[TestProjectTableViewModel alloc] init];
            tableModel.title = [NSString stringWithFormat:@"title_%ld", i];
            [tableModel calculDataViewHeight];
            [dataSourceMutArr addObject:tableModel];
        }
        
        dispatch_sync(dispatch_get_main_queue(), ^{
            self.tableView.dataSourceArray = dataSourceMutArr;
            self.tableView.tableFooterView = self.footerView;
            self.scrollView.tableFooterView = self.footerView;
            self.footerView.frame = self.view.frame;
            [self.footerView updateData];
            [self.tableView reloadData];
        });
    });
}

- (void)scrollViewDidScroll:(UIScrollView *)scrollView {
    CGPoint contentOffset = scrollView.contentOffset;
    CGFloat offsetY = scrollView.contentOffset.y;
    CGFloat limitY = self.footerView.frame.origin.y;
    NSLog(@"offsetY--%f, limitY--%f", offsetY, limitY);

    if (offsetY >= limitY) {
        if (!self.footerViewIsToTop) {
            self.tableView.contentOffset = CGPointMake(0, limitY);
            self.footerViewIsToTop = YES;
        }
        [self.currentTestTableVC.getScrollView setContentOffset:CGPointMake(0, offsetY - limitY)];
    } else {
        if (self.footerViewIsToTop) {
            self.footerViewIsToTop = NO;
            //发通知整个瀑布流的contentOffset设置为0
            [[NSNotificationCenter defaultCenter] postNotificationName:TestProjectChildScrollViewOffsetResetNotification object:nil];
            for (TestProjectScrollViewModel *scrollViewModel in self.scrollViewPositionDic.allValues) {
                scrollViewModel.contentOffset = CGPointZero;
            }
        }
        [self.tableView setContentOffset:contentOffset];
    }
}

#pragma mark - TestProjectScrollTabControllerProtocol
- (TestProjectBaseVC *)didTapItemViewWithController:(TestProjectScrollTabController *)scrollTabController
                                            atIndex:(NSInteger)atIndex
                                          viewModel:(id)viewModel {
    TestProjectTestTableVC *vc = [[TestProjectTestTableVC alloc] init];
    WS(wSelf);
    vc.contentSizeChange = ^(CGSize changeSize) {
        [wSelf resetScrollViewContentSize];
    };
    return vc;
}

- (void)didTapItemViewWithController:(TestProjectScrollTabController *)scrollTabController
                             childVC:(TestProjectTestTableVC *)childVC
                             atIndex:(TestProjectTableViewParams *)params {
    if (childVC == self.currentTestTableVC) {
        return;
    }
    NSString *key;
    if (self.currentTestTableVC) {
        //切换tab后保存切换之前的tab的contentOffset
        key = [NSString stringWithFormat:@"%p", self.currentTestTableVC];
        TestProjectScrollViewModel *viewModel = [self.scrollViewPositionDic objectForKey:key];
        if (!viewModel) {
            viewModel = [[TestProjectScrollViewModel alloc] init];
            [self.scrollViewPositionDic setObject:viewModel forKey:key];
        }
        viewModel.contentOffset = self.currentTestTableVC.getScrollView.contentOffset;
    }
    self.currentTestTableVC = childVC;
    [self resetScrollViewContentSize];
    if (self.footerViewIsToTop) {
        key = [NSString stringWithFormat:@"%p", self.currentTestTableVC];
        TestProjectScrollViewModel *viewModel = [self.scrollViewPositionDic objectForKey:key];
        CGPoint offset = CGPointZero;
        if (viewModel) {
            offset = viewModel.contentOffset;
        }
        //由于更新了contentSize，所以要更新切换后的tab的VC的contentOffset
        [self.scrollView setContentOffset:CGPointMake(0, ceil(offset.y + self.footerView.frame.origin.y))];
    }
}

//重新设置UIScrollView的contentSize
- (void)resetScrollViewContentSize {
    CGSize tableViewContentSize = self.tableView.contentSize;
    CGFloat tableFooterViewHeight = self.tableView.tableFooterView.frame.size.height;
    CGFloat footerViewContentHeight = self.currentTestTableVC.getScrollView.contentSize.height + 70;
    CGFloat subContentSizeHeight = tableFooterViewHeight > footerViewContentHeight ? tableFooterViewHeight : footerViewContentHeight;
    tableViewContentSize.height = tableViewContentSize.height - tableFooterViewHeight + subContentSizeHeight;

    self.scrollView.contentSize = tableViewContentSize;
    [self.scrollContentView testproject_updateConstraints:^(TestProjectViewConstrainMake * _Nonnull make) {
        make.height.equal(@(tableViewContentSize.height));
    }];
}

- (TestProjectViewModelTableView *)tableView {
    if (!_tableView) {
        _tableView = [[TestProjectViewModelTableView alloc] initWithStyleGrouped];
        _tableView.scrollEnabled = NO;
        [self.scrollContentView addSubview:_tableView];
        [_tableView testproject_makeConstraints:^(TestProjectViewConstrainMake * _Nonnull make) {
            make.top.bottom.leading.trainling.equal(self.view);
        }];
    }
    return _tableView;
}

- (UIView *)scrollContentView {
    if (!_scrollContentView) {
        _scrollContentView = [[UIView alloc] init];
        _scrollContentView.backgroundColor = [UIColor redColor];
        [self.scrollView addSubview:_scrollContentView];
        [_scrollContentView testproject_makeConstraints:^(TestProjectViewConstrainMake * _Nonnull make) {
            make.top.leading.trainling.equal(self.view);
            make.height.equal(@(self.view.frame.size.height));
        }];
    }
    return _scrollContentView;
}

- (TestProjectNestScrollView *)scrollView {
    if (!_scrollView) {
        _scrollView = [[TestProjectNestScrollView alloc] init];
        _scrollView.delegate = self;
        [self.view addSubview:_scrollView];
        [_scrollView testproject_makeConstraints:^(TestProjectViewConstrainMake * _Nonnull make) {
            make.top.leading.trainling.bottom.equal(self.view);
        }];
    }
    return _scrollView;
}

- (TestProjectTestTableFooterView *)footerView {
    if (!_footerView) {
        _footerView = [[TestProjectTestTableFooterView alloc] init];
        _footerView.tabScrollController.delegate = self;
    }
    return _footerView;
}

- (NSMutableDictionary *)scrollViewPositionDic {
    if (!_scrollViewPositionDic) {
        _scrollViewPositionDic = [NSMutableDictionary dictionary];
    }
    return _scrollViewPositionDic;
}

@end
