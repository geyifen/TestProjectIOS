//
//  TestProjectUIBarButtonItem.m
//  TestProjectIOS
//
//  Created by liwenfan on 2023/5/10.
//

#import "TestProjectUIBarButtonItem.h"

@interface TestProjectUIBarButtonItem ()

@property (nonatomic, strong) UIView *customerView;
@property (nonatomic, strong) UIAction *action;
@property (nonatomic, strong) UIMenu *menu;
@property (nonatomic, strong) UIBarButtonItem *barBtnItem;

@end

@implementation TestProjectUIBarButtonItem

- (id)setPropertyValueObject:(TestProjectTableViewParams *)params {
    return self.parentVC.navigationItem;
}

- (UIBarButtonItem *)barBtnItem {
    if (!_barBtnItem) {
        _barBtnItem = [[UIBarButtonItem alloc] initWithTitle:@"self_t" image:[UIImage imageNamed:@"arrow_down"] target:self action:@selector(gotoBack) menu:self.menu];
    }
    return _barBtnItem;
}

- (UIView *)customerView {
    if (!_customerView) {
        _customerView = [[UIView alloc] init];
        _customerView.frame = CGRectMake(0, 0, 44, 44);
        _customerView.backgroundColor = [UIColor redColor];
    }
    return _customerView;
}

- (UIAction *)action {
    if (!_action) {
        WS(wSelf);
        if (@available(iOS 15.0, *)) {
            _action = [UIAction actionWithTitle:@"action" image:[UIImage imageNamed:@"arrow_down"] identifier:UIActionPaste handler:^(__kindof UIAction * _Nonnull action) {
                [wSelf gotoBack];
            }];
        } else {
            // Fallback on earlier versions
        }
    }
    return _action;
}

- (UIMenu *)menu {
    if (!_menu) {
        if (@available(iOS 15.0, *)) {
            UIMenu *m1 = [UIMenu menuWithTitle:@"m1" children:nil];
            m1.subtitle = @"s1";
            UIMenu *m2 = [UIMenu menuWithTitle:@"m1" children:nil];
            m2.subtitle = @"s2";
            _menu = [UIMenu menuWithTitle:@"p_ment" children:@[m1, m2]];
            _menu.subtitle = @"s";
        } else {
            // Fallback on earlier versions
        }
    }
    return _menu;
}

- (NSMutableArray *)TestProjectBarButtonItem_setBackButtonBackgroundImage_forState_barMetrics:(TestProjectTableViewParams *)params {
    WS(wSelf);
    return [self createModelSingleArrayWithParams:params
                                         property:@"rightBarButtonItem"
                                            value:self.barBtnItem
                                        operation:TestProjectCreateModelGetBeforeClickSet
                                            block:^{
        [wSelf.barBtnItem setBackgroundImage:[UIImage imageNamed:@"lyf_3"] forState:UIControlStateNormal barMetrics:UIBarMetricsDefault];
    }];
}

- (NSDictionary *)method_17:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"设置navigationItem的rightBarButtonItem的按钮背景图片",
            @"title": @"- (void)setBackButtonBackgroundImage:(nullable UIImage *)backgroundImage forState:(UIControlState)state barMetrics:(UIBarMetrics)barMetrics API_AVAILABLE(ios(5.0)) UI_APPEARANCE_SELECTOR API_UNAVAILABLE(tvos);",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectBarButtonItem_setBackButtonBackgroundImage_forState_barMetrics:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectBarButtonItem_setTitlePositionAdjustment_forBarMetrics:(TestProjectTableViewParams *)params {
    WS(wSelf);
    return [self createModelSingleArrayWithParams:params
                                         property:@"rightBarButtonItem"
                                            value:self.barBtnItem
                                        operation:TestProjectCreateModelGetBeforeClickSet
                                            block:^{
        wSelf.barBtnItem.image = nil;
        [wSelf.barBtnItem setTitlePositionAdjustment:UIOffsetMake(10, -5) forBarMetrics:UIBarMetricsDefault];
    }];
}

