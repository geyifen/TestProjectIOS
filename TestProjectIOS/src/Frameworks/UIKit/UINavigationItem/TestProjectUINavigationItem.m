//
//  TestProjectUINavigationItem.m
//  TestProjectIOS
//
//  Created by liwenfan on 2023/4/11.
//

#import "TestProjectUINavigationItem.h"

@interface TestProjectUINavigationItem ()

@property (nonatomic, strong) UIView *titleView;
@property (nonatomic, strong) UISearchController *searchController;

@end

@implementation TestProjectUINavigationItem

- (UIView *)titleView {
    if (!_titleView) {
        _titleView = [[UIView alloc] init];
        _titleView.backgroundColor = [UIColor redColor];
        _titleView.frame = CGRectMake(0, 0, 44, 44);
    }
    return _titleView;
}

- (UISearchController *)searchController {
    if (!_searchController) {
        _searchController = [[UISearchController alloc] init];
    }
    return _searchController;
}

- (id)setPropertyValueObject {
    return self.parentVC.navigationItem;
}

- (NSDictionary *)method_1 {
    return @{
        @"dataModel": @{
            @"abstract": @"设置获取UIViewController的UINavigationItem的属性title",
            @"title": @"@property (nonatomic, readwrite, copy, nullable) NSString *title;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectNavigationItem_property_title],
            }
        },
    };
}

- (NSDictionary *)method_2 {
    return @{
        @"dataModel": @{
            @"abstract": @"设置获取UIViewController的UINavigationItem的属性titleView",
            @"title": @"@property (nonatomic, readwrite, strong, nullable) UIView *titleView;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectNavigationItem_property_titleView],
            }
        },
    };
}

- (NSDictionary *)method_3 {
    return @{
        @"dataModel": @{
            @"abstract": @"设置获取UIViewController的UINavigationItem的属性prompt",
            @"title": @"@property (nonatomic, readwrite, copy, nullable) NSString *prompt API_UNAVAILABLE(tvos);",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectNavigationItem_property_prompt],
            }
        },
    };
}

- (NSDictionary *)method_4 {
    return @{
        @"dataModel": @{
            @"abstract": @"设置获取UIViewController的UINavigationItem的属性backBarButtonItem",
            @"title": @"@property (nonatomic, readwrite, strong, nullable) UIBarButtonItem *backBarButtonItem API_UNAVAILABLE(tvos);",
            @"isDataModelExpand": @(YES),
            @"desc": @"设置下一级的返回按钮样式",
            @"dataModel": @{
                @"childItems": [self TestProjectNavigationItem_property_backBarButtonItem],
            }
        },
    };
}

- (NSDictionary *)method_5 {
    return @{
        @"dataModel": @{
            @"abstract": @"设置获取UIViewController的UINavigationItem的属性backButtonTitle",
            @"title": @"@property (nonatomic, readwrite, copy, nullable) NSString *backButtonTitle API_AVAILABLE(ios(11.0));",
            @"isDataModelExpand": @(YES),
            @"desc": @"设置下一级的返回按钮文字",
            @"dataModel": @{
                @"childItems": [self TestProjectNavigationItem_property_backButtonTitle],
            }
        },
    };
}

- (NSDictionary *)method_6 {
    return @{
        @"dataModel": @{
            @"abstract": @"设置获取UIViewController的UINavigationItem的属性hidesBackButton",
            @"title": @"@property (nonatomic, readwrite, assign) BOOL hidesBackButton API_UNAVAILABLE(tvos);",
            @"isDataModelExpand": @(YES),
            @"desc": @"设置本级的返回按钮hide状态",
            @"dataModel": @{
                @"childItems": [self TestProjectNavigationItem_property_hidesBackButton],
            }
        },
    };
}

- (NSDictionary *)method_7 {
    return @{
        @"dataModel": @{
            @"abstract": @"设置获取UIViewController的UINavigationItem的属性backButtonDisplayMode",
            @"title": @"@property (nonatomic, readwrite, assign) UINavigationItemBackButtonDisplayMode backButtonDisplayMode API_AVAILABLE(ios(14.0)) API_UNAVAILABLE(tvos);",
            @"isDataModelExpand": @(YES),
            @"desc": @"设置下一级的返回按钮文字hide状态",
            @"dataModel": @{
                @"childItems": [self TestProjectNavigationItem_property_backButtonDisplayMode],
            }
        },
    };
}

