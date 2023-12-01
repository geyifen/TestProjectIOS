//
//  TestProjectUINavigationBarAppearance.m
//  TestProjectIOS
//
//  Created by liwenfan on 2023/4/12.
//

#import "TestProjectUINavigationBarAppearance.h"

@implementation TestProjectUINavigationBarAppearance

- (NSMutableArray *)TestProjectNavigationBarAppearance_setBackIndicatorImage_transitionMaskImage:(TestProjectTableViewParams *)params {
    WS(wSelf);
    [self createModelWithParams:params title:@"设置indicatorImage和transitionMaskImage" block:^{
        [wSelf.barApperance setBackIndicatorImage:[UIImage imageNamed:@"lyf_2"] transitionMaskImage:[UIImage imageNamed:@"lyf_3"]];
        [wSelf setConfigAppear];
    }];
    return self.dataMutArr;
}

- (NSDictionary *)method_9:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"执行UINavigationController的UINavigationBar的standardAppearance的的方法",
            @"title": @"- (void)setBackIndicatorImage:(nullable UIImage *)backIndicatorImage transitionMaskImage:(nullable UIImage *)backIndicatorTransitionMaskImage;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectNavigationBarAppearance_setBackIndicatorImage_transitionMaskImage:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectNavigationBarAppearance_property_backIndicatorTransitionMaskImage:(TestProjectTableViewParams *)params {
    return [self createModelSingleArrayWithParams:params
                                         property:@"backIndicatorTransitionMaskImage"
                                            value:nil
                                        operation:TestProjectCreateModelGetBeforeClickGet
                                            block:nil];
}

- (NSDictionary *)method_8:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"设置获取UINavigationController的UINavigationBar的standardAppearance的属性backIndicatorTransitionMaskImage",
            @"title": @"@property (nonatomic, readonly, strong) UIImage *backIndicatorTransitionMaskImage;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectNavigationBarAppearance_property_backIndicatorTransitionMaskImage:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectNavigationBarAppearance_property_backIndicatorImage:(TestProjectTableViewParams *)params {
    return [self createModelSingleArrayWithParams:params
                                         property:@"backIndicatorImage"
                                            value:nil
                                        operation:TestProjectCreateModelGetBeforeClickGet
                                            block:nil];
}

- (NSDictionary *)method_7:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"设置获取UINavigationController的UINavigationBar的standardAppearance的属性backIndicatorImage",
            @"title": @"@property (nonatomic, readonly, strong) UIImage *backIndicatorImage;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectNavigationBarAppearance_property_backIndicatorImage:params],
            }
        },
    };
}

//typedef NS_ENUM(NSInteger, UIBarButtonItemStyle) {
//    UIBarButtonItemStylePlain,
//    UIBarButtonItemStyleBordered API_DEPRECATED_WITH_REPLACEMENT("UIBarButtonItemStylePlain", ios(2.0, 8.0)),
//    UIBarButtonItemStyleDone,
//};

- (NSMutableArray *)TestProjectNavigationBarAppearance_property_backButtonAppearance:(TestProjectTableViewParams *)params {
    NSArray *arr = @[
        @{
            @"title": [NSString stringWithFormat:@"UIBarButtonItemStylePlain(%ld)", UIBarButtonItemStylePlain],
            @"value": @(UIBarButtonItemStylePlain),
        },
        @{
            @"title": [NSString stringWithFormat:@"UIBarButtonItemStyleDone(%ld)", UIBarButtonItemStyleDone],
            @"value": @(UIBarButtonItemStyleDone),
        },
    ];
    WS(wSelf);
    for (NSDictionary *dic in arr) {
        NSString *title = dic[@"title"];
        UIBarButtonItemStyle style = (UIBarButtonItemStyle)[dic[@"value"] integerValue];
        UIBarButtonItemAppearance *item = [[UIBarButtonItemAppearance alloc] initWithStyle:style];
        [self createModelWithParams:params
                              title:title
                           property:@"backButtonAppearance"
                              value:item
                          operation:TestProjectCreateModelGetBeforeClickSet
                              block:^{
            [wSelf setConfigAppear];
        }];
    }
    return self.dataMutArr;
}

- (NSDictionary *)method_6:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"设置获取UINavigationController的UINavigationBar的standardAppearance的属性backButtonAppearance",
            @"title": @"@property (nonatomic, readwrite, copy) UIBarButtonItemAppearance *backButtonAppearance;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectNavigationBarAppearance_property_backButtonAppearance:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectNavigationBarAppearance_property_doneButtonAppearance:(TestProjectTableViewParams *)params {
    NSArray *arr = @[
        @{
            @"title": [NSString stringWithFormat:@"UIBarButtonItemStylePlain(%ld)", UIBarButtonItemStylePlain],
            @"value": @(UIBarButtonItemStylePlain),
        },
        @{
            @"title": [NSString stringWithFormat:@"UIBarButtonItemStyleDone(%ld)", UIBarButtonItemStyleDone],
            @"value": @(UIBarButtonItemStyleDone),
        },
    ];
    WS(wSelf);
    for (NSDictionary *dic in arr) {
        NSString *title = dic[@"title"];
        UIBarButtonItemStyle style = (UIBarButtonItemStyle)[dic[@"value"] integerValue];
        UIBarButtonItemAppearance *item = [[UIBarButtonItemAppearance alloc] initWithStyle:style];
        [self createModelWithParams:params
                              title:title
                           property:@"doneButtonAppearance"
                              value:item
                          operation:TestProjectCreateModelGetBeforeClickSet
                              block:^{
            [wSelf setConfigAppear];
        }];
    }

    return self.dataMutArr;
}