- (NSDictionary *)method_16:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"设置navigationItem的rightBarButtonItem的标题偏移位置",
            @"title": @"- (void)setTitlePositionAdjustment:(UIOffset)adjustment forBarMetrics:(UIBarMetrics)barMetrics API_AVAILABLE(ios(5.0)) UI_APPEARANCE_SELECTOR;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectBarButtonItem_setTitlePositionAdjustment_forBarMetrics:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectBarButtonItem_property_tintColor:(TestProjectTableViewParams *)params {
    self.barBtnItem.tintColor = [UIColor redColor];
    return [self createModelSingleArrayWithParams:params
                                         property:@"rightBarButtonItem"
                                            value:self.barBtnItem
                                        operation:TestProjectCreateModelGetBeforeClickSet
                                            block:nil];
}

- (NSDictionary *)method_15:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"通过title、image和menu设置navigationItem的rightBarButtonItem的属性tintColor",
            @"title": @"@property(nullable, nonatomic,strong) UIColor *tintColor API_AVAILABLE(ios(5.0));",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectBarButtonItem_property_tintColor:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectBarButtonItem_class_flexibleSpaceItem:(TestProjectTableViewParams *)params {
    NSArray *arr;
    if (@available(iOS 16.0, *)) {
        UIBarButtonItem *barItem1 = [[UIBarButtonItem alloc] initWithTitle:@"r1" style:UIBarButtonItemStyleDone target:self action:@selector(gotoBack)];
        UIBarButtonItem *barItem2 = [[UIBarButtonItem alloc] initWithTitle:@"r2" style:UIBarButtonItemStyleDone target:self action:@selector(gotoBack)];
        UIBarButtonItem *barItem = [UIBarButtonItem flexibleSpaceItem];
        arr = @[barItem1, barItem, barItem2];
    } else {
        // Fallback on earlier versions
    }
    return [self createModelSingleArrayWithParams:params
                                         property:@"rightBarButtonItems"
                                            value:arr
                                        operation:TestProjectCreateModelGetBeforeClickSet
                                            block:nil];
}

- (NSDictionary *)method_14:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"通过+flexibleSpaceItem和menu设置navigationItem的rightBarButtonItem",
            @"title": @"+ (instancetype)flexibleSpaceItem API_AVAILABLE(ios(14.0));",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectBarButtonItem_class_flexibleSpaceItem:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectBarButtonItem_class_fixedSpaceItemOfWidth:(TestProjectTableViewParams *)params {
    NSArray *arr = @[
        @{
            @"title": @"设置的值是-30",
            @"value": @-30,
        },
        @{
            @"title": @"设置的值是30",
            @"value": @30,
        },
    ];
    if (@available(iOS 16.0, *)) {
        UIBarButtonItem *barItem1 = [[UIBarButtonItem alloc] initWithTitle:@"r1" style:UIBarButtonItemStyleDone target:self action:@selector(gotoBack)];
        UIBarButtonItem *barItem2 = [[UIBarButtonItem alloc] initWithTitle:@"r2" style:UIBarButtonItemStyleDone target:self action:@selector(gotoBack)];
        for (NSDictionary *dic in arr) {
            NSString *title = dic[@"title"];
            NSNumber *value = dic[@"value"];
            UIBarButtonItem *barItem = [UIBarButtonItem fixedSpaceItemOfWidth:[value integerValue]];
            [self createModelWithParams:params
                                  title:title
                               property:@"rightBarButtonItems"
                                  value:@[barItem1, barItem, barItem2]
                              operation:TestProjectCreateModelGetBeforeClickSet
                                  block:nil];
        }
    } else {
        // Fallback on earlier versions
    }
    return self.dataMutArr;
}

