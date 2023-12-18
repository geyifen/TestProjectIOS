//
//  TestProjectUIFont.m
//  TestProjectIOS
//
//  Created by liwenfan on 2023/3/20.
//

#import "TestProjectUIFont.h"

#import "TestProjectNSAttributeStringFoundTableViewView.h"

@interface TestProjectUIFont ()

@end

@implementation TestProjectUIFont

- (TestProjectTableViewModel *)createAttrStrModelWithFont:(UIFont *)font params:(TestProjectTableViewParams *)params {
    TestProjectTableViewModel *m = [[TestProjectTableViewModel alloc] init];
    m.isChild = YES;
    m.isTitleExpand = NO;
    m.titleMutAttrStr = [[NSMutableAttributedString alloc] initWithString:self.firstAttrText attributes:@{NSFontAttributeName: font}];
    [self.dataMutArr addObject:m];
    return m;
}

- (NSMutableArray *)TestProjectFont_class_fontWithDescriptor_size:(TestProjectTableViewParams *)params {
    UIFontDescriptor *desc = [UIFontDescriptor fontDescriptorWithName:@".SFUI-Regular" size:12];
    UIFont *font1 = [UIFont fontWithDescriptor:desc size:18];
    TestProjectTableViewModel *m = [self createAttrStrModelWithFont:font1 params:params];
    m.desc = [NSString stringWithFormat:@"FontDescriptor:%@\nattrText:%@", desc, m.titleMutAttrStr];
    [m calculDataViewHeight:params];

    return self.dataMutArr;
}

- (NSDictionary *)method_24:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"通过descriptor和pointSize获取Font",
            @"title": @"+ (UIFont *)fontWithDescriptor:(UIFontDescriptor *)descriptor size:(CGFloat)pointSize API_AVAILABLE(ios(7.0));",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectFont_class_fontWithDescriptor_size:params],
                @"compareViewModel": self.compareViewModel,
            }
        },
    };
}

- (NSMutableArray *)TestProjectFont_property_get:(NSString *)property value:(id)value params:(TestProjectTableViewParams *)params {
    UIFont *font = [UIFont systemFontOfSize:18];
    TestProjectTableViewModel *m = [self createAttrStrModelWithFont:font params:params];
    if (value) {
        [font setValue:value forKey:property];
    }
    m.desc = [NSString stringWithFormat:@"获取属性%@:%@\nattrText:%@", property, [font valueForKey:property], m.titleMutAttrStr];
    [m calculDataViewHeight:params];
    return self.dataMutArr;
}

- (NSMutableArray *)TestProjectFont_property_fontDescriptor:(TestProjectTableViewParams *)params {
    return [self TestProjectFont_property_get:@"fontDescriptor" value:nil params:params];
}

- (NSDictionary *)method_23:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"获取UIFont的fontDescriptor",
            @"title": @"@property(nonatomic, readonly) UIFontDescriptor *fontDescriptor API_AVAILABLE(ios(7.0));",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectFont_property_fontDescriptor:params],
                @"compareViewModel": self.compareViewModel,
            }
        },
    };
}

- (NSMutableArray *)TestProjectFont_fontWithSize:(TestProjectTableViewParams *)params {
    UIFont *font = [UIFont systemFontOfSize:18];
    [font fontWithSize:12];
    TestProjectTableViewModel *m = [self createAttrStrModelWithFont:font params:params];
    m.desc = [NSString stringWithFormat:@"设置字体大小为12\nattrText:%@", m.titleMutAttrStr];
    return self.dataMutArr;
}

- (NSDictionary *)method_22:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"通过fontSize获取Font",
            @"title": @"- (UIFont *)fontWithSize:(CGFloat)fontSize;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectFont_fontWithSize:params],
                @"compareViewModel": self.compareViewModel,
            }
        },
    };
}

- (NSMutableArray *)TestProjectFont_property_leading:(TestProjectTableViewParams *)params {
    return [self TestProjectFont_property_get:@"leading" value:nil params:params];
}

- (NSDictionary *)method_21:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"获取UIFont的leading",
            @"title": @"@property(nonatomic,readonly)        CGFloat   leading;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectFont_property_leading:params],
                @"compareViewModel": self.compareViewModel,
            }
        },
    };
}

