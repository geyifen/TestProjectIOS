//
//  TestProjectUINavigationBar.m
//  TestProjectIOS
//
//  Created by liwenfan on 2023/4/11.
//

#import "TestProjectUINavigationBar.h"

@interface TestProjectUINavigationBar () <UINavigationBarDelegate>

@end

@implementation TestProjectUINavigationBar

- (id)setPropertyValueObject:(TestProjectTableViewParams *)params {
    return self.parentVC.navigationController.navigationBar;
}

- (NSMutableArray *)TestProjectNavigationBar_property_compactScrollEdgeAppearance:(TestProjectTableViewParams *)params {
    return [self createModelSingleArrayWithParams:params
                                         property:@"compactScrollEdgeAppearance"
                                            value:nil
                                        operation:TestProjectCreateModelGetBeforeClickGet
                                            block:nil];
}

- (NSDictionary *)method_23:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"设置UINavigationController的UINavigationbar的属性compactScrollEdgeAppearance",
            @"title": @"@property(nonatomic,readwrite, copy, nullable) UINavigationBarAppearance *compactScrollEdgeAppearance UI_APPEARANCE_SELECTOR API_AVAILABLE(ios(15.0));",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectNavigationBar_property_compactScrollEdgeAppearance:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectNavigationBar_property_scrollEdgeAppearance:(TestProjectTableViewParams *)params {
    return [self createModelSingleArrayWithParams:params
                                         property:@"scrollEdgeAppearance"
                                            value:nil
                                        operation:TestProjectCreateModelGetBeforeClickGet
                                            block:nil];
}

- (NSDictionary *)method_22:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"设置UINavigationController的UINavigationbar的属性scrollEdgeAppearance",
            @"title": @"@property (nonatomic, readwrite, copy, nullable) UINavigationBarAppearance *scrollEdgeAppearance UI_APPEARANCE_SELECTOR API_AVAILABLE(ios(13.0));",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectNavigationBar_property_scrollEdgeAppearance:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectNavigationBar_property_compactAppearance:(TestProjectTableViewParams *)params {
    return [self createModelSingleArrayWithParams:params
                                         property:@"compactAppearance"
                                            value:nil
                                        operation:TestProjectCreateModelGetBeforeClickGet
                                            block:nil];
}

