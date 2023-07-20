//
//  TestProjectBarButtonItem.m
//  TestProjectIOS
//
//  Created by zjrcumac on 2023/5/10.
//

#import "TestProjectBarButtonItem.h"

@interface TestProjectBarButtonItem ()

@property (nonatomic, strong) UIView *customerView;
@property (nonatomic, strong) UIAction *action;
@property (nonatomic, strong) UIMenu *menu;
@property (nonatomic, strong) UIBarButtonItem *barBtnItem;

@end

@implementation TestProjectBarButtonItem

- (id)setPropertyValueObject {
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

- (NSDictionary *)method_1 {
    return @{
        @"dataModel": @{
            @"abstract": @"通过image设置navigationItem的rightBarButtonItem",
            @"title": @"- (instancetype)initWithImage:(nullable UIImage *)image style:(UIBarButtonItemStyle)style target:(nullable id)target action:(nullable SEL)action;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectBarButtonItem_initWithImage_style_target_action],
            }
        },
    };
}

- (NSDictionary *)method_2 {
    return @{
        @"dataModel": @{
            @"abstract": @"通过title设置navigationItem的rightBarButtonItem",
            @"title": @"- (instancetype)initWithTitle:(nullable NSString *)title style:(UIBarButtonItemStyle)style target:(nullable id)target action:(nullable SEL)action;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectBarButtonItem_initWithTitle_style_target_action],
            }
        },
    };
}

- (NSDictionary *)method_3 {
    return @{
        @"dataModel": @{
            @"abstract": @"通过systemItem设置navigationItem的rightBarButtonItem",
            @"title": @"- (instancetype)initWithBarButtonSystemItem:(UIBarButtonSystemItem)systemItem target:(nullable id)target action:(nullable SEL)action;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectBarButtonItem_initWithBarButtonSystemItem_target_action],
            }
        },
    };
}

- (NSDictionary *)method_4 {
    return @{
        @"dataModel": @{
            @"abstract": @"通过customView设置navigationItem的rightBarButtonItem",
            @"title": @"- (instancetype)initWithCustomView:(UIView *)customView;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectBarButtonItem_initWithCustomView],
            }
        },
    };
}

- (NSDictionary *)method_5 {
    return @{
        @"dataModel": @{
            @"abstract": @"通过systemItem和primaryAction设置navigationItem的rightBarButtonItem",
            @"title": @"- (instancetype)initWithBarButtonSystemItem:(UIBarButtonSystemItem)systemItem primaryAction:(nullable UIAction *)primaryAction API_AVAILABLE(ios(14.0));",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectBarButtonItem_initWithBarButtonSystemItem_primaryAction],
            }
        },
    };
}

- (NSDictionary *)method_6 {
    return @{
        @"dataModel": @{
            @"abstract": @"通过primaryAction设置navigationItem的rightBarButtonItem",
            @"title": @"- (instancetype)initWithPrimaryAction:(nullable UIAction *)primaryAction API_AVAILABLE(ios(14.0));",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectBarButtonItem_initWithPrimaryAction],
            }
        },
    };
}

- (NSDictionary *)method_7 {
    return @{
        @"dataModel": @{
            @"abstract": @"通过systemItem和menu设置navigationItem的rightBarButtonItem",
            @"title": @"- (instancetype)initWithBarButtonSystemItem:(UIBarButtonSystemItem)systemItem menu:(nullable UIMenu *)menu API_AVAILABLE(ios(14.0));",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectBarButtonItem_initWithBarButtonSystemItem_menu],
            }
        },
    };
}

- (NSDictionary *)method_8 {
    return @{
        @"dataModel": @{
            @"abstract": @"通过title和menu设置navigationItem的rightBarButtonItem",
            @"title": @"- (instancetype)initWithTitle:(nullable NSString *)title menu:(nullable UIMenu *)menu API_AVAILABLE(ios(14.0));",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectBarButtonItem_initWithTitle_menu],
            }
        },
    };
}

