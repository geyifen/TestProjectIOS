//
//  TestProjectMutableParagraphStyle.m
//  TestProjectIOS
//
//  Created by zjrcumac on 2023/3/16.
//

#import "TestProjectMutableParagraphStyle.h"

@implementation TestProjectMutableParagraphStyle

- (NSDictionary *)method_1 {
    return @{
        @"dataModel": @{
            @"abstract": @"设置NSMutableParagraphStyle的行间距",
            @"title": @"@property (NS_NONATOMIC_IOSONLY) CGFloat lineSpacing;",
            @"desc": @"获取NSMutableParagraphStyle的属性lineSpacing CGFloat \n设置负数没有用",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"modelClass": TestProjectAttributeStringFoundationModel.class,
                @"childItems": [self TestProjectMutableParagraphStyle_property_lineSpacing],
                @"compareViewModel": self.compareViewModel,
            }
        },
    };
}

- (NSDictionary *)method_2 {
    return @{
        @"dataModel": @{
            @"abstract": @"设置NSMutableParagraphStyle的每个段落间距",
            @"title": @"@property (NS_NONATOMIC_IOSONLY) CGFloat paragraphSpacing;",
            @"desc": @"获取NSMutableParagraphStyle的属性paragraphSpacing CGFloat \n设置负数会与上一段重叠",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"modelClass": TestProjectAttributeStringFoundationModel.class,
                @"childItems": [self TestProjectMutableParagraphStyle_property_paragraphSpacing],
                @"compareViewModel": self.compareViewModel,
            }
        },
    };
}

- (NSDictionary *)method_3 {
    return @{
        @"dataModel": @{
            @"abstract": @"设置NSMutableParagraphStyle的文本整体展示方式方向",
            @"title": @"@property (NS_NONATOMIC_IOSONLY) NSTextAlignment alignment;",
            @"desc": @"获取NSMutableParagraphStyle的属性alignment NSTextAlignment",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"modelClass": TestProjectAttributeStringFoundationModel.class,
                @"childItems": [self TestProjectMutableParagraphStyle_property_alignment],
                @"compareViewModel": self.compareViewModel,
            }
        },
    };
}

- (NSDictionary *)method_4 {
    return @{
        @"dataModel": @{
            @"abstract": @"设置NSMutableParagraphStyle的文本每个段落的除了第一行，其它行都要空出间距",
            @"title": @"@property (NS_NONATOMIC_IOSONLY) CGFloat headIndent;",
            @"desc": @"获取NSMutableParagraphStyle的属性headIndent CGFloat \n设置负数没有用",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"modelClass": TestProjectAttributeStringFoundationModel.class,
                @"childItems": [self TestProjectMutableParagraphStyle_property_headIndent],
                @"compareViewModel": self.compareViewModel,
            }
        },
    };
}

- (NSDictionary *)method_5 {
    return @{
        @"dataModel": @{
            @"abstract": @"设置NSMutableParagraphStyle的文本每个字符占用一行",
            @"title": @"@property (NS_NONATOMIC_IOSONLY) CGFloat tailIndent;",
            @"desc": @"获取NSMutableParagraphStyle的属性tailIndent CGFloat \n设置负数没有用， 设置正数，每个字符占领一行整的",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"modelClass": TestProjectAttributeStringFoundationModel.class,
                @"childItems": [self TestProjectMutableParagraphStyle_property_tailIndent],
                @"compareViewModel": self.compareViewModel,
            }
        },
    };
}

- (NSDictionary *)method_6 {
    return @{
        @"dataModel": @{
            @"abstract": @"设置NSMutableParagraphStyle的文本的每个段落的第一行的缩进间距",
            @"title": @"@property (NS_NONATOMIC_IOSONLY) CGFloat firstLineHeadIndent;",
            @"desc": @"获取NSMutableParagraphStyle的属性firstLineHeadIndent CGFloat \n设置负数没有用",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"modelClass": TestProjectAttributeStringFoundationModel.class,
                @"childItems": [self TestProjectMutableParagraphStyle_property_firstLineHeadIndent],
                @"compareViewModel": self.compareViewModel,
            }
        },
    };
}

