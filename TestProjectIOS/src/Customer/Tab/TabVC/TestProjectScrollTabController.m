//
//  TestProjectScrollTabController.m
//  TestProjectIOS
//
//  Created by liwenfan on 2023/2/6.
//

#import "TestProjectScrollTabController.h"

#import "TestProjectViewModelTab.h"
#import "TestProjectCategoryHeader.h"
#import "TestProjectConfig.h"

@interface TestProjectScrollTabController () <TestProjectTabViewProtocol, TestProjectNestScrollTabChildControllerProtocol>

@property (nonatomic, strong) TestProjectViewTab *tabView;
@property (nonatomic, strong) NSMutableDictionary *vcMutDic;
@property (nonatomic, assign) TestProjectTabType tabType;
@property (nonatomic, strong) NSArray<TestProjectTabViewModelProtocol> *viewModelList;
@property (nonatomic, strong) UIView *containerView;

@property (nonatomic, strong) UIPanGestureRecognizer *panGes;
@property (nonatomic, assign) CGFloat selfViewWidth;
@property (nonatomic, assign) NSInteger lastMoveAtIndex;
@property (nonatomic, assign) NSInteger currentMoveAtIndex;

@end

@implementation TestProjectScrollTabController {
    UIViewController<TestProjectNestScrollTabChildControllerProtocol> *_nestScrollChildVC;
    UIGestureRecognizerState _nestChildVCGesState;
    CGFloat _nestChildVCContainerViewWidth;
    CGFloat _nestChildVCViewWidth;
}

- (instancetype)initWithTabType:(TestProjectTabType)tabType {
    if (self = [super init]) {
        self.tabType = tabType;
    }
    return self;
}

- (BOOL)enableLog {
    return NO;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.clipsToBounds = YES;
    self.selfViewWidth = self.view.viewWidth;
}

- (void)setCustomerDelegate:(id)customerDelegate {
    _customerDelegate = customerDelegate;
    self.tabView.viewTabItemDelegate = customerDelegate;
}

- (void)resetData:(NSArray<TestProjectTabViewModelProtocol> *)viewModelList {
    self.viewModelList = viewModelList;
    [self.tabView resetData:self.viewModelList atIndex:self.atIndex];
}

- (UIViewController *)getChildVCWithViewModel:(id)viewModel {
    NSString *key = [self vcKeyWithViewModel:viewModel];
    TestProjectBaseVC *vc = [self.vcMutDic objectForKey:key];
    return vc;
}

- (NSString *)vcKeyWithViewModel:(id)viewModel {
    return [NSString stringWithFormat:@"key_%@", viewModel];
}

- (TestProjectBaseVC *)addChildControllerAtIndex:(NSInteger)atIndex {
    if (atIndex < 0 || atIndex >= self.viewModelList.count) {
        return nil;
    }
    return [self addChildControllerAtIndex:atIndex viewModel:[self.viewModelList objectAtIndex:atIndex]];
}

- (TestProjectBaseVC *)addChildControllerAtIndex:(NSInteger)atIndex viewModel:(id)viewModel {
    if (atIndex < 0 || atIndex >= self.viewModelList.count) {
        return nil;
    }
    NSString *key = [self vcKeyWithViewModel:viewModel];
    TestProjectBaseVC *vc = [self.vcMutDic objectForKey:key];
    if (!vc) {
        if (self.delegate && [self.delegate respondsToSelector:@selector(didTapItemViewWithController:atIndex:viewModel:)]) {
            vc = [self.delegate didTapItemViewWithController:self atIndex:atIndex viewModel:viewModel];
        } else {
            vc = [[TestProjectBaseVC alloc] init];
        }
        [self addChildViewController:vc];
        [self.containerView addSubview:vc.view];
        CGFloat viewWidth = self.view.viewWidth;
        [vc.view testproject_makeConstraints:^(TestProjectViewConstrainMake * _Nonnull make) {
            make.top.bottom.equal(self.containerView);
            make.leading.equal(self.containerView).offset(atIndex * viewWidth);
            make.width.equal(@(viewWidth));
        }];
        // 用于页面初始化的时候做动画的时候更新约束
//        [self.view layoutIfNeeded];

        [self.vcMutDic setObject:vc forKey:key];
    }
    return vc;
}

