//
//  TestProjectNavigationBarAppearance.m
//  TestProjectIOS
//
//  Created by zjrcumac on 2023/4/12.
//

#import "TestProjectNavigationBarAppearance.h"

@implementation TestProjectNavigationBarAppearance

- (NSDictionary *)method_1 {
    return @{
        @"dataModel": @{
            @"abstract": @"设置获取UINavigationController的UINavigationBar的standardAppearance的属性titleTextAttributes",
            @"title": @"@property (nonatomic, readwrite, copy) NSDictionary<NSAttributedStringKey, id> *titleTextAttributes;",
            @"isDataModelExpand": @(YES),
            @"desc": @"这个要在viewDidLoad后设置",
            @"dataModel": @{
                @"childItems": [self TestProjectNavigationBarAppearance_property_titleTextAttributes],
            }
        },
    };
}

- (NSDictionary *)method_2 {
    return @{
        @"dataModel": @{
            @"abstract": @"设置获取UINavigationController的UINavigationBar的standardAppearance的属性titlePositionAdjustment",
            @"title": @"@property (nonatomic, readwrite, assign) UIOffset titlePositionAdjustment;",
            @"isDataModelExpand": @(YES),
            @"desc": @"设置标题的偏移量，x为正往左偏移，为负往右偏移；y为正往下偏移，为负往上偏移",
            @"dataModel": @{
                @"childItems": [self TestProjectNavigationBarAppearance_property_titlePositionAdjustment],
            }
        },
    };
}

- (NSDictionary *)method_3 {
    return @{
        @"dataModel": @{
            @"abstract": @"设置获取UINavigationController的UINavigationBar的standardAppearance的属性largeTitleTextAttributes",
            @"title": @"@property (nonatomic, readwrite, copy) NSDictionary<NSAttributedStringKey, id> *largeTitleTextAttributes;",
            @"isDataModelExpand": @(YES),
            @"desc": @"这个要在viewDidLoad后设置，前置条件是必须要开启大标题显示",
            @"dataModel": @{
                @"childItems": [self TestProjectNavigationBarAppearance_property_largeTitleTextAttributes],
            }
        },
    };
}

- (NSDictionary *)method_4 {
    return @{
        @"dataModel": @{
            @"abstract": @"设置获取UINavigationController的UINavigationBar的standardAppearance的属性buttonAppearance",
            @"title": @"@property (nonatomic, readwrite, copy) UIBarButtonItemAppearance *buttonAppearance;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectNavigationBarAppearance_property_buttonAppearance],
            }
        },
    };
}

- (NSDictionary *)method_5 {
    return @{
        @"dataModel": @{
            @"abstract": @"设置获取UINavigationController的UINavigationBar的standardAppearance的属性doneButtonAppearance",
            @"title": @"@property (nonatomic, readwrite, copy) UIBarButtonItemAppearance *doneButtonAppearance;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectNavigationBarAppearance_property_doneButtonAppearance],
            }
        },
    };
}

- (NSDictionary *)method_6 {
    return @{
        @"dataModel": @{
            @"abstract": @"设置获取UINavigationController的UINavigationBar的standardAppearance的属性backButtonAppearance",
            @"title": @"@property (nonatomic, readwrite, copy) UIBarButtonItemAppearance *backButtonAppearance;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectNavigationBarAppearance_property_backButtonAppearance],
            }
        },
    };
}

- (NSDictionary *)method_7 {
    return @{
        @"dataModel": @{
            @"abstract": @"设置获取UINavigationController的UINavigationBar的standardAppearance的属性backIndicatorImage",
            @"title": @"@property (nonatomic, readonly, strong) UIImage *backIndicatorImage;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectNavigationBarAppearance_property_backIndicatorImage],
            }
        },
    };
}

- (NSDictionary *)method_8 {
    return @{
        @"dataModel": @{
            @"abstract": @"设置获取UINavigationController的UINavigationBar的standardAppearance的属性backIndicatorTransitionMaskImage",
            @"title": @"@property (nonatomic, readonly, strong) UIImage *backIndicatorTransitionMaskImage;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectNavigationBarAppearance_property_backIndicatorTransitionMaskImage],
            }
        },
    };
}