- (NSDictionary *)method_8 {
    return @{
        @"dataModel": @{
            @"abstract": @"设置获取UIViewController的UINavigationItem的属性backAction",
            @"title": @"@property (nonatomic, readwrite, copy, nullable) UIAction *backAction API_AVAILABLE(ios(16.0)) API_UNAVAILABLE(tvos, watchos);",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectNavigationItem_property_backAction],
            }
        },
    };
}

- (NSDictionary *)method_9 {
    return @{
        @"dataModel": @{
            @"abstract": @"设置获取UIViewController的UINavigationItem的属性titleMenuProvider",
            @"title": @"@property (nonatomic, readwrite, copy, nullable) UIMenu *_Nullable (^titleMenuProvider)(NSArray<UIMenuElement *> *suggestedActions)",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectNavigationItem_property_titleMenuProvider],
            }
        },
    };
}

- (NSDictionary *)method_10 {
    return @{
        @"dataModel": @{
            @"abstract": @"设置获取UIViewController的UINavigationItem的属性leftBarButtonItems",
            @"title": @"@property (nonatomic, readwrite, copy, nullable) NSArray<UIBarButtonItem *> *leftBarButtonItems API_AVAILABLE(ios(5.0));",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectNavigationItem_property_leftBarButtonItems],
            }
        },
    };
}

- (NSDictionary *)method_11 {
    return @{
        @"dataModel": @{
            @"abstract": @"设置获取UIViewController的UINavigationItem的属性rightBarButtonItems",
            @"title": @"@property (nonatomic, readwrite, copy, nullable) NSArray<UIBarButtonItem *> *rightBarButtonItems API_AVAILABLE(ios(5.0));",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectNavigationItem_property_rightBarButtonItems],
            }
        },
    };
}

- (NSDictionary *)method_12 {
    return @{
        @"dataModel": @{
            @"abstract": @"设置获取UIViewController的UINavigationItem的属性leftItemsSupplementBackButton",
            @"title": @"@property (nonatomic, readwrite, assign) BOOL leftItemsSupplementBackButton API_AVAILABLE(ios(5.0)) API_UNAVAILABLE(tvos);",
            @"isDataModelExpand": @(YES),
            @"desc": @"当为YES时，左边返回如果有自定义的按钮也会显示系统自带的；为NO，左边返回如果有自定义的按钮不会显示系统自带的",
            @"dataModel": @{
                @"childItems": [self TestProjectNavigationItem_property_leftItemsSupplementBackButton],
            }
        },
    };
}

- (NSDictionary *)method_13 {
    return @{
        @"dataModel": @{
            @"abstract": @"设置获取UIViewController的UINavigationItem的属性leftBarButtonItem",
            @"title": @"@property(nonatomic, readwrite, strong, nullable) UIBarButtonItem *leftBarButtonItem;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectNavigationItem_property_leftBarButtonItem],
            }
        },
    };
}

- (NSDictionary *)method_14 {
    return @{
        @"dataModel": @{
            @"abstract": @"设置获取UIViewController的UINavigationItem的属性rightBarButtonItem",
            @"title": @"@property(nonatomic, readwrite, strong, nullable) UIBarButtonItem *rightBarButtonItem;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectNavigationItem_property_rightBarButtonItem],
            }
        },
    };
}

- (NSDictionary *)method_15 {
    return @{
        @"dataModel": @{
            @"abstract": @"设置获取UIViewController的UINavigationItem的属性customizationIdentifier",
            @"title": @"@property (nonatomic, readwrite, copy  , nullable) NSString *customizationIdentifier API_AVAILABLE(ios(16.0)) API_UNAVAILABLE(tvos, watchos);",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectNavigationItem_property_customizationIdentifier],
            }
        },
    };
}

- (NSDictionary *)method_16 {
    return @{
        @"dataModel": @{
            @"abstract": @"设置获取UIViewController的UINavigationItem的属性leadingItemGroups",
            @"title": @"@property (nonatomic, readwrite, copy) NSArray<UIBarButtonItemGroup *> *leadingItemGroups API_AVAILABLE(ios(16.0)) API_UNAVAILABLE(tvos, watchos);",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectNavigationItem_property_leadingItemGroups],
            }
        },
    };
}