- (NSDictionary *)method_7 {
    return @{
        @"dataModel": @{
            @"abstract": @"设置NSMutableParagraphStyle的文本每行的最小高度",
            @"title": @"@property (NS_NONATOMIC_IOSONLY) CGFloat minimumLineHeight;",
            @"desc": @"获取NSMutableParagraphStyle的属性minimumLineHeight CGFloat \n设置负数没有用，每行的高度大于这个值也是无效果的",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"modelClass": TestProjectAttributeStringFoundationModel.class,
                @"childItems": [self TestProjectMutableParagraphStyle_property_minimumLineHeight],
                @"compareViewModel": self.compareViewModel,
            }
        },
    };
}

- (NSDictionary *)method_8 {
    return @{
        @"dataModel": @{
            @"abstract": @"设置NSMutableParagraphStyle的文本每行的最大高度",
            @"title": @"@property (NS_NONATOMIC_IOSONLY) CGFloat maximumLineHeight;",
            @"desc": @"获取NSMutableParagraphStyle的属性maximumLineHeight CGFloat \n设置负数没有用，每行的高度小于这个值也是无效果的",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"modelClass": TestProjectAttributeStringFoundationModel.class,
                @"childItems": [self TestProjectMutableParagraphStyle_property_maximumLineHeight],
                @"compareViewModel": self.compareViewModel,
            }
        },
    };
}

- (NSDictionary *)method_9 {
    return @{
        @"dataModel": @{
            @"abstract": @"设置NSMutableParagraphStyle的文本高度不够展示的时候怎么截断显示",
            @"title": @"@property (NS_NONATOMIC_IOSONLY) NSLineBreakMode lineBreakMode;",
            @"desc": @"获取NSMutableParagraphStyle的属性lineBreakMode NSLineBreakMode",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"modelClass": TestProjectAttributeStringFoundationModel.class,
                @"childItems": [self TestProjectMutableParagraphStyle_property_lineBreakMode],
                @"compareViewModel": self.compareViewModel,
            }
        },
    };
}

- (NSDictionary *)method_10 {
    return @{
        @"dataModel": @{
            @"abstract": @"设置NSMutableParagraphStyle的文本书写方向",
            @"title": @"@property (NS_NONATOMIC_IOSONLY) NSWritingDirection baseWritingDirection;",
            @"desc": @"获取NSMutableParagraphStyle的属性baseWritingDirection NSWritingDirection \n优先级比alignment低",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"modelClass": TestProjectAttributeStringFoundationModel.class,
                @"childItems": [self TestProjectMutableParagraphStyle_property_baseWritingDirection],
                @"compareViewModel": self.compareViewModel,
            }
        },
    };
}

- (NSDictionary *)method_11 {
    return @{
        @"dataModel": @{
            @"abstract": @"设置NSMutableParagraphStyle的文本, 每行间距=每行的文字所占的高度*(lineHeightMultiple-1)",
            @"title": @"@property (NS_NONATOMIC_IOSONLY) CGFloat lineHeightMultiple;",
            @"desc": @"获取NSMutableParagraphStyle的属性lineHeightMultiple CGFloat \n设置负数没有用",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"modelClass": TestProjectAttributeStringFoundationModel.class,
                @"childItems": [self TestProjectMutableParagraphStyle_property_lineHeightMultiple],
                @"compareViewModel": self.compareViewModel,
            }
        },
    };
}

- (NSDictionary *)method_12 {
    return @{
        @"dataModel": @{
            @"abstract": @"设置NSMutableParagraphStyle的文本，段落之间的间距",
            @"title": @"@property (NS_NONATOMIC_IOSONLY) CGFloat paragraphSpacingBefore;",
            @"desc": @"获取NSMutableParagraphStyle的属性paragraphSpacingBefore CGFloat \n设置负数，后面段落会前面段落重叠",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"modelClass": TestProjectAttributeStringFoundationModel.class,
                @"childItems": [self TestProjectMutableParagraphStyle_property_paragraphSpacingBefore],
                @"compareViewModel": self.compareViewModel,
            }
        },
    };
}

