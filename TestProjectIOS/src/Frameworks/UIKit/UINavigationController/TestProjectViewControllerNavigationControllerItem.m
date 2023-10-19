//
//  TestProjectViewControllerNavigationControllerItem.m
//  TestProjectIOS
//
//  Created by liwenfan on 2023/4/11.
//

#import "TestProjectViewControllerNavigationControllerItem.h"

@implementation TestProjectViewControllerNavigationControllerItem

- (id)setPropertyValueObject {
    return self.parentVC;
}

- (NSDictionary *)method_1 {
    return @{
        @"dataModel": @{
            @"abstract": @"获取UIViewController的navigationItem",
            @"title": @"@property(nonatomic,readonly,strong) UINavigationItem *navigationItem;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectViewControllerNavigationControllerItem_property_navigationItem],
            }
        },
    };
}

- (NSDictionary *)method_2 {
    return @{
        @"dataModel": @{
            @"abstract": @"设置UIViewController的hidesBottomBarWhenPushed",
            @"title": @"@property(nonatomic) BOOL hidesBottomBarWhenPushed API_UNAVAILABLE(tvos);",
            @"isDataModelExpand": @(YES),
            @"desc": @"设置了没有用",
            @"dataModel": @{
                @"childItems": [self TestProjectViewControllerNavigationControllerItem_property_hidesBottomBarWhenPushed],
            }
        },
    };
}

- (NSDictionary *)method_3 {
    return @{
        @"dataModel": @{
            @"abstract": @"获取UIViewController的navigationController",
            @"title": @"@property(nullable, nonatomic,readonly,strong) UINavigationController *navigationController;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectViewControllerNavigationControllerItem_property_navigationController],
            }
        },
    };
}

- (NSMutableArray *)TestProjectViewControllerNavigationControllerItem_property_navigationController {
    return [self createTableModelSingleArrayWithProperty:@"navigationController" value:nil];
}

- (NSMutableArray *)TestProjectViewControllerNavigationControllerItem_property_hidesBottomBarWhenPushed {
    NSArray *arr = @[@(YES), @(NO)];
    for (NSNumber *num in arr) {
        [self createClickSetTableModelWithProperty:@"hidesBottomBarWhenPushed" value:num];
    }
    return self.dataMutArr;
}

- (NSMutableArray *)TestProjectViewControllerNavigationControllerItem_property_navigationItem {
    return [self createTableModelSingleArrayWithProperty:@"navigationItem" value:nil];
}

@end
