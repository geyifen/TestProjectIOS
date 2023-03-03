//
//  TestProjectTabView.m
//  TestProjectIOS
//
//  Created by zjrcumac on 2023/1/29.
//

#import "TestProjectTabView.h"
#import "TestProjectCategoryHeader.h"

@interface TestProjectTabView ()

@property (nonatomic, assign) TestProjectTabType tabType;
@property (nonatomic, strong) UIView<TestProjectTabChildViewProtocol> *currentItemView;
@property (nonatomic, strong) UIView *containerView;
@property (nonatomic, strong) UIPanGestureRecognizer *panGes;

//做动画的初始view
@property (nonatomic, weak) UIView<TestProjectTabChildViewProtocol> *originView;
//屏幕中心在当前的view中
@property (nonatomic, weak) UIView<TestProjectTabChildViewProtocol> *sourceView;
//调用者页面和当前sourceView的移动比例
@property (nonatomic, assign) CGFloat s_moveOffsetScale;
//当前移动的sourceView的index
@property (nonatomic, assign) NSInteger s_atIndex;
//sourceView的superView与originView的superView中心位置差距
@property (nonatomic, assign) CGFloat so_orininCenterXDiff;
//sourceView的上个点移动点的距离
@property (nonatomic, assign) CGFloat s_lastMoveCenterXOffset;

//移动中targetView和sourceView两者之间的差距
@property (nonatomic, assign) CGFloat ts_betweenWidth;
//移动中targetView和sourceView两者之间width差距
@property (nonatomic, assign) CGFloat ts_widthDiff;
//移动中sourceView和originView两者之间width差距
@property (nonatomic, assign) CGFloat so_widthDiff;
//移动中sourceView到superView边缘的width差距
@property (nonatomic, assign) CGFloat s_borderWidthDiff;
//移动中sourceView的superView一半宽度
@property (nonatomic, assign) CGFloat s_halfWidth;

@end

@implementation TestProjectTabView

- (instancetype)initWithTabType:(TestProjectTabType)tabType {
    if (self = [super init]) {
        self.tabType = tabType;
    }
    return self;
}

- (void)resetData:(NSArray<TestProjectTabViewModelProtocol> *)viewModelList atIndex:(NSInteger)atIndex {
    [_containerView removeGestureRecognizer:self.panGes];
    [_containerView removeFromSuperview];
    _containerView = nil;
    if (atIndex < 0 || atIndex >= viewModelList.count) {
        atIndex = 0;
    }
    self.currentIndex = atIndex;
    UIView *currentParentView = nil;
    UIControl *selectControl = nil;
    for (NSInteger i = 0; i < viewModelList.count; i++) {
        id<TestProjectTabViewModelProtocol> viewModel = [viewModelList objectAtIndex:i];
        NSString *viewIdentifier = [viewModel viewIdentifier];
        Class<TestProjectCreateViewProtocol> viewClass = NSClassFromString(viewIdentifier);
        UIView<TestProjectTabChildViewProtocol> *view = (UIView<TestProjectTabChildViewProtocol> *)[viewClass initCreateByViewModel];
        if (![view conformsToProtocol:@protocol(TestProjectViewProtocol)]) {
            assert("当前的view没有遵循TestProjectTabViewProtocol协议");
        }
        [view setViewModel:viewModel];
        
        UIView *parentView = [[UIView alloc] init];
        parentView.userInteractionEnabled = YES;
        [self.containerView addSubview:parentView];
        [parentView testproject_makeConstraints:^(TestProjectViewConstrainMake * _Nonnull make) {
            make.top.bottom.equal(self.containerView);
            if (self.tabType == TestProjectTab_EqualDivede) {
                if (currentParentView) {
                    make.leading.equal(currentParentView.trainling);
                    make.width.equal(currentParentView);
                } else {
                    make.leading.equal(self.containerView);
                }
            } else {
                if (currentParentView) {
                    make.leading.equal(currentParentView.trainling);
                } else {
                    make.leading.equal(self.containerView);
                }
            }
            if (i == viewModelList.count - 1) {
                make.trainling.equal(self.containerView.trainling);
            }
        }];
        currentParentView = parentView;
        
        UIControl *control = [[UIControl alloc] init];
        control.tag = [self defaultTag] + i;
        [control addTarget:self action:@selector(didTapItemViewEvent:) forControlEvents:UIControlEventTouchUpInside];
        [view addSubview:control];

        CGFloat leading = [viewModel respondsToSelector:@selector(tabView:leadingAtIndex:)] ? [viewModel tabView:self leadingAtIndex:i] : 0;
        CGFloat trailing = [viewModel respondsToSelector:@selector(tabView:trailingAtIndex:)] ? [viewModel tabView:self trailingAtIndex:i] : 0;
        [parentView addSubview:view];
        [view testproject_makeConstraints:^(TestProjectViewConstrainMake * _Nonnull make) {
            make.top.bottom.equal(parentView);
            make.leading.equal(parentView).offset(leading);
            make.trainling.equal(parentView).offset(-trailing);
        }];

        [control testproject_makeConstraints:^(TestProjectViewConstrainMake * _Nonnull make) {
            make.top.bottom.leading.trainling.equal(view);
        }];
        if (atIndex == i) {
            selectControl = control;
        }
    }
    [self layoutIfNeeded];
    [self handDealViewWithControl:selectControl animated:NO];
    [self updatePanGes];
}