- (NSDictionary *)method_13:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"通过+fixedSpaceItemOfWidth设置navigationItem的rightBarButtonItem",
            @"title": @"+ (instancetype)fixedSpaceItemOfWidth:(CGFloat)width API_AVAILABLE(ios(14.0));",
            @"isDataModelExpand": @(YES),
            @"desc": @"设置负数无效",
            @"dataModel": @{
                @"childItems": [self TestProjectBarButtonItem_class_fixedSpaceItemOfWidth:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectBarButtonItem_initWithTitle_image_target_action_menu:(TestProjectTableViewParams *)params {
    UIBarButtonItem *barItem;
    if (@available(iOS 16.0, *)) {
        barItem = [[UIBarButtonItem alloc] initWithTitle:@"rti" image:[UIImage imageNamed:@"arrow_down"] target:self action:@selector(gotoBack) menu:self.menu];
    } else {
        // Fallback on earlier versions
    }
    return [self createModelSingleArrayWithParams:params
                                         property:@"rightBarButtonItem"
                                            value:barItem
                                        operation:TestProjectCreateModelGetBeforeClickSet
                                            block:nil];
}

- (NSDictionary *)method_12:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"通过title、image和menu设置navigationItem的rightBarButtonItem",
            @"title": @"- (instancetype)initWithTitle:(nullable NSString *)title image:(nullable UIImage *)image target:(nullable id)target action:(nullable SEL)action menu:(nullable UIMenu *)menu API_AVAILABLE(ios(16.0));",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectBarButtonItem_initWithTitle_image_target_action_menu:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectBarButtonItem_initWithBarButtonSystemItem_primaryAction_menu:(TestProjectTableViewParams *)params {
    UIBarButtonItem *barItem;
    if (@available(iOS 16.0, *)) {
        barItem = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemDone primaryAction:self.action menu:self.menu];
    } else {
        // Fallback on earlier versions
    }
    return [self createModelSingleArrayWithParams:params
                                         property:@"rightBarButtonItem"
                                            value:barItem
                                        operation:TestProjectCreateModelGetBeforeClickSet
                                            block:nil];
}

- (NSDictionary *)method_11:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"通过systemItem、primaryAction和menu设置navigationItem的rightBarButtonItem",
            @"title": @"- (instancetype)initWithBarButtonSystemItem:(UIBarButtonSystemItem)systemItem primaryAction:(nullable UIAction *)primaryAction menu:(nullable UIMenu *)menu API_AVAILABLE(ios(16.0));",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectBarButtonItem_initWithBarButtonSystemItem_primaryAction_menu:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectBarButtonItem_initWithPrimaryAction_menu:(TestProjectTableViewParams *)params {
    UIBarButtonItem *barItem;
    if (@available(iOS 16.0, *)) {
        barItem = [[UIBarButtonItem alloc] initWithPrimaryAction:self.action menu:self.menu];
    } else {
        // Fallback on earlier versions
    }
    return [self createModelSingleArrayWithParams:params
                                         property:@"rightBarButtonItem"
                                            value:barItem
                                        operation:TestProjectCreateModelGetBeforeClickSet
                                            block:nil];
}

- (NSDictionary *)method_10:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"通过primaryAction和menu设置navigationItem的rightBarButtonItem",
            @"title": @"- (instancetype)initWithPrimaryAction:(nullable UIAction *)primaryAction menu:(nullable UIMenu *)menu API_AVAILABLE(ios(16.0));",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectBarButtonItem_initWithPrimaryAction_menu:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectBarButtonItem_initWithImage_menu:(TestProjectTableViewParams *)params {
    UIBarButtonItem *barItem;
    if (@available(iOS 14.0, *)) {
        barItem = [[UIBarButtonItem alloc] initWithImage:[UIImage imageNamed:@"arrow_down"] menu:self.menu];
    } else {
        // Fallback on earlier versions
    }
    return [self createModelSingleArrayWithParams:params
                                         property:@"rightBarButtonItem"
                                            value:barItem
                                        operation:TestProjectCreateModelGetBeforeClickSet
                                            block:nil];
}

- (NSDictionary *)method_9:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"通过image和menu设置navigationItem的rightBarButtonItem",
            @"title": @"- (instancetype)initWithImage:(nullable UIImage *)image menu:(nullable UIMenu *)menu API_AVAILABLE(ios(14.0));",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectBarButtonItem_initWithImage_menu:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectBarButtonItem_initWithTitle_menu:(TestProjectTableViewParams *)params {
    UIBarButtonItem *barItem;
    if (@available(iOS 14.0, *)) {
        barItem = [[UIBarButtonItem alloc] initWithTitle:@"right_t" menu:self.menu];
    } else {
        // Fallback on earlier versions
    }
    return [self createModelSingleArrayWithParams:params
                                         property:@"rightBarButtonItem"
                                            value:barItem
                                        operation:TestProjectCreateModelGetBeforeClickSet
                                            block:nil];
}

- (NSDictionary *)method_8:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"通过title和menu设置navigationItem的rightBarButtonItem",
            @"title": @"- (instancetype)initWithTitle:(nullable NSString *)title menu:(nullable UIMenu *)menu API_AVAILABLE(ios(14.0));",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectBarButtonItem_initWithTitle_menu:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectBarButtonItem_initWithBarButtonSystemItem_menu:(TestProjectTableViewParams *)params {
    UIBarButtonItem *barItem;
    if (@available(iOS 14.0, *)) {
        barItem = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemDone menu:self.menu];
    } else {
        // Fallback on earlier versions
    }
    return [self createModelSingleArrayWithParams:params
                                         property:@"rightBarButtonItem"
                                            value:barItem
                                        operation:TestProjectCreateModelGetBeforeClickSet
                                            block:nil];
}

