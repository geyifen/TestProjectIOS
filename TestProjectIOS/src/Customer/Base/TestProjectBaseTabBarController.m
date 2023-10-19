//
//  TestProjectBaseTabBarController.m
//  TestProjectIOS
//
//  Created by 李文凡 on 2023/1/19.
//

#import "TestProjectBaseTabBarController.h"

#import "TestProjectBaseNavigationController.h"
#import "TestProjectMyController.h"
#import "TestProjectFunctionController.h"
#import "TestProjectHomeController.h"

@interface TestProjectBaseTabBarController ()

@end

@implementation TestProjectBaseTabBarController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor yellowColor];
//    self.tabBar.tintColor = [UIColor whiteColor];
//    self.tabBar.backgroundColor = [UIColor whiteColor];
//    self.tabBar.barTintColor = [UIColor whiteColor];
    
    TestProjectHomeController *homeVC = [[TestProjectHomeController alloc] init];
    TestProjectBaseNavigationController *homeNavController = [[TestProjectBaseNavigationController alloc] initWithRootViewController:homeVC];
    homeNavController.navigationBarHidden = YES;
    
    TestProjectFunctionController *functionVC = [[TestProjectFunctionController alloc] init];
    TestProjectBaseNavigationController *functionNavController = [[TestProjectBaseNavigationController alloc] initWithRootViewController:functionVC];
    functionNavController.navigationBarHidden = YES;
    
    TestProjectMyController *myVC = [[TestProjectMyController alloc] init];
    TestProjectBaseNavigationController *myNavController = [[TestProjectBaseNavigationController alloc] initWithRootViewController:myVC];
    myNavController.navigationBarHidden = YES;
    
    self.viewControllers = @[functionNavController, homeNavController, myNavController];
//    self.viewControllers = @[homeVC, myVC];
}

@end