- (NSDictionary *)method_9 {
    return @{
        @"dataModel": @{
            @"abstract": @"通过image和menu设置navigationItem的rightBarButtonItem",
            @"title": @"- (instancetype)initWithImage:(nullable UIImage *)image menu:(nullable UIMenu *)menu API_AVAILABLE(ios(14.0));",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectBarButtonItem_initWithImage_menu],
            }
        },
    };
}

- (NSDictionary *)method_10 {
    return @{
        @"dataModel": @{
            @"abstract": @"通过primaryAction和menu设置navigationItem的rightBarButtonItem",
            @"title": @"- (instancetype)initWithPrimaryAction:(nullable UIAction *)primaryAction menu:(nullable UIMenu *)menu API_AVAILABLE(ios(16.0));",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectBarButtonItem_initWithPrimaryAction_menu],
            }
        },
    };
}

- (NSDictionary *)method_11 {
    return @{
        @"dataModel": @{
            @"abstract": @"通过systemItem、primaryAction和menu设置navigationItem的rightBarButtonItem",
            @"title": @"- (instancetype)initWithBarButtonSystemItem:(UIBarButtonSystemItem)systemItem primaryAction:(nullable UIAction *)primaryAction menu:(nullable UIMenu *)menu API_AVAILABLE(ios(16.0));",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectBarButtonItem_initWithBarButtonSystemItem_primaryAction_menu],
            }
        },
    };
}

- (NSDictionary *)method_12 {
    return @{
        @"dataModel": @{
            @"abstract": @"通过title、image和menu设置navigationItem的rightBarButtonItem",
            @"title": @"- (instancetype)initWithTitle:(nullable NSString *)title image:(nullable UIImage *)image target:(nullable id)target action:(nullable SEL)action menu:(nullable UIMenu *)menu API_AVAILABLE(ios(16.0));",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectBarButtonItem_initWithTitle_image_target_action_menu],
            }
        },
    };
}

- (NSDictionary *)method_13 {
    return @{
        @"dataModel": @{
            @"abstract": @"通过+fixedSpaceItemOfWidth设置navigationItem的rightBarButtonItem",
            @"title": @"+ (instancetype)fixedSpaceItemOfWidth:(CGFloat)width API_AVAILABLE(ios(14.0));",
            @"isDataModelExpand": @(YES),
            @"desc": @"设置负数无效",
            @"dataModel": @{
                @"childItems": [self TestProjectBarButtonItem_class_fixedSpaceItemOfWidth],
            }
        },
    };
}

- (NSDictionary *)method_14 {
    return @{
        @"dataModel": @{
            @"abstract": @"通过+flexibleSpaceItem和menu设置navigationItem的rightBarButtonItem",
            @"title": @"+ (instancetype)flexibleSpaceItem API_AVAILABLE(ios(14.0));",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectBarButtonItem_class_flexibleSpaceItem],
            }
        },
    };
}

- (NSDictionary *)method_15 {
    return @{
        @"dataModel": @{
            @"abstract": @"通过title、image和menu设置navigationItem的rightBarButtonItem的属性tintColor",
            @"title": @"@property(nullable, nonatomic,strong) UIColor *tintColor API_AVAILABLE(ios(5.0));",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectBarButtonItem_property_tintColor],
            }
        },
    };
}

- (NSDictionary *)method_16 {
    return @{
        @"dataModel": @{
            @"abstract": @"设置navigationItem的rightBarButtonItem的标题偏移位置",
            @"title": @"- (void)setTitlePositionAdjustment:(UIOffset)adjustment forBarMetrics:(UIBarMetrics)barMetrics API_AVAILABLE(ios(5.0)) UI_APPEARANCE_SELECTOR;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectBarButtonItem_setTitlePositionAdjustment_forBarMetrics],
            }
        },
    };
}

- (NSDictionary *)method_17 {
    return @{
        @"dataModel": @{
            @"abstract": @"设置navigationItem的rightBarButtonItem的按钮背景图片",
            @"title": @"- (void)setBackButtonBackgroundImage:(nullable UIImage *)backgroundImage forState:(UIControlState)state barMetrics:(UIBarMetrics)barMetrics API_AVAILABLE(ios(5.0)) UI_APPEARANCE_SELECTOR API_UNAVAILABLE(tvos);",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectBarButtonItem_setBackButtonBackgroundImage_forState_barMetrics],
            }
        },
    };
}

