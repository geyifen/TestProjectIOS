//
//  TestProjectUIViewKeyframeAnimations.m
//  TestProjectIOS
//
//  Created by liwenfan on 2023/5/25.
//

#import "TestProjectUIViewKeyframeAnimations.h"

@implementation TestProjectUIViewKeyframeAnimations

- (NSDictionary *)method_1 {
    return @{
        @"dataModel": @{
            @"abstract": @"UIView执行动画",
            @"title": @"+ (void)animateKeyframesWithDuration:(NSTimeInterval)duration delay:(NSTimeInterval)delay options:(UIViewKeyframeAnimationOptions)options animations:(void (^)(void))animations completion:(void (^ __nullable)(BOOL finished))completion API_AVAILABLE(ios(7.0));",
            @"isDataModelExpand": @(YES),
            @"desc": @"@param duration: 动画执行的时间\n@param delay: 动画延迟执行的时间\n@param options: 动画执行的效果\n@param animations: 动画执行的动作变化\n@param completion: 动画执行完后的回调",
            @"dataModel": @{
                @"childItems": [self TestProjectViewViewKeyframeAnimations_animateKeyframesWithDuration_delay_options_animations_completion],
            }
        },
    };
}

- (NSDictionary *)method_2 {
    return @{
        @"dataModel": @{
            @"abstract": @"UIView执行动画",
            @"title": @"+ (void)addKeyframeWithRelativeStartTime:(double)frameStartTime relativeDuration:(double)frameDuration animations:(void (^)(void))animations API_AVAILABLE(ios(7.0));",
            @"isDataModelExpand": @(YES),
            @"desc": @"@param duration: 动画执行的时间\n@param delay: 动画延迟执行的时间\n@param options: 动画执行的效果\n@param animations: 动画执行的动作变化\n@param completion: 动画执行完后的回调",
            @"dataModel": @{
                @"childItems": [self TestProjectViewViewKeyframeAnimations_addKeyframeWithRelativeStartTime_relativeDuration_animations],
            }
        },
    };
}

- (NSMutableArray *)TestProjectViewViewKeyframeAnimations_addKeyframeWithRelativeStartTime_relativeDuration_animations {
    CGRect rect = self.childView.frame;
    rect.origin.x = 100;
    WS(wSelf);
    [self createTableModelWithTitle:@"addKeyframeWithRelativeStartTime_relativeDuration_animations" block:^{
        [UIView addKeyframeWithRelativeStartTime:3 relativeDuration:5 animations:^{
            wSelf.childView.frame = rect;
        }];
    }];
    return self.dataMutArr;
}

//typedef NS_OPTIONS(NSUInteger, UIViewKeyframeAnimationOptions) {
//    UIViewKeyframeAnimationOptionLayoutSubviews            = UIViewAnimationOptionLayoutSubviews,
//    UIViewKeyframeAnimationOptionAllowUserInteraction      = UIViewAnimationOptionAllowUserInteraction, // turn on user interaction while animating
//    UIViewKeyframeAnimationOptionBeginFromCurrentState     = UIViewAnimationOptionBeginFromCurrentState, // start all views from current value, not initial value
//    UIViewKeyframeAnimationOptionRepeat                    = UIViewAnimationOptionRepeat, // repeat animation indefinitely
//    UIViewKeyframeAnimationOptionAutoreverse               = UIViewAnimationOptionAutoreverse, // if repeat, run animation back and forth
//    UIViewKeyframeAnimationOptionOverrideInheritedDuration = UIViewAnimationOptionOverrideInheritedDuration, // ignore nested duration
//    UIViewKeyframeAnimationOptionOverrideInheritedOptions  = UIViewAnimationOptionOverrideInheritedOptions, // do not inherit any options or animation type
//
//    UIViewKeyframeAnimationOptionCalculationModeLinear     = 0 << 10, // default
//    UIViewKeyframeAnimationOptionCalculationModeDiscrete   = 1 << 10,
//    UIViewKeyframeAnimationOptionCalculationModePaced      = 2 << 10,
//    UIViewKeyframeAnimationOptionCalculationModeCubic      = 3 << 10,
//    UIViewKeyframeAnimationOptionCalculationModeCubicPaced = 4 << 10
//} API_AVAILABLE(ios(7.0));

