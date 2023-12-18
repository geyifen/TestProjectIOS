//
//  TestProjectUINavigationController.m
//  TestProjectIOS
//
//  Created by liwenfan on 2023/4/10.
//

#import "TestProjectUINavigationController.h"

@interface TestProjectUINavigationController () <UIGestureRecognizerDelegate, UINavigationControllerDelegate>


@end

@implementation TestProjectUINavigationController

- (id)setPropertyValueObject:(TestProjectTableViewParams *)params {
    return self.parentVC.navigationController;
}

- (BOOL)gestureRecognizerShouldBegin:(UIGestureRecognizer *)gestureRecognizer:(TestProjectTableViewParams *)params {
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

- (NSMutableArray *)TestProjectChildNavigationController_barHideOnTapGestureRecognizer:(TestProjectTableViewParams *)params {
    return [self createModelSingleArrayWithParams:params
                                         property:@"barHideOnTapGestureRecognizer"
                                            value:nil
                                        operation:TestProjectCreateModelGetBeforeClickGet
                                            block:nil];
//    WS(wSelf);
//    return [self createModelSingleArrayWithParams:params title:[NSString stringWithFormat:@"获取的属性值(barHideOnTapGestureRecognizer)为：%@", self.parentVC.navigationController.barHideOnTapGestureRecognizer] block:^{
//        //不可以重新设置
//        wSelf.parentVC.navigationController.barHideOnTapGestureRecognizer.delegate = wSelf;
//    }];
}

- (NSDictionary *)method_17:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"获取UINavigationController的属性barHideOnTapGestureRecognizer",
            @"title": @"@property (nonatomic, readonly, assign) UITapGestureRecognizer *barHideOnTapGestureRecognizer API_AVAILABLE(ios(8.0)) API_UNAVAILABLE(tvos);",
            @"desc": @"它的delegate不可以被重新设置",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectChildNavigationController_barHideOnTapGestureRecognizer:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectChildNavigationController_hidesBarsOnTap:(TestProjectTableViewParams *)params {
    NSArray *arr = @[@(YES), @(NO)];
    for (NSNumber *value in arr) {
        [self createModelWithParams:params
                           property:@"hidesBarsOnTap"
                              value:value
                          operation:TestProjectCreateModelGetBeforeClickSet
                              block:nil];
    }
    return self.dataMutArr;
}

- (NSDictionary *)method_16:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"获取UINavigationController的属性hidesBarsOnTap",
            @"title": @"@property (nonatomic, readwrite, assign) BOOL hidesBarsOnTap API_AVAILABLE(ios(8.0)) API_UNAVAILABLE(tvos);",
            @"isDataModelExpand": @(YES),
            @"desc": @"设置YES时，当视图被点击时会隐藏导航栏",
            @"dataModel": @{
                @"childItems": [self TestProjectChildNavigationController_hidesBarsOnTap:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectChildNavigationController_hidesBarsWhenVerticallyCompact:(TestProjectTableViewParams *)params {
    NSArray *arr = @[@(YES), @(NO)];
    for (NSNumber *value in arr) {
        [self createModelWithParams:params
                           property:@"hidesBarsWhenVerticallyCompact"
                              value:value
                          operation:TestProjectCreateModelGetBeforeClickSet
                              block:nil];
    }
    return self.dataMutArr;
}

- (NSDictionary *)method_15:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"获取UINavigationController的属性hidesBarsWhenVerticallyCompact",
            @"title": @"@property (nonatomic, readwrite, assign) BOOL hidesBarsWhenVerticallyCompact API_AVAILABLE(ios(8.0)) API_UNAVAILABLE(tvos);",
            @"isDataModelExpand": @(YES),
            @"desc": @"设置YES时，当屏幕改变方向时会隐藏导航栏",
            @"dataModel": @{
                @"childItems": [self TestProjectChildNavigationController_hidesBarsWhenVerticallyCompact:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectChildNavigationController_barHideOnSwipeGestureRecognizer:(TestProjectTableViewParams *)params {
    return [self createModelSingleArrayWithParams:params
                                         property:@"barHideOnSwipeGestureRecognizer"
                                            value:nil
                                        operation:TestProjectCreateModelGetBeforeClickGet
                                            block:nil];
//    WS(wSelf);
//    return [self createModelSingleArrayWithParams:params title:[NSString stringWithFormat:@"获取的属性值(barHideOnSwipeGestureRecognizer)为：%@", self.parentVC.navigationController.barHideOnSwipeGestureRecognizer] block:^{
//        //不可以重新设置
//        wSelf.parentVC.navigationController.barHideOnSwipeGestureRecognizer.delegate = wSelf;
//    }];
}

- (NSDictionary *)method_14:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"获取UINavigationController的属性barHideOnSwipeGestureRecognizer",
            @"title": @"@property (nonatomic, readonly, strong) UIPanGestureRecognizer *barHideOnSwipeGestureRecognizer API_AVAILABLE(ios(8.0)) API_UNAVAILABLE(tvos);",
            @"isDataModelExpand": @(YES),
            @"desc": @"它的delegate不可以被重新设置",
            @"dataModel": @{
                @"childItems": [self TestProjectChildNavigationController_barHideOnSwipeGestureRecognizer:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectChildNavigationController_hidesBarsOnSwipe:(TestProjectTableViewParams *)params {
    NSArray *arr = @[@(YES), @(NO)];
    for (NSNumber *value in arr) {
        [self createModelWithParams:params
                           property:@"hidesBarsOnSwipe"
                              value:value
                          operation:TestProjectCreateModelGetBeforeClickSet
                              block:nil];
    }
    return self.dataMutArr;
}

- (NSDictionary *)method_13:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"获取UINavigationController的属性hidesBarsOnSwipe",
            @"title": @"@property (nonatomic, readwrite, assign) BOOL hidesBarsOnSwipe API_AVAILABLE(ios(8.0)) API_UNAVAILABLE(tvos);",
            @"isDataModelExpand": @(YES),
            @"desc": @"设置YES时，当vc页面上下滑动时会隐藏导航栏",
            @"dataModel": @{
                @"childItems": [self TestProjectChildNavigationController_hidesBarsOnSwipe:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectChildNavigationController_hidesBarsWhenKeyboardAppears:(TestProjectTableViewParams *)params {
    NSArray *arr = @[@(YES), @(NO)];
    for (NSNumber *value in arr) {
        [self createModelWithParams:params
                           property:@"hidesBarsWhenKeyboardAppears"
                              value:value
                          operation:TestProjectCreateModelGetBeforeClickSet
                              block:nil];
    }
    return self.dataMutArr;
}

- (NSDictionary *)method_12:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"获取UINavigationController的属性hidesBarsWhenKeyboardAppears",
            @"title": @"@property (nonatomic, readwrite, assign) BOOL hidesBarsWhenKeyboardAppears API_AVAILABLE(ios(8.0)) API_UNAVAILABLE(tvos);",
            @"isDataModelExpand": @(YES),
            @"desc": @"设置YES时，当有键盘出现的时候会隐藏导航栏",
            @"dataModel": @{
                @"childItems": [self TestProjectChildNavigationController_hidesBarsWhenKeyboardAppears:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectChildNavigationController_interactivePopGestureRecognizer:(TestProjectTableViewParams *)params {
//    return [self createTableModelSingleArrayWithProperty:@"interactivePopGestureRecognizer" value:nil];
    WS(wSelf);
    return [self createModelSingleArrayWithParams:params title:[NSString stringWithFormat:@"获取的属性值(interactivePopGestureRecognizer)为：%@", self.parentVC.navigationController.interactivePopGestureRecognizer] block:^{
        //不可以重新设置
        wSelf.parentVC.navigationController.interactivePopGestureRecognizer.delegate = wSelf;
    }];
}

- (NSDictionary *)method_11:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"获取UINavigationController的属性interactivePopGestureRecognizer",
            @"title": @"@property(nullable, nonatomic, readonly) UIGestureRecognizer *interactivePopGestureRecognizer API_AVAILABLE(ios(7.0)) API_UNAVAILABLE(tvos);",
            @"desc": @"设置它的代理后可以控制手机左边侧滑的开启或者禁止情况",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectChildNavigationController_interactivePopGestureRecognizer:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectChildNavigationController_delegate:(TestProjectTableViewParams *)params {
//    return [self createTableModelSingleArrayWithProperty:@"delegate" value:nil];
    WS(wSelf);
    return [self createModelSingleArrayWithParams:params title:[NSString stringWithFormat:@"获取的属性值(delegate)为：%@", self.parentVC.navigationController.delegate] block:^{
        //不可以重新设置
        wSelf.parentVC.navigationController.delegate = wSelf;
    }];
}

- (NSDictionary *)method_10:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"获取UINavigationController的属性delegate",
            @"title": @"@property(nullable, nonatomic, weak) id<UINavigationControllerDelegate> delegate;",
            @"isDataModelExpand": @(YES),
            @"desc": @"设置代理后push或者pop都有回调代理执行，而且可以改变屏幕的方向",
            @"dataModel": @{
                @"childItems": [self TestProjectChildNavigationController_delegate:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectChildNavigationController_toolbar:(TestProjectTableViewParams *)params {
    __block TestProjectTableViewModel *m;
    WS(wSelf);
    m = [self createModelWithParams:params title:@"点击之后获取该属性" block:^{
        m.desc = [NSString stringWithFormat:@"获取的toolbar为:%@", wSelf.parentVC.navigationController.toolbar];
        [m calculDataViewHeight:params];
        NSInteger atIndex = wSelf.tableView.dataSourceArray.count - params.selectIndex - 1;
        TestProjectTableViewModel *vm = [wSelf.tableView.dataSourceArray objectAtIndex:atIndex];
        [vm calculDataViewHeight:params];
        [wSelf.tableView reloadRowsAtIndexPaths:@[[NSIndexPath indexPathForRow:atIndex inSection:0]] withRowAnimation:UITableViewRowAnimationNone];
    }];
    return self.dataMutArr;
}

- (NSDictionary *)method_9:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"获取UINavigationController的属性toolbar",
            @"title": @"@property(null_resettable,nonatomic,readonly) UIToolbar *toolbar API_AVAILABLE(ios(3.0)) API_UNAVAILABLE(tvos);",
            @"desc": @"直接获取这个属性会崩溃，需要点击的时候获取",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectChildNavigationController_toolbar:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectChildNavigationController_toolbarHidden:(TestProjectTableViewParams *)params {
    NSArray *arr = @[@(YES), @(NO)];
    for (NSNumber *value in arr) {
        [self createModelWithParams:params
                           property:@"toolbarHidden"
                              value:value
                          operation:TestProjectCreateModelGetBeforeClickSet
                              block:nil];
    }
    return self.dataMutArr;
}

- (NSDictionary *)method_8:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"设置当前导航栏的toolbarHidden",
            @"title": @"@property(nonatomic,getter=isToolbarHidden) BOOL toolbarHidden API_AVAILABLE(ios(3.0)) API_UNAVAILABLE(tvos);",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectChildNavigationController_toolbarHidden:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectChildNavigationController_navigationBar:(TestProjectTableViewParams *)params {
    return [self createModelSingleArrayWithParams:params
                                         property:@"navigationBar"
                                            value:nil
                                        operation:TestProjectCreateModelGetBeforeClickGet
                                            block:nil];
}

- (NSDictionary *)method_7:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"设置当前导航栏的navigationBar",
            @"title": @"@property(nonatomic,readonly) UINavigationBar *navigationBar;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectChildNavigationController_navigationBar:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectChildNavigationController_navigationBarHidden:(TestProjectTableViewParams *)params {
    WS(wSelf);
    [self createModelSingleArrayWithParams:params title:@"设置导航栏不隐藏，值为NO" block:^{
        wSelf.parentVC.navigationController.navigationBarHidden = NO;
    }];
    return [self createModelSingleArrayWithParams:params title:@"设置导航栏隐藏，值为YES" block:^{
        wSelf.parentVC.navigationController.navigationBarHidden = YES;
    }];
}

- (NSDictionary *)method_6:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"设置当前导航栏的navigationBarHidden",
            @"title": @"@property(nonatomic,getter=isNavigationBarHidden) BOOL navigationBarHidden;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectChildNavigationController_navigationBarHidden:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectChildNavigationController_viewControllers:(TestProjectTableViewParams *)params {
    WS(wSelf);
    return [self createModelSingleArrayWithParams:params title:@"set viewControllers" block:^{
        UINavigationController *rootVC = UIApplication.rootNavController;
        NSArray *childVCs = rootVC.childViewControllers;
        if (childVCs.count > 3) {
            NSArray *childArr = [childVCs subarrayWithRange:NSMakeRange(0, 3)];
            rootVC.viewControllers = childArr;
            [UIAlertController alertWithTitle:[NSString stringWithFormat:@"把当前vc:%@ 的导航栏的viewControllers设置为:", wSelf.parentVC] message:[NSString stringWithFormat:@"%@", childArr] cancelTitle:@"取消" cancelBlock:nil sureTitle:nil sureBlock:nil];
        }
    }];
}

- (NSDictionary *)method_5:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"设置当前导航栏的viewControllers",
            @"title": @"@property(nonatomic,copy) NSArray<__kindof UIViewController *> *viewControllers;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectChildNavigationController_viewControllers:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectChildNavigationController_visibleViewController:(TestProjectTableViewParams *)params {
    return [self createModelSingleArrayWithParams:params
                                         property:@"visibleViewController"
                                            value:nil
                                        operation:TestProjectCreateModelGetBeforeClickGet
                                            block:nil];
}

- (NSDictionary *)method_4:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"获取UINavigationController的属性visibleViewController",
            @"title": @"@property(nullable, nonatomic,readonly,strong) UIViewController *visibleViewController;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectChildNavigationController_visibleViewController:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectChildNavigationController_topViewController:(TestProjectTableViewParams *)params {
    return [self createModelSingleArrayWithParams:params
                                         property:@"topViewController"
                                            value:nil
                                        operation:TestProjectCreateModelGetBeforeClickGet
                                            block:nil];
}

- (NSDictionary *)method_3:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"获取UINavigationController的属性topViewController",
            @"title": @"@property(nullable, nonatomic,readonly,strong) UIViewController *topViewController;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectChildNavigationController_topViewController:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectChildNavigationController_popToRootViewControllerAnimated:(TestProjectTableViewParams *)params {
    WS(wSelf);
    return [self createModelSingleArrayWithParams:params title:@"pop vc ToRootViewController" block:^{
        UINavigationController *rootVC = UIApplication.rootNavController;
        NSArray *childVCs = rootVC.childViewControllers;
        UIViewController *toVC = [childVCs objectAtIndex:2];
        NSArray *arr = [rootVC popToRootViewControllerAnimated:YES];
        [UIAlertController alertWithTitle:[NSString stringWithFormat:@"把当前vc:%@pop到rootvc:%@", wSelf.parentVC, toVC] message:[NSString stringWithFormat:@"pop的vc有:\n%@", arr] cancelTitle:@"取消" cancelBlock:nil sureTitle:nil sureBlock:nil];
    }];
}

- (NSDictionary *)method_2:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"把当前vc pop到rootvc里",
            @"title": @"- (nullable NSArray<__kindof UIViewController *> *)popToRootViewControllerAnimated:(BOOL)animated;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectChildNavigationController_popToRootViewControllerAnimated:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectChildNavigationController_popToViewController_animated:(TestProjectTableViewParams *)params {
    WS(wSelf);
    return [self createModelSingleArrayWithParams:params title:@"pop vc ToViewController" block:^{
        UINavigationController *rootVC = UIApplication.rootNavController;
        NSArray *childVCs = rootVC.childViewControllers;
        if (childVCs.count > 3) {
            UIViewController *toVC = [childVCs objectAtIndex:2];
            NSArray *arr = [rootVC popToViewController:toVC animated:YES];
            [UIAlertController alertWithTitle:[NSString stringWithFormat:@"把当前vc:%@pop到指定vc:%@", wSelf.parentVC, toVC] message:[NSString stringWithFormat:@"pop的vc有:\n%@", arr] cancelTitle:@"取消" cancelBlock:nil sureTitle:nil sureBlock:nil];
        }
    }];
}

- (NSDictionary *)method_1:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"把当前vc pop到指定的vc里",
            @"title": @"- (nullable NSArray<__kindof UIViewController *> *)popToViewController:(UIViewController *)viewController animated:(BOOL)animated;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectChildNavigationController_popToViewController_animated:params],
            }
        },
    };
}

@end