- (void)updateDataWithViewModel:(id<TestProjectTabViewModelProtocol>)viewModel atIndex:(NSInteger)atIndex {
    [self updateDataWithViewModel:viewModel atIndex:atIndex needUpdateView:YES];
}

- (void)updateDataWithViewModel:(id<TestProjectTabViewModelProtocol>)viewModel atIndex:(NSInteger)atIndex needUpdateView:(BOOL)needUpdateView {
    UIControl *control = [self viewWithTag:[self defaultTag] + atIndex];
    if (!control) {
        return;
    }
    UIView<TestProjectTabChildViewProtocol> *view = (UIView<TestProjectTabChildViewProtocol> *)control.superview;
    [view setViewModel:viewModel];
    if (atIndex == self.currentIndex) {
        [view tabViewWithSelectItemView:self];
    }
    if (needUpdateView) {
        [self initialGesAndCenter];
    }
}

- (void)updateData:(NSArray<TestProjectTabViewModelProtocol> *)viewModelList {
    if (viewModelList.count < self.containerView.subviews.count) {
        return;
    }
    for (NSInteger i = 0; i < viewModelList.count; i++) {
        [self updateDataWithViewModel:viewModelList[i] atIndex:i needUpdateView:NO];
    }
    [self initialGesAndCenter];
}

- (void)initialGesAndCenter {
    [self layoutIfNeeded];
    [self updatePanGes];
    [self moveToCenter:NO];
}

- (void)setContainerViewLeading:(CGFloat)leadOffset animated:(BOOL)animated {
    if (animated) {
        [UIView animateWithDuration:0.25 animations:^{
            [self.containerView testproject_updateConstraints:^(TestProjectViewConstrainMake * _Nonnull make) {
                make.leading.equal(self).offset(leadOffset);
            }];
            [self layoutIfNeeded];
            [self setNeedsLayout];
        }];
    } else {
        [self.containerView testproject_updateConstraints:^(TestProjectViewConstrainMake * _Nonnull make) {
            make.leading.equal(self).offset(leadOffset);
        }];
    }
}

