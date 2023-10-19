//
//  TestProjectNavigationBar.m
//  TestProjectIOS
//
//  Created by liwenfan on 2023/4/11.
//

#import "TestProjectNavigationBar.h"

@interface TestProjectNavigationBar () <UINavigationBarDelegate>

@end

@implementation TestProjectNavigationBar

- (id)setPropertyValueObject {
    return self.parentVC.navigationController.navigationBar;
}

- (NSDictionary *)method_1 {
    return @{
        @"dataModel": @{
            @"abstract": @"设置UINavigationController的UINavigationbar的属性barStyle",
            @"title": @"@property(nonatomic,assign) UIBarStyle barStyle UI_APPEARANCE_SELECTOR API_UNAVAILABLE(tvos);",
            @"isDataModelExpand": @(YES),
            @"desc": @"设置无效果",
            @"dataModel": @{
                @"childItems": [self TestProjectNavigationBar_property_barStyle],
            }
        },
    };
}

- (NSDictionary *)method_2 {
    return @{
        @"dataModel": @{
            @"abstract": @"设置UINavigationController的UINavigationbar的属性delegate",
            @"title": @"@property(nullable,nonatomic,weak) id<UINavigationBarDelegate> delegate;",
            @"isDataModelExpand": @(YES),
            @"desc": @"设置这个代理不能与VC有关系，不能是VC自己",
            @"dataModel": @{
                @"childItems": [self TestProjectNavigationBar_property_delegate],
            }
        },
    };
}

- (NSDictionary *)method_3 {
    return @{
        @"dataModel": @{
            @"abstract": @"设置UINavigationController的UINavigationbar的属性topItem",
            @"title": @"@property(nullable, nonatomic,readonly,strong) UINavigationItem *topItem;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectNavigationBar_property_topItem],
            }
        },
    };
}

- (NSDictionary *)method_4 {
    return @{
        @"dataModel": @{
            @"abstract": @"设置UINavigationController的UINavigationbar的属性backItem",
            @"title": @"@property(nullable, nonatomic,readonly,strong) UINavigationItem *backItem;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectNavigationBar_property_backItem],
            }
        },
    };
}

- (NSDictionary *)method_5 {
    return @{
        @"dataModel": @{
            @"abstract": @"设置UINavigationController的UINavigationbar的属性items",
            @"title": @"@property(nullable,nonatomic,copy) NSArray<UINavigationItem *> *items;",
            @"isDataModelExpand": @(YES),
            @"desc": @"Cannot call setItems:animated: directly on a UINavigationBar managed by a controller.",
            @"dataModel": @{
                @"childItems": [self TestProjectNavigationBar_property_items],
            }
        },
    };
}

- (NSDictionary *)method_6 {
    return @{
        @"dataModel": @{
            @"abstract": @"设置UINavigationController的UINavigationbar的属性prefersLargeTitles",
            @"title": @"@property (nonatomic, readwrite, assign) BOOL prefersLargeTitles UI_APPEARANCE_SELECTOR API_AVAILABLE(ios(11.0)) API_UNAVAILABLE(tvos);",
            @"desc": @"设置YES时，在顶部的时候会有个大的标题显示",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectNavigationBar_property_prefersLargeTitles],
            }
        },
    };
}

- (NSDictionary *)method_7 {
    return @{
        @"dataModel": @{
            @"abstract": @"设置UINavigationController的UINavigationbar的属性currentNSToolbarSection",
            @"title": @"@property (nonatomic, readonly, assign) UINavigationBarNSToolbarSection currentNSToolbarSection API_AVAILABLE(ios(16.0)) API_UNAVAILABLE(tvos, watchos);",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectNavigationBar_property_currentNSToolbarSection],
            }
        },
    };
}

- (NSDictionary *)method_8 {
    return @{
        @"dataModel": @{
            @"abstract": @"设置UINavigationController的UINavigationbar的属性behavioralStyle",
            @"title": @"@property (nonatomic, readonly, assign) UIBehavioralStyle behavioralStyle API_AVAILABLE(ios(16.0)) API_UNAVAILABLE(tvos, watchos);",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectNavigationBar_property_behavioralStyle],
            }
        },
    };
}

