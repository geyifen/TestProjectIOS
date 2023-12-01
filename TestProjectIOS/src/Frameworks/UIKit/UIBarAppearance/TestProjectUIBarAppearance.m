//
//  TestProjectUIBarAppearance.m
//  TestProjectIOS
//
//  Created by liwenfan on 2023/4/12.
//

#import "TestProjectUIBarAppearance.h"

@implementation TestProjectUIBarAppearance {
    NSString *_title;
}

- (id)setPropertyValueObject:(TestProjectTableViewParams *)params {
    return self.barApperance;
}

- (UINavigationBarAppearance *)barApperance:(TestProjectTableViewParams *)params {
    if (!_barApperance) {
        _barApperance = [[UINavigationBarAppearance alloc] init];
        _barApperance.backgroundColor = [UIColor whiteColor];
        [_barApperance configureWithTransparentBackground];
    }
    return _barApperance;
}


- (NSMutableArray *)TestProjectBarAppearance_property_shadowImage:(TestProjectTableViewParams *)params {
    WS(wSelf);
    return [self createModelSingleArrayWithParams:params
                                         property:@"shadowImage"
                                            value:[UIImage imageNamed:@"lyf_3"]
                                        operation:TestProjectCreateModelGetBeforeClickSet
                                            block:^{
        [wSelf setConfigAppear];
    }];
}

- (NSDictionary *)method_10:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"设置UINavigationController的UINavigationBar的standardAppearance的属性shadowImage",
            @"title": @"@property (nonatomic, readwrite, strong, nullable) UIImage *shadowImage;",
            @"isDataModelExpand": @(YES),
            @"desc": @"设置阴影图片\n在configureWithTransparentBackground模式下可以使用,但必须设置background有关的属性才行\n在configureWithOpaqueBackground模式下可以使用，但是必须设置backgroundEffect\n在configureWithDefaultBackground模式下可以使用,与其它属性有冲突，设置了其它的属性，则这个无效了",
            @"dataModel": @{
                @"childItems": [self TestProjectBarAppearance_property_shadowImage:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectBarAppearance_property_shadowColor:(TestProjectTableViewParams *)params {
    WS(wSelf);
    return [self createModelSingleArrayWithParams:params
                                         property:@"shadowColor"
                                            value:[UIColor yellowColor]
                                        operation:TestProjectCreateModelGetBeforeClickSet
                                            block:^{
        [wSelf setConfigAppear];
    }];
}

- (NSDictionary *)method_9:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"设置UINavigationController的UINavigationBar的standardAppearance的属性shadowColor",
            @"title": @"@property (nonatomic, readwrite, copy, nullable) UIColor *shadowColor;",
            @"isDataModelExpand": @(YES),
            @"desc": @"在configureWithTransparentBackground模式下不可以使用\n在configureWithOpaqueBackground模式下不可以使用\n在configureWithDefaultBackground模式下不可以使用",
            @"dataModel": @{
                @"childItems": [self TestProjectBarAppearance_property_shadowColor:params],
            }
        },
    };
}

//typedef NS_ENUM(NSInteger, UIViewContentMode) {
//    UIViewContentModeScaleToFill,
//    UIViewContentModeScaleAspectFit,      // contents scaled to fit with fixed aspect. remainder is transparent
//    UIViewContentModeScaleAspectFill,     // contents scaled to fill with fixed aspect. some portion of content may be clipped.
//    UIViewContentModeRedraw,              // redraw on bounds change (calls -setNeedsDisplay)
//    UIViewContentModeCenter,              // contents remain same size. positioned adjusted.
//    UIViewContentModeTop,
//    UIViewContentModeBottom,
//    UIViewContentModeLeft,
//    UIViewContentModeRight,
//    UIViewContentModeTopLeft,
//    UIViewContentModeTopRight,
//    UIViewContentModeBottomLeft,
//    UIViewContentModeBottomRight,
//};