- (void)setContainerViewLeading:(CGFloat)leadOffset animated:(BOOL)animated completed:(void(^)(void))completed {
    if (animated) {
        [UIView animateWithDuration:0.25 animations:^{
            [self.containerView testproject_updateConstraints:^(TestProjectViewConstrainMake * _Nonnull make) {
                make.leading.equal(self.view).offset(leadOffset);
            }];
            [self.view layoutIfNeeded];
            [self.view setNeedsLayout];
        } completion:^(BOOL finished) {
            if (finished && completed) {
                completed();
            }
        }];
    } else {
        [self.containerView testproject_updateConstraints:^(TestProjectViewConstrainMake * _Nonnull make) {
            make.leading.equal(self.view).offset(leadOffset);
        }];
    }
}

- (void)didPanGesEvent:(UIPanGestureRecognizer *)pan {
    UIView *panView = pan.view;
    CGFloat movingX = [pan translationInView:panView].x;
    [self handlePanGestureEvent:pan gesState:pan.state moveX:movingX];
}

- (BOOL)handlePanGestureEvent:(UIPanGestureRecognizer *)pan gesState:(UIGestureRecognizerState)gesState moveX:(CGFloat)moveX {
    CGFloat newOriginX = self.containerView.viewX;
    
    CGFloat afterMoveOriginX;
    CGFloat afterMoveCenterX;
    NSInteger afterMoveAtIndex = self.tabView.currentIndex;
    CGFloat afterMoveViewOriginXWidth;
    CGFloat moveCenterXOffset = 0;
    CGFloat movingX = moveX;

    switch (gesState) {
        case UIGestureRecognizerStateBegan: {
            NSInteger tabIndex = self.tabView.currentIndex;
            //加载左边的ChildVC
            [self addChildControllerAtIndex:tabIndex - 1];
            //加载右边的ChildVC
            [self addChildControllerAtIndex:tabIndex + 1];
            self.lastMoveAtIndex = tabIndex;
            self.currentMoveAtIndex = tabIndex;
            [self.tabView moveByCallerGesState:gesState callerViewWidth:self.selfViewWidth moveCenterXOffset:moveCenterXOffset moveAtIndex:afterMoveAtIndex];
            _nestChildVCGesState = UIGestureRecognizerStateEnded;
            if (self.isNeedRelationNestChildVCScroll) {
                //判断当前页面是否有嵌套滚动的vc
                UIViewController *childVC = [self addChildControllerAtIndex:tabIndex];
                if ([childVC conformsToProtocol:@protocol(TestProjectNestScrollTabChildControllerProtocol)]) {
                    UIViewController<TestProjectNestScrollTabChildControllerProtocol> *nestChildVC = (UIViewController<TestProjectNestScrollTabChildControllerProtocol> *)childVC;
                    //获取childVC的containerView的宽度
                    CGFloat nestChildVCViewWidth = [nestChildVC nestChildVCContainerViewWidth];
                    if (nestChildVCViewWidth > self.selfViewWidth) {
                        //childVC的containerView的宽度大于父容器的宽度才执行
                        _nestScrollChildVC = nestChildVC;
                        _nestChildVCViewWidth = nestChildVC.view.viewWidth;
                        _nestChildVCGesState = UIGestureRecognizerStateBegan;
                        //childVC执行Began手势
                        [_nestScrollChildVC handlePanGestureEvent:pan gesState:UIGestureRecognizerStateBegan moveX:movingX];
                        if ([_nestScrollChildVC respondsToSelector:@selector(pageTitle)]) {
                            NSLog(@"tabView===>begin pageTitle:%@", [_nestScrollChildVC performSelector:@selector(pageTitle)]);
                        }
                    }
                }
            }
        } break;
        case UIGestureRecognizerStateChanged: {
            if (_nestChildVCGesState == UIGestureRecognizerStateBegan) {
                _nestChildVCGesState = UIGestureRecognizerStateChanged;
            }
            if (_nestChildVCGesState == UIGestureRecognizerStateChanged) {
                //childVC执行Changed手势
                BOOL isNoBeyondFatherFrame = [_nestScrollChildVC handlePanGestureEvent:pan gesState:UIGestureRecognizerStateChanged moveX:movingX];
                if (isNoBeyondFatherFrame) {
                    //移动后的点没有超过父容器的宽度
                    if (self.panGes) {
                        [self.panGes setTranslation:CGPointZero inView:self.panGes.view];
                    }
                    NSLog(@"tabView===>Changed pageTitle:%@ 超过父容器的宽度了", self.pageTitle);
                    return YES;
                } else {
                    //移动后的点超过父容器的宽度，结束childVC的手势，执行父VC的Changed手势
                    _nestChildVCGesState = UIGestureRecognizerStateEnded;
                    //childVC执行Ended手势
                    [_nestScrollChildVC handlePanGestureEvent:pan gesState:UIGestureRecognizerStateEnded moveX:movingX];
                }
            }
            CGFloat containerViewWidth = self.containerView.viewWidth;
            if (containerViewWidth <= self.selfViewWidth) {
                NSLog(@"tabView===>Changed pageTitle:%@ 父的容器不足够滑动", self.pageTitle);
                return NO;
            }

            CGFloat orininX = self.containerView.viewX;
            newOriginX = orininX + movingX;
            if (self.panGes) {
                [self.panGes setTranslation:CGPointZero inView:self.panGes.view];
            }
            if (newOriginX == orininX) {
                NSLog(@"tabView===>Changed pageTitle:%@ originX没有改变", self.pageTitle);
                return YES;
            }
            BOOL isNoBeyondFatherFrame = YES;
            CGFloat diffWidth = containerViewWidth - self.selfViewWidth;
            if (newOriginX >= 0) {
                //将要超过superView左边的距离
                newOriginX = 0;
                isNoBeyondFatherFrame = NO;
            } else if (newOriginX <= -diffWidth) {
                //将要超过superView右边的距离
                newOriginX = -diffWidth;
                isNoBeyondFatherFrame = NO;
            }
            //移动之后的containerViewX
            afterMoveOriginX = newOriginX;
            //移动之后的containerViewX在屏幕中心的X
            afterMoveCenterX = self.selfViewWidth / 2.0 - afterMoveOriginX;
            //移动之后的屏幕中心在第几个view的范围内
            afterMoveAtIndex = (NSInteger)(afterMoveCenterX / self.selfViewWidth);
            //移动之后view的X
            afterMoveViewOriginXWidth = afterMoveAtIndex * self.selfViewWidth;
            //移动之后view的中心距离屏幕中心的距离，为正则是在屏幕的右边，为负则是在屏幕的左边
            moveCenterXOffset = afterMoveViewOriginXWidth + afterMoveOriginX;
            if (afterMoveAtIndex != self.currentMoveAtIndex) {
                //屏幕中心的位置在其它view的范围内了
                self.lastMoveAtIndex = self.currentMoveAtIndex;
                self.currentMoveAtIndex = afterMoveAtIndex;
            }
            NSInteger tabIndex = self.tabView.currentIndex;
            BOOL needForbid = NO;
            
            if (self.currentMoveAtIndex != tabIndex) {
                if (self.currentMoveAtIndex > tabIndex && moveCenterXOffset <= 0) {
                    //当前的view在初始的view的右边并且中心点超过屏幕的右边
                    NSLog(@"tabView===>Changed pageTitle:%@ 换成右边的view", self.pageTitle);
                    afterMoveAtIndex = tabIndex + 1;
                    needForbid = YES;
                } else if (self.currentMoveAtIndex < tabIndex && moveCenterXOffset >= 0) {
                    //当前的view在初始的view的左边并且中心点超过屏幕的左边
                    NSLog(@"tabView===>Changed pageTitle:%@ 换成左边的view", self.pageTitle);
                    afterMoveAtIndex = tabIndex - 1;
                    needForbid = YES;
                }
            }
            if (needForbid) {
                newOriginX = -afterMoveAtIndex * self.selfViewWidth;
                moveCenterXOffset = 0;
                self.currentMoveAtIndex = afterMoveAtIndex;
                [self setContainerViewLeading:newOriginX animated:NO completed:nil];
                NSLog(@"tabView===>Changed pageTitle:%@ 滑动中断了", self.pageTitle);
                pan.enabled = NO;
            } else {
                NSLog(@"tabView===>Changed pageTitle:%@ 滑动偏移位置：%f", self.pageTitle, newOriginX);
                [self setContainerViewLeading:newOriginX animated:NO completed:nil];
            }
            [self.tabView moveByCallerGesState:gesState callerViewWidth:self.selfViewWidth moveCenterXOffset:moveCenterXOffset moveAtIndex:afterMoveAtIndex];
            return isNoBeyondFatherFrame;
        } break;
        case UIGestureRecognizerStateFailed:
        case UIGestureRecognizerStateCancelled:
        case UIGestureRecognizerStateEnded: {
            if (_nestChildVCGesState != UIGestureRecognizerStateEnded) {
                _nestChildVCGesState = UIGestureRecognizerStateEnded;
                [_nestScrollChildVC handlePanGestureEvent:pan gesState:UIGestureRecognizerStateEnded moveX:movingX];
                return YES;
            }
            if (!pan.enabled) {
                [self.tabView moveByCallerGesState:gesState callerViewWidth:self.selfViewWidth moveCenterXOffset:0 moveAtIndex:self.currentMoveAtIndex];
                pan.enabled = YES;
                return YES;
            }
            //移动之后的containerViewX
            afterMoveOriginX = newOriginX;
            CGFloat halfSelfViewWidth = self.selfViewWidth / 2.0;
            //移动之后的containerViewX在屏幕中心的X
            afterMoveCenterX = halfSelfViewWidth - afterMoveOriginX;
            //移动之后的屏幕中心在第几个view的范围内
            afterMoveAtIndex = (NSInteger)(afterMoveCenterX / self.selfViewWidth);
            //移动之后view的X
            afterMoveViewOriginXWidth = afterMoveAtIndex * self.selfViewWidth;
            //移动之后view的中心距离屏幕中心的距离，为正则是在屏幕的右边，为负则是在屏幕的左边
            moveCenterXOffset = afterMoveViewOriginXWidth + afterMoveOriginX;
            CGFloat moveMinScale = 0.15;
            if (moveCenterXOffset < 0 && -moveCenterXOffset >= moveMinScale * self.selfViewWidth) {
                //中心点在屏幕中心点左边并且移动了一定的位置
                if (self.lastMoveAtIndex == afterMoveAtIndex) {
                    //是初始的view向左边移动了一定距离
                    afterMoveAtIndex++;
                }
            } else if (moveCenterXOffset > 0 && halfSelfViewWidth - moveCenterXOffset >= moveMinScale * self.selfViewWidth) {
                //中心点在屏幕中心点右边并且移动了一定的位置
                if (self.lastMoveAtIndex == afterMoveAtIndex) {
                    //是初始的view向右边移动了一定距离
                    afterMoveAtIndex--;
                }
            }
            //newOriginX重置到当前view的X
            newOriginX = -afterMoveAtIndex * self.selfViewWidth;
            moveCenterXOffset = 0;
            [self.tabView moveByCallerGesState:gesState callerViewWidth:self.selfViewWidth moveCenterXOffset:moveCenterXOffset moveAtIndex:afterMoveAtIndex];
            if (afterMoveOriginX == newOriginX) {
                return YES;
            }
            [self setContainerViewLeading:newOriginX animated:YES completed:^{
                pan.enabled = YES;
            }];
        } break;
        default:
            break;
    }
    return YES;
}

