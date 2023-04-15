//
//  TestProjectNavigationController.m
//  TestProjectIOS
//
//  Created by zjrcumac on 2023/4/10.
//

#import "TestProjectNavigationController.h"

@implementation TestProjectViewTableController

- (TestProjectDetailVCModel *)createTabModelWithDesc:(NSString *)desc {
    return [self createTabModelWithDesc:desc title:nil];
}

- (TestProjectDetailVCModel *)createTabModelWithDesc:(NSString *)desc title:(NSString *)title {
    TestProjectDetailVCModel *m = [[TestProjectDetailVCModel alloc] init];
    m.desc = desc;
    m.title = title;
    [m calculDataViewHeight];
    [self.dataMutArr addObject:m];
    return m;
}

- (void)operationWithVC:(TestProjectDetailObjectController *)vc
                 isPush:(BOOL)isPush
                 method:(NSString *)method
              viewModel:(TestProjectTableModel *)viewModel {
    NSString *vcName = NSStringFromClass(vc.class);
    NSString *fromText = isPush ? @"push" : @"present";
    NSString *desc = [NSString stringWithFormat:@"我是通过%@过来的 \n 获取的是%@的属性%@: ", fromText, vcName, method];
    TestProjectDetailVCModel *m = [self createTabModelWithDesc:desc];
    WO(wObjc, m);
    m.clickBlock = ^{
        TestProjectDetailVCModel *vm = [wObjc copy];
        vm.childTableModel = viewModel.childTableModel;
        if (method) {
            vm.detailMethod = [NSString stringWithFormat:@"get_%@", method];
        }
        vc.viewModel = vm;
        
        if (isPush) {
            if (UIApplication.rootNavController.presentedViewController) {
                [UIApplication.rootCurrentController dismissViewControllerAnimated:YES completion:nil];
            }
            [UIApplication.rootNavController pushViewController:vc animated:YES];
        } else {
            if (vc.modalTransitionStyle == UIModalTransitionStylePartialCurl) {
                if (UIApplication.rootNavController.presentedViewController) {
                    [UIApplication.rootCurrentController dismissViewControllerAnimated:YES completion:nil];
                }
                [UIApplication.rootNavController pushViewController:vc animated:YES];
            } else {
                [UIApplication.rootCurrentController presentViewController:vc animated:YES completion:nil];
            }
        }
    };
}

- (void)operationWithMethod:(NSString *)method viewModel:(TestProjectTableModel *)viewModel {
    [self operationWithVC:self.tVC isPush:YES method:method viewModel:viewModel];
    [self operationWithVC:self.tVC isPush:NO method:method viewModel:viewModel];
    self.tableView.dataSourceArray = self.dataMutArr;
}

- (void)TestProjectNavigationController_property_method:(TestProjectTableModel *)viewModel {
    [self operationWithMethod:viewModel.jumpModel.jumpMethod viewModel:viewModel];
}

- (TestProjectTestVC *)tVC {
    if (!_tVC) {
        _tVC = [[TestProjectTestVC alloc] init];
    }
    return _tVC;
}

@end

@interface TestProjectNavigationController ()


@end

@implementation TestProjectNavigationController

- (NSDictionary *)method_1 {
    return @{
        @"- push":@{
            @"method":@"TestProjectNavigationController_push",
            @"jumpType": @(TestProjectJumpTypeOfClick),
            @"desc":@"已经有UINavigationController的不能在push UINavigationController, 只能push普通的UIViewController \n 可以present UINavigationController, present后的UINavigationController 可以继续push UIViewController"}
    };
}

- (NSDictionary *)method_2 {
    return @{
        @"- (nullable UIViewController *)popViewControllerAnimated:(BOOL)animated;":@{
            @"method":@"TestProjectNavigationController_property_method:",
            @"jumpModel":@{
                @"jumpMethod":@"popViewControllerAnimated",
            },
            @"desc":@"获取UINavigationController的popViewControllerAnimated"}
    };
}

- (NSDictionary *)method_3 {
    return @{
        @"- (nullable NSArray<__kindof UIViewController *> *)popToViewController:(UIViewController *)viewController animated:(BOOL)animated;":@{
            @"method":@"TestProjectNavigationController_property_method:",
            @"jumpModel":@{
                @"jumpMethod":@"popToViewController_animated",
            },
            @"desc":@"获取UINavigationController的popToViewController_animated"}
    };
}