- (NSDictionary *)method_17 {
    return @{
        @"dataModel": @{
            @"abstract": @"设置获取UIViewController的UINavigationItem的属性centerItemGroups",
            @"title": @"@property (nonatomic, readwrite, copy) NSArray<UIBarButtonItemGroup *> *centerItemGroups API_AVAILABLE(ios(16.0)) API_UNAVAILABLE(tvos, watchos);",
            @"isDataModelExpand": @(YES),
            @"desc": @"这个设置后是在右边有个menu的选项，在viewDidLoad之后设置的后不会立即更新",
            @"dataModel": @{
                @"childItems": [self TestProjectNavigationItem_property_centerItemGroups],
            }
        },
    };
}

- (NSDictionary *)method_18 {
    return @{
        @"dataModel": @{
            @"abstract": @"设置获取UIViewController的UINavigationItem的属性trailingItemGroups",
            @"title": @"@property (nonatomic, readwrite, copy) NSArray<UIBarButtonItemGroup *> *trailingItemGroups API_AVAILABLE(ios(16.0)) API_UNAVAILABLE(tvos, watchos);",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectNavigationItem_property_trailingItemGroups],
            }
        },
    };
}

- (NSDictionary *)method_19 {
    return @{
        @"dataModel": @{
            @"abstract": @"设置获取UIViewController的UINavigationItem的属性pinnedTrailingGroup",
            @"title": @"@property (nonatomic, readwrite, strong, nullable) UIBarButtonItemGroup *pinnedTrailingGroup API_AVAILABLE(ios(16.0)) API_UNAVAILABLE(tvos, watchos);",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectNavigationItem_property_pinnedTrailingGroup],
            }
        },
    };
}

- (NSDictionary *)method_20 {
    return @{
        @"dataModel": @{
            @"abstract": @"设置获取UIViewController的UINavigationItem的属性additionalOverflowItems",
            @"title": @"@property (nonatomic, readwrite, strong, nullable) UIDeferredMenuElement *additionalOverflowItems API_AVAILABLE(ios(16.0)) API_UNAVAILABLE(tvos, watchos);",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectNavigationItem_property_additionalOverflowItems],
            }
        },
    };
}

- (NSDictionary *)method_21 {
    return @{
        @"dataModel": @{
            @"abstract": @"设置获取UIViewController的UINavigationItem的属性overflowPresentationSource",
            @"title": @"@property (nonatomic, readonly, strong, nullable) id<UIPopoverPresentationControllerSourceItem> overflowPresentationSource API_AVAILABLE(ios(16.0)) API_UNAVAILABLE(tvos, watchos);",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectNavigationItem_property_overflowPresentationSource],
            }
        },
    };
}

- (NSDictionary *)method_22 {
    return @{
        @"dataModel": @{
            @"abstract": @"设置获取UIViewController的UINavigationItem的属性largeTitleDisplayMode",
            @"title": @"@property (nonatomic, readwrite, assign) UINavigationItemLargeTitleDisplayMode largeTitleDisplayMode API_AVAILABLE(ios(11.0)) API_UNAVAILABLE(tvos);",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectNavigationItem_property_largeTitleDisplayMode],
            }
        },
    };
}

- (NSDictionary *)method_23 {
    return @{
        @"dataModel": @{
            @"abstract": @"设置获取UIViewController的UINavigationItem的属性style",
            @"title": @"@property (nonatomic, readwrite, assign) UINavigationItemStyle style API_AVAILABLE(ios(16.0)) API_UNAVAILABLE(tvos, watchos);",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectNavigationItem_property_style],
            }
        },
    };
}

- (NSDictionary *)method_24 {
    return @{
        @"dataModel": @{
            @"abstract": @"设置获取UIViewController的UINavigationItem的属性searchController",
            @"title": @"@property (nonatomic, readwrite, strong, nullable) UISearchController *searchController API_AVAILABLE(ios(11.0)) API_UNAVAILABLE(tvos);",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectNavigationItem_property_searchController],
            }
        },
    };
}