- (NSMutableArray *)TestProjectViewViewKeyframeAnimations_animateKeyframesWithDuration_delay_options_animations_completion {
    NSArray *arr = @[
        @{
            @"title": [NSString stringWithFormat:@"设置的是UIViewKeyframeAnimationOptionLayoutSubviews(%ld)", UIViewKeyframeAnimationOptionLayoutSubviews],
            @"value": @(UIViewKeyframeAnimationOptionLayoutSubviews),
        },
        @{
            @"title": [NSString stringWithFormat:@"设置的是UIViewKeyframeAnimationOptionAllowUserInteraction(%ld)", UIViewKeyframeAnimationOptionAllowUserInteraction],
            @"value": @(UIViewKeyframeAnimationOptionAllowUserInteraction),
        },
        @{
            @"title": [NSString stringWithFormat:@"设置的是UIViewKeyframeAnimationOptionBeginFromCurrentState(%ld)", UIViewKeyframeAnimationOptionBeginFromCurrentState],
            @"value": @(UIViewKeyframeAnimationOptionBeginFromCurrentState),
        },
        @{
            @"title": [NSString stringWithFormat:@"设置的是UIViewKeyframeAnimationOptionRepeat(%ld), 这个会反复的执行动画", UIViewKeyframeAnimationOptionRepeat],
            @"value": @(UIViewKeyframeAnimationOptionRepeat),
        },
        @{
            @"title": [NSString stringWithFormat:@"设置的是UIViewKeyframeAnimationOptionAutoreverse(%ld), 这个会反向执行一次动画", UIViewKeyframeAnimationOptionAutoreverse],
            @"value": @(UIViewKeyframeAnimationOptionAutoreverse),
        },
        @{
            @"title": [NSString stringWithFormat:@"设置的是UIViewKeyframeAnimationOptionOverrideInheritedDuration(%ld)", UIViewKeyframeAnimationOptionOverrideInheritedDuration],
            @"value": @(UIViewKeyframeAnimationOptionOverrideInheritedDuration),
        },
        @{
            @"title": [NSString stringWithFormat:@"设置的是UIViewKeyframeAnimationOptionOverrideInheritedOptions(%ld)", UIViewKeyframeAnimationOptionOverrideInheritedOptions],
            @"value": @(UIViewKeyframeAnimationOptionOverrideInheritedOptions),
        },
        @{
            @"title": [NSString stringWithFormat:@"设置的是UIViewKeyframeAnimationOptionCalculationModeLinear(%ld)", UIViewKeyframeAnimationOptionCalculationModeLinear],
            @"value": @(UIViewKeyframeAnimationOptionCalculationModeLinear),
        },
        @{
            @"title": [NSString stringWithFormat:@"设置的是UIViewKeyframeAnimationOptionCalculationModeDiscrete(%ld)", UIViewKeyframeAnimationOptionCalculationModeDiscrete],
            @"value": @(UIViewKeyframeAnimationOptionCalculationModeDiscrete),
        },
        @{
            @"title": [NSString stringWithFormat:@"设置的是UIViewKeyframeAnimationOptionCalculationModePaced(%ld)", UIViewKeyframeAnimationOptionCalculationModePaced],
            @"value": @(UIViewKeyframeAnimationOptionCalculationModePaced),
        },
        @{
            @"title": [NSString stringWithFormat:@"设置的是UIViewKeyframeAnimationOptionCalculationModeCubic(%ld)", UIViewKeyframeAnimationOptionCalculationModeCubic],
            @"value": @(UIViewKeyframeAnimationOptionCalculationModeCubic),
        },
        @{
            @"title": [NSString stringWithFormat:@"设置的是UIViewKeyframeAnimationOptionCalculationModeCubicPaced(%ld)", UIViewKeyframeAnimationOptionCalculationModeCubicPaced],
            @"value": @(UIViewKeyframeAnimationOptionCalculationModeCubicPaced),
        },
    ];
    NSInteger i = 0;
    CGRect rect = self.childView.frame;
    for (NSDictionary *dic in arr) {
        NSString *title = dic[@"title"];
        UIViewKeyframeAnimationOptions options = [dic[@"value"] integerValue];
        i++;
        rect.origin.x = i * 10;
        WS(wSelf);
        [self createTableModelWithTitle:title block:^{
            [UIView animateKeyframesWithDuration:5 delay:1 options:options animations:^{
                wSelf.childView.frame = rect;
            } completion:^(BOOL finished) {
                NSLog(@"%@", NSStringFromCGRect(wSelf.childView.frame));
            }];
        }];
    }
    return self.dataMutArr;
}

@end
