//
//  TestProjectUIViewController.m
//  TestProjectIOS
//
//  Created by liwenfan on 2023/4/6.
//

#import "TestProjectUIViewController.h"

#import "TestProjectTestVC.h"
#import "TestProjectTestNibVC.h"

@interface TestProjectUIViewController ()

@property (nonatomic, strong) TestProjectTestNibVC *tNibVC;

@end

@implementation TestProjectUIViewController

- (TestProjectTestNibVC *)tNibVC:(TestProjectTableViewParams *)params {
    if (!_tNibVC) {
        _tNibVC = [[TestProjectTestNibVC alloc] initWithNibName:@"TestProjectTestNibVC" bundle:nil];
    }
    return _tNibVC;
}

- (instancetype)init {
    if (self = [super init]) {
        WS(wSelf);
        [NSTimer scheduledTimerWithTimeInterval:0.5 repeats:NO block:^(NSTimer * _Nonnull timer) {
            [UIApplication.rootNavController pushViewController:wSelf.tVC animated:YES];
        }];
    }
    return self;
}

- (NSArray *)viewDataArray:(TestProjectTableViewParams *)params {
    NSMutableArray *mutArr = [NSMutableArray arrayWithArray:[super viewDataArray]];
    if (!self.parentVC) {
        [mutArr insertObject:[self name_1] atIndex:0];
        [mutArr insertObject:[self name_2] atIndex:0];
    }
    return [mutArr copy];
}

- (NSDictionary *)name_1 {
    return @{
        @"dataModel": @{
            @"abstract": @"push tNibVC",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectViewController_push_tNibVC],
            }
        },
    };
}

- (NSDictionary *)name_2 {
    return @{
        @"dataModel": @{
            @"abstract": @"push tVC",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectViewController_push_tVC],
            }
        },
    };
}

- (NSMutableArray *)TestProjectViewController_push_VC:(BOOL)isNib {
    self.dataMutArr = [NSMutableArray array];
    TestProjectTableViewModel *m = [[TestProjectTableViewModel alloc] init];
    m.title = isNib ? @"点击我push到tNibVC里去" : @"点击我push到tVC里去";
    WS(wSelf);
    m.clickBlock = ^{
        [UIApplication.rootNavController pushViewController: isNib ? wSelf.tNibVC : wSelf.tVC animated:YES];
    };
    [m calculDataViewHeight];
    [self.dataMutArr addObject:m];
    return self.dataMutArr;
}

- (NSMutableArray *)TestProjectViewController_push_tVC {
    return [self TestProjectViewController_push_VC:NO];
}

- (NSMutableArray *)TestProjectViewController_push_tNibVC {
    return [self TestProjectViewController_push_VC:YES];
}

- (id)setPropertyValueObject:(TestProjectTableViewParams *)params {
    return self.parentVC;
}

//typedef NS_ENUM(NSInteger, UIUserInterfaceStyle) {
//    UIUserInterfaceStyleUnspecified,
//    UIUserInterfaceStyleLight,
//    UIUserInterfaceStyleDark,
//} API_AVAILABLE(tvos(10.0)) API_AVAILABLE(ios(12.0)) API_UNAVAILABLE(watchos);

- (NSMutableArray *)TestProjectChildViewController_property_overrideUserInterfaceStyle:(TestProjectTableViewParams *)params {
    NSArray *arr = @[
        @{
            @"title": [NSString stringWithFormat:@"我设置的是(UIUserInterfaceStyleUnspecified-%ld), vc的颜色背景是白色的",  UIUserInterfaceStyleUnspecified],
            @"style": @(UIUserInterfaceStyleUnspecified),
        },
        @{
            @"title": [NSString stringWithFormat:@"我设置的是(UIUserInterfaceStyleLight-%ld), vc的颜色背景是白色的",  UIUserInterfaceStyleLight],
            @"style": @(UIUserInterfaceStyleLight),
        },
        @{
            @"title": [NSString stringWithFormat:@"我设置的是(UIUserInterfaceStyleDark-%ld), vc的颜色背景是暗黑的",  UIUserInterfaceStyleDark],
            @"style": @(UIUserInterfaceStyleDark),
        },
    ];
    for (NSDictionary *dic in arr) {
        NSString *title = dic[@"title"];
        NSNumber *style = dic[@"style"];
        [self createChildVCTableModelWithParams:params property:@"overrideUserInterfaceStyle" value:style title:title];
    }
    return self.dataMutArr;
}

