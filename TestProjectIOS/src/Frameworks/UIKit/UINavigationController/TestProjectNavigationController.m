//
//  TestProjectNavigationController.m
//  TestProjectIOS
//
//  Created by liwenfan on 2023/4/10.
//

#import "TestProjectNavigationController.h"

@interface TestProjectNavigationController () <UIGestureRecognizerDelegate, UINavigationControllerDelegate>


@end

@implementation TestProjectNavigationController

- (id)setPropertyValueObject {
    return self.parentVC.navigationController;
}

- (BOOL)gestureRecognizerShouldBegin:(UIGestureRecognizer *)gestureRecognizer {
    NSLog(@"gestureRecognizerShouldBegin");
    return NO;
}

// Called when the navigation controller shows a new top view controller via a push, pop or setting of the view controller stack.
- (void)navigationController:(UINavigationController *)navigationController willShowViewController:(UIViewController *)viewController animated:(BOOL)animated {
    NSLog(@"willShowViewController");
}

- (void)navigationController:(UINavigationController *)navigationController didShowViewController:(UIViewController *)viewController animated:(BOOL)animated {
    NSLog(@"didShowViewController");
}
//只有这个回调能改变屏幕的方向
- (UIInterfaceOrientationMask)navigationControllerSupportedInterfaceOrientations:(UINavigationController *)navigationController API_AVAILABLE(ios(7.0)) API_UNAVAILABLE(tvos) {
    NSLog(@"navigationControllerSupportedInterfaceOrientations");
    return UIInterfaceOrientationMaskLandscapeRight;
}
//这个回调不会调用
- (UIInterfaceOrientation)navigationControllerPreferredInterfaceOrientationForPresentation:(UINavigationController *)navigationController API_AVAILABLE(ios(7.0)) API_UNAVAILABLE(tvos) {
    NSLog(@"navigationControllerPreferredInterfaceOrientationForPresentation");
    return UIInterfaceOrientationPortrait;
}

- (NSDictionary *)method_1 {
    return @{
        @"dataModel": @{
            @"abstract": @"把当前vc pop到指定的vc里",
            @"title": @"- (nullable NSArray<__kindof UIViewController *> *)popToViewController:(UIViewController *)viewController animated:(BOOL)animated;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectChildNavigationController_popToViewController_animated],
            }
        },
    };
}

- (NSDictionary *)method_2 {
    return @{
        @"dataModel": @{
            @"abstract": @"把当前vc pop到rootvc里",
            @"title": @"- (nullable NSArray<__kindof UIViewController *> *)popToRootViewControllerAnimated:(BOOL)animated;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectChildNavigationController_popToRootViewControllerAnimated],
            }
        },
    };
}

- (NSDictionary *)method_3 {
    return @{
        @"dataModel": @{
            @"abstract": @"获取UINavigationController的属性topViewController",
            @"title": @"@property(nullable, nonatomic,readonly,strong) UIViewController *topViewController;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectChildNavigationController_topViewController],
            }
        },
    };
}

- (NSDictionary *)method_4 {
    return @{
        @"dataModel": @{
            @"abstract": @"获取UINavigationController的属性visibleViewController",
            @"title": @"@property(nullable, nonatomic,readonly,strong) UIViewController *visibleViewController;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectChildNavigationController_visibleViewController],
            }
        },
    };
}

- (NSDictionary *)method_5 {
    return @{
        @"dataModel": @{
            @"abstract": @"设置当前导航栏的viewControllers",
            @"title": @"@property(nonatomic,copy) NSArray<__kindof UIViewController *> *viewControllers;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectChildNavigationController_viewControllers],
            }
        },
    };
}

- (NSDictionary *)method_6 {
    return @{
        @"dataModel": @{
            @"abstract": @"设置当前导航栏的navigationBarHidden",
            @"title": @"@property(nonatomic,getter=isNavigationBarHidden) BOOL navigationBarHidden;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectChildNavigationController_navigationBarHidden],
            }
        },
    };
}

- (NSDictionary *)method_7 {
    return @{
        @"dataModel": @{
            @"abstract": @"设置当前导航栏的navigationBar",
            @"title": @"@property(nonatomic,readonly) UINavigationBar *navigationBar;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectChildNavigationController_navigationBar],
            }
        },
    };
}

- (NSDictionary *)method_8 {
    return @{
        @"dataModel": @{
            @"abstract": @"设置当前导航栏的toolbarHidden",
            @"title": @"@property(nonatomic,getter=isToolbarHidden) BOOL toolbarHidden API_AVAILABLE(ios(3.0)) API_UNAVAILABLE(tvos);",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectChildNavigationController_toolbarHidden],
            }
        },
    };
}