- (NSDictionary *)method_9 {
    return @{
        @"dataModel": @{
            @"abstract": @"执行UINavigationController的UINavigationBar的standardAppearance的的方法",
            @"title": @"- (void)setBackIndicatorImage:(nullable UIImage *)backIndicatorImage transitionMaskImage:(nullable UIImage *)backIndicatorTransitionMaskImage;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectNavigationBarAppearance_setBackIndicatorImage_transitionMaskImage],
            }
        },
    };
}

- (NSMutableArray *)TestProjectNavigationBarAppearance_setBackIndicatorImage_transitionMaskImage {
    WS(wSelf);
    [self createTableModelWithTitle:@"设置indicatorImage和transitionMaskImage" block:^{
        [wSelf.barApperance setBackIndicatorImage:[UIImage imageNamed:@"lyf_2"] transitionMaskImage:[UIImage imageNamed:@"lyf_3"]];
        [wSelf setConfigAppear];
    }];
    return self.dataMutArr;
}

- (NSMutableArray *)TestProjectNavigationBarAppearance_property_backIndicatorTransitionMaskImage {
    return [self createTableModelSingleArrayWithProperty:@"backIndicatorTransitionMaskImage" value:nil];
}

- (NSMutableArray *)TestProjectNavigationBarAppearance_property_backIndicatorImage {
    return [self createTableModelSingleArrayWithProperty:@"backIndicatorImage" value:nil];
}

//typedef NS_ENUM(NSInteger, UIBarButtonItemStyle) {
//    UIBarButtonItemStylePlain,
//    UIBarButtonItemStyleBordered API_DEPRECATED_WITH_REPLACEMENT("UIBarButtonItemStylePlain", ios(2.0, 8.0)),
//    UIBarButtonItemStyleDone,
//};

- (NSMutableArray *)TestProjectNavigationBarAppearance_property_backButtonAppearance {
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
        [self createClickSetTableModelWithProperty:@"backButtonAppearance" value:item title:title block:^{
            [wSelf setConfigAppear];
        }];
    }
    return self.dataMutArr;
}

- (NSMutableArray *)TestProjectNavigationBarAppearance_property_doneButtonAppearance {
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
        [self createClickSetTableModelWithProperty:@"doneButtonAppearance" value:item title:title block:^{
            [wSelf setConfigAppear];
        }];
    }

    return self.dataMutArr;
}

- (NSMutableArray *)TestProjectNavigationBarAppearance_property_buttonAppearance {
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
        [self createClickSetTableModelWithProperty:@"buttonAppearance" value:item title:title block:^{
            [wSelf setConfigAppear];
        }];
    }
    return self.dataMutArr;
}

- (NSMutableArray *)TestProjectNavigationBarAppearance_property_largeTitleTextAttributes {
    WS(wSelf);
    [self createClickSetTableModelWithProperty:@"largeTitleTextAttributes" value:@{NSForegroundColorAttributeName:[UIColor purpleColor]} block:^{
        wSelf.parentVC.navigationController.navigationBar.prefersLargeTitles = YES;
        [wSelf setConfigAppear];
    }];
    return self.dataMutArr;
}

- (NSMutableArray *)TestProjectNavigationBarAppearance_property_titlePositionAdjustment {
    NSArray *arr = @[
        [NSValue valueWithUIOffset:UIOffsetMake(10, 10)],
        [NSValue valueWithUIOffset:UIOffsetMake(10, -10)],
        [NSValue valueWithUIOffset:UIOffsetMake(-10, 10)],
        [NSValue valueWithUIOffset:UIOffsetMake(-10, -10)],
    ];
    WS(wSelf);
    for (NSValue *value in arr) {
        [self createClickSetTableModelWithProperty:@"titlePositionAdjustment" value:value block:^{
            [wSelf setConfigAppear];
        }];
    }
    return self.dataMutArr;
}

- (NSMutableArray *)TestProjectNavigationBarAppearance_property_titleTextAttributes {
    WS(wSelf);
    [self createClickSetTableModelWithProperty:@"titleTextAttributes" value:@{NSForegroundColorAttributeName:[UIColor redColor]} block:^{
        [wSelf setConfigAppear];
    }];
    return self.dataMutArr;
}

@end
