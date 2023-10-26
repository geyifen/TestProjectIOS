//
//  TestProjectUIFontPickerViewControllerConfiguration.m
//  TestProjectIOS
//
//  Created by liwenfan on 2023/6/26.
//

#import "TestProjectUIFontPickerViewControllerConfiguration.h"

@interface TestProjectUIFontPickerViewControllerConfiguration ()

@property (nonatomic, strong) NSMutableDictionary *vcDic;
@property (nonatomic, strong) UIFontPickerViewControllerConfiguration *configuration;

@end

@implementation TestProjectUIFontPickerViewControllerConfiguration

- (instancetype)initCreate {
    if (self = [super initCreate]) {
        [self.tableView testproject_updateConstraints:^(TestProjectViewConstrainMake * _Nonnull make) {
            make.height.equal(self).offset(-450);
        }];
    }
    return self;
}

- (void)createFontPickerVCWithConfiguration:(UIFontPickerViewControllerConfiguration *)configuration {
    UIFontPickerViewController *vc = [self.vcDic objectForKey:configuration];
    if (!vc) {
        vc = [[UIFontPickerViewController alloc] initWithConfiguration:configuration];
        [self.vcDic setObject:vc forKey:configuration];
        [self addSubview:vc.view];
        [vc.view testproject_makeConstraints:^(TestProjectViewConstrainMake * _Nonnull make) {
            make.top.leading.trainling.equal(self);
            make.height.equal(@450);
        }];
    } else {
        [self bringSubviewToFront:vc.view];
    }
    self.configuration = vc.configuration;
}

- (NSMutableDictionary *)vcDic {
    if (!_vcDic) {
        _vcDic = [NSMutableDictionary dictionary];
    }
    return _vcDic;
}

- (id)setPropertyValueObject {
    return self.configuration;
}

- (NSDictionary *)method_1:(NSInteger)index {
    return @{
        @"dataModel": @{
            @"abstract": @"设置获取UIFontPickerViewControllerConfiguration的属性includeFaces",
            @"title": @"@property (nonatomic) BOOL includeFaces;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectFontPickerViewControllerConfiguration_property_includeFaces:index],
            }
        },
    };
}

- (NSDictionary *)method_2:(NSInteger)index {
    return @{
        @"dataModel": @{
            @"abstract": @"设置获取UIFontPickerViewControllerConfiguration的属性displayUsingSystemFont",
            @"title": @"@property (nonatomic) BOOL displayUsingSystemFont;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectFontPickerViewControllerConfiguration_property_displayUsingSystemFont:index],
            }
        },
    };
}

- (NSDictionary *)method_3:(NSInteger)index {
    return @{
        @"dataModel": @{
            @"abstract": @"设置获取UIFontPickerViewControllerConfiguration的属性filteredTraits",
            @"title": @"@property (nonatomic) UIFontDescriptorSymbolicTraits filteredTraits;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectFontPickerViewControllerConfiguration_property_filteredTraits:index],
            }
        },
    };
}

- (NSDictionary *)method_4:(NSInteger)index {
    return @{
        @"dataModel": @{
            @"abstract": @"设置获取UIFontPickerViewControllerConfiguration的属性filteredLanguagesPredicate, 暂不知道怎么用",
            @"title": @"@property (nullable, copy, nonatomic) NSPredicate *filteredLanguagesPredicate;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectFontPickerViewControllerConfiguration_property_filteredLanguagesPredicate:index],
            }
        },
    };
}

- (NSDictionary *)method_5:(NSInteger)index {
    return @{
        @"dataModel": @{
            @"abstract": @"设置获取UIFontPickerViewControllerConfiguration的class方法filterPredicateForFilteredLanguages:",
            @"title": @"+ (nullable NSPredicate *)filterPredicateForFilteredLanguages:(NSArray<NSString *> *)filteredLanguages;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectFontPickerViewControllerConfiguration_class_filterPredicateForFilteredLanguages:index],
            }
        },
    };
}

- (NSMutableArray *)TestProjectFontPickerViewControllerConfiguration_class_filterPredicateForFilteredLanguages:(NSInteger)index {
    NSPredicate *predicate = [UIFontPickerViewControllerConfiguration filterPredicateForFilteredLanguages:@[@"AI Nile"]];
    return [self createTableModelSingleArrayWithTitle:[NSString stringWithFormat:@"%@", predicate] block:nil];
}