- (NSDictionary *)method_4 {
    return @{
        @"- (nullable NSArray<__kindof UIViewController *> *)popToRootViewControllerAnimated:(BOOL)animated;":@{
            @"method":@"TestProjectNavigationController_property_method:",
            @"jumpModel":@{
                @"jumpMethod":@"popToRootViewControllerAnimated",
            },
            @"desc":@"获取UINavigationController的popToRootViewControllerAnimated"}
    };
}


- (NSDictionary *)method_5 {
    return @{
        @"@property(nullable, nonatomic,readonly,strong) UIViewController *topViewController;":@{
            @"method":@"TestProjectNavigationController_property_method:",
            @"jumpModel":@{
                @"jumpMethod":@"topViewController",
            },
            @"desc":@"获取UINavigationController的topViewController"}
    };
}

- (NSDictionary *)method_6 {
    return @{
        @"@property(nullable, nonatomic,readonly,strong) UIViewController *visibleViewController;":@{
            @"method":@"TestProjectNavigationController_property_method:",
            @"jumpModel":@{
                @"jumpMethod":@"visibleViewController",
            },
            @"desc":@"获取UINavigationController的visibleViewController"}
    };
}

- (NSDictionary *)method_7 {
    return @{
        @"@property(nonatomic,copy) NSArray<__kindof UIViewController *> *viewControllers;":@{
            @"method":@"TestProjectNavigationController_property_method:",
            @"jumpModel":@{
                @"jumpMethod":@"viewControllers",
            },
            @"desc":@"获取UINavigationController的viewControllers"}
    };
}

- (NSDictionary *)method_8 {
    return @{
        @"- (void)setNavigationBarHidden:(BOOL)hidden animated:(BOOL)animated;":@{
            @"method":@"TestProjectNavigationController_property_method:",
            @"jumpModel":@{
                @"jumpMethod":@"setNavigationBarHidden_animated",
            },
            @"desc":@"设置UINavigationController的setNavigationBarHidden_animated \n 当点击时UINavigationController的bar会隐藏"}
    };
}

- (NSDictionary *)method_9 {
    return @{
        @"@property(nonatomic,readonly) UINavigationBar *navigationBar;":@{
            @"method":@"TestProjectNavigationController_property_method:",
            @"jumpModel":@{
                @"jumpMethod":@"navigationBar",
            },
            @"desc":@"获取UINavigationController的navigationBar"}
    };
}

- (NSDictionary *)method_10 {
    return @{
        @"- (void)setToolbarHidden:(BOOL)hidden animated:(BOOL)animated API_AVAILABLE(ios(3.0)) API_UNAVAILABLE(tvos);":@{
            @"method":@"TestProjectNavigationController_property_method:",
            @"jumpModel":@{
                @"jumpMethod":@"setToolbarHidden_animated",
            },
            @"desc":@"获取UINavigationController的setToolbarHidden_animated"}
    };
}

- (NSDictionary *)method_11 {
    return @{
        @"- (void)setToolbarHidden:(BOOL)hidden animated:(BOOL)animated API_AVAILABLE(ios(3.0)) API_UNAVAILABLE(tvos);":@{
            @"method":@"TestProjectNavigationController_property_method:",
            @"jumpModel":@{
                @"jumpMethod":@"setToolbarHidden_animated",
            },
            @"desc":@"获取UINavigationController的setToolbarHidden_animated"}
    };
}

- (NSDictionary *)method_12 {
    return @{
        @"@property(null_resettable,nonatomic,readonly) UIToolbar *toolbar API_AVAILABLE(ios(3.0)) API_UNAVAILABLE(tvos);":@{
            @"method":@"TestProjectNavigationController_property_method:",
            @"jumpModel":@{
                @"jumpMethod":@"toolbar",
            },
            @"desc":@"获取UINavigationController的toolbar"}
    };
}

- (NSDictionary *)method_13 {
    return @{
        @"@property (nonatomic, readwrite, assign) BOOL hidesBarsOnTap API_AVAILABLE(ios(8.0)) API_UNAVAILABLE(tvos);":@{
            @"method":@"TestProjectNavigationController_property_method:",
            @"jumpModel":@{
                @"jumpMethod":@"hidesBarsOnTap",
            },
            @"desc":@"设置UINavigationController的hidesBarsOnTap \n 当点击时UINavigationController的bar会隐藏"}
    };
}

- (void)TestProjectNavigationController_push {
    [UIApplication.rootNavController pushViewController:self.tVC animated:YES];
}

@end