- (NSDictionary *)method_7:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"通过systemItem和menu设置navigationItem的rightBarButtonItem",
            @"title": @"- (instancetype)initWithBarButtonSystemItem:(UIBarButtonSystemItem)systemItem menu:(nullable UIMenu *)menu API_AVAILABLE(ios(14.0));",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectBarButtonItem_initWithBarButtonSystemItem_menu:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectBarButtonItem_initWithPrimaryAction:(TestProjectTableViewParams *)params {
    UIBarButtonItem *barItem;
    if (@available(iOS 14.0, *)) {
        barItem = [[UIBarButtonItem alloc] initWithPrimaryAction:self.action];
    } else {
        // Fallback on earlier versions
    }
    return [self createModelSingleArrayWithParams:params
                                         property:@"rightBarButtonItem"
                                            value:barItem
                                        operation:TestProjectCreateModelGetBeforeClickSet
                                            block:nil];
}

- (NSDictionary *)method_6:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"通过primaryAction设置navigationItem的rightBarButtonItem",
            @"title": @"- (instancetype)initWithPrimaryAction:(nullable UIAction *)primaryAction API_AVAILABLE(ios(14.0));",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectBarButtonItem_initWithPrimaryAction:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectBarButtonItem_initWithBarButtonSystemItem_primaryAction:(TestProjectTableViewParams *)params {
    UIBarButtonItem *barItem;
    if (@available(iOS 14.0, *)) {
        barItem = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemDone primaryAction:self.action];
    } else {
        // Fallback on earlier versions
    }
    return [self createModelSingleArrayWithParams:params
                                         property:@"rightBarButtonItem"
                                            value:barItem
                                        operation:TestProjectCreateModelGetBeforeClickSet
                                            block:nil];
}

- (NSDictionary *)method_5:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"通过systemItem和primaryAction设置navigationItem的rightBarButtonItem",
            @"title": @"- (instancetype)initWithBarButtonSystemItem:(UIBarButtonSystemItem)systemItem primaryAction:(nullable UIAction *)primaryAction API_AVAILABLE(ios(14.0));",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectBarButtonItem_initWithBarButtonSystemItem_primaryAction:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectBarButtonItem_initWithCustomView:(TestProjectTableViewParams *)params {
    UIBarButtonItem *barItem = [[UIBarButtonItem alloc] initWithCustomView:self.customerView];
    return [self createModelSingleArrayWithParams:params
                                         property:@"rightBarButtonItem"
                                            value:barItem
                                        operation:TestProjectCreateModelGetBeforeClickSet
                                            block:nil];
}