- (NSDictionary *)method_13 {
    return @{
        @"dataModel": @{
            @"abstract": @"设置NSMutableParagraphStyle的文本英文有上下行分开的会以'-'连接",
            @"title": @"@property (NS_NONATOMIC_IOSONLY) float hyphenationFactor;",
            @"desc": @"获取NSMutableParagraphStyle的属性hyphenationFactor float \n设置负数无效，要么是1，要么是0，设置其它值也是属于这两个有效值里的",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"modelClass": TestProjectAttributeStringFoundationModel.class,
                @"childItems": [self TestProjectMutableParagraphStyle_property_hyphenationFactor],
                @"compareViewModel": self.compareViewModel,
            }
        },
    };
}

- (NSDictionary *)method_14 {
    return @{
        @"dataModel": @{
            @"abstract": @"设置NSMutableParagraphStyle的文本英文有上下行分开的会以'-'连接",
            @"title": @"@property (readwrite, NS_NONATOMIC_IOSONLY) BOOL usesDefaultHyphenation API_AVAILABLE(macos(12.0), ios(15.0), tvos(15.0), watchos(8.0));",
            @"desc": @"获取NSMutableParagraphStyle的属性usesDefaultHyphenation BOOL",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"modelClass": TestProjectAttributeStringFoundationModel.class,
                @"childItems": [self TestProjectMutableParagraphStyle_property_usesDefaultHyphenation],
                @"compareViewModel": self.compareViewModel,
            }
        },
    };
}

- (NSDictionary *)method_15 {
    return @{
        @"dataModel": @{
            @"abstract": @"设置NSMutableParagraphStyle的文本tabStops，暂时不知道怎么设置",
            @"title": @"@property (null_resettable, copy, NS_NONATOMIC_IOSONLY) NSArray<NSTextTab *> *tabStops API_AVAILABLE(macos(10.0), ios(7.0));",
            @"desc": @"获取NSMutableParagraphStyle的属性tabStops NSArray<NSTextTab *> *",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"modelClass": TestProjectAttributeStringFoundationModel.class,
                @"childItems": [self TestProjectMutableParagraphStyle_property_tabStops],
                @"compareViewModel": self.compareViewModel,
            }
        },
    };
}

- (NSDictionary *)method_16 {
    return @{
        @"dataModel": @{
            @"abstract": @"设置NSMutableParagraphStyle的文本defaultTabInterval，设置了没有用，暂时不知道怎么玩",
            @"title": @"@property (NS_NONATOMIC_IOSONLY) CGFloat defaultTabInterval API_AVAILABLE(macos(10.0), ios(7.0));",
            @"desc": @"获取NSMutableParagraphStyle的属性defaultTabInterval CGFloat",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"modelClass": TestProjectAttributeStringFoundationModel.class,
                @"childItems": [self TestProjectMutableParagraphStyle_property_defaultTabInterval],
                @"compareViewModel": self.compareViewModel,
            }
        },
    };
}

- (NSDictionary *)method_17 {
    return @{
        @"dataModel": @{
            @"abstract": @"设置NSMutableParagraphStyle的文本textLists，系统默认的是空的，暂时不知道怎么玩",
            @"title": @"@property (NS_NONATOMIC_IOSONLY, copy) NSArray<NSTextList *> *textLists API_AVAILABLE(macos(10.0), ios(7.0), tvos(9.0)) API_UNAVAILABLE(watchos);",
            @"desc": @"获取NSMutableParagraphStyle的属性textLists NSArray<NSTextList *> *",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"modelClass": TestProjectAttributeStringFoundationModel.class,
                @"childItems": [self TestProjectMutableParagraphStyle_property_textLists],
                @"compareViewModel": self.compareViewModel,
            }
        },
    };
}