- (NSDictionary *)method_9 {
    return @{
        @"dataModel": @{
            @"abstract": @"设置UINavigationController的UINavigationbar的属性preferredBehavioralStyle",
            @"title": @"@property (nonatomic, readwrite, assign) UIBehavioralStyle preferredBehavioralStyle API_AVAILABLE(ios(16.0)) API_UNAVAILABLE(tvos, watchos);",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectNavigationBar_property_preferredBehavioralStyle],
            }
        },
    };
}

- (NSDictionary *)method_10 {
    return @{
        @"dataModel": @{
            @"abstract": @"设置UINavigationController的UINavigationbar的属性tintColor",
            @"title": @"@property(null_resettable, nonatomic,strong) UIColor *tintColor;",
            @"desc": @"在ios13以后不用这个设置了,只能改变默认的返回按钮颜色",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectNavigationBar_property_tintColor],
            }
        },
    };
}

- (NSDictionary *)method_11 {
    return @{
        @"dataModel": @{
            @"abstract": @"设置UINavigationController的UINavigationbar的属性barTintColor",
            @"title": @"@property(nullable, nonatomic,strong) UIColor *barTintColor API_AVAILABLE(ios(7.0)) UI_APPEARANCE_SELECTOR;",
            @"isDataModelExpand": @(YES),
            @"desc": @"在ios13以后不用这个设置了",
            @"dataModel": @{
                @"childItems": [self TestProjectNavigationBar_property_barTintColor],
            }
        },
    };
}

- (NSDictionary *)method_12 {
    return @{
        @"dataModel": @{
            @"abstract": @"设置UINavigationController的UINavigationbar的背景图片",
            @"title": @"- (void)setBackgroundImage:(nullable UIImage *)backgroundImage forBarPosition:(UIBarPosition)barPosition barMetrics:(UIBarMetrics)barMetrics API_AVAILABLE(ios(7.0)) UI_APPEARANCE_SELECTOR;",
            @"isDataModelExpand": @(YES),
            @"desc": @"在ios13以后不用这个设置了",
            @"dataModel": @{
                @"childItems": [self TestProjectNavigationBar_setBackgroundImage_forBarPosition_forBarMetrics],
            }
        },
    };
}

- (NSDictionary *)method_13 {
    return @{
        @"dataModel": @{
            @"abstract": @"设置UINavigationController的UINavigationbar的背景图片",
            @"title": @"- (void)setBackgroundImage:(nullable UIImage *)backgroundImage forBarMetrics:(UIBarMetrics)barMetrics API_AVAILABLE(ios(5.0)) UI_APPEARANCE_SELECTOR;",
            @"isDataModelExpand": @(YES),
            @"desc": @"在ios13以后不用这个设置了",
            @"dataModel": @{
                @"childItems": [self TestProjectNavigationBar_setBackgroundImage_forBarMetrics],
            }
        },
    };
}

- (NSDictionary *)method_14 {
    return @{
        @"dataModel": @{
            @"abstract": @"设置UINavigationController的UINavigationbar的属性shadowImage",
            @"title": @"@property(nullable, nonatomic,strong) UIImage *shadowImage API_AVAILABLE(ios(6.0)) UI_APPEARANCE_SELECTOR;",
            @"isDataModelExpand": @(YES),
            @"desc": @"在ios13以后不用这个设置了",
            @"dataModel": @{
                @"childItems": [self TestProjectNavigationBar_property_shadowImage],
            }
        },
    };
}

- (NSDictionary *)method_15 {
    return @{
        @"dataModel": @{
            @"abstract": @"设置UINavigationController的UINavigationbar的属性titleTextAttributes",
            @"title": @"@property(nullable,nonatomic,copy) NSDictionary<NSAttributedStringKey, id> *titleTextAttributes API_AVAILABLE(ios(5.0)) UI_APPEARANCE_SELECTOR;",
            @"isDataModelExpand": @(YES),
            @"desc": @"这个要在viewDidLoad后设置",
            @"dataModel": @{
                @"childItems": [self TestProjectNavigationBar_property_titleTextAttributes],
            }
        },
    };
}

