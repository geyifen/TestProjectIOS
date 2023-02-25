//
//  TestProjectNavigationController.m
//  TestProjectIOS
//
//  Created by 李文凡 on 2023/1/19.
//

#import "TestProjectNavigationController.h"

@interface TestProjectNavigationController ()

@end

@implementation TestProjectNavigationController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor whiteColor];
    self.navigationBar.backgroundColor = [UIColor whiteColor];
    self.navigationBar.barTintColor = [UIColor blueColor];
//    self.navigationBar.tintColor = [UIColor yellowColor];
    [self.navigationBar setBackgroundImage:nil forBarMetrics:UIBarMetricsDefault];
    self.navigationBar.shadowImage = nil;
    self.navigationBar.backIndicatorImage = nil;
    self.navigationBar.backIndicatorTransitionMaskImage = nil;
}

@end