- (NSMutableArray *)TestProjectBarAppearance_property_backgroundImageContentMode:(TestProjectTableViewParams *)params {
    NSArray *arr = @[
        @{
            @"title": [NSString stringWithFormat:@"我是充满整个导航栏，如果图片不满足导航栏的宽高比，则会拉伸，UIViewContentModeScaleToFill(%ld)", UIViewContentModeScaleToFill],
            @"value": @(UIViewContentModeScaleToFill),
        },
        @{
            @"title": [NSString stringWithFormat:@"我是适配型的，如果图片不满足导航栏的宽高比，则会按照导航栏宽高比进行等比展示，图片在导航栏居中展示，UIViewContentModeScaleAspectFit(%ld)", UIViewContentModeScaleAspectFit],
            @"value": @(UIViewContentModeScaleAspectFit),
        },
        @{
            @"title": [NSString stringWithFormat:@"我是充满型的，如果图片不满足导航栏的宽高比，则会超出导航栏视图大小位置，UIViewContentModeScaleAspectFill(%ld)", UIViewContentModeScaleAspectFill],
            @"value": @(UIViewContentModeScaleAspectFill),
        },
        @{
            @"title": [NSString stringWithFormat:@"我是充满整个导航栏，如果图片不满足导航栏的宽高比，则会拉伸，UIViewContentModeRedraw(%ld)", UIViewContentModeRedraw],
            @"value": @(UIViewContentModeRedraw),
        },
        @{
            @"title": [NSString stringWithFormat:@"我是充满整个屏幕的，如果图片不满足导航栏的宽高比，则会按照图片比例充满整个手机屏幕，图片在导航栏居上展示，UIViewContentModeTop(%ld)", UIViewContentModeTop],
            @"value": @(UIViewContentModeTop),
        },
        @{
            @"title": [NSString stringWithFormat:@"我是充满型的，如果图片不满足导航栏的宽高比，则会从图片底部进行裁剪铺满整个导航栏，图片在导航栏居下展示，UIViewContentModeBottom(%ld)", UIViewContentModeBottom],
            @"value": @(UIViewContentModeBottom),
        },
        @{
            @"title": [NSString stringWithFormat:@"我是充满型的，如果图片不满足导航栏的宽高比，则会超出导航栏视图大小位置，优先会展示图片的左边，右边进行裁剪，图片在导航栏居左展示，UIViewContentModeLeft(%ld)", UIViewContentModeLeft],
            @"value": @(UIViewContentModeLeft),
        },
        @{
            @"title": [NSString stringWithFormat:@"我是充满型的，如果图片不满足导航栏的宽高比，则会超出导航栏视图大小位置，优先会展示图片的右边，左边进行裁剪，图片在导航栏居右展示，UIViewContentModeRight(%ld)", UIViewContentModeRight],
            @"value": @(UIViewContentModeRight),
        },
        @{
            @"title": [NSString stringWithFormat:@"我是充满整个屏幕的，如果图片不满足导航栏的宽高比，则会按照比例充满整个手机屏幕优先展示左边和上边，图片在导航栏居左上展示，UIViewContentModeTopLeft(%ld)", UIViewContentModeTopLeft],
            @"value": @(UIViewContentModeTopLeft),
        },
        @{
            @"title": [NSString stringWithFormat:@"我是充满整个屏幕的，如果图片不满足导航栏的宽高比，则会按照比例充满整个手机屏幕优先展示右边和上边，图片在导航栏居右上展示，UIViewContentModeTopRight(%ld)", UIViewContentModeTopRight],
            @"value": @(UIViewContentModeTopRight),
        },
        @{
            @"title": [NSString stringWithFormat:@"我是充满型的，如果图片不满足导航栏的宽高比，则会优先展示底部和左边的图片充满整个导航栏， 其它的部分进行裁剪，图片在导航栏居左下展示，UIViewContentModeBottomLeft(%ld)", UIViewContentModeBottomLeft],
            @"value": @(UIViewContentModeBottomLeft),
        },
        @{
            @"title": [NSString stringWithFormat:@"我是充满型的，如果图片不满足导航栏的宽高比，则会优先展示底部和右边的图片充满整个导航栏， 其它的部分进行裁剪，图片在导航栏居右下展示，UIViewContentModeBottomRight(%ld)", UIViewContentModeBottomRight],
            @"value": @(UIViewContentModeBottomRight),
        },
    ];
    WS(wSelf);
    for (NSDictionary *dic in arr) {
        NSString *title = dic[@"title"];
        NSNumber *value = dic[@"value"];
        [self createModelWithParams:params
                              title:title
                           property:@"backgroundImageContentMode"
                              value:value
                          operation:TestProjectCreateModelGetBeforeClickSet
                              block:^{
            if (!wSelf.barApperance.backgroundImage) {
                wSelf.barApperance.backgroundImage = [UIImage imageNamed:@"lyf_3"];
            }
            [wSelf setConfigAppear];
        }];
    }
    return self.dataMutArr;
}