- (NSDictionary *)method_18 {
    return @{
        @"dataModel": @{
            @"abstract": @"设置NSMutableParagraphStyle的文本allowsDefaultTighteningForTruncation，暂时不知道怎么玩",
            @"title": @"@property (NS_NONATOMIC_IOSONLY) BOOL allowsDefaultTighteningForTruncation API_AVAILABLE(macos(10.11), ios(9.0));",
            @"desc": @"获取NSMutableParagraphStyle的属性allowsDefaultTighteningForTruncation BOOL",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"modelClass": TestProjectAttributeStringFoundationModel.class,
                @"childItems": [self TestProjectMutableParagraphStyle_property_allowsDefaultTighteningForTruncation],
                @"compareViewModel": self.compareViewModel,
            }
        },
    };
}

- (NSDictionary *)method_19 {
    return @{
        @"dataModel": @{
            @"abstract": @"设置NSMutableParagraphStyle的文本lineBreakStrategy，暂时不知道怎么玩",
            @"title": @"@property (NS_NONATOMIC_IOSONLY) NSLineBreakStrategy lineBreakStrategy API_AVAILABLE(macos(10.11), ios(9.0));",
            @"desc": @"获取NSMutableParagraphStyle的属性lineBreakStrategy NSLineBreakStrateg",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"modelClass": TestProjectAttributeStringFoundationModel.class,
                @"childItems": [self TestProjectMutableParagraphStyle_property_lineBreakStrategy],
                @"compareViewModel": self.compareViewModel,
            }
        },
    };
}

- (TestProjectAttributeStringFoundationModel *)createStyleWithProperty:(NSString *)key value:(id)value desc:(NSString *)desc {
    NSMutableParagraphStyle *style = [[NSMutableParagraphStyle alloc] init];
    if (key && value) {
        [style setValue:value forKey:key];
    }

    if (desc) {
        desc = [NSString stringWithFormat:@"%@\n", desc];
    } else {
        desc = @"";
    }
    TestProjectAttributeStringFoundationModel *m = [self createAttrStrModelWithAttributes:@{NSParagraphStyleAttributeName: style, NSBackgroundColorAttributeName:[UIColor redColor]}];
    m.isTitleExpand = YES;
    m.isDescExpand = NO;
    m.desc = [NSString stringWithFormat:@"%@获取的属性%@：%@ attrText:%@", desc, key, [style valueForKey:key], m.titleMutAttrStr];
    [m calculDataViewHeight];

    return m;
}

//typedef NS_OPTIONS(NSUInteger, NSLineBreakStrategy) {
//    // Don't use any line break strategies
//    NSLineBreakStrategyNone = 0,
//    // Use the push out line break strategy.
//    // This strategy allows the text system to "push out" individual lines by some number of words to avoid an orphan word on the last line of the paragraph.
//    // The current implementation usually pushes out the last line by a single word.
//    NSLineBreakStrategyPushOut API_AVAILABLE(macos(10.11), ios(9.0)) = 1 << 0,
//    // When specified, it prohibits breaking between Hangul characters. It is the preferable typesetting strategy for the modern Korean documents suitable for UI strings.
//    NSLineBreakStrategyHangulWordPriority API_AVAILABLE(macos(11.0), ios(14.0)) = 1 << 1,
//    // Use the same configuration of line break strategies that the system uses for standard UI labels. This set of line break strategies is optimized for displaying shorter strings that are common in UI labels and may not be suitable for large amounts of text.
//    NSLineBreakStrategyStandard API_AVAILABLE(macos(11.0), ios(14.0)) = 0xFFFF
//};

- (NSMutableArray *)TestProjectMutableParagraphStyle_property_lineBreakStrategy {
    if (@available(iOS 14.0, *)) {
        NSArray *arr = @[
            @{
                @"value": @(NSLineBreakStrategyNone),
                @"stringKey": @"NSLineBreakStrategyNone",
            },
            @{
                @"value": @(NSLineBreakStrategyPushOut),
                @"stringKey": @"NSLineBreakStrategyPushOut",
            },
            @{
                @"value": @(NSLineBreakStrategyHangulWordPriority),
                @"stringKey": @"NSLineBreakStrategyHangulWordPriority",
            },
        ];
        for (NSDictionary *dic in arr) {
            NSString *stringKey = dic[@"stringKey"];
            NSNumber *value = dic[@"value"];
            NSString *desc = [NSString stringWithFormat:@"设置的是(%@-%ld)", stringKey, value.integerValue];
            [self createStyleWithProperty:@"lineBreakStrategy" value:value desc:desc];
        }
    }

    return self.dataMutArr;
}

