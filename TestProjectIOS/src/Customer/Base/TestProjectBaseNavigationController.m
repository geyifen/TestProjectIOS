//
//  TestProjectNavController.m
//  TestProjectIOS
//
//  Created by 李文凡 on 2023/1/19.
//

#import "TestProjectBaseNavigationController.h"
#import "TestProjectCategoryHeader.h"

@interface TestProjectBaseNavigationController () <UIGestureRecognizerDelegate>

@end

@implementation TestProjectBaseNavigationController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor whiteColor];
    self.navigationBar.backgroundColor = [UIColor redColor];
    self.navigationBar.barTintColor = [UIColor blueColor];

//    self.navigationBar.tintColor = [UIColor yellowColor];
//    [self.navigationBar setBackgroundImage:nil forBarMetrics:UIBarMetricsDefault];
//    self.navigationBar.shadowImage = nil;
//    self.navigationBar.backIndicatorImage = nil;
//    self.navigationBar.backIndicatorTransitionMaskImage = nil;
    
    //设置手势左侧滑动的代理
    self.interactivePopGestureRecognizer.delegate = self;
    self.interactivePopGestureRecognizer.enabled = YES;

    if (@available(iOS 13.0, *)) {
        //push 的时候导航栏会闪一下
        UINavigationBarAppearance *appearance = [[UINavigationBarAppearance alloc] init];
        [appearance configureWithOpaqueBackground];
        appearance.backgroundColor = [UIColor whiteColor];

        self.navigationBar.standardAppearance = appearance;
        self.navigationBar.scrollEdgeAppearance = appearance;
    }
}

#pragma - UIGestureRecognizerDelegate
- (BOOL)gestureRecognizerShouldBegin:(UIGestureRecognizer *)gestureRecognizer {
    return self.topViewController.canDrag;
}

- (BOOL)gestureRecognizer:(UIGestureRecognizer *)gestureRecognizer shouldRecognizeSimultaneouslyWithGestureRecognizer:(UIGestureRecognizer *)otherGestureRecognizer {
    return YES;
}

@end