- (NSDictionary *)method_25 {
    return @{
        @"dataModel": @{
            @"abstract": @"设置获取UIViewController的UINavigationItem的属性hidesSearchBarWhenScrolling",
            @"title": @"@property (nonatomic, readwrite, assign) BOOL hidesSearchBarWhenScrolling API_AVAILABLE(ios(11.0)) API_UNAVAILABLE(tvos);",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectNavigationItem_property_hidesSearchBarWhenScrolling],
            }
        },
    };
}

- (NSDictionary *)method_26 {
    return @{
        @"dataModel": @{
            @"abstract": @"设置获取UIViewController的UINavigationItem的属性preferredSearchBarPlacement",
            @"title": @"@property (nonatomic, readwrite, assign) UINavigationItemSearchBarPlacement preferredSearchBarPlacement API_AVAILABLE(ios(16.0)) API_UNAVAILABLE(tvos, watchos);",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectNavigationItem_property_preferredSearchBarPlacement],
            }
        },
    };
}

- (NSDictionary *)method_27 {
    return @{
        @"dataModel": @{
            @"abstract": @"设置获取UIViewController的UINavigationItem的属性searchBarPlacement",
            @"title": @"@property (nonatomic, readonly, assign)  UINavigationItemSearchBarPlacement searchBarPlacement API_AVAILABLE(ios(16.0)) API_UNAVAILABLE(tvos, watchos);",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectNavigationItem_property_searchBarPlacement],
            }
        },
    };
}

- (NSMutableArray *)TestProjectNavigationItem_property_searchBarPlacement {
    return [self createTableModelSingleArrayWithProperty:@"searchBarPlacement" value:nil];
}

//typedef NS_ENUM(NSInteger, UINavigationItemSearchBarPlacement) {
//    /// The navigation bar will choose a placement for the search bar that is appropriate for the current layout
//    UINavigationItemSearchBarPlacementAutomatic,
//    /// The navigation bar will place the search bar inline with other content, on the trailing edge.
//    UINavigationItemSearchBarPlacementInline,
//    /// The navigation bar will place the search bar vertically stacked with other content.
//    UINavigationItemSearchBarPlacementStacked,
//} API_AVAILABLE(ios(16.0)) API_UNAVAILABLE(tvos, watchos);

- (NSMutableArray *)TestProjectNavigationItem_property_preferredSearchBarPlacement {
    if (@available(iOS 16.0, *)) {
        NSArray *arr = @[
            @{
                @"title": [NSString stringWithFormat:@"设置的是UINavigationItemSearchBarPlacementAutomatic(%ld): searchController会另起一行展示", UINavigationItemSearchBarPlacementAutomatic],
                @"value": @(UINavigationItemSearchBarPlacementAutomatic),
            },
            @{
                @"title": [NSString stringWithFormat:@"设置的是UINavigationItemSearchBarPlacementInline(%ld): searchController会和标题和返回按钮在同一行展示", UINavigationItemSearchBarPlacementInline],
                @"value": @(UINavigationItemSearchBarPlacementInline),
            },
            @{
                @"title": [NSString stringWithFormat:@"设置的是UINavigationItemSearchBarPlacementStacked(%ld): searchController会另起一行展示", UINavigationItemSearchBarPlacementStacked],
                @"value": @(UINavigationItemSearchBarPlacementStacked),
            },
        ];
        for (NSDictionary *dic in arr) {
            NSString *title = dic[@"title"];
            NSNumber *value = dic[@"value"];
            WS(wSelf);
            [self createClickSetTableModelWithProperty:@"preferredSearchBarPlacement" value:value title:title block:^{
                if (!self->_searchController) {
                    wSelf.parentVC.navigationController.navigationItem.searchController = wSelf.searchController;
                }
                wSelf.parentVC.navigationController.navigationItem.hidesSearchBarWhenScrolling = NO;
            }];
        }
    } else {
        // Fallback on earlier versions
    }
    return self.dataMutArr;
}

- (NSMutableArray *)TestProjectNavigationItem_property_hidesSearchBarWhenScrolling {
    NSArray *arr = @[@(YES), @(NO)];
    for (NSNumber *num in arr) {
        [self createClickSetTableModelWithProperty:@"hidesSearchBarWhenScrolling" value:num];
    }
    return self.dataMutArr;
}

- (NSMutableArray *)TestProjectNavigationItem_property_searchController {
    [self createClickSetTableModelWithProperty:@"searchController" value:self.searchController];
    return self.dataMutArr;
}