- (NSMutableArray *)TestProjectMutableParagraphStyle_property_allowsDefaultTighteningForTruncation {
    NSArray *arr = @[
        @{
            @"value": @(YES),
            @"stringKey": @"YES",
        },
        @{
            @"value": @(NO),
            @"stringKey": @"NO",
        },
    ];
    for (NSDictionary *dic in arr) {
        NSString *stringKey = dic[@"stringKey"];
        NSNumber *value = dic[@"value"];
        NSString *desc = [NSString stringWithFormat:@"设置的是(%@-%ld)", stringKey, value.integerValue];
        [self createStyleWithProperty:@"allowsDefaultTighteningForTruncation" value:value desc:desc];
    }

    return self.dataMutArr;
}

- (NSMutableArray *)TestProjectMutableParagraphStyle_property_textLists {
    [self createStyleWithProperty:@"textLists" value:nil desc:nil];
    return self.dataMutArr;
}

- (NSMutableArray *)TestProjectMutableParagraphStyle_property_defaultTabInterval {
    NSArray *arr = @[@10, @-10];
    for (NSNumber *num in arr) {
        [self createStyleWithProperty:@"defaultTabInterval" value:num desc:nil];
    }
    return self.dataMutArr;
}

- (NSMutableArray *)TestProjectMutableParagraphStyle_property_tabStops {
    [self createStyleWithProperty:@"tabStops" value:nil desc:nil];
    return self.dataMutArr;
}

- (NSMutableArray *)TestProjectMutableParagraphStyle_property_usesDefaultHyphenation {
    if (@available(iOS 15.0, *)) {
        NSArray *arr = @[@1, @0];
        for (NSNumber *num in arr) {
            [self createStyleWithProperty:@"usesDefaultHyphenation" value:num desc:nil];
        }
    }
    return self.dataMutArr;
}

- (NSMutableArray *)TestProjectMutableParagraphStyle_property_hyphenationFactor {
    NSArray *arr = @[@100, @-10];
    for (NSNumber *num in arr) {
        [self createStyleWithProperty:@"hyphenationFactor" value:num desc:nil];
    }
    return self.dataMutArr;
}

- (NSMutableArray *)TestProjectMutableParagraphStyle_property_paragraphSpacingBefore {
    NSArray *arr = @[@10, @-10];
    for (NSNumber *num in arr) {
        [self createStyleWithProperty:@"paragraphSpacingBefore" value:num desc:nil];
    }
    return self.dataMutArr;
}

- (NSMutableArray *)TestProjectMutableParagraphStyle_property_lineHeightMultiple {
    NSArray *arr = @[@2, @-2, @10, @-10];
    for (NSNumber *num in arr) {
        [self createStyleWithProperty:@"lineHeightMultiple" value:num desc:nil];
    }
    return self.dataMutArr;
}

//typedef NS_ENUM(NSInteger, NSWritingDirection) {
//    NSWritingDirectionNatural       = -1,   // Determines direction using the Unicode Bidi Algorithm rules P2 and P3
//    NSWritingDirectionLeftToRight   = 0,    // Left to right writing direction
//    NSWritingDirectionRightToLeft   = 1     // Right to left writing direction
//} API_AVAILABLE(macos(10.0), ios(6.0), watchos(2.0), tvos(9.0));

