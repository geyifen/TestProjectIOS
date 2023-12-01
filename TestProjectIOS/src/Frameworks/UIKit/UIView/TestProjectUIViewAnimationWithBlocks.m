//
//  TestProjectUIViewAnimationWithBlocks.m
//  TestProjectIOS
//
//  Created by liwenfan on 2023/5/24.
//

#import "TestProjectUIViewAnimationWithBlocks.h"

@interface TestProjectUIViewAnimationWithBlocks ()

@property (nonatomic, strong) UILabel *label1;
@property (nonatomic, strong) UILabel *label2;

@end

@implementation TestProjectUIViewAnimationWithBlocks

- (instancetype)initCreate {
    if (self = [super initCreate]) {
        self.label1.backgroundColor = [UIColor purpleColor];
        self.label2.backgroundColor = [UIColor yellowColor];
    }
    return self;
}

- (UILabel *)createLabelWithTag:(NSInteger)tag {
    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(tag * 100, 0, tag * 20, 15)];
    label.tag = tag;
    label.text = [NSString stringWithFormat:@"%ld", tag];
    label.textColor = [UIColor whiteColor];
    label.backgroundColor = [UIColor yellowColor];
    if (tag != 3) {
        dispatch_main_queue_work([self.childView addSubview:label];)
    }
    return label;
}

- (UILabel *)label1 {
    if (!_label1) {
        _label1 = [self createLabelWithTag:1];
    }
    return _label1;
}

- (UILabel *)label2 {
    if (!_label2) {
        _label2 = [self createLabelWithTag:2];
    }
    return _label2;
}

- (NSMutableArray *)TestProjectViewViewAnimationWithBlocks_modifyAnimationsWithRepeatCount_autoreverses_animations:(TestProjectTableViewParams *)params {
    CGRect rect = self.childView.frame;
    rect.origin.x = 100;
    WS(wSelf);
    [self createModelWithParams:params title:@"modifyAnimationsWithRepeatCount" block:^{
        [UIView modifyAnimationsWithRepeatCount:3 autoreverses:YES animations:^{
            wSelf.childView.frame = rect;
        }];
    }];
    return self.dataMutArr;
}

- (NSDictionary *)method_6:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"UIView执行动画,和普通动画一样",
            @"title": @"+ (void)modifyAnimationsWithRepeatCount:(CGFloat)count autoreverses:(BOOL)autoreverses animations:(void(NS_NOESCAPE ^)(void))animations API_AVAILABLE(ios(13.0),tvos(13.0));",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectViewViewAnimationWithBlocks_modifyAnimationsWithRepeatCount_autoreverses_animations:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectViewViewAnimationWithBlocks_performSystemAnimation_onViews_options_animations_completion:(TestProjectTableViewParams *)params {
    CGRect rect = self.childView.frame;
    rect.origin.x = 100;
    WS(wSelf);
    [self createModelWithParams:params title:@"performSystemAnimation" block:^{
        [UIView performSystemAnimation:UISystemAnimationDelete onViews:nil options:UIViewAnimationOptionPreferredFramesPerSecondDefault animations:^{
            wSelf.childView.frame = rect;
        } completion:^(BOOL finished) {
            NSLog(@"%@", NSStringFromCGRect(wSelf.label2.frame));
        }];
    }];
    return self.dataMutArr;
}

