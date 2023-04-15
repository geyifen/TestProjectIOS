//
//  TestProjectNavigationBar.m
//  TestProjectIOS
//
//  Created by zjrcumac on 2023/4/11.
//

#import "TestProjectNavigationBar.h"

@implementation TestProjectNavigationBar

- (NSDictionary *)method_1 {
    return @{
        @"@property(nullable, nonatomic,readonly,strong) UINavigationItem *topItem;":@{
            @"method":@"TestProjectNavigationController_property_method:",
            @"jumpModel":@{
                @"jumpMethod":@"topItem",
            },
            @"desc":@"获取导航栏的topItem"}
    };
}

- (NSDictionary *)method_2 {
    return @{
        @"@property(nullable, nonatomic,readonly,strong) UINavigationItem *backItem;":@{
            @"method":@"TestProjectNavigationController_property_method:",
            @"jumpModel":@{
                @"jumpMethod":@"backItem",
            },
            @"desc":@"获取导航栏的backItem"}
    };
}

- (NSDictionary *)method_3 {
    return @{
        @"@property(nullable,nonatomic,copy) NSArray<UINavigationItem *> *items;":@{
            @"method":@"TestProjectNavigationController_property_method:",
            @"jumpModel":@{
                @"jumpMethod":@"items",
            },
            @"desc":@"获取导航栏的items"}
    };
}

- (NSDictionary *)method_4 {
    return @{
        @"@property(null_resettable, nonatomic,strong) UIColor *tintColor;":@{
            @"method":@"TestProjectNavigationController_property_method:",
            @"jumpModel":@{
                @"jumpMethod":@"setSubNavigationController:",
            },
            @"childTableModel": @{
                @"dataModel": @{
                    @"modelClass": TestProjectDetailVCModel.class,
                    @"detailMethod":@"tintColor",
                },
            },
            @"desc":@"设置导航栏返回按钮文字的颜色"}
    };
}

- (NSDictionary *)method_5 {
    return @{
        @"@property(nullable, nonatomic,strong) UIColor *barTintColor API_AVAILABLE(ios(7.0)) UI_APPEARANCE_SELECTOR;":@{
            @"method":@"TestProjectNavigationController_property_method:",
            @"jumpModel":@{
                @"jumpMethod":@"setSubNavigationController:",
            },
            @"childTableModel": @{
                @"dataModel": @{
                    @"modelClass": TestProjectDetailVCModel.class,
                    @"detailMethod":@"barTintColor",
                },
            },
            @"desc":@"设置导航栏的背景颜色 \n 如果设置了standardAppearance会把这个属性放到下面"}
    };
}


@end