- (NSMutableArray *)TestProjectFontPickerViewControllerConfiguration_property_filteredLanguagesPredicate:(NSInteger)index {
    NSPredicate *predicate = [UIFontPickerViewControllerConfiguration filterPredicateForFilteredLanguages:@[@"Symbol"]];
    UIFontPickerViewControllerConfiguration *config = [[UIFontPickerViewControllerConfiguration alloc] init];
    config.filteredLanguagesPredicate = predicate;
    WS(wSelf);
    return [self createTableModelSingleArrayWithTitle:[NSString stringWithFormat:@"过滤条件:%@\n%@", predicate, config] block:^{
        [wSelf createFontPickerVCWithConfiguration:config];
    }];
}

- (NSMutableArray *)TestProjectFontPickerViewControllerConfiguration_property_filteredTraits:(NSInteger)index {
    NSArray *arr = @[
        @{
            @"title": [NSString stringWithFormat:@"设置的属性是:UIFontDescriptorTraitItalic(%u)", UIFontDescriptorTraitItalic],
            @"value": @(UIFontDescriptorTraitItalic),
        },
        @{
            @"title": [NSString stringWithFormat:@"设置的属性是:UIFontDescriptorTraitBold(%u)", UIFontDescriptorTraitBold],
            @"value": @(UIFontDescriptorTraitBold),
        },
        @{
            @"title": [NSString stringWithFormat:@"设置的属性是:UIFontDescriptorTraitExpanded(%u)", UIFontDescriptorTraitExpanded],
            @"value": @(UIFontDescriptorTraitExpanded),
        },
        @{
            @"title": [NSString stringWithFormat:@"设置的属性是:UIFontDescriptorTraitCondensed(%u)", UIFontDescriptorTraitCondensed],
            @"value": @(UIFontDescriptorTraitCondensed),
        },
        @{
            @"title": [NSString stringWithFormat:@"设置的属性是:UIFontDescriptorTraitMonoSpace(%u)", UIFontDescriptorTraitMonoSpace],
            @"value": @(UIFontDescriptorTraitMonoSpace),
        },
        @{
            @"title": [NSString stringWithFormat:@"设置的属性是:UIFontDescriptorTraitVertical(%u)", UIFontDescriptorTraitVertical],
            @"value": @(UIFontDescriptorTraitVertical),
        },
        @{
            @"title": [NSString stringWithFormat:@"设置的属性是:UIFontDescriptorTraitUIOptimized(%u)", UIFontDescriptorTraitUIOptimized],
            @"value": @(UIFontDescriptorTraitUIOptimized),
        },
        @{
            @"title": [NSString stringWithFormat:@"设置的属性是:UIFontDescriptorTraitTightLeading(%u)", UIFontDescriptorTraitTightLeading],
            @"value": @(UIFontDescriptorTraitTightLeading),
        },
        @{
            @"title": [NSString stringWithFormat:@"设置的属性是:UIFontDescriptorTraitLooseLeading(%u)", UIFontDescriptorTraitLooseLeading],
            @"value": @(UIFontDescriptorTraitLooseLeading),
        },
        @{
            @"title": [NSString stringWithFormat:@"设置的属性是:UIFontDescriptorClassMask(%u)", UIFontDescriptorClassMask],
            @"value": @(UIFontDescriptorClassMask),
        },
        @{
            @"title": [NSString stringWithFormat:@"设置的属性是:UIFontDescriptorClassUnknown(%u)", UIFontDescriptorClassUnknown],
            @"value": @(UIFontDescriptorClassUnknown),
        },
        @{
            @"title": [NSString stringWithFormat:@"设置的属性是:UIFontDescriptorClassOldStyleSerifs(%u)", UIFontDescriptorClassOldStyleSerifs],
            @"value": @(UIFontDescriptorClassOldStyleSerifs),
        },
        @{
            @"title": [NSString stringWithFormat:@"设置的属性是:UIFontDescriptorClassTransitionalSerifs(%u)", UIFontDescriptorClassTransitionalSerifs],
            @"value": @(UIFontDescriptorClassTransitionalSerifs),
        },
        @{
            @"title": [NSString stringWithFormat:@"设置的属性是:UIFontDescriptorClassModernSerifs(%u)", UIFontDescriptorClassModernSerifs],
            @"value": @(UIFontDescriptorClassModernSerifs),
        },
        @{
            @"title": [NSString stringWithFormat:@"设置的属性是:UIFontDescriptorClassClarendonSerifs(%u)", UIFontDescriptorClassClarendonSerifs],
            @"value": @(UIFontDescriptorClassClarendonSerifs),
        },
        @{
            @"title": [NSString stringWithFormat:@"设置的属性是:UIFontDescriptorClassSlabSerifs(%u)", UIFontDescriptorClassSlabSerifs],
            @"value": @(UIFontDescriptorClassSlabSerifs),
        },
        @{
            @"title": [NSString stringWithFormat:@"设置的属性是:UIFontDescriptorClassFreeformSerifs(%u)", UIFontDescriptorClassFreeformSerifs],
            @"value": @(UIFontDescriptorClassFreeformSerifs),
        },
        @{
            @"title": [NSString stringWithFormat:@"设置的属性是:UIFontDescriptorClassSansSerif(%u)", UIFontDescriptorClassSansSerif],
            @"value": @(UIFontDescriptorClassSansSerif),
        },
        @{
            @"title": [NSString stringWithFormat:@"设置的属性是:UIFontDescriptorClassOrnamentals(%u)", UIFontDescriptorClassOrnamentals],
            @"value": @(UIFontDescriptorClassOrnamentals),
        },
        @{
            @"title": [NSString stringWithFormat:@"设置的属性是:UIFontDescriptorClassScripts(%u)", UIFontDescriptorClassScripts],
            @"value": @(UIFontDescriptorClassScripts),
        },
        @{
            @"title": [NSString stringWithFormat:@"设置的属性是:UIFontDescriptorClassSymbolic(%u)", UIFontDescriptorClassSymbolic],
            @"value": @(UIFontDescriptorClassSymbolic),
        },
    ];

    for (NSDictionary *dic in arr) {
        UIFontDescriptorSymbolicTraits value = (UIFontDescriptorSymbolicTraits)[dic[@"value"] integerValue];
        NSString *title = dic[@"title"];
        UIFontPickerViewControllerConfiguration *config = [[UIFontPickerViewControllerConfiguration alloc] init];
        config.filteredTraits = value;
        WS(wSelf);
        [self createTableModelSingleArrayWithTitle:[NSString stringWithFormat:@"%@\n%@", title, config] block:^{
            [wSelf createFontPickerVCWithConfiguration:config];
        }];
    }
    return self.dataMutArr;
}