- (NSMutableArray *)TestProjectFont_property_lineHeight:(TestProjectTableViewParams *)params {
    return [self TestProjectFont_property_get:@"lineHeight" value:nil params:params];
}

- (NSDictionary *)method_20:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"获取UIFont的lineHeight",
            @"title": @"@property(nonatomic,readonly)        CGFloat   lineHeight API_AVAILABLE(ios(4.0));",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectFont_property_lineHeight:params],
                @"compareViewModel": self.compareViewModel,
            }
        },
    };
}

- (NSMutableArray *)TestProjectFont_property_xHeight:(TestProjectTableViewParams *)params {
    return [self TestProjectFont_property_get:@"xHeight" value:nil params:params];
}

- (NSDictionary *)method_19:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"获取UIFont的xHeight",
            @"title": @"@property(nonatomic,readonly)        CGFloat   xHeight;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectFont_property_xHeight:params],
                @"compareViewModel": self.compareViewModel,
            }
        },
    };
}

- (NSMutableArray *)TestProjectFont_property_capHeight:(TestProjectTableViewParams *)params {
    return [self TestProjectFont_property_get:@"capHeight" value:nil params:params];
}

- (NSDictionary *)method_18:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"获取UIFont的capHeight",
            @"title": @"@property(nonatomic,readonly)        CGFloat   capHeight;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectFont_property_capHeight:params],
                @"compareViewModel": self.compareViewModel,
            }
        },
    };
}

- (NSMutableArray *)TestProjectFont_property_descender:(TestProjectTableViewParams *)params {
    return [self TestProjectFont_property_get:@"descender" value:nil params:params];
}

- (NSDictionary *)method_17:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"获取UIFont的descender",
            @"title": @"@property(nonatomic,readonly)        CGFloat   descender;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectFont_property_descender:params],
                @"compareViewModel": self.compareViewModel,
            }
        },
    };
}

- (NSMutableArray *)TestProjectFont_property_ascender:(TestProjectTableViewParams *)params {
    return [self TestProjectFont_property_get:@"ascender" value:nil params:params];
}

- (NSDictionary *)method_16:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"获取UIFont的ascender",
            @"title": @"@property(nonatomic,readonly)        CGFloat   ascender;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectFont_property_ascender:params],
                @"compareViewModel": self.compareViewModel,
            }
        },
    };
}

- (NSMutableArray *)TestProjectFont_property_pointSize:(TestProjectTableViewParams *)params {
    return [self TestProjectFont_property_get:@"pointSize" value:nil params:params];
}

- (NSDictionary *)method_15:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"获取UIFont的pointSize",
            @"title": @"@property(nonatomic,readonly)        CGFloat   pointSize;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectFont_property_pointSize:params],
                @"compareViewModel": self.compareViewModel,
            }
        },
    };
}

- (NSMutableArray *)TestProjectFont_property_fontName:(TestProjectTableViewParams *)params {
    return [self TestProjectFont_property_get:@"fontName" value:nil params:params];
}

- (NSDictionary *)method_14:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"获取UIFont的fontName",
            @"title": @"@property(nonatomic,readonly,strong) NSString *fontName;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectFont_property_fontName:params],
                @"compareViewModel": self.compareViewModel,
            }
        },
    };
}

- (NSMutableArray *)TestProjectFont_property_familyName:(TestProjectTableViewParams *)params {
    return [self TestProjectFont_property_get:@"familyName" value:nil params:params];
}

- (NSDictionary *)method_13:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"获取UIFont的familyName",
            @"title": @"@property(nonatomic,readonly,strong) NSString *familyName;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectFont_property_familyName:params],
                @"compareViewModel": self.compareViewModel,
            }
        },
    };
}

- (NSMutableArray *)TestProjectFont_class_monospacedSystemFontOfSize_weight:(TestProjectTableViewParams *)params {
    for (NSInteger i = 0; i < 10; i++) {
        NSInteger size = 20 + i;
        UIFont *font = [UIFont monospacedSystemFontOfSize:size weight:UIFontWeightBold];
        TestProjectTableViewModel *m = [self createAttrStrModelWithFont:font params:params];
        m.desc = [NSString stringWithFormat:@"[UIFont monospacedSystemFontOfSize:%ld weight:UIFontWeightBold]设置字体的大小为：\n%@", size, m.titleMutAttrStr];
        [m calculDataViewHeight:params];
    }

    return self.dataMutArr;
}