- (NSDictionary *)method_4:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"通过customView设置navigationItem的rightBarButtonItem",
            @"title": @"- (instancetype)initWithCustomView:(UIView *)customView;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectBarButtonItem_initWithCustomView:params],
            }
        },
    };
}

//typedef NS_ENUM(NSInteger, UIBarButtonSystemItem) {
//    UIBarButtonSystemItemDone,
//    UIBarButtonSystemItemCancel,
//    UIBarButtonSystemItemEdit,
//    UIBarButtonSystemItemSave,
//    UIBarButtonSystemItemAdd,
//    UIBarButtonSystemItemFlexibleSpace,
//    UIBarButtonSystemItemFixedSpace,
//    UIBarButtonSystemItemCompose,
//    UIBarButtonSystemItemReply,
//    UIBarButtonSystemItemAction,
//    UIBarButtonSystemItemOrganize,
//    UIBarButtonSystemItemBookmarks,
//    UIBarButtonSystemItemSearch,
//    UIBarButtonSystemItemRefresh,
//    UIBarButtonSystemItemStop,
//    UIBarButtonSystemItemCamera,
//    UIBarButtonSystemItemTrash,
//    UIBarButtonSystemItemPlay,
//    UIBarButtonSystemItemPause,
//    UIBarButtonSystemItemRewind,
//    UIBarButtonSystemItemFastForward,
//    UIBarButtonSystemItemUndo API_AVAILABLE(ios(3.0)),
//    UIBarButtonSystemItemRedo API_AVAILABLE(ios(3.0)),
//    UIBarButtonSystemItemPageCurl API_DEPRECATED("", ios(4.0, 11.0)),
//    UIBarButtonSystemItemClose API_AVAILABLE(ios(13.0)) API_UNAVAILABLE(tvos)
//};