- (NSDictionary *)method_9:(NSInteger)index {
    return @{
        @"dataModel": @{
            @"abstract": @"获取UINavigationController的属性toolbar",
            @"title": @"@property(null_resettable,nonatomic,readonly) UIToolbar *toolbar API_AVAILABLE(ios(3.0)) API_UNAVAILABLE(tvos);",
            @"desc": @"直接获取这个属性会崩溃，需要点击的时候获取",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectChildNavigationController_toolbar:index],
            }
        },
    };
}

- (NSDictionary *)method_10 {
    return @{
        @"dataModel": @{
            @"abstract": @"获取UINavigationController的属性delegate",
            @"title": @"@property(nullable, nonatomic, weak) id<UINavigationControllerDelegate> delegate;",
            @"isDataModelExpand": @(YES),
            @"desc": @"设置代理后push或者pop都有回调代理执行，而且可以改变屏幕的方向",
            @"dataModel": @{
                @"childItems": [self TestProjectChildNavigationController_delegate],
            }
        },
    };
}

- (NSDictionary *)method_11 {
    return @{
        @"dataModel": @{
            @"abstract": @"获取UINavigationController的属性interactivePopGestureRecognizer",
            @"title": @"@property(nullable, nonatomic, readonly) UIGestureRecognizer *interactivePopGestureRecognizer API_AVAILABLE(ios(7.0)) API_UNAVAILABLE(tvos);",
            @"desc": @"设置它的代理后可以控制手机左边侧滑的开启或者禁止情况",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectChildNavigationController_interactivePopGestureRecognizer],
            }
        },
    };
}

- (NSDictionary *)method_12 {
    return @{
        @"dataModel": @{
            @"abstract": @"获取UINavigationController的属性hidesBarsWhenKeyboardAppears",
            @"title": @"@property (nonatomic, readwrite, assign) BOOL hidesBarsWhenKeyboardAppears API_AVAILABLE(ios(8.0)) API_UNAVAILABLE(tvos);",
            @"isDataModelExpand": @(YES),
            @"desc": @"设置YES时，当有键盘出现的时候会隐藏导航栏",
            @"dataModel": @{
                @"childItems": [self TestProjectChildNavigationController_hidesBarsWhenKeyboardAppears],
            }
        },
    };
}

- (NSDictionary *)method_13 {
    return @{
        @"dataModel": @{
            @"abstract": @"获取UINavigationController的属性hidesBarsOnSwipe",
            @"title": @"@property (nonatomic, readwrite, assign) BOOL hidesBarsOnSwipe API_AVAILABLE(ios(8.0)) API_UNAVAILABLE(tvos);",
            @"isDataModelExpand": @(YES),
            @"desc": @"设置YES时，当vc页面上下滑动时会隐藏导航栏",
            @"dataModel": @{
                @"childItems": [self TestProjectChildNavigationController_hidesBarsOnSwipe],
            }
        },
    };
}

- (NSDictionary *)method_14 {
    return @{
        @"dataModel": @{
            @"abstract": @"获取UINavigationController的属性barHideOnSwipeGestureRecognizer",
            @"title": @"@property (nonatomic, readonly, strong) UIPanGestureRecognizer *barHideOnSwipeGestureRecognizer API_AVAILABLE(ios(8.0)) API_UNAVAILABLE(tvos);",
            @"isDataModelExpand": @(YES),
            @"desc": @"它的delegate不可以被重新设置",
            @"dataModel": @{
                @"childItems": [self TestProjectChildNavigationController_barHideOnSwipeGestureRecognizer],
            }
        },
    };
}

- (NSDictionary *)method_15 {
    return @{
        @"dataModel": @{
            @"abstract": @"获取UINavigationController的属性hidesBarsWhenVerticallyCompact",
            @"title": @"@property (nonatomic, readwrite, assign) BOOL hidesBarsWhenVerticallyCompact API_AVAILABLE(ios(8.0)) API_UNAVAILABLE(tvos);",
            @"isDataModelExpand": @(YES),
            @"desc": @"设置YES时，当屏幕改变方向时会隐藏导航栏",
            @"dataModel": @{
                @"childItems": [self TestProjectChildNavigationController_hidesBarsWhenVerticallyCompact],
            }
        },
    };
}

- (NSDictionary *)method_16 {
    return @{
        @"dataModel": @{
            @"abstract": @"获取UINavigationController的属性hidesBarsOnTap",
            @"title": @"@property (nonatomic, readwrite, assign) BOOL hidesBarsOnTap API_AVAILABLE(ios(8.0)) API_UNAVAILABLE(tvos);",
            @"isDataModelExpand": @(YES),
            @"desc": @"设置YES时，当视图被点击时会隐藏导航栏",
            @"dataModel": @{
                @"childItems": [self TestProjectChildNavigationController_hidesBarsOnTap],
            }
        },
    };
}

