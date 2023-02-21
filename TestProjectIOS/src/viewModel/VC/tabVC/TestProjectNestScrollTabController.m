//
//  TestProjectNestScrollTabController.m
//  TestProjectIOS
//
//  Created by zjrcumac on 2023/2/8.
//

#import "TestProjectNestScrollTabController.h"

#import "TestProjectScrollTabController.h"
#import "TestProjectObjectController.h"

@interface TestProjectNestScrollTabController ()<TestProjectScrollTabControllerProtocol, TestProjectNestScrollTabChildControllerProtocol>

@property (nonatomic, assign) BOOL isNestVCType;
@property (nonatomic, strong) NSMutableArray<TestProjectTabViewModel *> *dataItems;
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
    _scrollTabController = [[TestProjectScrollTabController alloc] initWithTabType:self.tabType viewModelList:self.dataItems];
    _scrollTabController.delegate = self;
    _scrollTabController.isNestChildVC = self.isNestVCType;
    _scrollTabController.isNeedRelationNestChildVCScroll = !self.isNestVCType;
    [self addChildViewController:_scrollTabController];
    [self.view addSubview:_scrollTabController.view];
}

#pragma mark - TestProjectScrollTabControllerProtocol
- (TestProjectVC *)didTapItemViewWithController:(TestProjectScrollTabController *)scrollTabController
                                        atIndex:(NSInteger)atIndex
                                      viewModel:(TestProjectTabViewModel *)viewModel {
    if (viewModel.childItems.count > 0) {
        TestProjectNestScrollTabController *vc = [[TestProjectNestScrollTabController alloc] initWithTabType:viewModel.tabType viewModelList:viewModel.childItems];
        vc.isNestVCType = YES;
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

- (BOOL)handlePanGestureEvent:(UIPanGestureRecognizer *)pan gesState:(UIGestureRecognizerState)gesState {
    return [self.scrollTabController handlePanGestureEvent:pan gesState:gesState];
}

@end