- (NSDictionary *)method_12:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"根据传入的size和weight和width获取UIFont字体",
            @"title": @"+ (UIFont *)monospacedSystemFontOfSize:(CGFloat)fontSize weight:(UIFontWeight)weight API_AVAILABLE(ios(13.0));",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectFont_class_monospacedSystemFontOfSize_weight:params],
                @"compareViewModel": self.compareViewModel,
            }
        },
    };
}

- (NSMutableArray *)TestProjectFont_class_systemFontOfSize_weight_width:(TestProjectTableViewParams *)params {
    if (@available(iOS 16.0, *)) {
        NSArray *widths = @[@(UIFontWidthCondensed), @(UIFontWidthStandard), @(UIFontWidthExpanded), @(UIFontWidthCompressed)];
        for (NSInteger i = 0; i < widths.count; i++) {
            UIFontWeight width = [widths[i] floatValue];
            UIFont *font = [UIFont systemFontOfSize:14 weight:UIFontWeightBold width:width];
            TestProjectTableViewModel *m = [self createAttrStrModelWithFont:font params:params];
            m.desc = [NSString stringWithFormat:@"设置字体的粗重为：\n%@", m.titleMutAttrStr];
            [m calculDataViewHeight:params];
        }
    }

    return self.dataMutArr;
}

- (NSDictionary *)method_11:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"根据传入的size和weight和width获取UIFont字体",
            @"title": @"+ (UIFont *)systemFontOfSize:(CGFloat)fontSize weight:(UIFontWeight)weight width:(UIFontWidth)width API_AVAILABLE(ios(16.0));",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectFont_class_systemFontOfSize_weight_width:params],
                @"compareViewModel": self.compareViewModel,
            }
        },
    };
}

- (NSMutableArray *)TestProjectFont_class_monospacedDigitSystemFontOfSize_weight:(TestProjectTableViewParams *)params {
    for (NSInteger i = 0; i < 10; i++) {
        NSInteger size = 20 + i;
        UIFont *font = [UIFont monospacedDigitSystemFontOfSize:size weight:UIFontWeightBold];
        TestProjectTableViewModel *m = [self createAttrStrModelWithFont:font params:params];
        m.desc = [NSString stringWithFormat:@"[UIFont monospacedSystemFontOfSize:%ld weight:UIFontWeightBold]设置字体的大小为：\n%@", size, m.titleMutAttrStr];
        [m calculDataViewHeight:params];
    }

    return self.dataMutArr;
}

- (NSDictionary *)method_10:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"根据传入的size和weight获取UIFont字体",
            @"title": @"+ (UIFont *)monospacedDigitSystemFontOfSize:(CGFloat)fontSize weight:(UIFontWeight)weight API_AVAILABLE(ios(9.0));",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectFont_class_monospacedDigitSystemFontOfSize_weight:params],
                @"compareViewModel": self.compareViewModel,
            }
        },
    };
}

- (NSMutableArray *)TestProjectFont_class_systemFontOfSize_weight:(TestProjectTableViewParams *)params {
    NSArray *weights = @[@(UIFontWeightUltraLight), @(UIFontWeightThin), @(UIFontWeightLight), @(UIFontWeightRegular), @(UIFontWeightMedium), @(UIFontWeightSemibold), @(UIFontWeightBold), @(UIFontWeightHeavy), @(UIFontWeightBlack)];
    for (NSInteger i = 0; i < weights.count; i++) {
        UIFontWeight weight = [weights[i] floatValue];
        UIFont *font = [UIFont systemFontOfSize:14 weight:weight];
        TestProjectTableViewModel *m = [self createAttrStrModelWithFont:font params:params];
        m.desc = [NSString stringWithFormat:@"设置字体的粗重为：\n%@", m.titleMutAttrStr];
        [m calculDataViewHeight:params];
    }
    return self.dataMutArr;
}

- (NSDictionary *)method_9:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"根据传入的size和weight获取UIFont字体",
            @"title": @"+ (UIFont *)systemFontOfSize:(CGFloat)fontSize weight:(UIFontWeight)weight API_AVAILABLE(ios(8.2))",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectFont_class_systemFontOfSize_weight:params],
                @"compareViewModel": self.compareViewModel,
            }
        },
    };
}