- (NSDictionary *)method_42:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"获取VC的属性overrideUserInterfaceStyle",
            @"title": @"@property (nonatomic) UIUserInterfaceStyle overrideUserInterfaceStyle API_AVAILABLE(tvos(13.0), ios(13.0)) API_UNAVAILABLE(watchos);",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectChildViewController_property_overrideUserInterfaceStyle:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectChildViewController_setNeedsStatusBarAppearanceUpdate:(TestProjectTableViewParams *)params {
    WS(wSelf);
    return [self createModelSingleArrayWithParams:params title:@"我执行[vc setNeedsStatusBarAppearanceUpdate]" block:^{
        NSLogWS(@"下一个childVC开始执行=====>");
        [wSelf.tVC setNeedsStatusBarAppearanceUpdate];
        NSLogWS(@"下一个childVC结束执行=====>");
        NSLogWS(@"parentVC开始执行=====>");
        [wSelf.parentVC setNeedsStatusBarAppearanceUpdate];
        NSLogWS(@"parentVC结束执行=====>");
    }];
}

- (NSDictionary *)method_41:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"执行VC的方法setNeedsStatusBarAppearanceUpdate",
            @"title": @"- (void)setNeedsStatusBarAppearanceUpdate API_AVAILABLE(ios(7.0)) API_UNAVAILABLE(tvos);",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectChildViewController_setNeedsStatusBarAppearanceUpdate:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectChildViewController_property_preferredStatusBarUpdateAnimation:(TestProjectTableViewParams *)params {
    return [self createModelSingleArrayWithParams:params
                                         property:@"preferredStatusBarUpdateAnimation"
                                            value:nil
                                        operation:TestProjectCreateModelGetBeforeClickGet
                                            block:nil];
}

- (NSDictionary *)method_40:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"获取VC的属性preferredStatusBarUpdateAnimation",
            @"title": @"@property(nonatomic, readonly) UIStatusBarAnimation preferredStatusBarUpdateAnimation API_AVAILABLE(ios(7.0)) API_UNAVAILABLE(tvos);",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectChildViewController_property_preferredStatusBarUpdateAnimation:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectChildViewController_property_prefersStatusBarHidden:(TestProjectTableViewParams *)params {
    return [self createModelSingleArrayWithParams:params
                                         property:@"prefersStatusBarHidden"
                                            value:nil
                                        operation:TestProjectCreateModelGetBeforeClickGet
                                            block:nil];
}

- (NSDictionary *)method_39:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"获取VC的属性prefersStatusBarHidden",
            @"title": @"@property(nonatomic, readonly) BOOL prefersStatusBarHidden API_AVAILABLE(ios(7.0)) API_UNAVAILABLE(tvos);",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectChildViewController_property_prefersStatusBarHidden:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectChildViewController_property_preferredStatusBarStyle:(TestProjectTableViewParams *)params {
    return [self createModelSingleArrayWithParams:params
                                         property:@"preferredStatusBarStyle"
                                            value:nil
                                        operation:TestProjectCreateModelGetBeforeClickGet
                                            block:nil];
}

- (NSDictionary *)method_38:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"获取VC的属性preferredStatusBarStyle",
            @"title": @"@property(nonatomic, readonly) UIStatusBarStyle preferredStatusBarStyle API_AVAILABLE(ios(7.0)) API_UNAVAILABLE(tvos);",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectChildViewController_property_preferredStatusBarStyle:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectChildViewController_property_preferredContentSize:(TestProjectTableViewParams *)params {
    return [self createModelSingleArrayWithParams:params
                                         property:@"preferredContentSize"
                                            value:nil
                                        operation:TestProjectCreateModelGetBeforeClickGet
                                            block:nil];
}

- (NSDictionary *)method_37:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"获取VC的属性preferredContentSize",
            @"title": @"@property (nonatomic) CGSize preferredContentSize API_AVAILABLE(ios(7.0));",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectChildViewController_property_preferredContentSize:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectChildViewController_property_extendedLayoutIncludesOpaqueBars:(TestProjectTableViewParams *)params {
    NSArray *arr = @[
        @{
            @"title": @"我设置的是YES",
            @"style": @(YES),
        },
        @{
            @"title": @"我设置的是NO",
            @"style": @(NO),
        },
    ];
    for (NSDictionary *dic in arr) {
        NSString *title = dic[@"title"];
        NSNumber *style = dic[@"style"];
        [self createChildVCTableModelWithParams:params property:@"extendedLayoutIncludesOpaqueBars" value:style title:title];
    }
    return self.dataMutArr;
}

- (NSDictionary *)method_36:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"获取VC的属性extendedLayoutIncludesOpaqueBars",
            @"title": @"@property(nonatomic,assign) BOOL extendedLayoutIncludesOpaqueBars API_AVAILABLE(ios(7.0));",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectChildViewController_property_extendedLayoutIncludesOpaqueBars:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectChildViewController_property_edgesForExtendedLayout:(TestProjectTableViewParams *)params {
    return [self createModelSingleArrayWithParams:params
                                         property:@"edgesForExtendedLayout"
                                            value:nil
                                        operation:TestProjectCreateModelGetBeforeClickGet
                                            block:nil];
}