- (NSMutableArray *)TestProjectBarButtonItem_setBackButtonBackgroundImage_forState_barMetrics {
    WS(wSelf);
    [self createClickSetTableModelWithProperty:@"rightBarButtonItem" value:self.barBtnItem block:^{
        [wSelf.barBtnItem setBackgroundImage:[UIImage imageNamed:@"lyf_3"] forState:UIControlStateNormal barMetrics:UIBarMetricsDefault];
    }];
    return self.dataMutArr;
}

- (NSMutableArray *)TestProjectBarButtonItem_setTitlePositionAdjustment_forBarMetrics {
    WS(wSelf);
    [self createClickSetTableModelWithProperty:@"rightBarButtonItem" value:self.barBtnItem block:^{
        wSelf.barBtnItem.image = nil;
        [wSelf.barBtnItem setTitlePositionAdjustment:UIOffsetMake(10, -5) forBarMetrics:UIBarMetricsDefault];
    }];
    return self.dataMutArr;
}

- (NSMutableArray *)TestProjectBarButtonItem_property_tintColor {
    self.barBtnItem.tintColor = [UIColor redColor];
    return [self createClickSetSingleArrayTableModelWithProperty:@"rightBarButtonItem" value:self.barBtnItem];
}

- (NSMutableArray *)TestProjectBarButtonItem_class_flexibleSpaceItem {
    NSArray *arr;
    if (@available(iOS 16.0, *)) {
        UIBarButtonItem *barItem1 = [[UIBarButtonItem alloc] initWithTitle:@"r1" style:UIBarButtonItemStyleDone target:self action:@selector(gotoBack)];
        UIBarButtonItem *barItem2 = [[UIBarButtonItem alloc] initWithTitle:@"r2" style:UIBarButtonItemStyleDone target:self action:@selector(gotoBack)];
        UIBarButtonItem *barItem = [UIBarButtonItem flexibleSpaceItem];
        arr = @[barItem1, barItem, barItem2];
    } else {
        // Fallback on earlier versions
    }
    return [self createClickSetSingleArrayTableModelWithProperty:@"rightBarButtonItems" value:arr];
}

- (NSMutableArray *)TestProjectBarButtonItem_class_fixedSpaceItemOfWidth {
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
            [self createClickSetTableModelWithProperty:@"rightBarButtonItems" value:@[barItem1, barItem, barItem2] title:title block:nil];
        }
    } else {
        // Fallback on earlier versions
    }
    return self.dataMutArr;
}

- (NSMutableArray *)TestProjectBarButtonItem_initWithTitle_image_target_action_menu {
    UIBarButtonItem *barItem;
    if (@available(iOS 16.0, *)) {
        barItem = [[UIBarButtonItem alloc] initWithTitle:@"rti" image:[UIImage imageNamed:@"arrow_down"] target:self action:@selector(gotoBack) menu:self.menu];
    } else {
        // Fallback on earlier versions
    }
    return [self createClickSetSingleArrayTableModelWithProperty:@"rightBarButtonItem" value:barItem];
}

- (NSMutableArray *)TestProjectBarButtonItem_initWithBarButtonSystemItem_primaryAction_menu {
    UIBarButtonItem *barItem;
    if (@available(iOS 16.0, *)) {
        barItem = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemDone primaryAction:self.action menu:self.menu];
    } else {
        // Fallback on earlier versions
    }
    return [self createClickSetSingleArrayTableModelWithProperty:@"rightBarButtonItem" value:barItem];
}

- (NSMutableArray *)TestProjectBarButtonItem_initWithPrimaryAction_menu {
    UIBarButtonItem *barItem;
    if (@available(iOS 16.0, *)) {
        barItem = [[UIBarButtonItem alloc] initWithPrimaryAction:self.action menu:self.menu];
    } else {
        // Fallback on earlier versions
    }
    return [self createClickSetSingleArrayTableModelWithProperty:@"rightBarButtonItem" value:barItem];
}