- (void)updatePanGes {
    if (self.tabType == TestProjectTab_AutoDivede) {
        if (self.containerView.viewWidth > self.viewWidth) {
            if (![self.containerView.gestureRecognizers containsObject:self.panGes]) {
                self.panGes = [[UIPanGestureRecognizer alloc] initWithTarget:self action:@selector(didPanGesEvent:)];
                [self.containerView addGestureRecognizer:self.panGes];
            }
        } else {
            if (self.panGes) {
                [self.containerView removeGestureRecognizer:self.panGes];
                self.panGes = nil;
            }
        }
    }
}

- (NSInteger)defaultTag {
    return 666;
}

- (void)didTapItemViewEvent:(UIControl *)control {
    [self handDealViewWithControl:control animated:YES];
}

- (void)handDealViewWithControl:(UIControl *)control animated:(BOOL)animated {
    UIView<TestProjectTabChildViewProtocol> *selectView = (UIView<TestProjectTabChildViewProtocol> *)control.superview;
    if (selectView == self.currentItemView) {
        return;
    }
    [self.currentItemView tabViewWithCancelSelectItemView:self];
    self.currentItemView = selectView;
    self.currentIndex = control.tag - [self defaultTag];
    [selectView tabViewWithSelectItemView:self];
    [self moveToCenter:animated];
    
    if (self.delegate && [self.delegate respondsToSelector:@selector(clickTabView:atIndex:viewModel:)]) {
        [self.delegate clickTabView:self atIndex:self.currentIndex viewModel:selectView.viewModel];
    }
}

- (void)didPanGesEvent:(UIPanGestureRecognizer *)pan {
    switch (pan.state) {
        case UIGestureRecognizerStateChanged: {
            CGFloat containerViewWidth = self.containerView.viewWidth;
            CGFloat selfWidth = self.viewWidth;
            if (containerViewWidth <= selfWidth) {
                return;
            }

            UIView *panView = pan.view;
            CGFloat movingX = [pan translationInView:panView].x;
            CGFloat orininX = self.containerView.viewX;
            CGFloat newOriginX = orininX + movingX;
            [pan setTranslation:CGPointZero inView:panView];
            if (newOriginX == orininX) {
                return;
            }
            CGFloat diffWidth = containerViewWidth - selfWidth;
            if (newOriginX >= 0) {
                //将要超过superView左边的距离
                newOriginX = 0;
            } else if (newOriginX <= -diffWidth) {
                //将要超过superView右边的距离
                newOriginX = -diffWidth;
            }
            [self setContainerViewLeading:newOriginX animated:NO];
        } break;
        default:
            break;
    }
}

/**
 假设当前的self宽度是100，containerView的宽度是200
 */
- (void)moveToCenter:(BOOL)animated {
    if (self.tabType != TestProjectTab_AutoDivede) {
        return;
    }
    CGFloat selfWidth = self.viewWidth;
    CGFloat containerViewWidth = self.containerView.viewWidth;
    CGFloat containerViewX = self.containerView.viewX;

    if (containerViewWidth <= selfWidth) {
        if (containerViewX < 0) {
            //当文字变少了，整个containerView的宽度变小了会触发到这
            [self setContainerViewLeading:0 animated:animated];
        }
        return;
    }
    CGFloat currentItemSuperViewCenterX = self.currentItemView.superview.viewCenterX;
    //相当于屏幕的一半50
    CGFloat halfSelfWidth = selfWidth / 2.0;
    CGFloat currentItemSuperViewCenterXDiff = currentItemSuperViewCenterX + containerViewX;
    if (currentItemSuperViewCenterXDiff == halfSelfWidth) {
        //点击的view中心正好在屏幕的正中间
        //假设当前点击的viewCenterX正好是50
        return;
    }
    CGFloat newOriginX = containerViewX;
    if (currentItemSuperViewCenterXDiff < halfSelfWidth) {
        //点击的view中心正好在屏幕的左边
        CGFloat screenCenterDiff = halfSelfWidth - currentItemSuperViewCenterX;
        if (screenCenterDiff > 0) {
            //移动后点击的view中心在屏幕的右方，整个containerView的originX超过0
            newOriginX = 0;
        } else {
            //将点击的view中心移动到屏幕的正中间
            newOriginX = screenCenterDiff;
            //当文字变少了，整个containerView的宽度变小了会触发到这
            if (currentItemSuperViewCenterX + halfSelfWidth - containerViewWidth >= 0) {
                //移动后点击的view中心在屏幕的右方，整个containerView的rightX超过屏幕
                CGFloat diffWidth = containerViewWidth - selfWidth;
                newOriginX = -diffWidth;
            }
        }
    } else {
        //点击的view中心正好在屏幕的右边
        /**
         假设当前的containerViewCenterX是130，containerViewX则是-80
         */
        if (currentItemSuperViewCenterX + halfSelfWidth - containerViewWidth >= 0) {
            //移动后点击的view中心在屏幕的右方，整个containerView的rightX超过屏幕
            CGFloat diffWidth = containerViewWidth - selfWidth;
            newOriginX = -diffWidth;
        } else {
            CGFloat screenCenterDiff = (currentItemSuperViewCenterX - (halfSelfWidth - containerViewX));
            newOriginX -= screenCenterDiff;
        }
    }
    if (newOriginX == containerViewX) {
        return;
    }
    [self setContainerViewLeading:newOriginX animated:animated];
}