- (NSMutableArray *)TestProjectFont_class_italicSystemFontOfSize:(TestProjectTableViewParams *)params {
    for (NSInteger i = 0; i < 10; i++) {
        NSInteger size = 20 + i;
        UIFont *font = [UIFont italicSystemFontOfSize:size];
        TestProjectTableViewModel *m = [self createAttrStrModelWithFont:font params:params];
        m.desc = [NSString stringWithFormat:@"[UIFont italicSystemFontOfSize:%ld]设置字体的大小为：\n%@", size, m.titleMutAttrStr];
        [m calculDataViewHeight:params];
    }
    return self.dataMutArr;
}

- (NSDictionary *)method_8:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"根据传入的size设置字体大小并且默认是斜体的",
            @"title": @"+ (UIFont *)italicSystemFontOfSize:(CGFloat)fontSize;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectFont_class_italicSystemFontOfSize:params],
                @"compareViewModel": self.compareViewModel,
            }
        },
    };
}

- (NSMutableArray *)TestProjectFont_class_boldSystemFontOfSize:(TestProjectTableViewParams *)params {
    for (NSInteger i = 0; i < 10; i++) {
        NSInteger size = 20 + i;
        UIFont *font = [UIFont boldSystemFontOfSize:size];
        TestProjectTableViewModel *m = [self createAttrStrModelWithFont:font params:params];
        m.desc = [NSString stringWithFormat:@"[UIFont boldSystemFontOfSize:%ld]设置字体的大小为：\n%@", size, m.titleMutAttrStr];
        [m calculDataViewHeight:params];
    }

    return self.dataMutArr;
}

- (NSDictionary *)method_7:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"根据传入的size设置字体大小并且默认是加粗的",
            @"title": @"+ (UIFont *)boldSystemFontOfSize:(CGFloat)fontSize;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectFont_class_boldSystemFontOfSize:params],
                @"compareViewModel": self.compareViewModel,
            }
        },
    };
}

- (NSMutableArray *)TestProjectFont_class_systemFontOfSize:(TestProjectTableViewParams *)params {
    for (NSInteger i = 0; i < 10; i++) {
        NSInteger size = 20 + i;
        UIFont *font = [UIFont systemFontOfSize:size];
        TestProjectTableViewModel *m = [self createAttrStrModelWithFont:font params:params];
        m.desc = [NSString stringWithFormat:@"[UIFont systemFontOfSize:%ld]设置字体的大小为：\n%@", size, m.titleMutAttrStr];
        [m calculDataViewHeight:params];
    }

    return self.dataMutArr;
}

- (NSDictionary *)method_6:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"根据传入的size设置字体大小",
            @"title": @"+ (UIFont *)systemFontOfSize:(CGFloat)fontSize;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectFont_class_systemFontOfSize:params],
                @"compareViewModel": self.compareViewModel,
            }
        },
    };
}

- (NSMutableArray *)TestProjectFont_class_fontNamesForFamilyName:(TestProjectTableViewParams *)params {
    NSArray *font_familyNames = [UIFont familyNames];
    for (NSString *fontName in font_familyNames) {
        NSArray *fontNames = [UIFont fontNamesForFamilyName:fontName];
        TestProjectTableViewModel *m = [[TestProjectTableViewModel alloc] init];
        m.desc = [NSString stringWithFormat:@"获取%@字体的可以搭配的属性：\n%@", fontName, fontNames];
        [m calculDataViewHeight:params];
    }

    return self.dataMutArr;
}

- (NSDictionary *)method_5:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"根据字体类型查看当前类型可以搭配的UIFontWeight",
            @"title": @"+ (NSArray<NSString *> *)fontNamesForFamilyName:(NSString *)familyName;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectFont_class_fontNamesForFamilyName:params],
                @"compareViewModel": self.compareViewModel,
            }
        },
    };
}

- (NSMutableArray *)TestProjectFont_class_property_familyNames:(TestProjectTableViewParams *)params {
    NSArray *font_familyNames = [UIFont familyNames];
    TestProjectTableViewModel *m = [self createAttrStrModelWithFont:[UIFont systemFontOfSize:17] params:params];
    m.desc = [NSString stringWithFormat:@"获取UIFont所有字体: 总个数为:%ld \n %@", font_familyNames.count, font_familyNames];
    [m calculDataViewHeight:params];
    return self.dataMutArr;
}