- (NSMutableArray *)TestProjectFontPickerViewControllerConfiguration_property_displayUsingSystemFont:(NSInteger)index {
    NSArray *arr = @[
        @{
            @"title": @"设置的属性是YES",
            @"value": @(YES),
        },
        @{
            @"title": @"设置的属性是NO",
            @"value": @(NO),
        },
    ];
    for (NSDictionary *dic in arr) {
        NSString *title = dic[@"title"];
        BOOL value = [dic[@"value"] boolValue];
        UIFontPickerViewControllerConfiguration *config = [[UIFontPickerViewControllerConfiguration alloc] init];
        config.displayUsingSystemFont = value;
        WS(wSelf);
        [self createTableModelSingleArrayWithTitle:[NSString stringWithFormat:@"%@\n%@", title, config] block:^{
            [wSelf createFontPickerVCWithConfiguration:config];
        }];
    }
    return self.dataMutArr;
}

- (NSMutableArray *)TestProjectFontPickerViewControllerConfiguration_property_includeFaces:(NSInteger)index {
    NSArray *arr = @[
        @{
            @"title": @"设置的属性是YES",
            @"value": @(YES),
        },
        @{
            @"title": @"设置的属性是NO",
            @"value": @(NO),
        },
    ];
    for (NSDictionary *dic in arr) {
        NSString *title = dic[@"title"];
        BOOL value = [dic[@"value"] boolValue];
        UIFontPickerViewControllerConfiguration *config = [[UIFontPickerViewControllerConfiguration alloc] init];
        config.includeFaces = value;
        WS(wSelf);
        [self createTableModelSingleArrayWithTitle:[NSString stringWithFormat:@"%@\n%@", title, config] block:^{
            [wSelf createFontPickerVCWithConfiguration:config];
        }];
    }
    return self.dataMutArr;
}

@end