- (void)moveByCallerGesState:(UIGestureRecognizerState)gesState
             callerViewWidth:(CGFloat)callerViewWidth
           moveCenterXOffset:(CGFloat)moveCenterXOffset
                 moveAtIndex:(NSInteger)moveAtIndex {
    switch (gesState) {
        case UIGestureRecognizerStateBegan: {
            self.originView = self.currentItemView;
            self.s_lastMoveCenterXOffset = 0;
            self.ts_betweenWidth = 0;
            self.s_borderWidthDiff = 0;
            [self updateMoveSourceViewInfoAtIndex:moveAtIndex callerViewWidth:callerViewWidth];
        } break;
        case UIGestureRecognizerStateChanged: {
            if (moveCenterXOffset == 0) {
                return;
            }
            if (moveAtIndex != self.s_atIndex) {
                //更新sourceView信息
                [self updateMoveSourceViewInfoAtIndex:moveAtIndex callerViewWidth:callerViewWidth];
            } else {
                CGFloat offset = self.s_lastMoveCenterXOffset + moveCenterXOffset;
                if (moveCenterXOffset > 0 && offset <= moveCenterXOffset) {
                    //sourceView在中心点移动方向从右边换成左边了
                    //更新sourceView的宽度信息
                    [self updateMoveSourceViewWidthInfo:self.s_atIndex - 1 callerViewWidth:callerViewWidth];
                } else if (moveCenterXOffset < 0 && offset >= moveCenterXOffset) {
                    //sourceView在中心点移动方向从左边换成右边了
                    //更新sourceView的宽度信息
                    [self updateMoveSourceViewWidthInfo:self.s_atIndex + 1 callerViewWidth:callerViewWidth];
                }
            }
            self.s_lastMoveCenterXOffset = moveCenterXOffset;
            //sourceView从调用view中移动的距离按照比例换成实际移动的距离
            CGFloat s_moveOffset = moveCenterXOffset * self.s_moveOffsetScale;
            //originView的中心实际偏移位置
            self.moveViewCenterOffset = -self.so_orininCenterXDiff + s_moveOffset;
            //originView的宽度实际偏移点
            self.moveViewWidthOffset = self.so_widthDiff - s_moveOffset * self.s_borderWidthDiff / self.s_halfWidth;
            //originView更新动画
            [self.originView updateMoveTabView:self animated:NO completed:nil];
        } break;
        case UIGestureRecognizerStateFailed:
        case UIGestureRecognizerStateCancelled:
        case UIGestureRecognizerStateEnded: {
            if (moveAtIndex != self.s_atIndex) {
                [self updateMoveSourceViewInfoAtIndex:moveAtIndex callerViewWidth:callerViewWidth];
            }
            //sourceView从调用view中移动的距离按照比例换成实际移动的距离
            CGFloat s_moveOffset = moveCenterXOffset * self.s_moveOffsetScale;
            //originView的中心实际偏移位置
            self.moveViewCenterOffset = -self.so_orininCenterXDiff + s_moveOffset;
            //originView的宽度实际偏移点
            self.moveViewWidthOffset = self.so_widthDiff - s_moveOffset * self.s_borderWidthDiff / self.s_halfWidth;
            __weak typeof(self) weakSelf = self;
            //originView更新动画
            [self.originView updateMoveTabView:self animated:YES completed:^{
                if (moveAtIndex == weakSelf.currentIndex) {
                    return;
                }
                weakSelf.moveViewCenterOffset = 0;
                weakSelf.moveViewWidthOffset = 0;
                //把originView的动画重置到初始
                [weakSelf.originView updateMoveTabView:weakSelf animated:NO completed:nil];

                UIControl *control = [weakSelf.containerView viewWithTag:moveAtIndex + [self defaultTag]];
                //把移动后的control设置为点击
                [weakSelf handDealViewWithControl:control animated:NO];
            }];
        } break;
        default:
            break;
    }
}