- (NSDictionary *)method_4:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"获取系统的所有字体类型 用的是class方法获取的",
            @"title": @"@property(class, nonatomic, readonly) NSArray<NSString *> *familyNames;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectFont_class_property_familyNames:params],
                @"compareViewModel": self.compareViewModel,
            }
        },
    };
}

- (NSMutableArray *)TestProjectFont_class_fontWithName_size:(TestProjectTableViewParams *)params {
    NSArray *font_familyNames = [UIFont familyNames];
    for (NSString *fontName in font_familyNames) {
        UIFont *font = [UIFont fontWithName:fontName size:14];
        TestProjectTableViewModel *m = [self createAttrStrModelWithFont:font params:params];
        m.desc = [NSString stringWithFormat:@"设置的字体是[UIFont fontWithName:@\"%@\" size:18] attrText:%@", fontName, m.titleMutAttrStr];
        [m calculDataViewHeight:params];
    }
    return self.dataMutArr;
}

- (NSDictionary *)method_3:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"根据字体的类型获取的UIFont",
            @"title": @"+ (nullable UIFont *)fontWithName:(NSString *)fontName size:(CGFloat)fontSize;",
            @"desc": @"只有部分字体的类型可以和UIFontWeight结合起来共同使用, 可以使用[UIFont fontNamesForFamilyName:name]查看每个字体可以搭配的 \n @parma fontName:字体的类型 \n @param fontSize: 字体的大小",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectFont_class_fontWithName_size:params],
                @"compareViewModel": self.compareViewModel,
            }
        },
    };
}

- (NSMutableArray *)TestProjectFont_class_preferredFontForTextStyle_compatibleWithTraitCollection:(TestProjectTableViewParams *)params {
    NSArray *arr = @[
        @{
            @"desc": @"UIFontTextStyleLargeTitle-34",
            @"styleValue": @"UIFontTextStyleLargeTitle",
            @"style": UIFontTextStyleLargeTitle,
        },
        @{
            @"desc": @"UIFontTextStyleTitle1-28 ",
            @"styleValue": @"UIFontTextStyleTitle1",
            @"style": UIFontTextStyleTitle1,
        },
        @{
            @"desc": @"UIFontTextStyleTitle2-22",
            @"styleValue": @"UIFontTextStyleTitle2",
            @"style": UIFontTextStyleTitle2,
        },
        @{
            @"desc": @"UIFontTextStyleTitle3-20",
            @"styleValue": @"UIFontTextStyleTitle3",
            @"style": UIFontTextStyleTitle3,
        },
        @{
            @"desc": @"UIFontTextStyleHeadline-17",
            @"styleValue": @"UIFontTextStyleHeadline",
            @"style": UIFontTextStyleHeadline,
        },
        @{
            @"desc": @"UIFontTextStyleSubheadline-15",
            @"styleValue": @"UIFontTextStyleSubheadline",
            @"style": UIFontTextStyleSubheadline,
        },
        @{
            @"desc": @"UIFontTextStyleBody-17",
            @"styleValue": @"UIFontTextStyleBody",
            @"style": UIFontTextStyleBody,
        },
        @{
            @"desc": @"UIFontTextStyleCallout-16",
            @"styleValue": @"UIFontTextStyleCallout",
            @"style": UIFontTextStyleCallout,
        },
        @{
            @"desc": @"UIFontTextStyleFootnote-13",
            @"styleValue": @"UIFontTextStyleFootnote",
            @"style": UIFontTextStyleFootnote,
        },
        @{
            @"desc": @"UIFontTextStyleCaption1-12",
            @"styleValue": @"UIFontTextStyleCaption1",
            @"style": UIFontTextStyleCaption1,
        },
        @{
            @"desc": @"UIFontTextStyleCaption2-11",
            @"styleValue": @"UIFontTextStyleCaption2",
            @"style": UIFontTextStyleCaption2,
        },
    ];
    for (NSDictionary *dic in arr) {
        NSString *desc = dic[@"desc"];
        NSString *styleValue = dic[@"styleValue"];
        UIFontTextStyle style = dic[@"style"];
        UIFont *font = [UIFont preferredFontForTextStyle:style compatibleWithTraitCollection:nil];
        TestProjectTableViewModel *m = [self createAttrStrModelWithFont:font params:params];
        m.desc = [NSString stringWithFormat:@"设置的是%@ style 取的值(%@) attrText:\n%@", desc, styleValue, m.titleMutAttrStr];
        [m calculDataViewHeight:params];
    }
    return self.dataMutArr;
}