- (NSDictionary *)method_17 {
    return @{
        @"dataModel": @{
            @"abstract": @"获取UINavigationController的属性barHideOnTapGestureRecognizer",
            @"title": @"@property (nonatomic, readonly, assign) UITapGestureRecognizer *barHideOnTapGestureRecognizer API_AVAILABLE(ios(8.0)) API_UNAVAILABLE(tvos);",
            @"desc": @"它的delegate不可以被重新设置",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectChildNavigationController_barHideOnTapGestureRecognizer],
            }
        },
    };
}

- (NSMutableArray *)TestProjectChildNavigationController_barHideOnTapGestureRecognizer {
    return [self createTableModelSingleArrayWithProperty:@"barHideOnTapGestureRecognizer" value:nil];
//    WS(wSelf);
//    return [self createTableModelSingleArrayWithTitle:[NSString stringWithFormat:@"获取的属性值(barHideOnTapGestureRecognizer)为：%@", self.parentVC.navigationController.barHideOnTapGestureRecognizer] block:^{
//        //不可以重新设置
//        wSelf.parentVC.navigationController.barHideOnTapGestureRecognizer.delegate = wSelf;
//    }];
}

- (NSMutableArray *)TestProjectChildNavigationController_hidesBarsOnTap {
    NSArray *arr = @[@(YES), @(NO)];
    for (NSNumber *num in arr) {
        [self createClickSetTableModelWithProperty:@"hidesBarsOnTap" value:num];
    }
    return self.dataMutArr;
}

- (NSMutableArray *)TestProjectChildNavigationController_hidesBarsWhenVerticallyCompact {
    NSArray *arr = @[@(YES), @(NO)];
    for (NSNumber *num in arr) {
        [self createClickSetTableModelWithProperty:@"hidesBarsWhenVerticallyCompact" value:num];
    }
    return self.dataMutArr;
}

- (NSMutableArray *)TestProjectChildNavigationController_barHideOnSwipeGestureRecognizer {
    return [self createTableModelSingleArrayWithProperty:@"barHideOnSwipeGestureRecognizer" value:nil];
//    WS(wSelf);
//    return [self createTableModelSingleArrayWithTitle:[NSString stringWithFormat:@"获取的属性值(barHideOnSwipeGestureRecognizer)为：%@", self.parentVC.navigationController.barHideOnSwipeGestureRecognizer] block:^{
//        //不可以重新设置
//        wSelf.parentVC.navigationController.barHideOnSwipeGestureRecognizer.delegate = wSelf;
//    }];
}

- (NSMutableArray *)TestProjectChildNavigationController_hidesBarsOnSwipe {
    NSArray *arr = @[@(YES), @(NO)];
    for (NSNumber *num in arr) {
        [self createClickSetTableModelWithProperty:@"hidesBarsOnSwipe" value:num];
    }
    return self.dataMutArr;
}

- (NSMutableArray *)TestProjectChildNavigationController_hidesBarsWhenKeyboardAppears {
    NSArray *arr = @[@(YES), @(NO)];
    for (NSNumber *num in arr) {
        [self createClickSetTableModelWithProperty:@"hidesBarsWhenKeyboardAppears" value:num];
    }
    return self.dataMutArr;
}

- (NSMutableArray *)TestProjectChildNavigationController_interactivePopGestureRecognizer {
//    return [self createTableModelSingleArrayWithProperty:@"interactivePopGestureRecognizer" value:nil];
    WS(wSelf);
    return [self createTableModelSingleArrayWithTitle:[NSString stringWithFormat:@"获取的属性值(interactivePopGestureRecognizer)为：%@", self.parentVC.navigationController.interactivePopGestureRecognizer] block:^{
        //不可以重新设置
        wSelf.parentVC.navigationController.interactivePopGestureRecognizer.delegate = wSelf;
    }];
}

- (NSMutableArray *)TestProjectChildNavigationController_delegate {
//    return [self createTableModelSingleArrayWithProperty:@"delegate" value:nil];
    WS(wSelf);
    return [self createTableModelSingleArrayWithTitle:[NSString stringWithFormat:@"获取的属性值(delegate)为：%@", self.parentVC.navigationController.delegate] block:^{
        //不可以重新设置
        wSelf.parentVC.navigationController.delegate = wSelf;
    }];
}