- (NSDictionary *)method_16 {
    return @{
        @"dataModel": @{
            @"abstract": @"设置UINavigationController的UINavigationbar的属性largeTitleTextAttributes",
            @"title": @"@property(nullable, nonatomic, copy) NSDictionary<NSAttributedStringKey, id> *largeTitleTextAttributes UI_APPEARANCE_SELECTOR API_AVAILABLE(ios(11.0)) API_UNAVAILABLE(tvos);",
            @"isDataModelExpand": @(YES),
            @"desc": @"这个要在viewDidLoad后设置，前置条件是必须要开启大标题显示",
            @"dataModel": @{
                @"childItems": [self TestProjectNavigationBar_property_largeTitleTextAttributes],
            }
        },
    };
}

- (NSDictionary *)method_17 {
    return @{
        @"dataModel": @{
            @"abstract": @"设置UINavigationController的UINavigationbar的标题偏移位置",
            @"title": @"- (void)setTitleVerticalPositionAdjustment:(CGFloat)adjustment forBarMetrics:(UIBarMetrics)barMetrics API_AVAILABLE(ios(5.0)) UI_APPEARANCE_SELECTOR;",
            @"isDataModelExpand": @(YES),
            @"desc": @"正数往下偏移，负数往上偏移",
            @"dataModel": @{
                @"childItems": [self TestProjectNavigationBar_setTitleVerticalPositionAdjustment_forBarMetrics],
            }
        },
    };
}

- (NSDictionary *)method_18 {
    return @{
        @"dataModel": @{
            @"abstract": @"设置UINavigationController的UINavigationbar的属性backIndicatorImage",
            @"title": @"@property(nullable,nonatomic,strong) UIImage *backIndicatorImage API_AVAILABLE(ios(7.0)) UI_APPEARANCE_SELECTOR API_UNAVAILABLE(tvos);",
            @"isDataModelExpand": @(YES),
            @"desc": @"设置无效",
            @"dataModel": @{
                @"childItems": [self TestProjectNavigationBar_property_backIndicatorImage],
            }
        },
    };
}

- (NSDictionary *)method_19 {
    return @{
        @"dataModel": @{
            @"abstract": @"设置UINavigationController的UINavigationbar的属性backIndicatorTransitionMaskImage",
            @"title": @"@property(nullable,nonatomic,strong) UIImage *backIndicatorTransitionMaskImage API_AVAILABLE(ios(7.0)) UI_APPEARANCE_SELECTOR API_UNAVAILABLE(tvos);",
            @"isDataModelExpand": @(YES),
            @"desc": @"设置之后值只显示一个小图片，暂时不知道怎么用的",
            @"dataModel": @{
                @"childItems": [self TestProjectNavigationBar_property_backIndicatorTransitionMaskImage],
            }
        },
    };
}

- (NSDictionary *)method_20 {
    return @{
        @"dataModel": @{
            @"abstract": @"设置UINavigationController的UINavigationbar的属性standardAppearance",
            @"title": @"@property (nonatomic, readwrite, copy) UINavigationBarAppearance *standardAppearance UI_APPEARANCE_SELECTOR API_AVAILABLE(ios(13.0), tvos(13.0));",
            @"isDataModelExpand": @(YES),
            @"desc": @"设置之后值只显示一个小图片，暂时不知道怎么用的",
            @"dataModel": @{
                @"childItems": [self TestProjectNavigationBar_property_standardAppearance],
            }
        },
    };
}