- (NSDictionary *)method_2:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"根据系统的定义的类型获取的UIFont",
            @"title": @"+ (UIFont *)preferredFontForTextStyle:(UIFontTextStyle)style compatibleWithTraitCollection:(nullable UITraitCollection *)traitCollection API_AVAILABLE(ios(10.0)) API_UNAVAILABLE(watchos);",
            @"desc": @"@parma style:系统定义的类型 \n @param traitCollection: 暂时不知道怎么玩",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectFont_class_preferredFontForTextStyle_compatibleWithTraitCollection:params],
                @"compareViewModel": self.compareViewModel,
            }
        },
    };
}

- (NSMutableArray *)TestProjectFont_class_preferredFontForTextStyle:(TestProjectTableViewParams *)params {
    NSArray *arr = @[
        @{
            @"desc": @"UIFontTextStyleLargeTitle-34",
            @"styleValue": @"UIFontTextStyleLargeTitle",
            @"style": UIFontTextStyleLargeTitle,
        },
        @{
            @"desc": @"UIFontTextStyleTitle1-28 ",
            @"styleValue": @"UIFontTextStyleTitle1",
            @"style": UIFontTextStyleTitle1,
        },
        @{
            @"desc": @"UIFontTextStyleTitle2-22",
            @"styleValue": @"UIFontTextStyleTitle2",
            @"style": UIFontTextStyleTitle2,
        },
        @{
            @"desc": @"UIFontTextStyleTitle3-20",
            @"styleValue": @"UIFontTextStyleTitle3",
            @"style": UIFontTextStyleTitle3,
        },
        @{
            @"desc": @"UIFontTextStyleHeadline-17",
            @"styleValue": @"UIFontTextStyleHeadline",
            @"style": UIFontTextStyleHeadline,
        },
        @{
            @"desc": @"UIFontTextStyleSubheadline-15",
            @"styleValue": @"UIFontTextStyleSubheadline",
            @"style": UIFontTextStyleSubheadline,
        },
        @{
            @"desc": @"UIFontTextStyleBody-17",
            @"styleValue": @"UIFontTextStyleBody",
            @"style": UIFontTextStyleBody,
        },
        @{
            @"desc": @"UIFontTextStyleCallout-16",
            @"styleValue": @"UIFontTextStyleCallout",
            @"style": UIFontTextStyleCallout,
        },
        @{
            @"desc": @"UIFontTextStyleFootnote-13",
            @"styleValue": @"UIFontTextStyleFootnote",
            @"style": UIFontTextStyleFootnote,
        },
        @{
            @"desc": @"UIFontTextStyleCaption1-12",
            @"styleValue": @"UIFontTextStyleCaption1",
            @"style": UIFontTextStyleCaption1,
        },
        @{
            @"desc": @"UIFontTextStyleCaption2-11",
            @"styleValue": @"UIFontTextStyleCaption2",
            @"style": UIFontTextStyleCaption2,
        },
    ];
    for (NSDictionary *dic in arr) {
        NSString *desc = dic[@"desc"];
        NSString *styleValue = dic[@"styleValue"];
        UIFontTextStyle style = dic[@"style"];
        UIFont *font = [UIFont preferredFontForTextStyle:style];
        TestProjectTableViewModel *m = [self createAttrStrModelWithFont:font params:params];
        m.desc = [NSString stringWithFormat:@"设置的是%@ style 取的值(%@) attrText:\n%@", desc, styleValue, m.titleMutAttrStr];
        [m calculDataViewHeight:params];
    }
    return self.dataMutArr;
}

- (NSDictionary *)method_1:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"根据系统的定义的类型获取的UIFont",
            @"title": @"+ (UIFont *)preferredFontForTextStyle:(UIFontTextStyle)style API_AVAILABLE(ios(7.0));",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectFont_class_preferredFontForTextStyle:params],
                @"compareViewModel": self.compareViewModel,
            }
        },
    };
}

@end