- (NSDictionary *)method_35:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"获取VC的属性edgesForExtendedLayout",
            @"title": @"@property(nonatomic,assign) UIRectEdge edgesForExtendedLayout API_AVAILABLE(ios(7.0));",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectChildViewController_property_edgesForExtendedLayout:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectChildViewController_property_disablesAutomaticKeyboardDismissal:(TestProjectTableViewParams *)params {
    return [self createModelSingleArrayWithParams:params
                                         property:@"disablesAutomaticKeyboardDismissal"
                                            value:nil
                                        operation:TestProjectCreateModelGetBeforeClickGet
                                            block:nil];
}

- (NSDictionary *)method_34:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"获取VC的属性disablesAutomaticKeyboardDismissal",
            @"title": @"@property(nonatomic, readonly) BOOL disablesAutomaticKeyboardDismissal API_AVAILABLE(ios(4.3));",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectChildViewController_property_disablesAutomaticKeyboardDismissal:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectChildViewController_property_modalPresentationCapturesStatusBarAppearance:(TestProjectTableViewParams *)params {
    NSArray *arr = @[
        @{
            @"title": @"我设置的是YES",
            @"style": @(YES),
        },
        @{
            @"title": @"我设置的是NO",
            @"style": @(NO),
        },
    ];
    for (NSDictionary *dic in arr) {
        NSString *title = dic[@"title"];
        NSNumber *style = dic[@"style"];
        [self createChildVCTableModelWithParams:params property:@"modalPresentationCapturesStatusBarAppearance" value:style title:title];
    }
    return self.dataMutArr;
}

- (NSDictionary *)method_33:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"获取VC的属性modalPresentationCapturesStatusBarAppearance，不知道怎么玩",
            @"title": @"@property(nonatomic,assign) BOOL modalPresentationCapturesStatusBarAppearance API_AVAILABLE(ios(7.0)) API_UNAVAILABLE(tvos);",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectChildViewController_property_modalPresentationCapturesStatusBarAppearance:params],
            }
        },
    };
}

//typedef NS_ENUM(NSInteger, UIModalPresentationStyle) {
//    UIModalPresentationFullScreen = 0,
//    UIModalPresentationPageSheet API_AVAILABLE(ios(3.2)) API_UNAVAILABLE(tvos),
//    UIModalPresentationFormSheet API_AVAILABLE(ios(3.2)) API_UNAVAILABLE(tvos),
//    UIModalPresentationCurrentContext API_AVAILABLE(ios(3.2)),
//    UIModalPresentationCustom API_AVAILABLE(ios(7.0)),
//    UIModalPresentationOverFullScreen API_AVAILABLE(ios(8.0)),
//    UIModalPresentationOverCurrentContext API_AVAILABLE(ios(8.0)),
//    UIModalPresentationPopover API_AVAILABLE(ios(8.0)) API_UNAVAILABLE(tvos),
//    UIModalPresentationBlurOverFullScreen API_AVAILABLE(tvos(11.0)) API_UNAVAILABLE(ios) API_UNAVAILABLE(watchos),
//    UIModalPresentationNone API_AVAILABLE(ios(7.0)) = -1,
//    UIModalPresentationAutomatic API_AVAILABLE(ios(13.0)) = -2,
//};

