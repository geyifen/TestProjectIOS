//
//  TestProjectVC.m
//  TestProjectIOS
//
//  Created by 李文凡 on 2023/1/19.
//

#import "TestProjectVC.h"

@interface TestProjectVC ()

@end

@implementation TestProjectVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    //这个是设置controller的布局不是从顶部或者底部开始
    self.edgesForExtendedLayout = UIRectEdgeNone;
{
    //如果有navigationController和tabBarController容器，要同时设置这两种，和上面的设置效果是一样的
//    //这个是改变navigationController的bar不是透明的，这样controll不会从顶部开始布局
//    self.navigationController.navigationBar.translucent = NO;
//    //这个是改变tabBarController的bar不是透明的，这样controll不会从低部开始布局
//    self.tabBarController.tabBar.translucent = NO;
}
}

@end