- (NSDictionary *)method_21 {
    return @{
        @"dataModel": @{
            @"abstract": @"设置UINavigationController的UINavigationbar的属性compactAppearance",
            @"title": @"@property (nonatomic, readwrite, copy, nullable) UINavigationBarAppearance *compactAppearance UI_APPEARANCE_SELECTOR API_AVAILABLE(ios(13.0));",
            @"isDataModelExpand": @(YES),
            @"desc": @"设置之后值只显示一个小图片，暂时不知道怎么用的",
            @"dataModel": @{
                @"childItems": [self TestProjectNavigationBar_property_compactAppearance],
            }
        },
    };
}

- (NSDictionary *)method_22 {
    return @{
        @"dataModel": @{
            @"abstract": @"设置UINavigationController的UINavigationbar的属性scrollEdgeAppearance",
            @"title": @"@property (nonatomic, readwrite, copy, nullable) UINavigationBarAppearance *scrollEdgeAppearance UI_APPEARANCE_SELECTOR API_AVAILABLE(ios(13.0));",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectNavigationBar_property_scrollEdgeAppearance],
            }
        },
    };
}

- (NSDictionary *)method_23 {
    return @{
        @"dataModel": @{
            @"abstract": @"设置UINavigationController的UINavigationbar的属性compactScrollEdgeAppearance",
            @"title": @"@property(nonatomic,readwrite, copy, nullable) UINavigationBarAppearance *compactScrollEdgeAppearance UI_APPEARANCE_SELECTOR API_AVAILABLE(ios(15.0));",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectNavigationBar_property_compactScrollEdgeAppearance],
            }
        },
    };
}

- (NSMutableArray *)TestProjectNavigationBar_property_compactScrollEdgeAppearance {
    return [self createTableModelSingleArrayWithProperty:@"compactScrollEdgeAppearance" value:nil];
}

- (NSMutableArray *)TestProjectNavigationBar_property_scrollEdgeAppearance {
    return [self createTableModelSingleArrayWithProperty:@"scrollEdgeAppearance" value:nil];
}

- (NSMutableArray *)TestProjectNavigationBar_property_compactAppearance {
    return [self createTableModelSingleArrayWithProperty:@"compactAppearance" value:nil];
}

- (NSMutableArray *)TestProjectNavigationBar_property_standardAppearance {
    return [self createTableModelSingleArrayWithProperty:@"standardAppearance" value:nil];
}

- (NSMutableArray *)TestProjectNavigationBar_property_backIndicatorTransitionMaskImage {
    [self createClickSetTableModelWithProperty:@"backIndicatorTransitionMaskImage" value:[UIImage imageNamed:@"lyf_1"]];
    return self.dataMutArr;
}

- (NSMutableArray *)TestProjectNavigationBar_property_backIndicatorImage {
    [self createClickSetTableModelWithProperty:@"backIndicatorImage" value:[UIImage imageNamed:@"lyf_1"]];
    return self.dataMutArr;
}

- (NSMutableArray *)TestProjectNavigationBar_setTitleVerticalPositionAdjustment_forBarMetrics {
    WS(wSelf);
    [self createTableModelWithTitle:@"设置标题偏移位置20" block:^{
        [wSelf.parentVC.navigationController.navigationBar setTitleVerticalPositionAdjustment:20 forBarMetrics:UIBarMetricsDefault];
    }];
    [self createTableModelWithTitle:@"设置标题偏移位置-20" block:^{
        [wSelf.parentVC.navigationController.navigationBar setTitleVerticalPositionAdjustment:-20 forBarMetrics:UIBarMetricsDefault];
    }];
    return self.dataMutArr;
}

- (NSMutableArray *)TestProjectNavigationBar_property_largeTitleTextAttributes {
    [self createClickSetTableModelWithProperty:@"largeTitleTextAttributes" value:@{NSForegroundColorAttributeName:[UIColor redColor]}];
    return self.dataMutArr;
}

- (NSMutableArray *)TestProjectNavigationBar_property_titleTextAttributes {
    [self createClickSetTableModelWithProperty:@"titleTextAttributes" value:@{NSForegroundColorAttributeName:[UIColor redColor]}];
    return self.dataMutArr;
}