- (NSMutableArray *)TestProjectBarButtonItem_initWithImage_menu {
    UIBarButtonItem *barItem;
    if (@available(iOS 14.0, *)) {
        barItem = [[UIBarButtonItem alloc] initWithImage:[UIImage imageNamed:@"arrow_down"] menu:self.menu];
    } else {
        // Fallback on earlier versions
    }
    return [self createClickSetSingleArrayTableModelWithProperty:@"rightBarButtonItem" value:barItem];
}

- (NSMutableArray *)TestProjectBarButtonItem_initWithTitle_menu {
    UIBarButtonItem *barItem;
    if (@available(iOS 14.0, *)) {
        barItem = [[UIBarButtonItem alloc] initWithTitle:@"right_t" menu:self.menu];
    } else {
        // Fallback on earlier versions
    }
    return [self createClickSetSingleArrayTableModelWithProperty:@"rightBarButtonItem" value:barItem];
}

- (NSMutableArray *)TestProjectBarButtonItem_initWithBarButtonSystemItem_menu {
    UIBarButtonItem *barItem;
    if (@available(iOS 14.0, *)) {
        barItem = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemDone menu:self.menu];
    } else {
        // Fallback on earlier versions
    }
    return [self createClickSetSingleArrayTableModelWithProperty:@"rightBarButtonItem" value:barItem];
}

- (NSMutableArray *)TestProjectBarButtonItem_initWithPrimaryAction {
    UIBarButtonItem *barItem;
    if (@available(iOS 14.0, *)) {
        barItem = [[UIBarButtonItem alloc] initWithPrimaryAction:self.action];
    } else {
        // Fallback on earlier versions
    }
    return [self createClickSetSingleArrayTableModelWithProperty:@"rightBarButtonItem" value:barItem];
}

- (NSMutableArray *)TestProjectBarButtonItem_initWithBarButtonSystemItem_primaryAction {
    UIBarButtonItem *barItem;
    if (@available(iOS 14.0, *)) {
        barItem = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemDone primaryAction:self.action];
    } else {
        // Fallback on earlier versions
    }
    return [self createClickSetSingleArrayTableModelWithProperty:@"rightBarButtonItem" value:barItem];
}

- (NSMutableArray *)TestProjectBarButtonItem_initWithCustomView {
    UIBarButtonItem *barItem = [[UIBarButtonItem alloc] initWithCustomView:self.customerView];
    return [self createClickSetSingleArrayTableModelWithProperty:@"rightBarButtonItem" value:barItem];
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

- (NSMutableArray *)TestProjectBarButtonItem_initWithBarButtonSystemItem_target_action {
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
            [self createClickSetTableModelWithProperty:@"rightBarButtonItems" value:@[barItem1, f1, barItem2] title:title block:nil];
        } else {
            UIBarButtonItem *barItem = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:item target:self action:@selector(gotoBack)];
            [self createClickSetTableModelWithProperty:@"rightBarButtonItem" value:barItem title:title block:nil];
        }
    }
    return self.dataMutArr;
}

- (NSMutableArray *)TestProjectBarButtonItem_initWithTitle_style_target_action {
    UIBarButtonItem *barItem = [[UIBarButtonItem alloc] initWithTitle:@"right_title" style:UIBarButtonItemStyleDone target:self action:@selector(gotoBack)];
    return [self createClickSetSingleArrayTableModelWithProperty:@"rightBarButtonItem" value:barItem];
}

- (NSMutableArray *)TestProjectBarButtonItem_initWithImage_style_target_action {
    NSArray *arr = @[@(UIBarButtonItemStyleDone), @(UIBarButtonItemStylePlain)];
    for (NSNumber *num in arr) {
        UIBarButtonItem *barItem = [[UIBarButtonItem alloc] initWithImage:[UIImage imageNamed:@"arrow_down"] style:[num integerValue] target:self action:@selector(gotoBack)];
        [self createClickSetTableModelWithProperty:@"rightBarButtonItem" value:barItem];
    }
    return self.dataMutArr;
}

@end
