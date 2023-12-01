//
//  TestProjectUIContentSizeCategoryLimit.m
//  TestProjectIOS
//
//  Created by liwenfan on 2023/5/26.
//

#import "TestProjectUIContentSizeCategoryLimit.h"

@implementation TestProjectUIContentSizeCategoryLimit

- (NSMutableArray *)TestProjectViewContentSizeCategoryLimit_property_appliedContentSizeCategoryLimitsDescription:(TestProjectTableViewParams *)params {
    return [self createModelSingleArrayWithParams:params
                                         property:@"appliedContentSizeCategoryLimitsDescription"
                                            value:nil
                                        operation:TestProjectCreateModelGetBeforeClickGet
                                            block:nil];
}

- (NSDictionary *)method_3:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"获取执行UIView的某个属性appliedContentSizeCategoryLimitsDescription，暂时不太懂",
            @"title": @"@property (nonatomic, copy, readonly) NSString *appliedContentSizeCategoryLimitsDescription API_AVAILABLE(ios(15.0));",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectViewContentSizeCategoryLimit_property_appliedContentSizeCategoryLimitsDescription:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectViewContentSizeCategoryLimit_property_maximumContentSizeCategory :(TestProjectTableViewParams *)params {
    NSArray *arr = @[
        @{
            @"title": @"设置的属性值是UIContentSizeCategoryUnspecified",
            @"value": UIContentSizeCategoryUnspecified,
        },
        @{
            @"title": @"设置的属性值是UIContentSizeCategoryExtraSmall",
            @"value": UIContentSizeCategoryExtraSmall,
        },
        @{
            @"title": @"设置的属性值是UIContentSizeCategorySmall",
            @"value": UIContentSizeCategorySmall,
        },
        @{
            @"title": @"设置的属性值是UIContentSizeCategoryMedium",
            @"value": UIContentSizeCategoryMedium,
        },
        @{
            @"title": @"设置的属性值是UIContentSizeCategoryLarge",
            @"value": UIContentSizeCategoryLarge,
        },
        @{
            @"title": @"设置的属性值是UIContentSizeCategoryExtraLarge",
            @"value": UIContentSizeCategoryExtraLarge,
        },
        @{
            @"title": @"设置的属性值是UIContentSizeCategoryExtraExtraLarge",
            @"value": UIContentSizeCategoryExtraExtraLarge,
        },
        @{
            @"title": @"设置的属性值是UIContentSizeCategoryExtraExtraExtraLarge",
            @"value": UIContentSizeCategoryExtraExtraExtraLarge,
        },
        @{
            @"title": @"设置的属性值是UIContentSizeCategoryAccessibilityMedium",
            @"value": UIContentSizeCategoryAccessibilityMedium,
        },
        @{
            @"title": @"设置的属性值是UIContentSizeCategoryAccessibilityLarge",
            @"value": UIContentSizeCategoryAccessibilityLarge,
        },
        @{
            @"title": @"设置的属性值是UIContentSizeCategoryAccessibilityExtraLarge",
            @"value": UIContentSizeCategoryAccessibilityExtraLarge,
        },
        @{
            @"title": @"设置的属性值是UIContentSizeCategoryAccessibilityExtraExtraLarge",
            @"value": UIContentSizeCategoryAccessibilityExtraExtraLarge,
        },
        @{
            @"title": @"设置的属性值是UIContentSizeCategoryAccessibilityExtraExtraExtraLarge",
            @"value": UIContentSizeCategoryAccessibilityExtraExtraExtraLarge,
        },
    ];
    for (NSDictionary *dic in arr) {
        NSString *title = dic[@"title"];
        NSString *value = dic[@"value"];
        WS(wSelf);
        [self createModelWithParams:params
                              title:title
                           property:@"wantsDateDecorations"
                              value:value
                          operation:TestProjectCreateModelGetBeforeClickSet
                              block:^{
            [wSelf.childView layoutIfNeeded];
        }];
    }
    return self.dataMutArr;
}

- (NSDictionary *)method_2:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"获取执行UIView的某个属性maximumContentSizeCategory，暂时不太懂",
            @"title": @"@property (nonatomic, copy, nullable) UIContentSizeCategory maximumContentSizeCategory API_AVAILABLE(ios(15.0));",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectViewContentSizeCategoryLimit_property_maximumContentSizeCategory:params],
            }
        },
    };
}

