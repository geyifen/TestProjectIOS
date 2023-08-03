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
    
    //设置手势左侧滑动的代理
    self.interactivePopGestureRecognizer.delegate = self;
    self.interactivePopGestureRecognizer.enabled = YES;

    if (@available(iOS 13.0, *)) {
        //push 的时候导航栏会闪一下
        UINavigationBarAppearance *appearance = [[UINavigationBarAppearance alloc] init];
        [appearance configureWithOpaqueBackground];
        //这个去除导航分割线，必须在上面方法执行后在执行，要不然还是有的
        [appearance configureWithTransparentBackground];
        appearance.backgroundColor = [UIColor whiteColor];

        self.navigationBar.standardAppearance = appearance;
        self.navigationBar.scrollEdgeAppearance = appearance;
    }
    if (@available(iOS 15.0, *)) {
        //在ios15之后UITableView的sectionHeader会有一个默认的padding
        UITableView.appearance.sectionHeaderTopPadding = 0;
    }
}

- (BOOL)enableLog {
    return NO;
}

#pragma - UIGestureRecognizerDelegate
- (BOOL)gestureRecognizerShouldBegin:(UIGestureRecognizer *)gestureRecognizer {
    return self.topViewController.canDrag;
}

- (BOOL)gestureRecognizer:(UIGestureRecognizer *)gestureRecognizer shouldRecognizeSimultaneouslyWithGestureRecognizer:(UIGestureRecognizer *)otherGestureRecognizer {
    return YES;
}

- (BOOL)navigationBar:(UINavigationBar *)navigationBar shouldPushItem:(UINavigationItem *)item {
    NSLog(@"TestProjectBaseNavigationController %@ item.title:%@", NSStringFromSelector(_cmd), item.title);
    return YES;
}

- (void)navigationBar:(UINavigationBar *)navigationBar didPushItem:(UINavigationItem *)item {
    NSLog(@"TestProjectBaseNavigationController %@ item.title:%@", NSStringFromSelector(_cmd), item.title);
}

- (BOOL)navigationBar:(UINavigationBar *)navigationBar shouldPopItem:(UINavigationItem *)item {
    NSLog(@"TestProjectBaseNavigationController %@ item.title:%@", NSStringFromSelector(_cmd), item.title);
    return YES;
}

- (void)navigationBar:(UINavigationBar *)navigationBar didPopItem:(UINavigationItem *)item {
    NSLog(@"TestProjectBaseNavigationController %@ item.title:%@", NSStringFromSelector(_cmd), item.title);
}

@end