- (NSMutableArray *)TestProjectMutableParagraphStyle_property_baseWritingDirection {
    NSArray *arr = @[
        @{
            @"value": @(NSWritingDirectionNatural),
            @"stringKey": @"NSWritingDirectionNatural",
        },
        @{
            @"value": @(NSWritingDirectionLeftToRight),
            @"stringKey": @"NSWritingDirectionLeftToRight",
        },
        @{
            @"value": @(NSWritingDirectionRightToLeft),
            @"stringKey": @"NSWritingDirectionRightToLeft",
        },
    ];
    for (NSDictionary *dic in arr) {
        NSString *stringKey = dic[@"stringKey"];
        NSNumber *value = dic[@"value"];
        NSString *desc = [NSString stringWithFormat:@"设置的是(%@-%ld)", stringKey, value.integerValue];
        [self createStyleWithProperty:@"baseWritingDirection" value:value desc:desc];
    }
    return self.dataMutArr;
}

//typedef NS_ENUM(NSInteger, NSLineBreakMode) {
//    NSLineBreakByWordWrapping = 0,         // Wrap at word boundaries, default
//    NSLineBreakByCharWrapping,        // Wrap at character boundaries
//    NSLineBreakByClipping,        // Simply clip
//    NSLineBreakByTruncatingHead,    // Truncate at head of line: "...wxyz"
//    NSLineBreakByTruncatingTail,    // Truncate at tail of line: "abcd..."
//    NSLineBreakByTruncatingMiddle    // Truncate middle of line:  "ab...yz"
//} API_AVAILABLE(macos(10.0), ios(6.0), watchos(2.0), tvos(9.0));

- (NSMutableArray *)TestProjectMutableParagraphStyle_property_lineBreakMode {
    NSArray *arr = @[
        @{
            @"title": @"最后一行以单词划分截断",
            @"value": @(NSLineBreakByWordWrapping),
            @"stringKey": @"NSLineBreakByWordWrapping",
        },
        @{
            @"title": @"最后一行以字符划分截断",
            @"value": @(NSLineBreakByCharWrapping),
            @"stringKey": @"NSLineBreakByCharWrapping",
        },
        @{
            @"title": @"最后一行以视图宽度划分截断",
            @"value": @(NSLineBreakByClipping),
            @"stringKey": @"NSLineBreakByClipping",
        },
        @{
            @"title": @"最后一行首部显示...",
            @"value": @(NSLineBreakByTruncatingHead),
            @"stringKey": @"NSLineBreakByTruncatingHead",
        },
        @{
            @"title": @"最后一行尾部部显示...",
            @"value": @(NSLineBreakByTruncatingTail),
            @"stringKey": @"NSLineBreakByTruncatingTail",
        },
        @{
            @"title": @"最后一行中间部显示...",
            @"value": @(NSLineBreakByTruncatingMiddle),
            @"stringKey": @"NSLineBreakByTruncatingMiddle",
        },
    ];
    for (NSDictionary *dic in arr) {
        NSString *title = dic[@"title"];
        NSString *stringKey = dic[@"stringKey"];
        NSNumber *value = dic[@"value"];
        NSString *desc = [NSString stringWithFormat:@"%@\n设置的是(%@-%ld)", title, stringKey, value.integerValue];
        TestProjectAttributeStringFoundationModel *m = [self createStyleWithProperty:@"lineBreakMode" value:value desc:desc];
        CGFloat _viewHeight = [[m valueForKey:@"_viewHeight"] floatValue];
        CGFloat _titleHeight = [[m valueForKey:@"_titleHeight"] floatValue];
        CGFloat height = 100;
        _viewHeight -= height;
        _titleHeight -= height;
        [m setValue:@(_viewHeight) forKey:@"_viewHeight"];
        [m setValue:@(_titleHeight) forKey:@"_titleHeight"];
    }

    return self.dataMutArr;
}

- (NSMutableArray *)TestProjectMutableParagraphStyle_property_maximumLineHeight {
    NSArray *arr = @[@10, @-10, @100, @-100];
    for (NSNumber *num in arr) {
        [self createStyleWithProperty:@"maximumLineHeight" value:num desc:nil];
    }
    return self.dataMutArr;
}