- (void)updateMoveSourceViewInfoAtIndex:(NSInteger)atIndex callerViewWidth:(CGFloat)callerViewWidth {
    //更新当前的sourceView的index
    self.s_atIndex = atIndex;
    //更新sourceView
    UIView *sourceView = [self.containerView viewWithTag:atIndex + [self defaultTag]].superview;
    self.sourceView = (UIView<TestProjectTabChildViewProtocol> *)sourceView;
    //更新sourceView移动的比例
    self.s_moveOffsetScale = sourceView.superview.viewWidth / callerViewWidth;
    //更新sourceView和originView的位置差距
    self.so_orininCenterXDiff = sourceView.superview.viewCenterX - self.originView.superview.viewCenterX;
    self.s_halfWidth = self.sourceView.superview.viewWidth / 2.0;
    [self updateWidthOffsetInfo];
}

- (void)updateMoveSourceViewWidthInfo:(NSInteger)atIndex callerViewWidth:(CGFloat)callerViewWidth {
    //获取移动的targerView
    UIView *targetView = [self.containerView viewWithTag:atIndex + [self defaultTag]].superview;
    //更新targerView到sourceView两者之间的距离
    self.ts_betweenWidth = targetView.superview.viewCenterX - self.sourceView.superview.viewCenterX;
    //更新targerView到sourceView两者之间的宽度差距
    self.ts_widthDiff = targetView.superview.viewWidth - self.sourceView.superview.viewWidth;
    [self updateWidthOffsetInfo];
}

- (void)updateWidthOffsetInfo {
    if (self.ts_betweenWidth != 0) {
        //更新sourceView到originView两者之间的宽度差距
        self.so_widthDiff = self.sourceView.viewWidth - self.originView.viewWidth;
        //更新sourceView的一半宽度
        //更新sourceView到边缘位置宽度要增加或者缩小的差距
        self.s_borderWidthDiff = self.ts_widthDiff * (self.sourceView.superview.viewWidth / 2.0) / self.ts_betweenWidth;
    }
}

- (UIView *)containerView {
    if (!_containerView) {
        _containerView = [[UIView alloc] init];
        _containerView.userInteractionEnabled = YES;
        [self addSubview:_containerView];
        [_containerView testproject_makeConstraints:^(TestProjectViewConstrainMake * _Nonnull make) {
            make.top.bottom.equal(self);
            make.leading.equal(self);
            if (self.tabType == TestProjectTab_EqualDivede) {
                make.trainling.equal(self);
            }
        }];
    }
    return _containerView;
}

@end