- (NSDictionary *)method_5:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"设置获取UINavigationController的UINavigationBar的standardAppearance的属性doneButtonAppearance",
            @"title": @"@property (nonatomic, readwrite, copy) UIBarButtonItemAppearance *doneButtonAppearance;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectNavigationBarAppearance_property_doneButtonAppearance:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectNavigationBarAppearance_property_buttonAppearance:(TestProjectTableViewParams *)params {
    NSArray *arr = @[
        @{
            @"title": [NSString stringWithFormat:@"UIBarButtonItemStylePlain(%ld)", UIBarButtonItemStylePlain],
            @"value": @(UIBarButtonItemStylePlain),
        },
        @{
            @"title": [NSString stringWithFormat:@"UIBarButtonItemStyleDone(%ld)", UIBarButtonItemStyleDone],
            @"value": @(UIBarButtonItemStyleDone),
        },
    ];
    WS(wSelf);
    for (NSDictionary *dic in arr) {
        NSString *title = dic[@"title"];
        UIBarButtonItemStyle style = (UIBarButtonItemStyle)[dic[@"value"] integerValue];
        UIBarButtonItemAppearance *item = [[UIBarButtonItemAppearance alloc] initWithStyle:style];
        [self createModelWithParams:params
                              title:title
                           property:@"buttonAppearance"
                              value:item
                          operation:TestProjectCreateModelGetBeforeClickSet
                              block:^{
            [wSelf setConfigAppear];
        }];
    }
    return self.dataMutArr;
}

- (NSDictionary *)method_4:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"设置获取UINavigationController的UINavigationBar的standardAppearance的属性buttonAppearance",
            @"title": @"@property (nonatomic, readwrite, copy) UIBarButtonItemAppearance *buttonAppearance;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectNavigationBarAppearance_property_buttonAppearance:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectNavigationBarAppearance_property_largeTitleTextAttributes:(TestProjectTableViewParams *)params {
    WS(wSelf);
    return [self createModelSingleArrayWithParams:params
                                         property:@"largeTitleTextAttributes"
                                            value:@{NSForegroundColorAttributeName:[UIColor purpleColor]}
                                        operation:TestProjectCreateModelGetBeforeClickSet
                                            block:^{
        wSelf.parentVC.navigationController.navigationBar.prefersLargeTitles = YES;
        [wSelf setConfigAppear];
    }];
}

- (NSDictionary *)method_3:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"设置获取UINavigationController的UINavigationBar的standardAppearance的属性largeTitleTextAttributes",
            @"title": @"@property (nonatomic, readwrite, copy) NSDictionary<NSAttributedStringKey, id> *largeTitleTextAttributes;",
            @"isDataModelExpand": @(YES),
            @"desc": @"这个要在viewDidLoad后设置，前置条件是必须要开启大标题显示",
            @"dataModel": @{
                @"childItems": [self TestProjectNavigationBarAppearance_property_largeTitleTextAttributes:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectNavigationBarAppearance_property_titlePositionAdjustment:(TestProjectTableViewParams *)params {
    NSArray *arr = @[
        [NSValue valueWithUIOffset:UIOffsetMake(10, 10)],
        [NSValue valueWithUIOffset:UIOffsetMake(10, -10)],
        [NSValue valueWithUIOffset:UIOffsetMake(-10, 10)],
        [NSValue valueWithUIOffset:UIOffsetMake(-10, -10)],
    ];
    WS(wSelf);
    for (NSValue *value in arr) {
        [self createModelWithParams:params
                           property:@"titlePositionAdjustment"
                              value:value
                          operation:TestProjectCreateModelGetBeforeClickSet
                              block:^{
            [wSelf setConfigAppear];
        }];
    }
    return self.dataMutArr;
}

- (NSDictionary *)method_2:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"设置获取UINavigationController的UINavigationBar的standardAppearance的属性titlePositionAdjustment",
            @"title": @"@property (nonatomic, readwrite, assign) UIOffset titlePositionAdjustment;",
            @"isDataModelExpand": @(YES),
            @"desc": @"设置标题的偏移量，x为正往左偏移，为负往右偏移；y为正往下偏移，为负往上偏移",
            @"dataModel": @{
                @"childItems": [self TestProjectNavigationBarAppearance_property_titlePositionAdjustment:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectNavigationBarAppearance_property_titleTextAttributes:(TestProjectTableViewParams *)params {
    WS(wSelf);    
    return [self createModelSingleArrayWithParams:params
                                         property:@"titleTextAttributes"
                                            value:@{NSForegroundColorAttributeName:[UIColor redColor]}
                                        operation:TestProjectCreateModelGetBeforeClickSet
                                            block:^{
        wSelf.parentVC.navigationController.navigationBar.prefersLargeTitles = YES;
        [wSelf setConfigAppear];
    }];
}

- (NSDictionary *)method_1:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"设置获取UINavigationController的UINavigationBar的standardAppearance的属性titleTextAttributes",
            @"title": @"@property (nonatomic, readwrite, copy) NSDictionary<NSAttributedStringKey, id> *titleTextAttributes;",
            @"isDataModelExpand": @(YES),
            @"desc": @"这个要在viewDidLoad后设置",
            @"dataModel": @{
                @"childItems": [self TestProjectNavigationBarAppearance_property_titleTextAttributes:params],
            }
        },
    };
}

@end