- (NSDictionary *)method_5:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"UIView执行动画,和普通动画一样",
            @"title": @"+ (void)performSystemAnimation:(UISystemAnimation)animation onViews:(NSArray<__kindof UIView *> *)views options:(UIViewAnimationOptions)options animations:(void (^ __nullable)(void))parallelAnimations completion:(void (^ __nullable)(BOOL finished))completion NS_SWIFT_DISABLE_ASYNC API_AVAILABLE(ios(7.0));",
            @"isDataModelExpand": @(YES),
            @"desc": @"@param fromView: 动画执行的view\n@param toView: 动画执行到某个view\n@param duration: 动画执行的时间\n@param options: 动画执行的效果\n@param animations: 动画执行的动作变化\n@param completion: 动画执行完后的回调",
            @"dataModel": @{
                @"childItems": [self TestProjectViewViewAnimationWithBlocks_performSystemAnimation_onViews_options_animations_completion:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectViewViewAnimationWithBlocks_transitionFromView_toView_duration_options_completion:(TestProjectTableViewParams *)params {
    WS(wSelf);
    [self createModelWithParams:params title:@"transitionFromView_toView" block:^{
        [UIView transitionFromView:wSelf.label2 toView:wSelf.label1 duration:5 options:UIViewAnimationOptionPreferredFramesPerSecondDefault completion:^(BOOL finished) {
            NSLog(@"%@", NSStringFromCGRect(wSelf.label2.frame));
        }];
    }];
    return self.dataMutArr;
}

- (NSDictionary *)method_4:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"UIView执行动画,fromView会消失，不知道怎么使用",
            @"title": @"+ (void)transitionFromView:(UIView *)fromView toView:(UIView *)toView duration:(NSTimeInterval)duration options:(UIViewAnimationOptions)options completion:(void (^ __nullable)(BOOL finished))completion NS_SWIFT_DISABLE_ASYNC API_AVAILABLE(ios(4.0));",
            @"isDataModelExpand": @(YES),
            @"desc": @"@param fromView: 动画执行的view\n@param toView: 动画执行到某个view\n@param duration: 动画执行的时间\n@param options: 动画执行的效果\n@param animations: 动画执行的动作变化\n@param completion: 动画执行完后的回调",
            @"dataModel": @{
                @"childItems": [self TestProjectViewViewAnimationWithBlocks_transitionFromView_toView_duration_options_completion:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectViewViewAnimationWithBlocks_transitionWithView_duration_options_animations_completion:(TestProjectTableViewParams *)params {
    CGRect rect = self.childView.frame;
    rect.origin.x = 100;
    WS(wSelf);
    [self createModelWithParams:params title:@"transitionWithView" block:^{
        [UIView transitionWithView:wSelf.childView duration:5 options:UIViewAnimationOptionPreferredFramesPerSecondDefault animations:^{
            wSelf.childView.frame = rect;
        } completion:^(BOOL finished) {
            NSLog(@"%@", NSStringFromCGRect(wSelf.childView.frame));
        }];
    }];
    return self.dataMutArr;
}

- (NSDictionary *)method_3:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"UIView执行动画",
            @"title": @"+ (void)transitionWithView:(UIView *)view duration:(NSTimeInterval)duration options:(UIViewAnimationOptions)options animations:(void (^ __nullable)(void))animations completion:(void (^ __nullable)(BOOL finished))completion NS_SWIFT_DISABLE_ASYNC API_AVAILABLE(ios(4.0));",
            @"isDataModelExpand": @(YES),
            @"desc": @"@param view: 不知道有什么作用\n@param duration: 动画执行的时间\n@param options: 动画执行的效果\n@param animations: 动画执行的动作变化\n@param completion: 动画执行完后的回调",
            @"dataModel": @{
                @"childItems": [self TestProjectViewViewAnimationWithBlocks_transitionWithView_duration_options_animations_completion:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectViewViewAnimationWithBlocks_animateWithDuration_delay_usingSpringWithDamping_initialSpringVelocity_options_animations_completion:(TestProjectTableViewParams *)params {
    NSArray *arr = @[
        @{
            @"title": @"设置的usingSpringWithDamping是0",
            @"value": @(0),
        },
        @{
            @"title": @"设置的usingSpringWithDamping是0.5",
            @"value": @(0.5),
        },
        @{
            @"title": @"设置的usingSpringWithDamping是1",
            @"value": @(1),
        },
    ];
    NSInteger i = 0;
    CGRect rect = self.childView.frame;
    for (NSDictionary *dic in arr) {
        NSString *title = dic[@"title"];
        CGFloat damping = [dic[@"value"] floatValue];
        i++;
        rect.origin.x = i * 20;
        WS(wSelf);
        [self createModelWithParams:params title:title block:^{
            [UIView animateWithDuration:5 delay:1 usingSpringWithDamping:damping initialSpringVelocity:20 options:UIViewAnimationOptionPreferredFramesPerSecondDefault animations:^{
                wSelf.childView.frame = rect;
            } completion:^(BOOL finished) {
                NSLog(@"%@", NSStringFromCGRect(wSelf.childView.frame));
            }];
        }];
    }

    return self.dataMutArr;
}

- (NSDictionary *)method_2:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"UIView执行动画，动画效果有弹簧效果",
            @"title": @"+ (void)animateWithDuration:(NSTimeInterval)duration delay:(NSTimeInterval)delay usingSpringWithDamping:(CGFloat)dampingRatio initialSpringVelocity:(CGFloat)velocity options:(UIViewAnimationOptions)options animations:(void (^)(void))animations completion:(void (^ __nullable)(BOOL finished))completion NS_SWIFT_DISABLE_ASYNC API_AVAILABLE(ios(7.0));",
            @"isDataModelExpand": @(YES),
            @"desc": @"@param duration: 动画执行的时间\n@param delay: 动画延迟执行的时间\n@param dampingRatio: 动画弹簧效果值\n@param dampingRatio: 动画弹簧的初始速度@param options: 动画执行的效果\n@param animations: 动画执行的动作变化\n@param completion: 动画执行完后的回调",
            @"dataModel": @{
                @"childItems": [self TestProjectViewViewAnimationWithBlocks_animateWithDuration_delay_usingSpringWithDamping_initialSpringVelocity_options_animations_completion:params],
            }
        },
    };
}

//typedef NS_OPTIONS(NSUInteger, UIViewAnimationOptions) {
//    UIViewAnimationOptionLayoutSubviews            = 1 <<  0,
//    UIViewAnimationOptionAllowUserInteraction      = 1 <<  1, // turn on user interaction while animating
//    UIViewAnimationOptionBeginFromCurrentState     = 1 <<  2, // start all views from current value, not initial value
//    UIViewAnimationOptionRepeat                    = 1 <<  3, // repeat animation indefinitely
//    UIViewAnimationOptionAutoreverse               = 1 <<  4, // if repeat, run animation back and forth
//    UIViewAnimationOptionOverrideInheritedDuration = 1 <<  5, // ignore nested duration
//    UIViewAnimationOptionOverrideInheritedCurve    = 1 <<  6, // ignore nested curve
//    UIViewAnimationOptionAllowAnimatedContent      = 1 <<  7, // animate contents (applies to transitions only)
//    UIViewAnimationOptionShowHideTransitionViews   = 1 <<  8, // flip to/from hidden state instead of adding/removing
//    UIViewAnimationOptionOverrideInheritedOptions  = 1 <<  9, // do not inherit any options or animation type
//
//    UIViewAnimationOptionCurveEaseInOut            = 0 << 16, // default
//    UIViewAnimationOptionCurveEaseIn               = 1 << 16,
//    UIViewAnimationOptionCurveEaseOut              = 2 << 16,
//    UIViewAnimationOptionCurveLinear               = 3 << 16,
//
//    UIViewAnimationOptionTransitionNone            = 0 << 20, // default
//    UIViewAnimationOptionTransitionFlipFromLeft    = 1 << 20,
//    UIViewAnimationOptionTransitionFlipFromRight   = 2 << 20,
//    UIViewAnimationOptionTransitionCurlUp          = 3 << 20,
//    UIViewAnimationOptionTransitionCurlDown        = 4 << 20,
//    UIViewAnimationOptionTransitionCrossDissolve   = 5 << 20,
//    UIViewAnimationOptionTransitionFlipFromTop     = 6 << 20,
//    UIViewAnimationOptionTransitionFlipFromBottom  = 7 << 20,
//
//    UIViewAnimationOptionPreferredFramesPerSecondDefault     = 0 << 24,
//    UIViewAnimationOptionPreferredFramesPerSecond60          = 3 << 24,
//    UIViewAnimationOptionPreferredFramesPerSecond30          = 7 << 24,
//
//} API_AVAILABLE(ios(4.0));

- (NSMutableArray *)TestProjectViewViewAnimationWithBlocks_animateWithDuration_delay_options_animations_completion:(TestProjectTableViewParams *)params {
    NSArray *arr = @[
        @{
            @"title": [NSString stringWithFormat:@"设置的是UIViewAnimationOptionLayoutSubviews(%ld)", UIViewAnimationOptionLayoutSubviews],
            @"value": @(UIViewAnimationOptionLayoutSubviews),
        },
        @{
            @"title": [NSString stringWithFormat:@"设置的是UIViewAnimationOptionAllowUserInteraction(%ld)", UIViewAnimationOptionAllowUserInteraction],
            @"value": @(UIViewAnimationOptionAllowUserInteraction),
        },
        @{
            @"title": [NSString stringWithFormat:@"设置的是UIViewAnimationOptionBeginFromCurrentState(%ld)", UIViewAnimationOptionBeginFromCurrentState],
            @"value": @(UIViewAnimationOptionBeginFromCurrentState),
        },
        @{
            @"title": [NSString stringWithFormat:@"设置的是UIViewAnimationOptionRepeat(%ld), 这个会反复的执行动画", UIViewAnimationOptionRepeat],
            @"value": @(UIViewAnimationOptionRepeat),
        },
        @{
            @"title": [NSString stringWithFormat:@"设置的是UIViewAnimationOptionAutoreverse(%ld), 这个会反向执行一次动画", UIViewAnimationOptionAutoreverse],
            @"value": @(UIViewAnimationOptionAutoreverse),
        },
        @{
            @"title": [NSString stringWithFormat:@"设置的是UIViewAnimationOptionOverrideInheritedDuration(%ld)", UIViewAnimationOptionOverrideInheritedDuration],
            @"value": @(UIViewAnimationOptionOverrideInheritedDuration),
        },
        @{
            @"title": [NSString stringWithFormat:@"设置的是UIViewAnimationOptionOverrideInheritedCurve(%ld)", UIViewAnimationOptionOverrideInheritedCurve],
            @"value": @(UIViewAnimationOptionOverrideInheritedCurve),
        },
        @{
            @"title": [NSString stringWithFormat:@"设置的是UIViewAnimationOptionAllowAnimatedContent(%ld)", UIViewAnimationOptionAllowAnimatedContent],
            @"value": @(UIViewAnimationOptionAllowAnimatedContent),
        },
        @{
            @"title": [NSString stringWithFormat:@"设置的是UIViewAnimationOptionShowHideTransitionViews(%ld)", UIViewAnimationOptionShowHideTransitionViews],
            @"value": @(UIViewAnimationOptionShowHideTransitionViews),
        },
        @{
            @"title": [NSString stringWithFormat:@"设置的是UIViewAnimationOptionShowHideTransitionViews(%ld)", UIViewAnimationOptionShowHideTransitionViews],
            @"value": @(UIViewAnimationOptionShowHideTransitionViews),
        },
        @{
            @"title": [NSString stringWithFormat:@"设置的是UIViewAnimationOptionOverrideInheritedOptions(%ld)", UIViewAnimationOptionOverrideInheritedOptions],
            @"value": @(UIViewAnimationOptionOverrideInheritedOptions),
        },
        @{
            @"title": [NSString stringWithFormat:@"设置的是UIViewAnimationOptionCurveEaseInOut(%ld)", UIViewAnimationOptionCurveEaseInOut],
            @"value": @(UIViewAnimationOptionCurveEaseInOut),
        },
        @{
            @"title": [NSString stringWithFormat:@"设置的是UIViewAnimationOptionCurveEaseIn(%ld)", UIViewAnimationOptionCurveEaseIn],
            @"value": @(UIViewAnimationOptionCurveEaseIn),
        },
        @{
            @"title": [NSString stringWithFormat:@"设置的是UIViewAnimationOptionCurveEaseOut(%ld)", UIViewAnimationOptionCurveEaseOut],
            @"value": @(UIViewAnimationOptionCurveEaseOut),
        },
        @{
            @"title": [NSString stringWithFormat:@"设置的是UIViewAnimationOptionCurveLinear(%ld)", UIViewAnimationOptionCurveLinear],
            @"value": @(UIViewAnimationOptionCurveLinear),
        },
        @{
            @"title": [NSString stringWithFormat:@"设置的是UIViewAnimationOptionTransitionNone(%ld)", UIViewAnimationOptionTransitionNone],
            @"value": @(UIViewAnimationOptionTransitionNone),
        },
        @{
            @"title": [NSString stringWithFormat:@"设置的是UIViewAnimationOptionTransitionFlipFromLeft(%ld)", UIViewAnimationOptionTransitionFlipFromLeft],
            @"value": @(UIViewAnimationOptionTransitionFlipFromLeft),
        },
        @{
            @"title": [NSString stringWithFormat:@"设置的是UIViewAnimationOptionTransitionFlipFromRight(%ld)", UIViewAnimationOptionTransitionFlipFromRight],
            @"value": @(UIViewAnimationOptionTransitionFlipFromRight),
        },
        @{
            @"title": [NSString stringWithFormat:@"设置的是UIViewAnimationOptionTransitionCurlUp(%ld)", UIViewAnimationOptionTransitionCurlUp],
            @"value": @(UIViewAnimationOptionTransitionCurlUp),
        },
        @{
            @"title": [NSString stringWithFormat:@"设置的是UIViewAnimationOptionTransitionCurlDown(%ld)", UIViewAnimationOptionTransitionCurlDown],
            @"value": @(UIViewAnimationOptionTransitionCurlDown),
        },
        @{
            @"title": [NSString stringWithFormat:@"设置的是UIViewAnimationOptionTransitionCrossDissolve(%ld)", UIViewAnimationOptionTransitionCrossDissolve],
            @"value": @(UIViewAnimationOptionTransitionCrossDissolve),
        },
        @{
            @"title": [NSString stringWithFormat:@"设置的是UIViewAnimationOptionTransitionFlipFromTop(%ld)", UIViewAnimationOptionTransitionFlipFromTop],
            @"value": @(UIViewAnimationOptionTransitionFlipFromTop),
        },
        @{
            @"title": [NSString stringWithFormat:@"设置的是UIViewAnimationOptionTransitionFlipFromBottom(%ld)", UIViewAnimationOptionTransitionCrossDissolve],
            @"value": @(UIViewAnimationOptionTransitionFlipFromBottom),
        },
        @{
            @"title": [NSString stringWithFormat:@"设置的是UIViewAnimationOptionPreferredFramesPerSecondDefault(%ld)", UIViewAnimationOptionPreferredFramesPerSecondDefault],
            @"value": @(UIViewAnimationOptionPreferredFramesPerSecondDefault),
        },
        @{
            @"title": [NSString stringWithFormat:@"设置的是UIViewAnimationOptionPreferredFramesPerSecond60(%ld)", UIViewAnimationOptionPreferredFramesPerSecond60],
            @"value": @(UIViewAnimationOptionPreferredFramesPerSecond60),
        },
        @{
            @"title": [NSString stringWithFormat:@"设置的是UIViewAnimationOptionPreferredFramesPerSecond30(%ld)", UIViewAnimationOptionPreferredFramesPerSecond30],
            @"value": @(UIViewAnimationOptionPreferredFramesPerSecond30),
        },
    ];
    NSInteger i = 0;
    CGRect rect = self.childView.frame;
    for (NSDictionary *dic in arr) {
        NSString *title = dic[@"title"];
        UIViewAnimationOptions options = [dic[@"value"] integerValue];
        i++;
        rect.origin.x = i * 10;
        WS(wSelf);
        [self createModelWithParams:params title:title block:^{
            [UIView animateWithDuration:5 delay:1 options:options animations:^{
                wSelf.childView.frame = rect;
            } completion:^(BOOL finished) {
                NSLog(@"%@", NSStringFromCGRect(wSelf.childView.frame));
            }];
        }];
    }
    return self.dataMutArr;
}

- (NSDictionary *)method_1:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"UIView执行动画",
            @"title": @"+ (void)animateWithDuration:(NSTimeInterval)duration delay:(NSTimeInterval)delay options:(UIViewAnimationOptions)options animations:(void (^)(void))animations completion:(void (^ __nullable)(BOOL finished))completion NS_SWIFT_DISABLE_ASYNC API_AVAILABLE(ios(4.0));",
            @"isDataModelExpand": @(YES),
            @"desc": @"@param duration: 动画执行的时间\n@param delay: 动画延迟执行的时间\n@param options: 动画执行的效果\n@param animations: 动画执行的动作变化\n@param completion: 动画执行完后的回调",
            @"dataModel": @{
                @"childItems": [self TestProjectViewViewAnimationWithBlocks_animateWithDuration_delay_options_animations_completion:params],
            }
        },
    };
}

@end