//typedef NS_ENUM(NSInteger, UINavigationItemStyle) {
//    /// Traditional navigation bar behavior. Center items are placed in the overflow menu.
//    UINavigationItemStyleNavigator,
//    /// A style designed for use as a browser. Title is leading aligned, center items are displayed. Typically used with history-based navigation.
//    UINavigationItemStyleBrowser,
//    /// A style designed for use as an editor. The back button will always present as chevron-only, title is leading aligned, center items are displayed. Typically used without navigation.
//    UINavigationItemStyleEditor,
//} NS_SWIFT_NAME(UINavigationItem.ItemStyle) API_AVAILABLE(ios(16.0)) API_UNAVAILABLE(tvos, watchos);

- (NSMutableArray *)TestProjectNavigationItem_property_style {
    if (@available(iOS 16.0, *)) {
        NSArray *arr = @[
            @{
                @"title": [NSString stringWithFormat:@"设置的是UINavigationItemStyleNavigator(%ld): 系统的返回Item显示文字", UINavigationItemStyleNavigator],
                @"value": @(UINavigationItemStyleNavigator),
            },
            @{
                @"title": [NSString stringWithFormat:@"设置的是UINavigationItemStyleBrowser(%ld): 系统的返回Item显示文字", UINavigationItemStyleBrowser],
                @"value": @(UINavigationItemStyleBrowser),
            },
            @{
                @"title": [NSString stringWithFormat:@"设置的是UINavigationItemStyleEditor(%ld): 系统的返回Item不显示文字", UINavigationItemStyleEditor],
                @"value": @(UINavigationItemStyleEditor),
            },
        ];
        for (NSDictionary *dic in arr) {
            NSString *title = dic[@"title"];
            NSNumber *value = dic[@"value"];
            WS(wSelf);
            [self createClickSetTableModelWithProperty:@"style" value:value title:title block:^{
                wSelf.parentVC.navigationController.navigationBar.prefersLargeTitles = YES;
            }];
        }
    } else {
        // Fallback on earlier versions
    }
    return self.dataMutArr;
}

//typedef NS_ENUM(NSInteger, UINavigationItemLargeTitleDisplayMode) {
//    /// Automatically use the large out-of-line title based on the state of the previous item in the navigation bar. An item with largeTitleDisplayMode=Automatic will show or hide the large title based on the request of the previous navigation item. If the first item pushed is set to Automatic, then it will show the large title if the navigation bar has prefersLargeTitles=YES.
//    UINavigationItemLargeTitleDisplayModeAutomatic,
//    /// Always use a larger title when this item is topmost.
//    UINavigationItemLargeTitleDisplayModeAlways,
//    /// Never use a larger title when this item is topmost.
//    UINavigationItemLargeTitleDisplayModeNever,
//} NS_SWIFT_NAME(UINavigationItem.LargeTitleDisplayMode);

- (NSMutableArray *)TestProjectNavigationItem_property_largeTitleDisplayMode {
    NSArray *arr = @[
        @{
            @"title": [NSString stringWithFormat:@"设置的是UINavigationItemLargeTitleDisplayModeAutomatic(%ld): 会显示大标题", UINavigationItemLargeTitleDisplayModeAutomatic],
            @"value": @(UINavigationItemLargeTitleDisplayModeAutomatic),
        },
        @{
            @"title": [NSString stringWithFormat:@"设置的是UINavigationItemLargeTitleDisplayModeAlways(%ld): 会显示大标题", UINavigationItemLargeTitleDisplayModeAlways],
            @"value": @(UINavigationItemLargeTitleDisplayModeAutomatic),
        },
        @{
            @"title": [NSString stringWithFormat:@"设置的是UINavigationItemLargeTitleDisplayModeNever(%ld): 永远也不显示大标题", UINavigationItemLargeTitleDisplayModeNever],
            @"value": @(UINavigationItemLargeTitleDisplayModeNever),
        },
    ];
    for (NSDictionary *dic in arr) {
        NSString *title = dic[@"title"];
        NSNumber *value = dic[@"value"];
        WS(wSelf);
        [self createClickSetTableModelWithProperty:@"largeTitleDisplayMode" value:value title:title block:^{
            wSelf.parentVC.navigationController.navigationBar.prefersLargeTitles = YES;
        }];
    }
    return self.dataMutArr;
}

