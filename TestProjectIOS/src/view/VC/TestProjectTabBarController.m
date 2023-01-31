//
//  TestProjectTabBarController.m
//  TestProjectIOS
//
//  Created by 李文凡 on 2023/1/19.
//

#import "TestProjectTabBarController.h"

#import "TestProjectNavigationController.h"
#import "TestProjectMyController.h"
#import "TestProjectHomeController.h"

@interface TestProjectTabBarController ()

@end

@implementation TestProjectTabBarController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor whiteColor];
//    self.tabBar.tintColor = [UIColor whiteColor];
//    self.tabBar.backgroundColor = [UIColor whiteColor];
//    self.tabBar.barTintColor = [UIColor whiteColor];
    
    TestProjectHomeController *homeVC = [[TestProjectHomeController alloc] init];
    TestProjectNavigationController *homeNavController = [[TestProjectNavigationController alloc] initWithRootViewController:homeVC];
    
    TestProjectMyController *myVC = [[TestProjectMyController alloc] init];
    TestProjectNavigationController *myNavController = [[TestProjectNavigationController alloc] initWithRootViewController:myVC];
    
    self.viewControllers = @[homeNavController, myNavController];
}

@end