- (NSDictionary *)method_21:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"设置UINavigationController的UINavigationbar的属性compactAppearance",
            @"title": @"@property (nonatomic, readwrite, copy, nullable) UINavigationBarAppearance *compactAppearance UI_APPEARANCE_SELECTOR API_AVAILABLE(ios(13.0));",
            @"isDataModelExpand": @(YES),
            @"desc": @"设置之后值只显示一个小图片，暂时不知道怎么用的",
            @"dataModel": @{
                @"childItems": [self TestProjectNavigationBar_property_compactAppearance:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectNavigationBar_property_standardAppearance:(TestProjectTableViewParams *)params {
    return [self createModelSingleArrayWithParams:params
                                         property:@"standardAppearance"
                                            value:nil
                                        operation:TestProjectCreateModelGetBeforeClickGet
                                            block:nil];
}

- (NSDictionary *)method_20:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"设置UINavigationController的UINavigationbar的属性standardAppearance",
            @"title": @"@property (nonatomic, readwrite, copy) UINavigationBarAppearance *standardAppearance UI_APPEARANCE_SELECTOR API_AVAILABLE(ios(13.0), tvos(13.0));",
            @"isDataModelExpand": @(YES),
            @"desc": @"设置之后值只显示一个小图片，暂时不知道怎么用的",
            @"dataModel": @{
                @"childItems": [self TestProjectNavigationBar_property_standardAppearance:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectNavigationBar_property_backIndicatorTransitionMaskImage:(TestProjectTableViewParams *)params {
    return [self createModelSingleArrayWithParams:params
                                         property:@"backIndicatorTransitionMaskImage"
                                            value:[UIImage imageNamed:@"lyf_1"]
                                        operation:TestProjectCreateModelGetBeforeClickSet
                                            block:nil];
}

- (NSDictionary *)method_19:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"设置UINavigationController的UINavigationbar的属性backIndicatorTransitionMaskImage",
            @"title": @"@property(nullable,nonatomic,strong) UIImage *backIndicatorTransitionMaskImage API_AVAILABLE(ios(7.0)) UI_APPEARANCE_SELECTOR API_UNAVAILABLE(tvos);",
            @"isDataModelExpand": @(YES),
            @"desc": @"设置之后值只显示一个小图片，暂时不知道怎么用的",
            @"dataModel": @{
                @"childItems": [self TestProjectNavigationBar_property_backIndicatorTransitionMaskImage:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectNavigationBar_property_backIndicatorImage:(TestProjectTableViewParams *)params {
    return [self createModelSingleArrayWithParams:params
                                         property:@"backIndicatorImage"
                                            value:[UIImage imageNamed:@"lyf_1"]
                                        operation:TestProjectCreateModelGetBeforeClickSet
                                            block:nil];
}

- (NSDictionary *)method_18:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"设置UINavigationController的UINavigationbar的属性backIndicatorImage",
            @"title": @"@property(nullable,nonatomic,strong) UIImage *backIndicatorImage API_AVAILABLE(ios(7.0)) UI_APPEARANCE_SELECTOR API_UNAVAILABLE(tvos);",
            @"isDataModelExpand": @(YES),
            @"desc": @"设置无效",
            @"dataModel": @{
                @"childItems": [self TestProjectNavigationBar_property_backIndicatorImage:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectNavigationBar_setTitleVerticalPositionAdjustment_forBarMetrics:(TestProjectTableViewParams *)params {
    WS(wSelf);
    [self createModelWithParams:params title:@"设置标题偏移位置20" block:^{
        [wSelf.parentVC.navigationController.navigationBar setTitleVerticalPositionAdjustment:20 forBarMetrics:UIBarMetricsDefault];
    }];
    [self createModelWithParams:params title:@"设置标题偏移位置-20" block:^{
        [wSelf.parentVC.navigationController.navigationBar setTitleVerticalPositionAdjustment:-20 forBarMetrics:UIBarMetricsDefault];
    }];
    return self.dataMutArr;
}

- (NSDictionary *)method_17:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"设置UINavigationController的UINavigationbar的标题偏移位置",
            @"title": @"- (void)setTitleVerticalPositionAdjustment:(CGFloat)adjustment forBarMetrics:(UIBarMetrics)barMetrics API_AVAILABLE(ios(5.0)) UI_APPEARANCE_SELECTOR;",
            @"isDataModelExpand": @(YES),
            @"desc": @"正数往下偏移，负数往上偏移",
            @"dataModel": @{
                @"childItems": [self TestProjectNavigationBar_setTitleVerticalPositionAdjustment_forBarMetrics:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectNavigationBar_property_largeTitleTextAttributes:(TestProjectTableViewParams *)params {
    return [self createModelSingleArrayWithParams:params
                                         property:@"largeTitleTextAttributes"
                                            value:@{NSForegroundColorAttributeName:[UIColor redColor]}
                                        operation:TestProjectCreateModelGetBeforeClickSet
                                            block:nil];
}

- (NSDictionary *)method_16:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"设置UINavigationController的UINavigationbar的属性largeTitleTextAttributes",
            @"title": @"@property(nullable, nonatomic, copy) NSDictionary<NSAttributedStringKey, id> *largeTitleTextAttributes UI_APPEARANCE_SELECTOR API_AVAILABLE(ios(11.0)) API_UNAVAILABLE(tvos);",
            @"isDataModelExpand": @(YES),
            @"desc": @"这个要在viewDidLoad后设置，前置条件是必须要开启大标题显示",
            @"dataModel": @{
                @"childItems": [self TestProjectNavigationBar_property_largeTitleTextAttributes:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectNavigationBar_property_titleTextAttributes:(TestProjectTableViewParams *)params {
    return [self createModelSingleArrayWithParams:params
                                         property:@"titleTextAttributes"
                                            value:@{NSForegroundColorAttributeName:[UIColor redColor]}
                                        operation:TestProjectCreateModelGetBeforeClickSet
                                            block:nil];
}

- (NSDictionary *)method_15:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"设置UINavigationController的UINavigationbar的属性titleTextAttributes",
            @"title": @"@property(nullable,nonatomic,copy) NSDictionary<NSAttributedStringKey, id> *titleTextAttributes API_AVAILABLE(ios(5.0)) UI_APPEARANCE_SELECTOR;",
            @"isDataModelExpand": @(YES),
            @"desc": @"这个要在viewDidLoad后设置",
            @"dataModel": @{
                @"childItems": [self TestProjectNavigationBar_property_titleTextAttributes:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectNavigationBar_property_shadowImage:(TestProjectTableViewParams *)params {
    return [self createModelSingleArrayWithParams:params
                                         property:@"shadowImage"
                                            value:[UIImage imageNamed:@"lyf_1"]
                                        operation:TestProjectCreateModelGetBeforeClickSet
                                            block:nil];
}

- (NSDictionary *)method_14:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"设置UINavigationController的UINavigationbar的属性shadowImage",
            @"title": @"@property(nullable, nonatomic,strong) UIImage *shadowImage API_AVAILABLE(ios(6.0)) UI_APPEARANCE_SELECTOR;",
            @"isDataModelExpand": @(YES),
            @"desc": @"在ios13以后不用这个设置了",
            @"dataModel": @{
                @"childItems": [self TestProjectNavigationBar_property_shadowImage:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectNavigationBar_setBackgroundImage_forBarMetrics:(TestProjectTableViewParams *)params {
    WS(wSelf);
    [self createModelWithParams:params title:@"设置背景图片" block:^{
        [wSelf.parentVC.navigationController.navigationBar setBackgroundImage:[UIImage imageNamed:@"lyf_1"] forBarMetrics:UIBarMetricsDefault];
    }];
    return self.dataMutArr;
}

- (NSDictionary *)method_13:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"设置UINavigationController的UINavigationbar的背景图片",
            @"title": @"- (void)setBackgroundImage:(nullable UIImage *)backgroundImage forBarMetrics:(UIBarMetrics)barMetrics API_AVAILABLE(ios(5.0)) UI_APPEARANCE_SELECTOR;",
            @"isDataModelExpand": @(YES),
            @"desc": @"在ios13以后不用这个设置了",
            @"dataModel": @{
                @"childItems": [self TestProjectNavigationBar_setBackgroundImage_forBarMetrics:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectNavigationBar_setBackgroundImage_forBarPosition_forBarMetrics:(TestProjectTableViewParams *)params {
    WS(wSelf);
    [self createModelWithParams:params title:@"设置背景图片" block:^{
        [wSelf.parentVC.navigationController.navigationBar setBackgroundImage:[UIImage imageNamed:@"lyf_1"] forBarPosition:UIBarPositionTop barMetrics:UIBarMetricsDefault];
    }];
    return self.dataMutArr;
}

- (NSDictionary *)method_12:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"设置UINavigationController的UINavigationbar的背景图片",
            @"title": @"- (void)setBackgroundImage:(nullable UIImage *)backgroundImage forBarPosition:(UIBarPosition)barPosition barMetrics:(UIBarMetrics)barMetrics API_AVAILABLE(ios(7.0)) UI_APPEARANCE_SELECTOR;",
            @"isDataModelExpand": @(YES),
            @"desc": @"在ios13以后不用这个设置了",
            @"dataModel": @{
                @"childItems": [self TestProjectNavigationBar_setBackgroundImage_forBarPosition_forBarMetrics:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectNavigationBar_property_barTintColor:(TestProjectTableViewParams *)params {
    return [self createModelSingleArrayWithParams:params
                                         property:@"barTintColor"
                                            value:[UIColor cyanColor]
                                        operation:TestProjectCreateModelGetBeforeClickSet
                                            block:nil];
}

- (NSDictionary *)method_11:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"设置UINavigationController的UINavigationbar的属性barTintColor",
            @"title": @"@property(nullable, nonatomic,strong) UIColor *barTintColor API_AVAILABLE(ios(7.0)) UI_APPEARANCE_SELECTOR;",
            @"isDataModelExpand": @(YES),
            @"desc": @"在ios13以后不用这个设置了",
            @"dataModel": @{
                @"childItems": [self TestProjectNavigationBar_property_barTintColor:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectNavigationBar_property_tintColor:(TestProjectTableViewParams *)params {
    return [self createModelSingleArrayWithParams:params
                                         property:@"tintColor"
                                            value:[UIColor purpleColor]
                                        operation:TestProjectCreateModelGetBeforeClickSet
                                            block:nil];
}

- (NSDictionary *)method_10:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"设置UINavigationController的UINavigationbar的属性tintColor",
            @"title": @"@property(null_resettable, nonatomic,strong) UIColor *tintColor;",
            @"desc": @"在ios13以后不用这个设置了,只能改变默认的返回按钮颜色",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectNavigationBar_property_tintColor:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectNavigationBar_property_preferredBehavioralStyle:(TestProjectTableViewParams *)params {
    return [self createModelSingleArrayWithParams:params
                                         property:@"preferredBehavioralStyle"
                                            value:nil
                                        operation:TestProjectCreateModelGetBeforeClickGet
                                            block:nil];
}

- (NSDictionary *)method_9:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"设置UINavigationController的UINavigationbar的属性preferredBehavioralStyle",
            @"title": @"@property (nonatomic, readwrite, assign) UIBehavioralStyle preferredBehavioralStyle API_AVAILABLE(ios(16.0)) API_UNAVAILABLE(tvos, watchos);",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectNavigationBar_property_preferredBehavioralStyle:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectNavigationBar_property_behavioralStyle:(TestProjectTableViewParams *)params {
    return [self createModelSingleArrayWithParams:params
                                         property:@"behavioralStyle"
                                            value:nil
                                        operation:TestProjectCreateModelGetBeforeClickGet
                                            block:nil];
}

- (NSDictionary *)method_8:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"设置UINavigationController的UINavigationbar的属性behavioralStyle",
            @"title": @"@property (nonatomic, readonly, assign) UIBehavioralStyle behavioralStyle API_AVAILABLE(ios(16.0)) API_UNAVAILABLE(tvos, watchos);",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectNavigationBar_property_behavioralStyle:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectNavigationBar_property_currentNSToolbarSection:(TestProjectTableViewParams *)params {
    return [self createModelSingleArrayWithParams:params
                                         property:@"currentNSToolbarSection"
                                            value:nil
                                        operation:TestProjectCreateModelGetBeforeClickGet
                                            block:nil];
}

- (NSDictionary *)method_7:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"设置UINavigationController的UINavigationbar的属性currentNSToolbarSection",
            @"title": @"@property (nonatomic, readonly, assign) UINavigationBarNSToolbarSection currentNSToolbarSection API_AVAILABLE(ios(16.0)) API_UNAVAILABLE(tvos, watchos);",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectNavigationBar_property_currentNSToolbarSection:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectNavigationBar_property_prefersLargeTitles:(TestProjectTableViewParams *)params {
    NSArray *arr = @[@(YES), @(NO)];
    for (NSNumber *value in arr) {
        [self createModelWithParams:params
                           property:@"prefersLargeTitles"
                              value:value
                          operation:TestProjectCreateModelGetBeforeClickSet
                              block:nil];
    }
    return self.dataMutArr;
}

- (NSDictionary *)method_6:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"设置UINavigationController的UINavigationbar的属性prefersLargeTitles",
            @"title": @"@property (nonatomic, readwrite, assign) BOOL prefersLargeTitles UI_APPEARANCE_SELECTOR API_AVAILABLE(ios(11.0)) API_UNAVAILABLE(tvos);",
            @"desc": @"设置YES时，在顶部的时候会有个大的标题显示",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectNavigationBar_property_prefersLargeTitles:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectNavigationBar_property_items:(TestProjectTableViewParams *)params {
    return [self createModelSingleArrayWithParams:params
                                         property:@"items"
                                            value:nil
                                        operation:TestProjectCreateModelGetBeforeClickGet
                                            block:nil];
}

- (NSDictionary *)method_5:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"设置UINavigationController的UINavigationbar的属性items",
            @"title": @"@property(nullable,nonatomic,copy) NSArray<UINavigationItem *> *items;",
            @"isDataModelExpand": @(YES),
            @"desc": @"Cannot call setItems:animated: directly on a UINavigationBar managed by a controller.",
            @"dataModel": @{
                @"childItems": [self TestProjectNavigationBar_property_items:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectNavigationBar_property_backItem:(TestProjectTableViewParams *)params {
    return [self createModelSingleArrayWithParams:params
                                         property:@"backItem"
                                            value:nil
                                        operation:TestProjectCreateModelGetBeforeClickGet
                                            block:nil];
}

- (NSDictionary *)method_4:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"设置UINavigationController的UINavigationbar的属性backItem",
            @"title": @"@property(nullable, nonatomic,readonly,strong) UINavigationItem *backItem;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectNavigationBar_property_backItem:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectNavigationBar_property_topItem:(TestProjectTableViewParams *)params {
    return [self createModelSingleArrayWithParams:params
                                         property:@"topItem"
                                            value:nil
                                        operation:TestProjectCreateModelGetBeforeClickGet
                                            block:nil];
}

- (NSDictionary *)method_3:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"设置UINavigationController的UINavigationbar的属性topItem",
            @"title": @"@property(nullable, nonatomic,readonly,strong) UINavigationItem *topItem;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectNavigationBar_property_topItem:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectNavigationBar_property_delegate:(TestProjectTableViewParams *)params {
    return [self createModelSingleArrayWithParams:params
                                         property:@"delegate"
                                            value:nil
                                        operation:TestProjectCreateModelGetBeforeClickGet
                                            block:nil];
}

- (NSDictionary *)method_2:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"设置UINavigationController的UINavigationbar的属性delegate",
            @"title": @"@property(nullable,nonatomic,weak) id<UINavigationBarDelegate> delegate;",
            @"isDataModelExpand": @(YES),
            @"desc": @"设置这个代理不能与VC有关系，不能是VC自己",
            @"dataModel": @{
                @"childItems": [self TestProjectNavigationBar_property_delegate:params],
            }
        },
    };
}

//typedef NS_ENUM(NSInteger, UIBarStyle):(TestProjectTableViewParams *)params {
//    UIBarStyleDefault          = 0,
//    UIBarStyleBlack            = 1,
//
//    UIBarStyleBlackOpaque API_UNAVAILABLE(tvos) API_DEPRECATED("Use UIBarStyleBlack instead.", ios(2.0, 13.0)) = 1,
//    UIBarStyleBlackTranslucent API_UNAVAILABLE(tvos) API_DEPRECATED("Use UIBarStyleBlack and set the translucent property to YES instead.", ios(2.0, 13.0)) = 2,
//} API_UNAVAILABLE(tvos);

- (NSMutableArray *)TestProjectNavigationBar_property_barStyle:(TestProjectTableViewParams *)params {
    NSArray *arr = @[@(UIBarStyleDefault), @(UIBarStyleBlack), @(UIBarStyleBlackOpaque)];
    for (NSNumber *value in arr) {
        [self createModelWithParams:params
                           property:@"barStyle"
                              value:value
                          operation:TestProjectCreateModelGetBeforeClickSet
                              block:nil];
    }
    return self.dataMutArr;
}

- (NSDictionary *)method_1:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"设置UINavigationController的UINavigationbar的属性barStyle",
            @"title": @"@property(nonatomic,assign) UIBarStyle barStyle UI_APPEARANCE_SELECTOR API_UNAVAILABLE(tvos);",
            @"isDataModelExpand": @(YES),
            @"desc": @"设置无效果",
            @"dataModel": @{
                @"childItems": [self TestProjectNavigationBar_property_barStyle:params],
            }
        },
    };
}

@end