- (NSMutableArray *)TestProjectNavigationItem_property_overflowPresentationSource {
    return [self createTableModelSingleArrayWithProperty:@"overflowPresentationSource" value:nil];
}

- (NSMutableArray *)TestProjectNavigationItem_property_additionalOverflowItems {
    return [self createTableModelSingleArrayWithProperty:@"additionalOverflowItems" value:nil];
}

- (NSMutableArray *)TestProjectNavigationItem_property_pinnedTrailingGroup {
    UIBarButtonItem *item1 = [[UIBarButtonItem alloc] initWithTitle:@"l" style:UIBarButtonItemStylePlain target:self action:@selector(gotoBack)];
    item1.width = 11;
    UIBarButtonItem *item2 = [[UIBarButtonItem alloc] initWithImage:[UIImage imageNamed:@"lyf_3"] style:UIBarButtonItemStylePlain target:self action:@selector(gotoBack)];
    UIBarButtonItemGroup *groupItem = [[UIBarButtonItemGroup alloc] initWithBarButtonItems:@[item1, item2] representativeItem:nil];
    [self createClickSetTableModelWithProperty:@"pinnedTrailingGroup" value:groupItem];
    return self.dataMutArr;
}

- (NSMutableArray *)TestProjectNavigationItem_property_trailingItemGroups {
    UIBarButtonItem *item1 = [[UIBarButtonItem alloc] initWithTitle:@"l" style:UIBarButtonItemStylePlain target:self action:@selector(gotoBack)];
    item1.width = 11;
    UIBarButtonItem *item2 = [[UIBarButtonItem alloc] initWithImage:[UIImage imageNamed:@"lyf_3"] style:UIBarButtonItemStylePlain target:self action:@selector(gotoBack)];
    UIBarButtonItemGroup *groupItem = [[UIBarButtonItemGroup alloc] initWithBarButtonItems:@[item1, item2] representativeItem:nil];
    [self createClickSetTableModelWithProperty:@"trailingItemGroups" value:@[groupItem]];
    return self.dataMutArr;
}

- (NSMutableArray *)TestProjectNavigationItem_property_centerItemGroups {
    UIBarButtonItem *item1 = [[UIBarButtonItem alloc] initWithTitle:@"l" style:UIBarButtonItemStylePlain target:self action:@selector(gotoBack)];
    item1.width = 11;
    UIBarButtonItem *item2 = [[UIBarButtonItem alloc] initWithImage:[UIImage imageNamed:@"lyf_3"] style:UIBarButtonItemStylePlain target:self action:@selector(gotoBack)];
    UIBarButtonItemGroup *groupItem = [[UIBarButtonItemGroup alloc] initWithBarButtonItems:@[item1, item2] representativeItem:nil];
    [self createClickSetTableModelWithProperty:@"centerItemGroups" value:@[groupItem]];
    return self.dataMutArr;
}

- (NSMutableArray *)TestProjectNavigationItem_property_leadingItemGroups {
    UIBarButtonItem *item1 = [[UIBarButtonItem alloc] initWithTitle:@"l" style:UIBarButtonItemStylePlain target:self action:@selector(gotoBack)];
    item1.width = 11;
    UIBarButtonItem *item2 = [[UIBarButtonItem alloc] initWithImage:[UIImage imageNamed:@"lyf_3"] style:UIBarButtonItemStylePlain target:self action:@selector(gotoBack)];
    UIBarButtonItemGroup *groupItem = [[UIBarButtonItemGroup alloc] initWithBarButtonItems:@[item1, item2] representativeItem:nil];
        
    [self createClickSetTableModelWithProperty:@"leadingItemGroups" value:@[groupItem]];
    return self.dataMutArr;
}

- (NSMutableArray *)TestProjectNavigationItem_property_customizationIdentifier {
    return [self createTableModelSingleArrayWithProperty:@"customizationIdentifier" value:nil];
}

- (NSMutableArray *)TestProjectNavigationItem_property_rightBarButtonItem {
    UIBarButtonItem *item = [[UIBarButtonItem alloc] initWithTitle:@"right" style:UIBarButtonItemStylePlain target:self action:@selector(gotoBack)];
    [self createClickSetTableModelWithProperty:@"rightBarButtonItem" value:item];
    return self.dataMutArr;
}