- (NSMutableArray *)TestProjectBarButtonItem_initWithBarButtonSystemItem_target_action:(TestProjectTableViewParams *)params {
    NSArray *arr = @[
        @{
            @"title": [NSString stringWithFormat:@"设置的是UIBarButtonSystemItemDone(%ld)", UIBarButtonSystemItemDone],
            @"value": @(UIBarButtonSystemItemDone),
        },
        @{
            @"title": [NSString stringWithFormat:@"设置的是UIBarButtonSystemItemCancel(%ld)", UIBarButtonSystemItemCancel],
            @"value": @(UIBarButtonSystemItemCancel),
        },
        @{
            @"title": [NSString stringWithFormat:@"设置的是UIBarButtonSystemItemEdit(%ld)", UIBarButtonSystemItemEdit],
            @"value": @(UIBarButtonSystemItemEdit),
        },
        @{
            @"title": [NSString stringWithFormat:@"设置的是UIBarButtonSystemItemSave(%ld)", UIBarButtonSystemItemSave],
            @"value": @(UIBarButtonSystemItemSave),
        },
        @{
            @"title": [NSString stringWithFormat:@"设置的是UIBarButtonSystemItemAdd(%ld)", UIBarButtonSystemItemAdd],
            @"value": @(UIBarButtonSystemItemAdd),
        },
        @{
            @"title": [NSString stringWithFormat:@"设置的是UIBarButtonSystemItemFlexibleSpace(%ld): 这个得用rightBarButtonItems进行设置,用来占位置的", UIBarButtonSystemItemFlexibleSpace],
            @"value": @(UIBarButtonSystemItemFlexibleSpace),
        },
        @{
            @"title": [NSString stringWithFormat:@"设置的是UIBarButtonSystemItemFixedSpace(%ld): 这个得用rightBarButtonItems进行设置,用来占位置的", UIBarButtonSystemItemFixedSpace],
            @"value": @(UIBarButtonSystemItemFixedSpace),
        },
        @{
            @"title": [NSString stringWithFormat:@"设置的是UIBarButtonSystemItemCompose(%ld)", UIBarButtonSystemItemCompose],
            @"value": @(UIBarButtonSystemItemCompose),
        },
        @{
            @"title": [NSString stringWithFormat:@"设置的是UIBarButtonSystemItemReply(%ld)", UIBarButtonSystemItemReply],
            @"value": @(UIBarButtonSystemItemReply),
        },
        @{
            @"title": [NSString stringWithFormat:@"设置的是UIBarButtonSystemItemAction(%ld)", UIBarButtonSystemItemAction],
            @"value": @(UIBarButtonSystemItemAction),
        },
        @{
            @"title": [NSString stringWithFormat:@"设置的是UIBarButtonSystemItemOrganize(%ld)", UIBarButtonSystemItemOrganize],
            @"value": @(UIBarButtonSystemItemOrganize),
        },
        @{
            @"title": [NSString stringWithFormat:@"设置的是UIBarButtonSystemItemBookmarks(%ld)", UIBarButtonSystemItemBookmarks],
            @"value": @(UIBarButtonSystemItemBookmarks),
        },
        @{
            @"title": [NSString stringWithFormat:@"设置的是UIBarButtonSystemItemSearch(%ld)", UIBarButtonSystemItemSearch],
            @"value": @(UIBarButtonSystemItemSearch),
        },
        @{
            @"title": [NSString stringWithFormat:@"设置的是UIBarButtonSystemItemRefresh(%ld)", UIBarButtonSystemItemRefresh],
            @"value": @(UIBarButtonSystemItemRefresh),
        },
        @{
            @"title": [NSString stringWithFormat:@"设置的是UIBarButtonSystemItemStop(%ld)", UIBarButtonSystemItemStop],
            @"value": @(UIBarButtonSystemItemStop),
        },
        @{
            @"title": [NSString stringWithFormat:@"设置的是UIBarButtonSystemItemCamera(%ld)", UIBarButtonSystemItemCamera],
            @"value": @(UIBarButtonSystemItemCamera),
        },
        @{
            @"title": [NSString stringWithFormat:@"设置的是UIBarButtonSystemItemTrash(%ld)", UIBarButtonSystemItemTrash],
            @"value": @(UIBarButtonSystemItemTrash),
        },
        @{
            @"title": [NSString stringWithFormat:@"设置的是UIBarButtonSystemItemPlay(%ld)", UIBarButtonSystemItemPlay],
            @"value": @(UIBarButtonSystemItemPlay),
        },
        @{
            @"title": [NSString stringWithFormat:@"设置的是UIBarButtonSystemItemPause(%ld)", UIBarButtonSystemItemPause],
            @"value": @(UIBarButtonSystemItemPause),
        },
        @{
            @"title": [NSString stringWithFormat:@"设置的是UIBarButtonSystemItemRewind(%ld)", UIBarButtonSystemItemRewind],
            @"value": @(UIBarButtonSystemItemRewind),
        },
        @{
            @"title": [NSString stringWithFormat:@"设置的是UIBarButtonSystemItemFastForward(%ld)", UIBarButtonSystemItemFastForward],
            @"value": @(UIBarButtonSystemItemFastForward),
        },
        @{
            @"title": [NSString stringWithFormat:@"设置的是UIBarButtonSystemItemUndo(%ld)", UIBarButtonSystemItemUndo],
            @"value": @(UIBarButtonSystemItemUndo),
        },
        @{
            @"title": [NSString stringWithFormat:@"设置的是UIBarButtonSystemItemRedo(%ld)", UIBarButtonSystemItemRedo],
            @"value": @(UIBarButtonSystemItemRedo),
        },
//        @{
//            @"title": [NSString stringWithFormat:@"设置的是UIBarButtonSystemItemPageCurl(%ld)", UIBarButtonSystemItemPageCurl],
//            @"value": @(UIBarButtonSystemItemPageCurl),
//        },
        @{
            @"title": [NSString stringWithFormat:@"设置的是UIBarButtonSystemItemClose(%ld)", UIBarButtonSystemItemClose],
            @"value": @(UIBarButtonSystemItemClose),
        },
    ];
    for (NSDictionary *dic in arr) {
        NSString *title = dic[@"title"];
        UIBarButtonSystemItem item = [dic[@"value"] integerValue];
        if (item == UIBarButtonSystemItemFlexibleSpace || item == UIBarButtonSystemItemFixedSpace) {
            UIBarButtonItem *barItem1 = [[UIBarButtonItem alloc] initWithTitle:@"r1" style:UIBarButtonItemStyleDone target:self action:@selector(gotoBack)];
            UIBarButtonItem *f1 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:item target:nil action:nil];
            f1.width = -20;
            UIBarButtonItem *barItem2 = [[UIBarButtonItem alloc] initWithTitle:@"r2" style:UIBarButtonItemStyleDone target:self action:@selector(gotoBack)];
            [self createModelWithParams:params
                                  title:title
                               property:@"rightBarButtonItems"
                                  value:@[barItem1, f1, barItem2]
                              operation:TestProjectCreateModelGetBeforeClickSet
                                  block:nil];
        } else {
            UIBarButtonItem *barItem = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:item target:self action:@selector(gotoBack)];
            [self createModelWithParams:params
                                  title:title
                               property:@"rightBarButtonItem"
                                  value:barItem
                              operation:TestProjectCreateModelGetBeforeClickSet
                                  block:nil];
        }
    }
    return self.dataMutArr;
}

