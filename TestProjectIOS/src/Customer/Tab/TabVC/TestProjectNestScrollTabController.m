//
//  TestProjectNestScrollTabController.m
//  TestProjectIOS
//
//  Created by liwenfan on 2023/2/8.
//

#import "TestProjectNestScrollTabController.h"

#import "TestProjectScrollTabController.h"
#import "TestProjectObjectController.h"
#import "TestProjectSectionViewTab.h"
#import "TestProjectViewModelTableView.h"
#import "TestProjectCustomerHeader.h"
#import "TestProjectIgnoreWarningDefmacro.h"
#import "TestProjectPreviewTableViewModel.h"

@interface TestProjectNestScrollTabController ()<TestProjectScrollTabControllerProtocol, TestProjectNestScrollTabChildControllerProtocol, TestProjectSectionViewTabDelegate, TestProjectPreviewProtocol, TestProjectViewModelTableViewProtocol>

@property (nonatomic, assign) BOOL isNestVCType;
@property (nonatomic, strong) NSArray<TestProjectViewModelTab *> *dataItems;
@property (nonatomic, strong) TestProjectScrollTabController *scrollTabController;
@property (nonatomic, assign) TestProjectTabType tabType;

@property (nonatomic, strong) TestProjectViewModelTableView *tableView;
@property (nonatomic, assign) TestProjectPreviewState tabViewState;
@property (nonatomic, weak) id<TestProjectPreviewProtocol> previewTarget;

@end

@implementation TestProjectNestScrollTabController