- (NSMutableArray *)TestProjectNavigationItem_property_leftBarButtonItem {
    UIBarButtonItem *item = [[UIBarButtonItem alloc] initWithTitle:@"left" style:UIBarButtonItemStylePlain target:self action:@selector(gotoBack)];
    [self createClickSetTableModelWithProperty:@"leftBarButtonItem" value:item];
    return self.dataMutArr;
}

- (NSMutableArray *)TestProjectNavigationItem_property_leftItemsSupplementBackButton {
    NSArray *arr = @[@(YES), @(NO)];
    for (NSNumber *num in arr) {
        [self createClickSetTableModelWithProperty:@"leftItemsSupplementBackButton" value:num];
    }
    return self.dataMutArr;
}

- (NSMutableArray *)TestProjectNavigationItem_property_rightBarButtonItems {
    UIBarButtonItem *item1 = [[UIBarButtonItem alloc] initWithTitle:@"l" style:UIBarButtonItemStylePlain target:self action:@selector(gotoBack)];
    item1.width = 11;

    UIBarButtonItem *item2 = [[UIBarButtonItem alloc] initWithImage:[UIImage imageNamed:@"lyf_3"] style:UIBarButtonItemStylePlain target:self action:@selector(gotoBack)];
    UIBarButtonItem *item3 = [[UIBarButtonItem alloc] initWithImage:[UIImage imageNamed:@"lyf_3"] style:UIBarButtonItemStylePlain target:self action:@selector(gotoBack)];
    UIBarButtonItem *item4 = [[UIBarButtonItem alloc] initWithImage:[UIImage imageNamed:@"lyf_3"] style:UIBarButtonItemStylePlain target:self action:@selector(gotoBack)];
    UIBarButtonItem *item5 = [[UIBarButtonItem alloc] initWithImage:[UIImage imageNamed:@"lyf_3"] style:UIBarButtonItemStylePlain target:self action:@selector(gotoBack)];

    [self createClickSetTableModelWithProperty:@"rightBarButtonItems" value:@[item1, item2, item3, item4, item5]];
    return self.dataMutArr;
}

- (NSMutableArray *)TestProjectNavigationItem_property_leftBarButtonItems {
    UIBarButtonItem *item1 = [[UIBarButtonItem alloc] initWithTitle:@"l" style:UIBarButtonItemStylePlain target:self action:@selector(gotoBack)];
    UIBarButtonItem *item2 = [[UIBarButtonItem alloc] initWithImage:[UIImage imageNamed:@"lyf_3"] style:UIBarButtonItemStylePlain target:self action:@selector(gotoBack)];
    item1.width = 11;
    [self createClickSetTableModelWithProperty:@"leftBarButtonItems" value:@[item1, item2]];
    return self.dataMutArr;
}

- (NSMutableArray *)TestProjectNavigationItem_property_titleMenuProvider {
    return [self createTableModelSingleArrayWithProperty:@"titleMenuProvider" value:nil];
}

//UIKIT_EXTERN const UIActionIdentifier UIActionPaste API_AVAILABLE(ios(15.0));
//UIKIT_EXTERN const UIActionIdentifier UIActionPasteAndMatchStyle API_AVAILABLE(ios(15.0));
//UIKIT_EXTERN const UIActionIdentifier UIActionPasteAndGo API_AVAILABLE(ios(15.0));
//UIKIT_EXTERN const UIActionIdentifier UIActionPasteAndSearch API_AVAILABLE(ios(15.0));

- (NSMutableArray *)TestProjectNavigationItem_property_backAction {
    if (@available(iOS 15.0, *)) {
        NSArray *arr = @[
            @{
                @"title": @"设置的是UIActionPaste，会执行block，不会pop VC",
                @"value": UIActionPaste,
            },
            @{
                @"title": @"设置的是UIActionPasteAndMatchStyle，会执行block，不会pop VC",
                @"value": UIActionPasteAndMatchStyle,
            },
            @{
                @"title": @"设置的是UIActionPasteAndGo，会执行block，不会pop VC",
                @"value": UIActionPasteAndGo,
            },
            @{
                @"title": @"设置的是UIActionPasteAndSearch，会执行block，不会pop VC",
                @"value": UIActionPasteAndSearch,
            },
        ];
        WS(wSelf);
        for (NSDictionary *dic in arr) {
            NSString *title = dic[@"title"];
            NSString *value = dic[@"value"];
            UIAction *action = [UIAction actionWithTitle:[NSString stringWithFormat:@"backAction_%ld", self.parentVC.atFloor] image:[UIImage imageNamed:@"lyf_3"] identifier:value handler:^(__kindof UIAction * _Nonnull action) {
                [wSelf gotoBack];
            }];
            [self createClickSetTableModelWithProperty:@"backAction" value:action title:title block:nil];
        }
    } else {
        // Fallback on earlier versions
    }
    return self.dataMutArr;
}