- (NSMutableArray *)TestProjectNavigationBar_property_shadowImage {
    [self createClickSetTableModelWithProperty:@"shadowImage" value:[UIImage imageNamed:@"lyf_1"]];
    return self.dataMutArr;
}

- (NSMutableArray *)TestProjectNavigationBar_setBackgroundImage_forBarMetrics {
    WS(wSelf);
    [self createTableModelWithTitle:@"设置背景图片" block:^{
        [wSelf.parentVC.navigationController.navigationBar setBackgroundImage:[UIImage imageNamed:@"lyf_1"] forBarMetrics:UIBarMetricsDefault];
    }];
    return self.dataMutArr;
}

- (NSMutableArray *)TestProjectNavigationBar_setBackgroundImage_forBarPosition_forBarMetrics {
    WS(wSelf);
    [self createTableModelWithTitle:@"设置背景图片" block:^{
        [wSelf.parentVC.navigationController.navigationBar setBackgroundImage:[UIImage imageNamed:@"lyf_1"] forBarPosition:UIBarPositionTop barMetrics:UIBarMetricsDefault];
    }];
    return self.dataMutArr;
}

- (NSMutableArray *)TestProjectNavigationBar_property_barTintColor {
    [self createClickSetTableModelWithProperty:@"barTintColor" value:[UIColor cyanColor]];
    return self.dataMutArr;
}

- (NSMutableArray *)TestProjectNavigationBar_property_tintColor {
    [self createClickSetTableModelWithProperty:@"tintColor" value:[UIColor purpleColor]];
    return self.dataMutArr;
}

- (NSMutableArray *)TestProjectNavigationBar_property_preferredBehavioralStyle {
    return [self createTableModelSingleArrayWithProperty:@"preferredBehavioralStyle" value:nil];
}

- (NSMutableArray *)TestProjectNavigationBar_property_behavioralStyle {
    return [self createTableModelSingleArrayWithProperty:@"behavioralStyle" value:nil];
}

- (NSMutableArray *)TestProjectNavigationBar_property_currentNSToolbarSection {
    return [self createTableModelSingleArrayWithProperty:@"currentNSToolbarSection" value:nil];
}

- (NSMutableArray *)TestProjectNavigationBar_property_prefersLargeTitles {
    NSArray *arr = @[@(YES), @(NO)];
    for (NSNumber *value in arr) {
        [self createClickSetTableModelWithProperty:@"prefersLargeTitles" value:value];
    }
    return self.dataMutArr;
}

- (NSMutableArray *)TestProjectNavigationBar_property_items {
    return [self createTableModelSingleArrayWithProperty:@"items" value:nil];
}

- (NSMutableArray *)TestProjectNavigationBar_property_backItem {
    return [self createTableModelSingleArrayWithProperty:@"backItem" value:nil];
}

- (NSMutableArray *)TestProjectNavigationBar_property_topItem {
    return [self createTableModelSingleArrayWithProperty:@"topItem" value:nil];
}

- (NSMutableArray *)TestProjectNavigationBar_property_delegate {
    return [self createTableModelSingleArrayWithProperty:@"delegate" value:nil];
}

//typedef NS_ENUM(NSInteger, UIBarStyle) {
//    UIBarStyleDefault          = 0,
//    UIBarStyleBlack            = 1,
//
//    UIBarStyleBlackOpaque API_UNAVAILABLE(tvos) API_DEPRECATED("Use UIBarStyleBlack instead.", ios(2.0, 13.0)) = 1,
//    UIBarStyleBlackTranslucent API_UNAVAILABLE(tvos) API_DEPRECATED("Use UIBarStyleBlack and set the translucent property to YES instead.", ios(2.0, 13.0)) = 2,
//} API_UNAVAILABLE(tvos);

- (NSMutableArray *)TestProjectNavigationBar_property_barStyle {
    NSArray *arr = @[@(UIBarStyleDefault), @(UIBarStyleBlack), @(UIBarStyleBlackOpaque)];
    for (NSNumber *value in arr) {
        [self createClickSetTableModelWithProperty:@"barStyle" value:value];
    }
    return self.dataMutArr;
}

@end
