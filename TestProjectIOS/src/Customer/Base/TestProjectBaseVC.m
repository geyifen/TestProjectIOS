//
//  TestProjectBaseVC.m
//  TestProjectIOS
//
//  Created by 李文凡 on 2023/1/19.
//

#import "TestProjectBaseVC.h"
#import "TestProjectCategoryHeader.h"

@interface TestProjectBaseVC ()

@end

@implementation TestProjectBaseVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    //这个是设置controller的布局不是从顶部或者底部开始, 这个的tab容器还是有问题的
    self.tabBarController.edgesForExtendedLayout = UIRectEdgeNone;
    self.edgesForExtendedLayout = UIRectEdgeNone;
    self.extendedLayoutIncludesOpaqueBars = NO;
//{
//    //如果有navigationController和tabBarController容器，要同时设置这两种，和上面的设置效果是一样的
//    //这个是改变navigationController的bar不是透明的，这样controll不会从顶部开始布局
//    self.navigationController.navigationBar.translucent = NO;
//    //这个是改变tabBarController的bar不是透明的，这样controll不会从底部开始布局
//    self.tabBarController.tabBar.translucent = NO;
//}
    self.view.backgroundColor = [UIColor whiteColor];
    NSLog(@"%@ %@ %p %@", NSStringFromSelector(_cmd), NSStringFromClass(self.class), self, self.title)
}

- (BOOL)canDrag {
    return YES;
}

- (void)dealloc {
    NSLog(@"%@ %@ %p %@", NSStringFromSelector(_cmd), NSStringFromClass(self.class), self, self.title)
}

@end