- (void)scrollToIndex:(NSInteger)atIndex {
    [self.tabView scrollToIndex:atIndex];
}

#pragma mark - TestProjectTabViewProtocol
- (void)clickTabView:(TestProjectViewTab *)tabView atIndex:(NSInteger)atIndex viewModel:(id)viewModel {
    UIViewController *childVC = [self addChildControllerAtIndex:atIndex viewModel:viewModel];
    [self setContainerViewLeading:-atIndex * self.view.viewWidth animated:NO completed:nil];
    if (self.delegate && [self.delegate respondsToSelector:@selector(didTapItemViewWithController:childVC:atIndex:)]) {
        [self.delegate didTapItemViewWithController:self childVC:childVC atIndex:atIndex];
    }
}

#pragma mark - TestProjectNestScrollTabChildControllerProtocol
- (CGFloat)nestChildVCContainerViewWidth {
    return self.containerView.viewWidth;
}

- (UIView *)containerView {
    if (!_containerView) {
        _containerView = [[UIView alloc] init];
        if (!self.isNestChildVC) {
            self.panGes = [[UIPanGestureRecognizer alloc] initWithTarget:self action:@selector(didPanGesEvent:)];
            [_containerView addGestureRecognizer:self.panGes];
        }
        [self.view addSubview:_containerView];
        [_containerView testproject_makeConstraints:^(TestProjectViewConstrainMake * _Nonnull make) {
            make.bottom.leading.equal(self.view);
            make.width.equal(@(self.viewModelList.count * self.view.viewWidth));
            make.top.equal(self.tabView.bottom);
        }];
    }
    return _containerView;
}

- (NSMutableDictionary *)vcMutDic {
    if (!_vcMutDic) {
        _vcMutDic = [NSMutableDictionary dictionary];
    }
    return _vcMutDic;
}

- (TestProjectViewTab *)tabView {
    if (!_tabView) {
        _tabView = [[TestProjectViewTab alloc] initWithTabType:self.tabType];
        _tabView.delegate = self;
        [self.view addSubview:_tabView];
        [_tabView testproject_makeConstraints:^(TestProjectViewConstrainMake *make) {
            make.top.leading.trainling.equal(self.view);
        }];
    }
    return _tabView;
}

@end