- (NSDictionary *)method_3:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"通过systemItem设置navigationItem的rightBarButtonItem",
            @"title": @"- (instancetype)initWithBarButtonSystemItem:(UIBarButtonSystemItem)systemItem target:(nullable id)target action:(nullable SEL)action;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectBarButtonItem_initWithBarButtonSystemItem_target_action:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectBarButtonItem_initWithTitle_style_target_action:(TestProjectTableViewParams *)params {
    UIBarButtonItem *barItem = [[UIBarButtonItem alloc] initWithTitle:@"right_title" style:UIBarButtonItemStyleDone target:self action:@selector(gotoBack)];
    return [self createModelSingleArrayWithParams:params
                                         property:@"rightBarButtonItem"
                                            value:barItem
                                        operation:TestProjectCreateModelGetBeforeClickSet
                                            block:nil];
}

- (NSDictionary *)method_2:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"通过title设置navigationItem的rightBarButtonItem",
            @"title": @"- (instancetype)initWithTitle:(nullable NSString *)title style:(UIBarButtonItemStyle)style target:(nullable id)target action:(nullable SEL)action;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectBarButtonItem_initWithTitle_style_target_action:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectBarButtonItem_initWithImage_style_target_action:(TestProjectTableViewParams *)params {
    NSArray *arr = @[@(UIBarButtonItemStyleDone), @(UIBarButtonItemStylePlain)];
    for (NSNumber *num in arr) {
        UIBarButtonItem *barItem = [[UIBarButtonItem alloc] initWithImage:[UIImage imageNamed:@"arrow_down"] style:[num integerValue] target:self action:@selector(gotoBack)];
        [self createModelWithParams:params
                           property:@"rightBarButtonItem"
                              value:barItem
                          operation:TestProjectCreateModelGetBeforeClickSet
                              block:nil];
    }
    return self.dataMutArr;
}

- (NSDictionary *)method_1:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"通过image设置navigationItem的rightBarButtonItem",
            @"title": @"- (instancetype)initWithImage:(nullable UIImage *)image style:(UIBarButtonItemStyle)style target:(nullable id)target action:(nullable SEL)action;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectBarButtonItem_initWithImage_style_target_action:params],
            }
        },
    };
}

@end