//typedef NS_ENUM(NSInteger, UINavigationItemBackButtonDisplayMode) {
//    /// Default mode, uses an appropriate title, followed by a generic title (typically 'Back'), then no title.
//    UINavigationItemBackButtonDisplayModeDefault = 0,
//    /// Generic titles only. Ignores .title and .backButtonTitle (but *not* .backBarButtonItem.title).
//    UINavigationItemBackButtonDisplayModeGeneric = 1,
//    /// Don't use a title, just the back button indicator image.
//    UINavigationItemBackButtonDisplayModeMinimal = 2,
//} NS_SWIFT_NAME(UINavigationItem.BackButtonDisplayMode);

- (NSMutableArray *)TestProjectNavigationItem_property_backButtonDisplayMode {
    NSArray *arr = @[
        @{
            @"title": [NSString stringWithFormat:@"设置的是UINavigationItemBackButtonDisplayModeDefault(%ld): 有文字", UINavigationItemBackButtonDisplayModeDefault],
            @"value": @(UINavigationItemBackButtonDisplayModeDefault),
        },
        @{
            @"title": [NSString stringWithFormat:@"设置的是UINavigationItemBackButtonDisplayModeGeneric(%ld): 有文字", UINavigationItemBackButtonDisplayModeGeneric],
            @"value": @(UINavigationItemBackButtonDisplayModeGeneric),
        },
        @{
            @"title": [NSString stringWithFormat:@"设置的是UINavigationItemBackButtonDisplayModeMinimal(%ld): 没有文字", UINavigationItemBackButtonDisplayModeMinimal],
            @"value": @(UINavigationItemBackButtonDisplayModeMinimal),
        },
    ];
    for (NSDictionary *dic in arr) {
        NSString *title = dic[@"title"];
        NSNumber *value = dic[@"value"];
        [self createClickSetTableModelWithProperty:@"backButtonDisplayMode" value:value title:title block:nil];
    }
    return self.dataMutArr;
}

- (NSMutableArray *)TestProjectNavigationItem_property_hidesBackButton {
    NSArray *arr = @[@(YES), @(NO)];
    for (NSNumber *num in arr) {
        [self createClickSetTableModelWithProperty:@"hidesBackButton" value:num];
    }
    return self.dataMutArr;
}

- (NSMutableArray *)TestProjectNavigationItem_property_backButtonTitle {
    return [self createTableModelSingleArrayWithProperty:@"backButtonTitle" value:[NSString stringWithFormat:@"backButtonTitle_%ld", self.parentVC.atFloor]];
}

- (NSMutableArray *)TestProjectNavigationItem_property_backBarButtonItem {
    UIBarButtonItem *item = [[UIBarButtonItem alloc] initWithTitle:[NSString stringWithFormat:@"backItem_%ld", self.parentVC.atFloor] style:UIBarButtonItemStyleDone target:self.tVC action:@selector(gotoBack)];
    [self createClickSetTableModelWithProperty:@"backBarButtonItem" value:item];
    return self.dataMutArr;
}

- (NSMutableArray *)TestProjectNavigationItem_property_prompt {
    return [self createTableModelSingleArrayWithProperty:@"prompt" value:[NSString stringWithFormat:@"prompt_%ld", self.parentVC.atFloor]];
}

- (NSMutableArray *)TestProjectNavigationItem_property_titleView {
    [self createClickSetTableModelWithProperty:@"titleView" value:self.titleView];
    return self.dataMutArr;
}

- (NSMutableArray *)TestProjectNavigationItem_property_title {
    return [self createTableModelSingleArrayWithProperty:@"title" value:[NSString stringWithFormat:@"title_%ld", self.parentVC.atFloor]];
}

@end