- (NSMutableArray *)TestProjectChildViewController_property_modalPresentationStyle:(TestProjectTableViewParams *)params {
    NSArray *arr = @[
        @{
            @"title": [NSString stringWithFormat:@"设置的值是(UIModalPresentationFullScreen-%ld) 页面是全屏展示的", UIModalPresentationFullScreen],
            @"style": @(UIModalPresentationFullScreen),
        },
        @{
            @"title": [NSString stringWithFormat:@"设置的值是(UIModalPresentationPageSheet-%ld) 页面是sheet展示的", UIModalPresentationPageSheet],
            @"style": @(UIModalPresentationPageSheet),
        },
        @{
            @"title": [NSString stringWithFormat:@"设置的值是(UIModalPresentationFormSheet-%ld) 页面是sheet展示的", UIModalPresentationFormSheet],
            @"style": @(UIModalPresentationFormSheet),
        },
        @{
            @"title": [NSString stringWithFormat:@"设置的值是(UIModalPresentationCurrentContext-%ld) 页面是全屏展示的", UIModalPresentationCurrentContext],
            @"style": @(UIModalPresentationCurrentContext),
        },
        @{
            @"title": [NSString stringWithFormat:@"设置的值是(UIModalPresentationCustom-%ld) 页面是全屏展示的", UIModalPresentationCustom],
            @"style": @(UIModalPresentationCustom),
        },
        @{
            @"title": [NSString stringWithFormat:@"设置的值是(UIModalPresentationOverFullScreen-%ld) 页面是全屏展示的", UIModalPresentationOverFullScreen],
            @"style": @(UIModalPresentationOverFullScreen),
        },
        @{
            @"title": [NSString stringWithFormat:@"设置的值是(UIModalPresentationOverCurrentContext-%ld) 页面是全屏展示的", UIModalPresentationOverCurrentContext],
            @"style": @(UIModalPresentationOverCurrentContext),
        },
        @{
            @"title": [NSString stringWithFormat:@"设置的值是(UIModalPresentationPopover-%ld) 页面是sheet展示的", UIModalPresentationPopover],
            @"style": @(UIModalPresentationPopover),
        },
//        @{
//            @"title": [NSString stringWithFormat:@"设置的值是(UIModalPresentationBlurOverFullScreen-%ld) 这个不支持手机版", UIModalPresentationBlurOverFullScreen],
//            @"style": @(UIModalPresentationBlurOverFullScreen),
//        },
//        @{
//            @"title": [NSString stringWithFormat:@"设置的值是(UIModalPresentationNone-%ld) 这个present过去的页面会崩溃", UIModalPresentationNone],
//            @"style": @(UIModalPresentationNone),
//        },
        @{
            @"title": [NSString stringWithFormat:@"设置的值是(UIModalPresentationAutomatic-%ld) 页面是sheet展示的", UIModalPresentationAutomatic],
            @"style": @(UIModalPresentationAutomatic),
        },
    ];
    for (NSDictionary *dic in arr) {
        NSString *title = dic[@"title"];
        NSNumber *style = dic[@"style"];
        [self createChildVCTableModelWithParams:params property:@"modalPresentationStyle" value:style title:title];
    }
    return self.dataMutArr;
}

- (NSDictionary *)method_32:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"设置VC的页面展示属性modalPresentationStyle",
            @"title": @"@property(nonatomic,assign) UIModalPresentationStyle modalPresentationStyle API_AVAILABLE(ios(3.2));",
            @"isDataModelExpand": @(YES),
            @"desc": @"present过去的VC是有页面效果的，push过去的没有页面效果",
            @"dataModel": @{
                @"childItems": [self TestProjectChildViewController_property_modalPresentationStyle:params],
            }
        },
    };
}

//typedef NS_ENUM(NSInteger, UIModalTransitionStyle) {
//    UIModalTransitionStyleCoverVertical = 0,
//    UIModalTransitionStyleFlipHorizontal API_UNAVAILABLE(tvos),
//    UIModalTransitionStyleCrossDissolve,
//    UIModalTransitionStylePartialCurl API_AVAILABLE(ios(3.2)) API_UNAVAILABLE(tvos),
//};

- (NSMutableArray *)TestProjectChildViewController_property_modalTransitionStyle:(TestProjectTableViewParams *)params {
    NSArray *arr = @[
        @{
            @"title": [NSString stringWithFormat:@"设置的值是(UIModalTransitionStyleCoverVertical-%ld) 动画样式是封面垂直", UIModalTransitionStyleCoverVertical],
            @"style": @(UIModalTransitionStyleCoverVertical),
        },
        @{
            @"title": [NSString stringWithFormat:@"设置的值是(UIModalTransitionStyleFlipHorizontal-%ld) 动画样式是横向翻转", UIModalTransitionStyleFlipHorizontal],
            @"style": @(UIModalTransitionStyleFlipHorizontal),
        },
        @{
            @"title": [NSString stringWithFormat:@"设置的值是(UIModalTransitionStyleCrossDissolve-%ld) 动画样式是封面垂直", UIModalTransitionStyleCrossDissolve],
            @"style": @(UIModalTransitionStyleCrossDissolve),
        },
//        @{
//            @"title": [NSString stringWithFormat:@"设置的值是(UIModalTransitionStylePartialCurl-%ld) 动画样式是部分旋转，present过去的会崩溃，只能push过去", UIModalTransitionStylePartialCurl],
//            @"style": @(UIModalTransitionStylePartialCurl),
//        },
    ];
    for (NSDictionary *dic in arr) {
        NSString *title = dic[@"title"];
        NSNumber *style = dic[@"style"];
        [self createChildVCTableModelWithParams:params property:@"modalTransitionStyle" value:style title:title];
    }
    return self.dataMutArr;
}

