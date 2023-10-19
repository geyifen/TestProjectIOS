//
//  TestProjectNestScrollTabController.m
//  TestProjectIOS
//
//  Created by liwenfan on 2023/2/8.
//

#import "TestProjectNestScrollTabController.h"

#import "TestProjectScrollTabController.h"
#import "TestProjectObjectController.h"

@interface TestProjectNestScrollTabController ()<TestProjectScrollTabControllerProtocol, TestProjectNestScrollTabChildControllerProtocol>

@property (nonatomic, assign) BOOL isNestVCType;
@property (nonatomic, strong) NSArray<TestProjectViewModelTab *> *dataItems;
@property (nonatomic, strong) TestProjectScrollTabController *scrollTabController;
@property (nonatomic, assign) TestProjectTabType tabType;

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
    _scrollTabController = [[TestProjectScrollTabController alloc] initWithTabType:self.tabType viewModelList:(NSArray<TestProjectTabViewModelProtocol> *)self.dataItems];
    _scrollTabController.atIndex = self.atIndex;
    _scrollTabController.pageTitle = self.pageTitle;
    _scrollTabController.delegate = self;
    _scrollTabController.isNestChildVC = self.isNestVCType;
    _scrollTabController.isNeedRelationNestChildVCScroll = YES;
    [self addChildViewController:_scrollTabController];
    [self.view addSubview:_scrollTabController.view];
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

@end
