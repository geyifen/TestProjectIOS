//
//  TestProjectScrollTabController.h
//  TestProjectIOS
//
//  Created by zjrcumac on 2023/2/6.
//

#import "TestProjectVC.h"

#import "TestProjectTabView.h"

NS_ASSUME_NONNULL_BEGIN

@class TestProjectScrollTabController;

@protocol TestProjectScrollTabControllerProtocol <NSObject>

- (TestProjectVC *)didTapItemViewWithController:(TestProjectScrollTabController *)scrollTabController
                                        atIndex:(NSInteger)atIndex
                                      viewModel:(id)viewModel;

@end

@protocol TestProjectNestScrollTabChildControllerProtocol <NSObject>
/**
 嵌套childVC的containerView的宽度
 */
- (CGFloat)nestChildVCContainerViewWidth;
/**
 请根据gesState判断当前页面手势滚动的状态，不要根据pan.state判断
 如果当前页面滑动的点超出父容器，则返回NO，其它一律返回YES
 **/
- (BOOL)handlePanGestureEvent:(UIPanGestureRecognizer *)pan gesState:(UIGestureRecognizerState)gesState;

@end

@interface TestProjectScrollTabController : TestProjectVC

@property (nonatomic, weak) id<TestProjectScrollTabControllerProtocol> delegate;
//是否要关联嵌套ChildVC滚动
@property (nonatomic, assign) BOOL isNeedRelationNestChildVCScroll;
//是否是嵌套的ChildVC, 嵌套的ChildVC没有手势，通过调用者的移动距离进行移动
@property (nonatomic, assign) BOOL isNestChildVC;
/**
 嵌套childVC的containerView的宽度
 */
- (CGFloat)nestChildVCContainerViewWidth;
/**
 请根据gesState判断当前页面手势滚动的状态，不要根据pan.state判断
 如果当前页面滑动的点超出父容器，则返回NO，其它一律返回YES
 **/
- (BOOL)handlePanGestureEvent:(UIPanGestureRecognizer *)pan gesState:(UIGestureRecognizerState)gesState;

- (instancetype)initWithTabType:(TestProjectTabType)tabType
                  viewModelList:(NSArray<TestProjectTabViewModelProtocol> *)viewModelList;

@end

NS_ASSUME_NONNULL_END