//UIKIT_EXTERN UIContentSizeCategory const UIContentSizeCategoryUnspecified API_AVAILABLE(ios(10.0));
//UIKIT_EXTERN UIContentSizeCategory const UIContentSizeCategoryExtraSmall API_AVAILABLE(ios(7.0));
//UIKIT_EXTERN UIContentSizeCategory const UIContentSizeCategorySmall API_AVAILABLE(ios(7.0));
//UIKIT_EXTERN UIContentSizeCategory const UIContentSizeCategoryMedium API_AVAILABLE(ios(7.0));
//UIKIT_EXTERN UIContentSizeCategory const UIContentSizeCategoryLarge API_AVAILABLE(ios(7.0));
//UIKIT_EXTERN UIContentSizeCategory const UIContentSizeCategoryExtraLarge API_AVAILABLE(ios(7.0));
//UIKIT_EXTERN UIContentSizeCategory const UIContentSizeCategoryExtraExtraLarge API_AVAILABLE(ios(7.0));
//UIKIT_EXTERN UIContentSizeCategory const UIContentSizeCategoryExtraExtraExtraLarge API_AVAILABLE(ios(7.0));
//
//// Accessibility sizes
//UIKIT_EXTERN UIContentSizeCategory const UIContentSizeCategoryAccessibilityMedium API_AVAILABLE(ios(7.0));
//UIKIT_EXTERN UIContentSizeCategory const UIContentSizeCategoryAccessibilityLarge API_AVAILABLE(ios(7.0));
//UIKIT_EXTERN UIContentSizeCategory const UIContentSizeCategoryAccessibilityExtraLarge API_AVAILABLE(ios(7.0));
//UIKIT_EXTERN UIContentSizeCategory const UIContentSizeCategoryAccessibilityExtraExtraLarge API_AVAILABLE(ios(7.0));
//UIKIT_EXTERN UIContentSizeCategory const UIContentSizeCategoryAccessibilityExtraExtraExtraLarge API_AVAILABLE(ios(7.0));

- (NSMutableArray *)TestProjectViewContentSizeCategoryLimit_property_minimumContentSizeCategory :(TestProjectTableViewParams *)params {
    NSArray *arr = @[
        @{
            @"title": @"设置的属性值是UIContentSizeCategoryUnspecified",
            @"value": UIContentSizeCategoryUnspecified,
        },
        @{
            @"title": @"设置的属性值是UIContentSizeCategoryExtraSmall",
            @"value": UIContentSizeCategoryExtraSmall,
        },
        @{
            @"title": @"设置的属性值是UIContentSizeCategorySmall",
            @"value": UIContentSizeCategorySmall,
        },
        @{
            @"title": @"设置的属性值是UIContentSizeCategoryMedium",
            @"value": UIContentSizeCategoryMedium,
        },
        @{
            @"title": @"设置的属性值是UIContentSizeCategoryLarge",
            @"value": UIContentSizeCategoryLarge,
        },
        @{
            @"title": @"设置的属性值是UIContentSizeCategoryExtraLarge",
            @"value": UIContentSizeCategoryExtraLarge,
        },
        @{
            @"title": @"设置的属性值是UIContentSizeCategoryExtraExtraLarge",
            @"value": UIContentSizeCategoryExtraExtraLarge,
        },
        @{
            @"title": @"设置的属性值是UIContentSizeCategoryExtraExtraExtraLarge",
            @"value": UIContentSizeCategoryExtraExtraExtraLarge,
        },
        @{
            @"title": @"设置的属性值是UIContentSizeCategoryAccessibilityMedium",
            @"value": UIContentSizeCategoryAccessibilityMedium,
        },
        @{
            @"title": @"设置的属性值是UIContentSizeCategoryAccessibilityLarge",
            @"value": UIContentSizeCategoryAccessibilityLarge,
        },
        @{
            @"title": @"设置的属性值是UIContentSizeCategoryAccessibilityExtraLarge",
            @"value": UIContentSizeCategoryAccessibilityExtraLarge,
        },
        @{
            @"title": @"设置的属性值是UIContentSizeCategoryAccessibilityExtraExtraLarge",
            @"value": UIContentSizeCategoryAccessibilityExtraExtraLarge,
        },
        @{
            @"title": @"设置的属性值是UIContentSizeCategoryAccessibilityExtraExtraExtraLarge",
            @"value": UIContentSizeCategoryAccessibilityExtraExtraExtraLarge,
        },
    ];
    for (NSDictionary *dic in arr) {
        NSString *title = dic[@"title"];
        NSString *value = dic[@"value"];
        [self createModelWithParams:params
                              title:title
                           property:@"minimumContentSizeCategory"
                              value:value
                          operation:TestProjectCreateModelGetBeforeClickSet
                              block:nil];
    }
    return self.dataMutArr;
}

- (NSDictionary *)method_1:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"获取执行UIView的某个属性minimumContentSizeCategory，暂时不太懂",
            @"title": @"@property (nonatomic, copy, nullable) UIContentSizeCategory minimumContentSizeCategory API_AVAILABLE(ios(15.0));",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectViewContentSizeCategoryLimit_property_minimumContentSizeCategory:params],
            }
        },
    };
}

@end