- (NSDictionary *)method_8:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"设置UINavigationController的UINavigationBar的standardAppearance的属性backgroundImageContentMode",
            @"title": @"@property (nonatomic, readwrite, assign) UIViewContentMode backgroundImageContentMode;",
            @"isDataModelExpand": @(YES),
            @"desc": @"设置背景图片的展示位置,前置条件必须要有图片\n在configureWithTransparentBackground模式下可以使用\n在configureWithOpaqueBackground模式下可以使用\n在configureWithDefaultBackground模式下可以使用",
            @"dataModel": @{
                @"childItems": [self TestProjectBarAppearance_property_backgroundImageContentMode:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectBarAppearance_property_backgroundImage:(TestProjectTableViewParams *)params {
    WS(wSelf);
    return [self createModelSingleArrayWithParams:params
                                         property:@"backgroundImage"
                                            value:[UIImage imageNamed:@"lyf_1"]
                                        operation:TestProjectCreateModelGetBeforeClickSet
                                            block:^{
        [wSelf setConfigAppear];
    }];
}

- (NSDictionary *)method_7:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"设置UINavigationController的UINavigationBar的standardAppearance的属性backgroundImage",
            @"title": @"@property (nonatomic, readwrite, strong, nullable) UIImage *backgroundImage;",
            @"isDataModelExpand": @(YES),
            @"desc": @"在configureWithTransparentBackground模式下可以使用\n在configureWithOpaqueBackground模式下可以使用\n在configureWithDefaultBackground模式下可以使用",
            @"dataModel": @{
                @"childItems": [self TestProjectBarAppearance_property_backgroundImage:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectBarAppearance_property_backgroundColor:(TestProjectTableViewParams *)params {
    WS(wSelf);
    return [self createModelSingleArrayWithParams:params
                                         property:@"backgroundColor"
                                            value:[UIColor purpleColor]
                                        operation:TestProjectCreateModelGetBeforeClickSet
                                            block:^{
        [wSelf setConfigAppear];
    }];
}

- (NSDictionary *)method_6:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"设置UINavigationController的UINavigationBar的standardAppearance的属性backgroundColor",
            @"title": @"@property (nonatomic, readwrite, copy, nullable) UIColor *backgroundColor;",
            @"isDataModelExpand": @(YES),
            @"desc": @"在configureWithTransparentBackground模式下可以使用\n在configureWithOpaqueBackground模式下可以使用\n在configureWithDefaultBackground模式下可以使用",
            @"dataModel": @{
                @"childItems": [self TestProjectBarAppearance_property_backgroundColor:params],
            }
        },
    };
}

//typedef NS_ENUM(NSInteger, UIBlurEffectStyle) {
//    /* Traditional blur styles.
//     */
//    UIBlurEffectStyleExtraLight,
//    UIBlurEffectStyleLight,
//    UIBlurEffectStyleDark,
//    UIBlurEffectStyleExtraDark API_AVAILABLE(tvos(10.0)) API_UNAVAILABLE(ios) API_UNAVAILABLE(watchos),
//
//    /* Styles which automatically show one of the traditional blur styles,
//     * depending on the user interface style.
//     *
//     * Regular displays either Light or Dark.
//     */
//    UIBlurEffectStyleRegular API_AVAILABLE(ios(10.0)),
//    /* Prominent displays either ExtraLight, Dark (on iOS), or ExtraDark (on tvOS).
//     */
//    UIBlurEffectStyleProminent API_AVAILABLE(ios(10.0)),
//
//    /*
//     * Blur styles available in iOS 13.
//     *
//     * Styles which automatically adapt to the user interface style:
//     */
//    UIBlurEffectStyleSystemUltraThinMaterial        API_AVAILABLE(ios(13.0)) API_UNAVAILABLE(watchos) API_UNAVAILABLE(tvos),
//    UIBlurEffectStyleSystemThinMaterial             API_AVAILABLE(ios(13.0)) API_UNAVAILABLE(watchos) API_UNAVAILABLE(tvos),
//    UIBlurEffectStyleSystemMaterial                 API_AVAILABLE(ios(13.0)) API_UNAVAILABLE(watchos) API_UNAVAILABLE(tvos),
//    UIBlurEffectStyleSystemThickMaterial            API_AVAILABLE(ios(13.0)) API_UNAVAILABLE(watchos) API_UNAVAILABLE(tvos),
//    UIBlurEffectStyleSystemChromeMaterial           API_AVAILABLE(ios(13.0)) API_UNAVAILABLE(watchos) API_UNAVAILABLE(tvos),
//
//    /* And always-light and always-dark versions:
//     */
//    UIBlurEffectStyleSystemUltraThinMaterialLight   API_AVAILABLE(ios(13.0)) API_UNAVAILABLE(tvos, watchos),
//    UIBlurEffectStyleSystemThinMaterialLight        API_AVAILABLE(ios(13.0)) API_UNAVAILABLE(tvos, watchos),
//    UIBlurEffectStyleSystemMaterialLight            API_AVAILABLE(ios(13.0)) API_UNAVAILABLE(tvos, watchos),
//    UIBlurEffectStyleSystemThickMaterialLight       API_AVAILABLE(ios(13.0)) API_UNAVAILABLE(tvos, watchos),
//    UIBlurEffectStyleSystemChromeMaterialLight      API_AVAILABLE(ios(13.0)) API_UNAVAILABLE(tvos, watchos),
//
//    UIBlurEffectStyleSystemUltraThinMaterialDark    API_AVAILABLE(ios(13.0)) API_UNAVAILABLE(watchos) API_UNAVAILABLE(tvos),
//    UIBlurEffectStyleSystemThinMaterialDark         API_AVAILABLE(ios(13.0)) API_UNAVAILABLE(watchos) API_UNAVAILABLE(tvos),
//    UIBlurEffectStyleSystemMaterialDark             API_AVAILABLE(ios(13.0)) API_UNAVAILABLE(watchos) API_UNAVAILABLE(tvos),
//    UIBlurEffectStyleSystemThickMaterialDark        API_AVAILABLE(ios(13.0)) API_UNAVAILABLE(watchos) API_UNAVAILABLE(tvos),
//    UIBlurEffectStyleSystemChromeMaterialDark       API_AVAILABLE(ios(13.0)) API_UNAVAILABLE(watchos) API_UNAVAILABLE(tvos)
//
//} API_AVAILABLE(ios(8.0));

- (NSMutableArray *)TestProjectBarAppearance_property_backgroundEffect:(TestProjectTableViewParams *)params {
    NSArray *arr = @[
        @{
            @"title": [NSString stringWithFormat:@"我是UIBlurEffectStyleExtraLight(%ld)", UIBlurEffectStyleExtraLight],
            @"value": @(UIBlurEffectStyleExtraLight),
        },
        @{
            @"title": [NSString stringWithFormat:@"我是UIBlurEffectStyleLight(%ld)", UIBlurEffectStyleLight],
            @"value": @(UIBlurEffectStyleLight),
        },
        @{
            @"title": [NSString stringWithFormat:@"我是UIBlurEffectStyleDark(%ld)", UIBlurEffectStyleDark],
            @"value": @(UIBlurEffectStyleDark),
        },
        @{
            @"title": [NSString stringWithFormat:@"我是UIBlurEffectStyleRegular(%ld)", UIBlurEffectStyleRegular],
            @"value": @(UIBlurEffectStyleRegular),
        },
        @{
            @"title": [NSString stringWithFormat:@"我是UIBlurEffectStyleProminent(%ld)", UIBlurEffectStyleProminent],
            @"value": @(UIBlurEffectStyleProminent),
        },
        @{
            @"title": [NSString stringWithFormat:@"我是UIBlurEffectStyleSystemUltraThinMaterial(%ld)", UIBlurEffectStyleSystemUltraThinMaterial],
            @"value": @(UIBlurEffectStyleSystemUltraThinMaterial),
        },
        @{
            @"title": [NSString stringWithFormat:@"我是UIBlurEffectStyleSystemThinMaterial(%ld)", UIBlurEffectStyleSystemThinMaterial],
            @"value": @(UIBlurEffectStyleSystemThinMaterial),
        },
        @{
            @"title": [NSString stringWithFormat:@"我是UIBlurEffectStyleSystemMaterial(%ld)", UIBlurEffectStyleSystemMaterial],
            @"value": @(UIBlurEffectStyleSystemMaterial),
        },
        @{
            @"title": [NSString stringWithFormat:@"我是UIBlurEffectStyleSystemThickMaterial(%ld)", UIBlurEffectStyleSystemThickMaterial],
            @"value": @(UIBlurEffectStyleSystemThickMaterial),
        },
        @{
            @"title": [NSString stringWithFormat:@"我是UIBlurEffectStyleSystemChromeMaterial(%ld)", UIBlurEffectStyleSystemChromeMaterial],
            @"value": @(UIBlurEffectStyleSystemChromeMaterial),
        },
        @{
            @"title": [NSString stringWithFormat:@"我是UIBlurEffectStyleSystemUltraThinMaterialLight(%ld)", UIBlurEffectStyleSystemUltraThinMaterialLight],
            @"value": @(UIBlurEffectStyleSystemUltraThinMaterialLight),
        },
        @{
            @"title": [NSString stringWithFormat:@"我是UIBlurEffectStyleSystemThinMaterialLight(%ld)", UIBlurEffectStyleSystemThinMaterialLight],
            @"value": @(UIBlurEffectStyleSystemThinMaterialLight),
        },
        @{
            @"title": [NSString stringWithFormat:@"我是UIBlurEffectStyleSystemMaterialLight(%ld)", UIBlurEffectStyleSystemMaterialLight],
            @"value": @(UIBlurEffectStyleSystemMaterialLight),
        },
        @{
            @"title": [NSString stringWithFormat:@"我是UIBlurEffectStyleSystemThickMaterialLight(%ld)", UIBlurEffectStyleSystemThickMaterialLight],
            @"value": @(UIBlurEffectStyleSystemThickMaterialLight),
        },
        @{
            @"title": [NSString stringWithFormat:@"我是UIBlurEffectStyleSystemChromeMaterialLight(%ld)", UIBlurEffectStyleSystemChromeMaterialLight],
            @"value": @(UIBlurEffectStyleSystemChromeMaterialLight),
        },
        @{
            @"title": [NSString stringWithFormat:@"我是UIBlurEffectStyleSystemUltraThinMaterialDark(%ld)", UIBlurEffectStyleSystemUltraThinMaterialDark],
            @"value": @(UIBlurEffectStyleSystemUltraThinMaterialDark),
        },
        @{
            @"title": [NSString stringWithFormat:@"我是UIBlurEffectStyleSystemThinMaterialDark(%ld)", UIBlurEffectStyleSystemThinMaterialDark],
            @"value": @(UIBlurEffectStyleSystemThinMaterialDark),
        },
        @{
            @"title": [NSString stringWithFormat:@"我是UIBlurEffectStyleSystemMaterialDark(%ld)", UIBlurEffectStyleSystemMaterialDark],
            @"value": @(UIBlurEffectStyleSystemMaterialDark),
        },
        @{
            @"title": [NSString stringWithFormat:@"我是UIBlurEffectStyleSystemThickMaterialDark(%ld)", UIBlurEffectStyleSystemThickMaterialDark],
            @"value": @(UIBlurEffectStyleSystemThickMaterialDark),
        },
        @{
            @"title": [NSString stringWithFormat:@"我是UIBlurEffectStyleSystemChromeMaterialDark(%ld)", UIBlurEffectStyleSystemChromeMaterialDark],
            @"value": @(UIBlurEffectStyleSystemChromeMaterialDark),
        },
    ];
    WS(wSelf);
    for (NSDictionary *dic in arr) {
        NSString *title = dic[@"title"];
        NSNumber *value = dic[@"value"];
        UIBlurEffect *effect = [UIBlurEffect effectWithStyle:(UIBlurEffectStyle)[value integerValue]];
        [self createModelWithParams:params
                              title:title
                           property:@"backgroundEffect"
                              value:effect
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
            @"abstract": @"设置UINavigationController的UINavigationBar的standardAppearance的属性backgroundEffect",
            @"title": @"@property (nonatomic, readwrite, copy, nullable) UIBlurEffect *backgroundEffect;",
            @"isDataModelExpand": @(YES),
            @"desc": @"设置背景亮度\n在configureWithTransparentBackground模式下可以使用\n在configureWithOpaqueBackground模式下使用是无效的\n在configureWithDefaultBackground模式下可以使用",
            @"dataModel": @{
                @"childItems": [self TestProjectBarAppearance_property_backgroundEffect:params],
            }
        },
    };
}

- (void)setConfigAppear:(TestProjectTableViewParams *)params {
    self.parentVC.navigationController.navigationBar.standardAppearance = self.barApperance;
    self.parentVC.navigationController.navigationBar.scrollEdgeAppearance = self.barApperance;
}

- (NSMutableArray *)TestProjectBarAppearance_configureWithDefaultBackground:(TestProjectTableViewParams *)params {
    WS(wSelf);
    return [self createModelSingleArrayWithParams:params title:@"configureWithDefaultBackground" block:^{
        [wSelf.barApperance configureWithDefaultBackground];
        [wSelf setConfigAppear];
    }];
}

- (NSDictionary *)method_4:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"执行UINavigationController的UINavigationBar的standardAppearance的方法configureWithDefaultBackground",
            @"title": @"@- (void)configureWithTransparentBackground;",
            @"isDataModelExpand": @(YES),
            @"desc": @"这个push背景颜色会闪一下、有分割线",
            @"dataModel": @{
                @"childItems": [self TestProjectBarAppearance_configureWithTransparentBackground:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectBarAppearance_configureWithOpaqueBackground:(TestProjectTableViewParams *)params {
    WS(wSelf);
    return [self createModelSingleArrayWithParams:params title:@"configureWithOpaqueBackground" block:^{
        [wSelf.barApperance configureWithOpaqueBackground];
        [wSelf setConfigAppear];
    }];
}

- (NSDictionary *)method_3:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"执行UINavigationController的UINavigationBar的standardAppearance的方法configureWithOpaqueBackground",
            @"title": @"- (void)configureWithOpaqueBackground;",
            @"isDataModelExpand": @(YES),
            @"desc": @"这个push背景颜色不会闪一下、无分割线",
            @"dataModel": @{
                @"childItems": [self TestProjectBarAppearance_configureWithOpaqueBackground:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectBarAppearance_configureWithTransparentBackground:(TestProjectTableViewParams *)params {
    WS(wSelf);
    return [self createModelSingleArrayWithParams:params title:@"configureWithTransparentBackground" block:^{
        [wSelf.barApperance configureWithTransparentBackground];
        [wSelf setConfigAppear];
    }];
}

- (NSDictionary *)method_2:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"执行UINavigationController的UINavigationBar的standardAppearance的方法configureWithDefaultBackground",
            @"title": @"- (void)configureWithDefaultBackground;",
            @"isDataModelExpand": @(YES),
            @"desc": @"这个push背景颜色会闪一下、有分割线",
            @"dataModel": @{
                @"childItems": [self TestProjectBarAppearance_configureWithDefaultBackground:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectBarAppearance_property_idiom:(TestProjectTableViewParams *)params {
    return [self createModelSingleArrayWithParams:params
                                         property:@"idiom"
                                            value:nil
                                        operation:TestProjectCreateModelGetBeforeClickGet
                                            block:nil];
}

- (NSDictionary *)method_1:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"设置获取UINavigationController的UINavigationBar的standardAppearance的属性idiom",
            @"title": @"@property (nonatomic, readonly, assign) UIUserInterfaceIdiom idiom;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectBarAppearance_property_idiom:params],
            }
        },
    };
}

@end