- (NSMutableArray *)TestProjectChildNavigationController_toolbar:(NSInteger)index {
    __block TestProjectTableModel *m;
    WS(wSelf);
    m = [self createTableModelWithTitle:@"点击之后获取该属性" block:^{
        m.desc = [NSString stringWithFormat:@"获取的toolbar为:%@", wSelf.parentVC.navigationController.toolbar];
        [m calculDataViewHeight];
        NSInteger atIndex = wSelf.tableView.dataSourceArray.count - index -1;
        TestProjectTableModel *vm = [wSelf.tableView.dataSourceArray objectAtIndex:atIndex];
        [vm calculDataViewHeight];
        [wSelf.tableView reloadRowsAtIndexPaths:@[[NSIndexPath indexPathForRow:atIndex inSection:0]] withRowAnimation:UITableViewRowAnimationNone];
    }];
    return self.dataMutArr;
}

- (NSMutableArray *)TestProjectChildNavigationController_toolbarHidden {
    NSArray *arr = @[@(YES), @(NO)];
    for (NSNumber *num in arr) {
        [self createClickSetTableModelWithProperty:@"toolbarHidden" value:num];
    }
    return self.dataMutArr;
}

- (NSMutableArray *)TestProjectChildNavigationController_navigationBar {
    return [self createTableModelSingleArrayWithProperty:@"navigationBar" value:nil];
}

- (NSMutableArray *)TestProjectChildNavigationController_navigationBarHidden {
    WS(wSelf);
    [self createTableModelSingleArrayWithTitle:@"设置导航栏不隐藏，值为NO" block:^{
        wSelf.parentVC.navigationController.navigationBarHidden = NO;
    }];
    return [self createTableModelSingleArrayWithTitle:@"设置导航栏隐藏，值为YES" block:^{
        wSelf.parentVC.navigationController.navigationBarHidden = YES;
    }];
}

- (NSMutableArray *)TestProjectChildNavigationController_viewControllers {
    WS(wSelf);
    return [self createTableModelSingleArrayWithTitle:@"set viewControllers" block:^{
        UINavigationController *rootVC = UIApplication.rootNavController;
        NSArray *childVCs = rootVC.childViewControllers;
        if (childVCs.count > 3) {
            NSArray *childArr = [childVCs subarrayWithRange:NSMakeRange(0, 3)];
            rootVC.viewControllers = childArr;
            [UIAlertController alertWithTitle:[NSString stringWithFormat:@"把当前vc:%@ 的导航栏的viewControllers设置为:", wSelf.parentVC] message:[NSString stringWithFormat:@"%@", childArr] cancelTitle:@"取消" cancelBlock:nil sureTitle:nil sureBlock:nil];
        }
    }];
}

- (NSMutableArray *)TestProjectChildNavigationController_visibleViewController {
    return [self createTableModelSingleArrayWithProperty:@"visibleViewController" value:nil];
}

- (NSMutableArray *)TestProjectChildNavigationController_topViewController {
    return [self createTableModelSingleArrayWithProperty:@"topViewController" value:nil];
}

- (NSMutableArray *)TestProjectChildNavigationController_popToRootViewControllerAnimated {
    WS(wSelf);
    return [self createTableModelSingleArrayWithTitle:@"pop vc ToRootViewController" block:^{
        UINavigationController *rootVC = UIApplication.rootNavController;
        NSArray *childVCs = rootVC.childViewControllers;
        UIViewController *toVC = [childVCs objectAtIndex:2];
        NSArray *arr = [rootVC popToRootViewControllerAnimated:YES];
        [UIAlertController alertWithTitle:[NSString stringWithFormat:@"把当前vc:%@pop到rootvc:%@", wSelf.parentVC, toVC] message:[NSString stringWithFormat:@"pop的vc有:\n%@", arr] cancelTitle:@"取消" cancelBlock:nil sureTitle:nil sureBlock:nil];
    }];
}

- (NSMutableArray *)TestProjectChildNavigationController_popToViewController_animated {
    WS(wSelf);
    return [self createTableModelSingleArrayWithTitle:@"pop vc ToViewController" block:^{
        UINavigationController *rootVC = UIApplication.rootNavController;
        NSArray *childVCs = rootVC.childViewControllers;
        if (childVCs.count > 3) {
            UIViewController *toVC = [childVCs objectAtIndex:2];
            NSArray *arr = [rootVC popToViewController:toVC animated:YES];
            [UIAlertController alertWithTitle:[NSString stringWithFormat:@"把当前vc:%@pop到指定vc:%@", wSelf.parentVC, toVC] message:[NSString stringWithFormat:@"pop的vc有:\n%@", arr] cancelTitle:@"取消" cancelBlock:nil sureTitle:nil sureBlock:nil];
        }
    }];
}

@end
