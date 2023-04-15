//
//  TestProjectViewControllerNavigationControllerItem.m
//  TestProjectIOS
//
//  Created by zjrcumac on 2023/4/11.
//

#import "TestProjectViewControllerNavigationControllerItem.h"

#import "TestProjectTestVC.h"

@interface TestProjectViewControllerNavigationControllerItem ()

@end

@implementation TestProjectViewControllerNavigationControllerItem

- (NSDictionary *)method_1 {
    return @{
        @"@property(nonatomic,readonly,strong) UINavigationItem *navigationItem;":@{
            @"method":@"TestProjectNavigationController_property_method:",
            @"jumpModel":@{
                @"jumpMethod":@"navigationItem",
            },
            @"desc":@"获取UIViewController的navigationItem"}
    };
}

- (NSDictionary *)method_2 {
    return @{
        @"@property(nonatomic) BOOL hidesBottomBarWhenPushed API_UNAVAILABLE(tvos);":@{
            @"method":@"TestProjectNavigationController_property_method:",
            @"jumpModel":@{
                @"jumpMethod":@"hidesBottomBarWhenPushed",
            },
            @"desc":@"设置UIViewController的hidesBottomBarWhenPushed"}
    };
}

- (NSDictionary *)method_3 {
    return @{
        @"@property(nullable, nonatomic,readonly,strong) UINavigationController *navigationController;":@{
            @"method":@"TestProjectNavigationController_property_method:",
            @"jumpModel":@{
                @"jumpMethod":@"navigationController",
            },
            @"desc":@"获取UIViewController的navigationController"}
    };
}

@end
