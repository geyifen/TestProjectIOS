//
//  TestProjectTestTableVC.m
//  TestProjectIOS
//
//  Created by liwenfan on 2023/10/19.
//

#import "TestProjectTestTableVC.h"

#import "TestProjectCustomerHeader.h"

@interface TestProjectTestTableVC ()

@property (nonatomic, strong) TestProjectViewModelTableView *tableView;

@end

@implementation TestProjectTestTableVC

- (void)dealloc {
    [self.getScrollView removeObserver:self forKeyPath:@"contentSize"];
    [[NSNotificationCenter defaultCenter] removeObserver:self];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    NSKeyValueObservingOptions options = NSKeyValueObservingOptionNew | NSKeyValueObservingOptionOld;
    [self.getScrollView addObserver:self forKeyPath:@"contentSize" options:options context:nil];
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(resetScrollViewOffset) name:TestProjectChildScrollViewOffsetResetNotification object:nil];

    dispatch_async(dispatch_get_global_queue(0, 0), ^{
        NSMutableArray *dataSourceMutArr = [NSMutableArray array];
        for (NSInteger i = 0; i < 20; i++) {
            TestProjectTableViewModel *tableModel = [[TestProjectTableViewModel alloc] init];
            tableModel.title = [NSString stringWithFormat:@"test_title_%ld", i];
            [tableModel calculDataViewHeight:nil];
            [dataSourceMutArr addObject:tableModel];
        }
        
        dispatch_sync(dispatch_get_main_queue(), ^{
            self.tableView.dataSourceArray = dataSourceMutArr;
            [self.tableView reloadData];
        });
    });
}

- (void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary *)change context:(void *)context {
    if (![keyPath isEqualToString:@"contentSize"]) {
        return;
    }
    CGSize newContentSize = [change[@"new"] CGSizeValue];
    CGSize oldContentSize = [change[@"old"] CGSizeValue];
    if (oldContentSize.height != newContentSize.height && self.contentSizeChange) {
        self.contentSizeChange(newContentSize);
    }
}

- (void)resetScrollViewOffset {
    [self getScrollView].contentOffset = CGPointZero;
}

- (UIScrollView *)getScrollView {
    return self.tableView;
}

- (TestProjectViewModelTableView *)tableView {
    if (!_tableView) {
        _tableView = [[TestProjectViewModelTableView alloc] initWithStyleGrouped];
        _tableView.scrollEnabled = NO;
        [self.view addSubview:_tableView];
        [_tableView testproject_makeConstraints:^(TestProjectViewConstrainMake * _Nonnull make) {
            make.top.bottom.leading.trainling.equal(self.view);
        }];
    }
    return _tableView;
}

@end