- (NSDictionary *)method_31:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"设置VC的动画属性modalTransitionStyle",
            @"title": @"@property(nonatomic,assign) UIModalTransitionStyle modalTransitionStyle API_AVAILABLE(ios(3.0));",
            @"isDataModelExpand": @(YES),
            @"desc": @"present过去的VC是有效果动画的，push过去的没有动画效果",
            @"dataModel": @{
                @"childItems": [self TestProjectChildViewController_property_modalTransitionStyle:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectChildViewController_property_beingDismissed:(TestProjectTableViewParams *)params {
    return [self createModelSingleArrayWithParams:params
                                         property:@"beingDismissed"
                                            value:nil
                                        operation:TestProjectCreateModelGetBeforeClickGet
                                            block:nil];
}

- (NSDictionary *)method_30:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"获取VC的属性beingDismissed",
            @"title": @"@property(nonatomic, readonly, getter=isBeingDismissed) BOOL beingDismissed API_AVAILABLE(ios(5.0));",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectChildViewController_property_beingDismissed:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectChildViewController_property_beingPresented:(TestProjectTableViewParams *)params {
    return [self createModelSingleArrayWithParams:params
                                         property:@"beingPresented"
                                            value:nil
                                        operation:TestProjectCreateModelGetBeforeClickGet
                                            block:nil];
}

- (NSDictionary *)method_29:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"获取VC的属性beingPresented",
            @"title": @"@property(nonatomic, readonly, getter=isBeingPresented) BOOL beingPresented API_AVAILABLE(ios(5.0));",
            @"isDataModelExpand": @(YES),
            @"desc": @"present过去的是1，push过去的是0",
            @"dataModel": @{
                @"childItems": [self TestProjectChildViewController_property_beingPresented:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectChildViewController_property_interactionActivityTrackingBaseName:(TestProjectTableViewParams *)params {
    return [self createModelSingleArrayWithParams:params
                                         property:@"interactionActivityTrackingBaseName"
                                            value:nil
                                        operation:TestProjectCreateModelGetBeforeClickGet
                                            block:nil];
}

- (NSDictionary *)method_28:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"获取VC的属性interactionActivityTrackingBaseName",
            @"title": @"@property (nonatomic, copy, nullable) NSString *interactionActivityTrackingBaseName API_AVAILABLE(ios(16.0));",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectChildViewController_property_interactionActivityTrackingBaseName:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectChildViewController_property_focusGroupIdentifier:(TestProjectTableViewParams *)params {
    return [self createModelSingleArrayWithParams:params
                                         property:@"focusGroupIdentifier"
                                            value:nil
                                        operation:TestProjectCreateModelGetBeforeClickGet
                                            block:nil];
}

- (NSDictionary *)method_27:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"获取VC的属性focusGroupIdentifier",
            @"title": @"@property (nonatomic, readwrite, nullable, copy) NSString *focusGroupIdentifier API_AVAILABLE(ios(15.0)) API_UNAVAILABLE(tvos, watchos);",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectChildViewController_property_focusGroupIdentifier:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectChildViewController_property_restoresFocusAfterTransition:(TestProjectTableViewParams *)params {
    return [self createModelSingleArrayWithParams:params
                                         property:@"restoresFocusAfterTransition"
                                            value:nil
                                        operation:TestProjectCreateModelGetBeforeClickGet
                                            block:nil];
}

- (NSDictionary *)method_26:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"获取VC的属性restoresFocusAfterTransition",
            @"title": @"@property (nonatomic) BOOL restoresFocusAfterTransition API_AVAILABLE(ios(10.0));",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectChildViewController_property_restoresFocusAfterTransition:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectChildViewController_property_providesPresentationContextTransitionStyle:(TestProjectTableViewParams *)params {
    return [self createModelSingleArrayWithParams:params
                                         property:@"providesPresentationContextTransitionStyle"
                                            value:nil
                                        operation:TestProjectCreateModelGetBeforeClickGet
                                            block:nil];
}

- (NSDictionary *)method_25:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"获取VC的属性providesPresentationContextTransitionStyle",
            @"title": @"@property(nonatomic,assign) BOOL providesPresentationContextTransitionStyle API_AVAILABLE(ios(5.0));",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectChildViewController_property_providesPresentationContextTransitionStyle:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectChildViewController_property_definesPresentationContext:(TestProjectTableViewParams *)params {
    return [self createModelSingleArrayWithParams:params
                                         property:@"definesPresentationContext"
                                            value:nil
                                        operation:TestProjectCreateModelGetBeforeClickGet
                                            block:nil];
}

- (NSDictionary *)method_24:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"获取VC的属性definesPresentationContext",
            @"title": @"@property(nonatomic,assign) BOOL definesPresentationContext API_AVAILABLE(ios(5.0));",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectChildViewController_property_definesPresentationContext:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectChildViewController_property_presentingViewController:(TestProjectTableViewParams *)params {
    return [self createModelSingleArrayWithParams:params
                                         property:@"presentingViewController"
                                            value:nil
                                        operation:TestProjectCreateModelGetBeforeClickGet
                                            block:nil];
}

- (NSDictionary *)method_23:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"获取VC的属性presentingViewController",
            @"title": @"@property(nullable, nonatomic,readonly) UIViewController *presentingViewController API_AVAILABLE(ios(5.0));",
            @"desc": @"只有通过present过去的才有，push过去的没有",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectChildViewController_property_presentingViewController:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectChildViewController_property_presentedViewController:(TestProjectTableViewParams *)params {
    return [self createModelSingleArrayWithParams:params
                                         property:@"presentedViewController"
                                            value:nil
                                        operation:TestProjectCreateModelGetBeforeClickGet
                                            block:nil];
}

- (NSDictionary *)method_22:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"获取VC的属性presentedViewController",
            @"title": @"@property(nullable, nonatomic,readonly) UIViewController *presentedViewController  API_AVAILABLE(ios(5.0));",
            @"desc": @"只有通过present过去的才有，push过去的没有",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectChildViewController_property_presentedViewController:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectChildViewController_property_parentViewController:(TestProjectTableViewParams *)params {
    return [self createModelSingleArrayWithParams:params
                                         property:@"parentViewController"
                                            value:nil
                                        operation:TestProjectCreateModelGetBeforeClickGet
                                            block:nil];
}

- (NSDictionary *)method_21:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"获取VC的属性parentViewController",
            @"title": @"@property(nullable,nonatomic,weak,readonly) UIViewController *parentViewController;",
            @"desc": @"只有通过present过去的没有，push过去的才有而且是UINavigationController",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectChildViewController_property_parentViewController:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectChildViewController_property_title:(TestProjectTableViewParams *)params {
    return [self createModelSingleArrayWithParams:params
                                         property:@"title"
                                            value:nil
                                        operation:TestProjectCreateModelGetBeforeClickGet
                                            block:nil];
}

- (NSDictionary *)method_20:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"获取VC的属性title",
            @"title": @"@property(nullable, nonatomic,copy) NSString *title;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectChildViewController_property_title:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectChildViewController_viewDidLayoutSubviews:(TestProjectTableViewParams *)params {
    WS(wSelf);
    return [self createModelSingleArrayWithParams:params title:@"我执行[vc viewDidLayoutSubviews]" block:^{
        NSLogWS(@"下一个childVC开始执行=====>");
        [wSelf.tVC viewDidLayoutSubviews];
        NSLogWS(@"下一个childVC结束执行=====>");
        NSLogWS(@"parentVC开始执行=====>");
        [wSelf.parentVC viewDidLayoutSubviews];
        NSLogWS(@"parentVC结束执行=====>");
    }];
}

- (NSDictionary *)method_19:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"让VC在执行一遍viewDidLayoutSubviews",
            @"title": @"- (void)viewDidLayoutSubviews API_AVAILABLE(ios(5.0));",
            @"desc": @"push过后依然会执行viewDidLayoutSubviews",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectChildViewController_viewDidLayoutSubviews:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectChildViewController_viewWillLayoutSubviews:(TestProjectTableViewParams *)params {
    WS(wSelf);
    return [self createModelSingleArrayWithParams:params title:@"我执行[vc viewWillLayoutSubviews]" block:^{
        NSLogWS(@"下一个childVC开始执行=====>");
        [wSelf.tVC viewWillLayoutSubviews];
        NSLogWS(@"下一个childVC结束执行=====>");
        NSLogWS(@"parentVC开始执行=====>");
        [wSelf.parentVC viewWillLayoutSubviews];
        NSLogWS(@"parentVC结束执行=====>");
    }];
}

- (NSDictionary *)method_18:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"让VC在执行一遍viewWillLayoutSubviews",
            @"title": @"- (void)viewWillLayoutSubviews API_AVAILABLE(ios(5.0));",
            @"desc": @"push过后不会执行viewWillLayoutSubviews",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectChildViewController_viewWillLayoutSubviews:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectChildViewController_viewDidDisappear:(TestProjectTableViewParams *)params {
    WS(wSelf);
    return [self createModelSingleArrayWithParams:params title:@"我执行[vc viewDidDisappear]" block:^{
        NSLogWS(@"下一个childVC开始执行=====>");
        [wSelf.tVC viewDidDisappear:YES];
        NSLogWS(@"下一个childVC结束执行=====>");
        NSLogWS(@"parentVC开始执行=====>");
        [wSelf.parentVC viewDidDisappear:YES];
        NSLogWS(@"parentVC结束执行=====>");
    }];
}

- (NSDictionary *)method_17:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"让VC在执行一遍viewDidDisappear",
            @"title": @"- (void)viewDidDisappear:(BOOL)animated;",
            @"desc": @"push过后依然会执行viewDidDisappear 父的vc api会报警告但仍然会执行",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectChildViewController_viewDidDisappear:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectChildViewController_viewWillDisappear:(TestProjectTableViewParams *)params {
    WS(wSelf);
    return [self createModelSingleArrayWithParams:params title:@"我执行[vc viewWillDisappear]" block:^{
        NSLogWS(@"下一个childVC开始执行=====>");
        [wSelf.tVC viewWillDisappear:YES];
        NSLogWS(@"下一个childVC结束执行=====>");
        NSLogWS(@"parentVC开始执行=====>");
        [wSelf.parentVC viewWillDisappear:YES];
        NSLogWS(@"parentVC结束执行=====>");
    }];
}

- (NSDictionary *)method_16:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"让VC在执行一遍viewWillDisappear",
            @"title": @"- (void)viewWillDisappear:(BOOL)animated;",
            @"desc": @"push过后会执行viewWillDisappear api会报警告但仍然会执行",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectChildViewController_viewWillDisappear:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectChildViewController_viewDidAppear:(TestProjectTableViewParams *)params {
    WS(wSelf);
    return [self createModelSingleArrayWithParams:params title:@"我执行[vc viewDidAppear]" block:^{
        NSLogWS(@"下一个childVC开始执行=====>");
        [wSelf.tVC viewDidAppear:YES];
        NSLogWS(@"下一个childVC结束执行=====>");
        NSLogWS(@"parentVC开始执行=====>");
        [wSelf.parentVC viewDidAppear:YES];
        NSLogWS(@"parentVC结束执行=====>");
    }];
}

- (NSDictionary *)method_15:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"让VC在执行一遍viewDidAppear",
            @"title": @"- (void)viewDidAppear:(BOOL)animated;",
            @"desc": @"push过后依然会执行viewDidAppear 父的vc api会报警告但仍然会执行",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectChildViewController_viewDidAppear:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectChildViewController_viewWillAppear:(TestProjectTableViewParams *)params {
    WS(wSelf);
    return [self createModelSingleArrayWithParams:params title:@"我执行[vc viewWillAppear]" block:^{
        NSLogWS(@"下一个childVC开始执行=====>");
        [wSelf.tVC viewWillAppear:YES];
        NSLogWS(@"下一个childVC结束执行=====>");
        NSLogWS(@"parentVC开始执行=====>");
        [wSelf.parentVC viewWillAppear:YES];
        NSLogWS(@"parentVC结束执行=====>");
    }];
}

- (NSDictionary *)method_14:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"让VC在执行一遍viewWillAppear",
            @"title": @"- (void)viewWillAppear:(BOOL)animated;",
            @"desc": @"push过后不会执行viewWillAppear api会报警告但仍然会执行",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectChildViewController_viewWillAppear:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectChildViewController_property_storyboard:(TestProjectTableViewParams *)params {
    return [self createModelSingleArrayWithParams:params
                                         property:@"storyboard"
                                            value:nil
                                        operation:TestProjectCreateModelGetBeforeClickGet
                                            block:nil];
}

- (NSDictionary *)method_13:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"获取VC的属性storyboard",
            @"title": @"@property(nullable, nonatomic, readonly, strong) UIStoryboard *storyboard API_AVAILABLE(ios(5.0));",
            @"desc": @"如果没有执行viewDidLoad方法则会窒息",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectChildViewController_property_storyboard:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectChildViewController_property_nibBundle:(TestProjectTableViewParams *)params {
    return [self createModelSingleArrayWithParams:params
                                         property:@"nibBundle"
                                            value:nil
                                        operation:TestProjectCreateModelGetBeforeClickGet
                                            block:nil];
}

- (NSDictionary *)method_12:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"获取VC的属性nibBundle",
            @"title": @"@property(nullable, nonatomic, readonly, strong) NSBundle *nibBundle;",
            @"desc": @"如果没有执行viewDidLoad方法则会窒息",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectChildViewController_property_nibBundle:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectChildViewController_property_nibName:(TestProjectTableViewParams *)params {
    return [self createModelSingleArrayWithParams:params
                                         property:@"nibName"
                                            value:nil
                                        operation:TestProjectCreateModelGetBeforeClickGet
                                            block:nil];
}

- (NSDictionary *)method_11:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"获取VC的属性nibName",
            @"title": @"@property(nullable, nonatomic, readonly, copy) NSString *nibName;",
            @"desc": @"如果没有执行viewDidLoad方法则会窒息",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectChildViewController_property_nibName:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectChildViewController_property_viewLoaded:(TestProjectTableViewParams *)params {
    return [self createModelSingleArrayWithParams:params
                                         property:@"viewLoaded"
                                            value:nil
                                        operation:TestProjectCreateModelGetBeforeClickGet
                                            block:nil];
}

- (NSDictionary *)method_10:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"获取VC的属性viewLoaded",
            @"title": @"@property(nonatomic, readonly, getter=isViewLoaded) BOOL viewLoaded API_AVAILABLE(ios(3.0));",
            @"desc": @"如果没有执行viewDidLoad方法则会窒息",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectChildViewController_property_viewLoaded:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectChildViewController_viewDidLoad:(TestProjectTableViewParams *)params {
    WS(wSelf);
    return [self createModelSingleArrayWithParams:params title:@"我执行[vc viewDidLoad]" block:^{
        NSLogWS(@"下一个childVC开始执行=====>");
        [wSelf.tVC viewDidLoad];
        NSLogWS(@"下一个childVC结束执行=====>");
        NSLogWS(@"parentVC开始执行=====>");
        [wSelf.parentVC viewDidLoad];
        NSLogWS(@"parentVC结束执行=====>");
    }];
}

- (NSDictionary *)method_9:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"让VC在执行一遍viewDidLoad",
            @"title": @"- (void)viewDidLoad;",
            @"desc": @"如果没有执行viewDidLoad方法则会执行两次，执行过的将会在执行一次，vc的view已经出现过的会在执行viewWillLayoutSubviews、viewDidLayoutSubviews \n push过后不会执行viewDidLoad",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectChildViewController_viewDidLoad:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectChildViewController_property_viewIfLoaded:(TestProjectTableViewParams *)params {
    return [self createModelSingleArrayWithParams:params
                                         property:@"viewIfLoaded"
                                            value:nil
                                        operation:TestProjectCreateModelGetBeforeClickGet
                                            block:nil];
}

- (NSDictionary *)method_8:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"获取VC的属性viewIfLoaded",
            @"title": @"@property(nullable, nonatomic, readonly, strong) UIView *viewIfLoaded API_AVAILABLE(ios(9.0));",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectChildViewController_property_viewIfLoaded:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectChildViewController_loadViewIfNeeded:(TestProjectTableViewParams *)params {
    WS(wSelf);
    return [self createModelSingleArrayWithParams:params title:@"我执行[vc loadViewIfNeeded]" block:^{
        NSLogWS(@"下一个childVC开始执行=====>");
        [wSelf.tVC loadViewIfNeeded];
        NSLogWS(@"下一个childVC结束执行=====>");
        NSLogWS(@"parentVC开始执行=====>");
        [wSelf.parentVC loadViewIfNeeded];
        NSLogWS(@"parentVC结束执行=====>");
    }];
}

- (NSDictionary *)method_7:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"让VC在没有push之前先加载view",
            @"title": @"- (void)loadViewIfNeeded API_AVAILABLE(ios(9.0));",
            @"desc": @"如果没有执行viewDidLoad方法则会执行",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectChildViewController_loadViewIfNeeded:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectChildViewController_loadView:(TestProjectTableViewParams *)params {
    WS(wSelf);
    return [self createModelSingleArrayWithParams:params title:@"我执行[vc loadView]" block:^{
        NSLogWS(@"下一个childVC开始执行=====>");
        [wSelf.tVC loadView];
        NSLogWS(@"下一个childVC结束执行=====>");
        NSLogWS(@"parentVC开始执行=====>");
        [wSelf.parentVC loadView];
        NSLogWS(@"parentVC结束执行=====>");
    }];
}

- (NSDictionary *)method_6:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"加载view，什么时机也不会调用 \n 暂时不知道玩法",
            @"title": @"- (void)loadView;",
            @"desc": @"会使页面空白，也不会执行viewDidLoad",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectChildViewController_loadView:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectChildViewController_property_view:(TestProjectTableViewParams *)params {
    return [self createModelSingleArrayWithParams:params
                                         property:@"view"
                                            value:nil
                                        operation:TestProjectCreateModelGetBeforeClickGet
                                            block:nil];
}

- (NSDictionary *)method_5:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"获取vc里的view",
            @"title": @"@property(null_resettable, nonatomic,strong) UIView *view;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectChildViewController_property_view:params],
            }
        },
    };
}

@end