- (NSMutableArray *)TestProjectMutableParagraphStyle_property_minimumLineHeight {
    NSArray *arr = @[@10, @-10, @50, @-50];
    for (NSNumber *num in arr) {
        [self createStyleWithProperty:@"minimumLineHeight" value:num desc:nil];
    }
    return self.dataMutArr;
}

- (NSMutableArray *)TestProjectMutableParagraphStyle_property_firstLineHeadIndent {
    NSArray *arr = @[@10, @-10];
    for (NSNumber *num in arr) {
        [self createStyleWithProperty:@"firstLineHeadIndent" value:num desc:nil];
    }

    return self.dataMutArr;
}

- (NSMutableArray *)TestProjectMutableParagraphStyle_property_tailIndent {
    NSArray *arr = @[@1, @-1, @10, @-10];
    for (NSNumber *num in arr) {
        [self createStyleWithProperty:@"tailIndent" value:num desc:nil];
    }
    return self.dataMutArr;
}

- (NSMutableArray *)TestProjectMutableParagraphStyle_property_headIndent {
    NSArray *arr = @[@10, @-10];
    for (NSNumber *num in arr) {
        [self createStyleWithProperty:@"headIndent" value:num desc:nil];
    }
    return self.dataMutArr;
}

//typedef NS_ENUM(NSInteger, NSTextAlignment) {
//    NSTextAlignmentLeft      = 0,    // Visually left aligned
//#if TARGET_ABI_USES_IOS_VALUES
//    NSTextAlignmentCenter    = 1,    // Visually centered
//    NSTextAlignmentRight     = 2,    // Visually right aligned
//#else /* !TARGET_ABI_USES_IOS_VALUES */
//    NSTextAlignmentRight     = 1,    // Visually right aligned
//    NSTextAlignmentCenter    = 2,    // Visually centered
//#endif
//    NSTextAlignmentJustified = 3,    // Fully-justified. The last line in a paragraph is natural-aligned.
//    NSTextAlignmentNatural   = 4     // Indicates the default alignment for script
//} API_AVAILABLE(macos(10.0), ios(6.0), watchos(2.0), tvos(9.0));

- (NSMutableArray *)TestProjectMutableParagraphStyle_property_alignment {
    NSArray *arr = @[
        @{
            @"title": @"文本整体居左显示",
            @"value": @(NSTextAlignmentLeft),
            @"stringKey": @"NSTextAlignmentLeft",
        },
        @{
            @"title": @"文本整体居中显示",
            @"value": @(NSTextAlignmentCenter),
            @"stringKey": @"NSTextAlignmentCenter",
        },
        @{
            @"title": @"文本整体居右显示",
            @"value": @(NSTextAlignmentRight),
            @"stringKey": @"NSTextAlignmentRight",
        },
        @{
            @"title": @"文本整体居左显示，文本内容对齐比较松散，最后一行自然对齐",
            @"value": @(NSTextAlignmentJustified),
            @"stringKey": @"NSTextAlignmentJustified",
        },
        @{
            @"title": @"文本整体居左显示",
            @"value": @(NSTextAlignmentNatural),
            @"stringKey": @"NSTextAlignmentNatural",
        },
    ];
    for (NSDictionary *dic in arr) {
        NSString *stringKey = dic[@"stringKey"];
        NSNumber *value = dic[@"value"];
        NSString *desc = [NSString stringWithFormat:@"设置的是(%@-%ld)", stringKey, value.integerValue];
        [self createStyleWithProperty:@"alignment" value:value desc:desc];
    }
    return self.dataMutArr;
}

- (NSMutableArray *)TestProjectMutableParagraphStyle_property_paragraphSpacing {
    NSArray *arr = @[@10, @-10];
    for (NSNumber *num in arr) {
        [self createStyleWithProperty:@"paragraphSpacing" value:num desc:nil];
    }
    return self.dataMutArr;
}

- (NSMutableArray *)TestProjectMutableParagraphStyle_property_lineSpacing {
    NSArray *arr = @[@10, @-10];
    for (NSNumber *num in arr) {
        [self createStyleWithProperty:@"lineSpacing" value:num desc:nil];
    }
    return self.dataMutArr;
}

@end