- (instancetype)initWithTabType:(TestProjectTabType)tabType viewModelList:(NSMutableArray *)viewModelList {
    if (self = [super init]) {
        self.tabType = tabType;
        self.dataItems = viewModelList;
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    _scrollTabController = [[TestProjectScrollTabController alloc] initWithTabType:self.tabType];
    _scrollTabController.atIndex = self.atIndex;
    _scrollTabController.pageTitle = self.pageTitle;
    _scrollTabController.delegate = self;
    _scrollTabController.customerDelegate = self;
    _scrollTabController.isNestChildVC = self.isNestVCType;
    _scrollTabController.isNeedRelationNestChildVCScroll = YES;
    [_scrollTabController resetData:(NSArray<TestProjectTabViewModelProtocol> *)self.dataItems];
    [self addChildViewController:_scrollTabController];
    [self.view addSubview:_scrollTabController.view];
}

#pragma mark - TestProjectPreviewProtocol
- (TestProjectPreviewState)optionPreviewForExpand:(TestProjectSectionViewTab *)previewTarget {
    self.previewTarget = previewTarget;
    TestProjectPreviewState tabViewState = self.tabViewState;
    if (!_tableView) {
        dispatch_async(dispatch_get_global_queue(0, 0), ^{
            NSMutableArray *mutArr = [NSMutableArray array];
            for (NSInteger i = 0; i < previewTarget.viewModel.itemChilds.count; i++) {
                TestProjectViewModelTab *vmTab = [previewTarget.viewModel.itemChilds objectAtIndex:i];
                TestProjectPreviewTableViewModel *viewModel = [[TestProjectPreviewTableViewModel alloc] init];
                viewModel.title = vmTab.title;
                viewModel.abstract = vmTab.abstract;
                [viewModel calculDataViewHeight:nil];
                [mutArr addObject:viewModel];
            }
            dispatch_async(dispatch_get_main_queue(), ^{
                [self.tableView testproject_makeConstraints:^(TestProjectViewConstrainMake * _Nonnull make) {
                    make.top.leading.trainling.equal(self.view);
                    make.height.equal(@0);
                }];
                [self.view layoutIfNeeded];

                self.tableView.dataSourceArray = mutArr;
                [self expandTableViewState];
                [self.tableView reloadData];
            });
        });
    } else {
        [self expandTableViewState];
    }
    return tabViewState;
}

#pragma mark - TestProjectSectionViewTabDelegate
- (TestProjectPreviewState)didTapSectionViewTabForExpand:(TestProjectSectionViewTab *)sectionViewTab {
    CancelIncompatiblePointerTypes(
                                   TestProjectBaseVC<TestProjectPreviewProtocol> *vc = [self.scrollTabController getChildVCWithViewModel:sectionViewTab.viewModel];
                                   if ([vc respondsToSelector:@selector(optionPreviewForExpand:)]) {
                                       return [vc optionPreviewForExpand:sectionViewTab];
                                   }
                                   )
    return TestProjectPreviewStateOfAnimated;
}

- (void)expandTableViewState {
    if (self.tabViewState == TestProjectPreviewStateOfAnimated) {
        return;
    }
    WS(wSelf);
    if (self.tabViewState == TestProjectPreviewStateOfNO) {
        self.tabViewState = TestProjectPreviewStateOfAnimated;
        [UIView animateWithDuration:0.25 animations:^{
            [wSelf.tableView testproject_updateConstraints:^(TestProjectViewConstrainMake * _Nonnull make) {
                make.height.equal(@(wSelf.view.viewHeight));
            }];
            [wSelf.view layoutIfNeeded];
        } completion:^(BOOL finished) {
            wSelf.tabViewState = TestProjectPreviewStateOfYES;
        }];
    } else {
        self.tabViewState = TestProjectPreviewStateOfAnimated;
        [UIView animateWithDuration:0.25 animations:^{
            [wSelf.tableView testproject_updateConstraints:^(TestProjectViewConstrainMake * _Nonnull make) {
                make.height.equal(@0);
            }];
            [wSelf.view layoutIfNeeded];
        } completion:^(BOOL finished) {
            wSelf.tabViewState = TestProjectPreviewStateOfNO;
        }];
    }
}

#pragma mark - TestProjectScrollTabControllerProtocol
- (TestProjectBaseVC *)didTapItemViewWithController:(TestProjectScrollTabController *)scrollTabController
                                            atIndex:(NSInteger)atIndex
                                          viewModel:(TestProjectViewModelTab *)viewModel {
    if (viewModel.itemChilds.count > 0) {
        TestProjectNestScrollTabController *vc = [[TestProjectNestScrollTabController alloc] initWithTabType:viewModel.tabType viewModelList:viewModel.itemChilds];
        vc.pageTitle = viewModel.title;
        vc.atIndex = viewModel.atIndex;
        if (self.tabType == TestProjectTab_EqualDivede) {
            vc.isNestVCType = NO;
        } else {
            vc.isNestVCType = YES;
        }
        return vc;
    } else {
        TestProjectObjectController *vc = [[TestProjectObjectController alloc] initWithTabViewModel:viewModel];
        return vc;
    }
 }

#pragma mark - TestProjectNestScrollTabChildControllerProtocol
- (CGFloat)nestChildVCContainerViewWidth {
    return [self.scrollTabController nestChildVCContainerViewWidth];
}

- (BOOL)handlePanGestureEvent:(UIPanGestureRecognizer *)pan gesState:(UIGestureRecognizerState)gesState moveX:(CGFloat)moveX {
    return [self.scrollTabController handlePanGestureEvent:pan gesState:gesState moveX:moveX];
}

#pragma mark - TestProjectViewModelTableViewProtocol
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath viewModel:(id)viewModel {
    [self expandTableViewState];
    [self.scrollTabController scrollToIndex:indexPath.row];
    [self.previewTarget didSelectPreviewItem:viewModel];
}

- (TestProjectViewModelTableView *)tableView {
    if (!_tableView) {
        _tableView = [[TestProjectViewModelTableView alloc] initWithStyleGrouped];
        _tableView.tableViewDelegate = self;
        [self.view addSubview:_tableView];
    }
    return _tableView;
}

@end
