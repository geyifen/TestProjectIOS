//
//  TestProjectUINavigationControllerItem.m
//  TestProjectIOS
//
//  Created by liwenfan on 2023/4/11.
//

#import "TestProjectUINavigationControllerItem.h"

@implementation TestProjectUINavigationControllerItem

- (id)setPropertyValueObject:(TestProjectTableViewParams *)params {
    return self.parentVC;
}

- (NSMutableArray *)TestProjectViewControllerNavigationControllerItem_property_navigationController:(TestProjectTableViewParams *)params {
    return [self createModelSingleArrayWithParams:params
                                         property:@"navigationController"
                                            value:nil
                                        operation:TestProjectCreateModelGetBeforeClickGet
                                            block:nil];
}

- (NSDictionary *)method_3:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"获取UIViewController的navigationController",
            @"title": @"@property(nullable, nonatomic,readonly,strong) UINavigationController *navigationController;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectViewControllerNavigationControllerItem_property_navigationController:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectViewControllerNavigationControllerItem_property_hidesBottomBarWhenPushed:(TestProjectTableViewParams *)params {
    NSArray *arr = @[@(YES), @(NO)];
    for (NSNumber *value in arr) {
        [self createModelWithParams:params
                           property:@"hidesBottomBarWhenPushed"
                              value:value
                          operation:TestProjectCreateModelGetBeforeClickSet
                              block:nil];
    }
    return self.dataMutArr;
}

- (NSDictionary *)method_2:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"设置UIViewController的hidesBottomBarWhenPushed",
            @"title": @"@property(nonatomic) BOOL hidesBottomBarWhenPushed API_UNAVAILABLE(tvos);",
            @"isDataModelExpand": @(YES),
            @"desc": @"设置了没有用",
            @"dataModel": @{
                @"childItems": [self TestProjectViewControllerNavigationControllerItem_property_hidesBottomBarWhenPushed:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectViewControllerNavigationControllerItem_property_navigationItem:(TestProjectTableViewParams *)params {
    return [self createModelSingleArrayWithParams:params
                                         property:@"navigationItem"
                                            value:nil
                                        operation:TestProjectCreateModelGetBeforeClickGet
                                            block:nil];
}

- (NSDictionary *)method_1:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"获取UIViewController的navigationItem",
            @"title": @"@property(nonatomic,readonly,strong) UINavigationItem *navigationItem;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectViewControllerNavigationControllerItem_property_navigationItem:params],
            }
        },
    };
}

@end
