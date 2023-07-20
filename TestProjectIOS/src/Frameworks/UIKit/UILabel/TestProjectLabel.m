//
//  TestProjectLabel.m
//  TestProjectIOS
//
//  Created by zjrcumac on 2023/6/27.
//

#import "TestProjectLabel.h"

@interface TestProjectChildLabel : UILabel

@end

@implementation TestProjectChildLabel

- (CGRect)textRectForBounds:(CGRect)bounds limitedToNumberOfLines:(NSInteger)numberOfLines {
    CGRect rect = [super textRectForBounds:bounds limitedToNumberOfLines:numberOfLines];
    NSLog(@"%@ bounds:%@ numberOfLines:%ld rect:%@", NSStringFromSelector(_cmd), NSStringFromCGRect(bounds), numberOfLines, NSStringFromCGRect(rect));
    return rect;
}

- (void)drawTextInRect:(CGRect)rect {
    NSLog(@"%@ rect:%@", NSStringFromSelector(_cmd), NSStringFromCGRect(rect));
    [super drawTextInRect:rect];
}

@end

@interface TestProjectLabel ()

@property (nonatomic, strong) TestProjectChildLabel *childLabel;

@end

@implementation TestProjectLabel

- (instancetype)initCreate {
    if (self = [super initCreate]) {
        [self.tableView testproject_updateConstraints:^(TestProjectViewConstrainMake * _Nonnull make) {
            make.height.equal(self).offset(-50);
        }];
        self.childLabel.backgroundColor = [UIColor redColor];
    }
    return self;
}

- (TestProjectChildLabel *)childLabel {
    if (!_childLabel) {
        _childLabel = [[TestProjectChildLabel alloc] init];
        _childLabel.text = @"我是个默认";
        _childLabel.numberOfLines = 2;
        _childLabel.font = [UIFont systemFontOfSize:10];
        _childLabel.userInteractionEnabled = YES;
        [self addSubview:_childLabel];
        [_childLabel testproject_makeConstraints:^(TestProjectViewConstrainMake * _Nonnull make) {
            make.top.centerX.equal(self);
            make.height.width.equal(@50);
        }];
    }
    return _childLabel;
}

- (id)setPropertyValueObject {
    return self.childLabel;
}

- (NSDictionary *)method_2:(NSInteger)index {
    return @{
        @"dataModel": @{
            @"abstract": @"设置获取UILabel的属性font",
            @"title": @"@property(null_resettable, nonatomic,strong) UIFont      *font UI_APPEARANCE_SELECTOR;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectLabel_property_font:index],
            }
        },
    };
}

- (NSDictionary *)method_3:(NSInteger)index {
    return @{
        @"dataModel": @{
            @"abstract": @"设置获取UILabel的属性textColor",
            @"title": @"@property(null_resettable, nonatomic,strong) UIColor     *textColor UI_APPEARANCE_SELECTOR;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectLabel_property_textColor:index],
            }
        },
    };
}

- (NSDictionary *)method_4:(NSInteger)index {
    return @{
        @"dataModel": @{
            @"abstract": @"设置获取UILabel的属性shadowColor",
            @"title": @"@property(nullable, nonatomic,strong) UIColor            *shadowColor UI_APPEARANCE_SELECTOR;",
            @"isDataModelExpand": @(YES),
            @"desc": @"要搭配属性shadowOffset共同使用",
            @"dataModel": @{
                @"childItems": [self TestProjectLabel_property_shadowColor:index],
            }
        },
    };
}

- (NSDictionary *)method_5:(NSInteger)index {
    return @{
        @"dataModel": @{
            @"abstract": @"设置获取UILabel的属性shadowOffset",
            @"title": @"@property(nonatomic)        CGSize             shadowOffset UI_APPEARANCE_SELECTOR;",
            @"isDataModelExpand": @(YES),
            @"desc": @"要搭配属性shadowColor共同使用",
            @"dataModel": @{
                @"childItems": [self TestProjectLabel_property_shadowOffset:index],
            }
        },
    };
}

- (NSDictionary *)method_6:(NSInteger)index {
    return @{
        @"dataModel": @{
            @"abstract": @"设置获取UILabel的属性textAlignment",
            @"title": @"@property(nonatomic)        NSTextAlignment    textAlignment;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectLabel_property_textAlignment:index],
            }
        },
    };
}

- (NSDictionary *)method_7:(NSInteger)index {
    return @{
        @"dataModel": @{
            @"abstract": @"设置获取UILabel的属性lineBreakMode",
            @"title": @"@property(nonatomic)        NSLineBreakMode    lineBreakMode;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectLabel_property_lineBreakMode:index],
            }
        },
    };
}

- (NSDictionary *)method_8:(NSInteger)index {
    return @{
        @"dataModel": @{
            @"abstract": @"设置获取UILabel的属性attributedText",
            @"title": @"@property(nullable, nonatomic,copy)   NSAttributedString *attributedText API_AVAILABLE(ios(6.0));",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectLabel_property_attributedText:index],
            }
        },
    };
}

- (NSDictionary *)method_9:(NSInteger)index {
    return @{
        @"dataModel": @{
            @"abstract": @"设置获取UILabel的属性highlightedTextColor",
            @"title": @"@property(nullable, nonatomic,strong)               UIColor *highlightedTextColor UI_APPEARANCE_SELECTOR;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectLabel_property_highlightedTextColor:index],
            }
        },
    };
}

- (NSDictionary *)method_10:(NSInteger)index {
    return @{
        @"dataModel": @{
            @"abstract": @"设置获取UILabel的属性highlighted",
            @"title": @"@property(nonatomic,getter=isHighlighted) BOOL     highlighted;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectLabel_property_highlighted:index],
            }
        },
    };
}

- (NSDictionary *)method_11:(NSInteger)index {
    return @{
        @"dataModel": @{
            @"abstract": @"设置获取UILabel的属性userInteractionEnabled",
            @"title": @"@property(nonatomic,getter=isUserInteractionEnabled) BOOL userInteractionEnabled;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectLabel_property_userInteractionEnabled:index],
            }
        },
    };
}

- (NSDictionary *)method_12:(NSInteger)index {
    return @{
        @"dataModel": @{
            @"abstract": @"设置获取UILabel的属性enabled",
            @"title": @"@property(nonatomic,getter=isEnabled)                BOOL enabled;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectLabel_property_enabled:index],
            }
        },
    };
}

- (NSDictionary *)method_13:(NSInteger)index {
    return @{
        @"dataModel": @{
            @"abstract": @"设置获取UILabel的属性numberOfLines",
            @"title": @"@property(nonatomic) NSInteger numberOfLines;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectLabel_property_numberOfLines:index],
            }
        },
    };
}

- (NSDictionary *)method_14:(NSInteger)index {
    return @{
        @"dataModel": @{
            @"abstract": @"设置获取UILabel的属性adjustsFontSizeToFitWidth",
            @"title": @"@property(nonatomic) BOOL adjustsFontSizeToFitWidth;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectLabel_property_adjustsFontSizeToFitWidth:index],
            }
        },
    };
}

- (NSDictionary *)method_15:(NSInteger)index {
    return @{
        @"dataModel": @{
            @"abstract": @"设置获取UILabel的属性baselineAdjustment，调整文字基线距UILabel的垂直中心的位置",
            @"title": @"@property(nonatomic) UIBaselineAdjustment baselineAdjustment;",
            @"isDataModelExpand": @(YES),
            @"desc": @"只有numberOfLines = 1&&adjustsFontSizeToFitWidth = YES才生效",
            @"dataModel": @{
                @"childItems": [self TestProjectLabel_property_baselineAdjustment:index],
            }
        },
    };
}

- (NSDictionary *)method_16:(NSInteger)index {
    return @{
        @"dataModel": @{
            @"abstract": @"设置获取UILabel的属性minimumScaleFactor, 暂不知道怎么用",
            @"title": @"@property(nonatomic) CGFloat minimumScaleFactor API_AVAILABLE(ios(6.0));",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectLabel_property_minimumScaleFactor:index],
            }
        },
    };
}

- (NSDictionary *)method_17:(NSInteger)index {
    return @{
        @"dataModel": @{
            @"abstract": @"设置获取UILabel的属性allowsDefaultTighteningForTruncation, 缩小字体间的间距",
            @"title": @"@property(nonatomic) BOOL allowsDefaultTighteningForTruncation API_AVAILABLE(ios(9.0));",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectLabel_property_allowsDefaultTighteningForTruncation:index],
            }
        },
    };
}

- (NSDictionary *)method_18:(NSInteger)index {
    return @{
        @"dataModel": @{
            @"abstract": @"设置获取UILabel的属性lineBreakStrategy, 当最后一行只有一个word, 会把上一行的word挤到最后一行",
            @"title": @"@property(nonatomic) NSLineBreakStrategy lineBreakStrategy API_AVAILABLE(ios(14.0), tvos(14.0), watchos(7.0));",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectLabel_property_lineBreakStrategy:index],
            }
        },
    };
}

- (NSDictionary *)method_19:(NSInteger)index {
    return @{
        @"dataModel": @{
            @"abstract": @"设置获取UILabel的属性preferredMaxLayoutWidth",
            @"title": @"@@property(nonatomic) CGFloat preferredMaxLayoutWidth API_AVAILABLE(ios(6.0));",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectLabel_property_preferredMaxLayoutWidth:index],
            }
        },
    };
}

- (NSDictionary *)method_20:(NSInteger)index {
    return @{
        @"dataModel": @{
            @"abstract": @"设置获取UILabel的属性showsExpansionTextWhenTruncated, 暂时不知道怎么用",
            @"title": @"@property (nonatomic) BOOL showsExpansionTextWhenTruncated API_AVAILABLE(macCatalyst(15.0));",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectLabel_property_showsExpansionTextWhenTruncated:index],
            }
        },
    };
}

- (NSMutableArray *)TestProjectLabel_property_showsExpansionTextWhenTruncated:(NSInteger)index {
    NSArray *arr = @[@(YES), @(NO)];
    for (NSNumber *value in arr) {
        [self createClickSetTableModelWithProperty:@"showsExpansionTextWhenTruncated" value:value];
    }
    return self.dataMutArr;
}

- (NSMutableArray *)TestProjectLabel_property_preferredMaxLayoutWidth:(NSInteger)index {
    return [self createClickSetSingleArrayTableModelWithProperty:@"preferredMaxLayoutWidth" value:@30];
}

- (NSMutableArray *)TestProjectLabel_property_lineBreakStrategy:(NSInteger)index {
    if (@available(iOS 14.0, *)) {
        NSArray *arr = @[
            @{
                @"value": @(NSLineBreakStrategyNone),
                @"title": [NSString stringWithFormat:@"设置的属性值是NSLineBreakStrategyNone(%ld)，这个不会挤入", NSLineBreakStrategyNone],
            },
            @{
                @"value": @(NSLineBreakStrategyPushOut),
                @"title": [NSString stringWithFormat:@"设置的属性值是NSLineBreakStrategyPushOut(%ld)，这个会挤入", NSLineBreakStrategyPushOut],
            },
            @{
                @"value": @(NSLineBreakStrategyHangulWordPriority),
                @"title": [NSString stringWithFormat:@"设置的属性值是NSLineBreakStrategyHangulWordPriority(%ld)，这个会挤入", NSLineBreakStrategyHangulWordPriority],
            },
            @{
                @"value": @(NSLineBreakStrategyStandard),
                @"title": [NSString stringWithFormat:@"设置的属性值是NSLineBreakStrategyStandard(%ld)，这个会挤入", NSLineBreakStrategyStandard],
            },
        ];
        for (NSDictionary *dic in arr) {
            NSString *title = dic[@"title"];
            NSNumber *value = dic[@"value"];
            [self createClickSetTableModelWithProperty:@"lineBreakStrategy" value:value title:title block:nil];
        }
    }
    return self.dataMutArr;
}

- (NSMutableArray *)TestProjectLabel_property_allowsDefaultTighteningForTruncation:(NSInteger)index {
    NSArray *arr = @[@(YES), @(NO)];
    for (NSNumber *value in arr) {
        [self createClickSetTableModelWithProperty:@"allowsDefaultTighteningForTruncation" value:value];
    }
    return self.dataMutArr;
}

- (NSMutableArray *)TestProjectLabel_property_minimumScaleFactor:(NSInteger)index {
    NSArray *arr = @[@0, @0.2, @0.5, @0.7, @1];
    WS(wSelf);
    for (NSNumber *num in arr) {
        CGFloat value = [num floatValue];
        [self createTableModelWithTitle:[NSString stringWithFormat:@"设置的minimumScaleFactor是%f", value] block:^{
            wSelf.childLabel.numberOfLines = 1;
            wSelf.childLabel.adjustsFontSizeToFitWidth = YES;
            wSelf.childLabel.minimumScaleFactor = value;
        }];
    }
    return self.dataMutArr;
}

//typedef NS_ENUM(NSInteger, UIBaselineAdjustment) {
//    UIBaselineAdjustmentAlignBaselines = 0, // default. used when shrinking text to position based on the original baseline
//    UIBaselineAdjustmentAlignCenters,
//    UIBaselineAdjustmentNone,
//};

- (NSMutableArray *)TestProjectLabel_property_baselineAdjustment:(NSInteger)index {
    NSArray *arr = @[
        @{
            @"title": [NSString stringWithFormat:@"设置的属性值是UIBaselineAdjustmentAlignBaselines(%ld)", UIBaselineAdjustmentAlignBaselines],
            @"value": @(UIBaselineAdjustmentAlignBaselines),
        },
        @{
            @"title": [NSString stringWithFormat:@"设置的属性值是UIBaselineAdjustmentAlignCenters(%ld)", UIBaselineAdjustmentAlignCenters],
            @"value": @(UIBaselineAdjustmentAlignCenters),
        },
        @{
            @"title": [NSString stringWithFormat:@"设置的属性值是UIBaselineAdjustmentNone(%ld)", UIBaselineAdjustmentNone],
            @"value": @(UIBaselineAdjustmentNone),
        },
    ];
    WS(wSelf);
    for (NSDictionary *dic in arr) {
        NSString *title = dic[@"title"];
        NSNumber *value = dic[@"value"];
        [self createTableModelWithTitle:title block:^{
            wSelf.childLabel.numberOfLines = 1;
            wSelf.childLabel.adjustsFontSizeToFitWidth = YES;
            wSelf.childLabel.baselineAdjustment = [value integerValue];
        }];
    }
    return self.dataMutArr;
}

- (NSMutableArray *)TestProjectLabel_property_adjustsFontSizeToFitWidth:(NSInteger)index {
    NSArray *arr = @[@(YES), @(NO)];
    for (NSNumber *value in arr) {
        [self createClickSetTableModelWithProperty:@"adjustsFontSizeToFitWidth" value:value];
    }
    return self.dataMutArr;
}

- (NSMutableArray *)TestProjectLabel_property_numberOfLines:(NSInteger)index {
    return [self createClickSetSingleArrayTableModelWithProperty:@"numberOfLines" value:@3];
}

- (NSMutableArray *)TestProjectLabel_property_enabled:(NSInteger)index {
    NSArray *arr = @[@(YES), @(NO)];
    for (NSNumber *value in arr) {
        [self createClickSetTableModelWithProperty:@"enabled" value:value];
    }
    return self.dataMutArr;
}

- (NSMutableArray *)TestProjectLabel_property_userInteractionEnabled:(NSInteger)index {
    NSArray *arr = @[@(YES), @(NO)];
    for (NSNumber *value in arr) {
        [self createClickSetTableModelWithProperty:@"userInteractionEnabled" value:value];
    }
    return self.dataMutArr;
}

- (NSMutableArray *)TestProjectLabel_property_highlighted:(NSInteger)index {
    NSArray *arr = @[@(YES), @(NO)];
    for (NSNumber *value in arr) {
        [self createClickSetTableModelWithProperty:@"highlighted" value:value];
    }
    return self.dataMutArr;
}

- (NSMutableArray *)TestProjectLabel_property_highlightedTextColor:(NSInteger)index {
    return [self createClickSetSingleArrayTableModelWithProperty:@"highlightedTextColor" value:[UIColor cyanColor]];
}

- (NSMutableArray *)TestProjectLabel_property_attributedText:(NSInteger)index {
    NSAttributedString *attr = [[NSAttributedString alloc] initWithString:@"我是个AttrText" attributes:@{NSFontAttributeName:[UIFont systemFontOfSize:10], NSForegroundColorAttributeName: [UIColor yellowColor]}];
    return [self createClickSetSingleArrayTableModelWithProperty:@"attributedText" value:attr];
}

//typedef NS_ENUM(NSInteger, NSLineBreakMode) {
//    NSLineBreakByWordWrapping = 0,         // Wrap at word boundaries, default
//    NSLineBreakByCharWrapping,        // Wrap at character boundaries
//    NSLineBreakByClipping,        // Simply clip
//    NSLineBreakByTruncatingHead,    // Truncate at head of line: "...wxyz"
//    NSLineBreakByTruncatingTail,    // Truncate at tail of line: "abcd..."
//    NSLineBreakByTruncatingMiddle    // Truncate middle of line:  "ab...yz"
//} API_AVAILABLE(macos(10.0), ios(6.0), watchos(2.0), tvos(9.0));

- (NSMutableArray *)TestProjectLabel_property_lineBreakMode:(NSInteger)index {
    NSArray *arr = @[
        @{
            @"title": [NSString stringWithFormat:@"设置的属性是NSLineBreakByWordWrapping(%ld)，最后一行以单词划分截断", NSLineBreakByWordWrapping],
            @"value": @(NSLineBreakByWordWrapping),
        },
        @{
            @"title": [NSString stringWithFormat:@"设置的属性是NSLineBreakByCharWrapping(%ld)，最后一行以字符划分截断", NSLineBreakByCharWrapping],
            @"value": @(NSLineBreakByCharWrapping),
        },
        @{
            @"title": [NSString stringWithFormat:@"设置的属性是NSLineBreakByClipping(%ld)，最后一行以视图宽度划分截断", NSLineBreakByClipping],
            @"value": @(NSLineBreakByClipping),
        },
        @{
            @"title": [NSString stringWithFormat:@"设置的属性是NSLineBreakByTruncatingHead(%ld)，最后一行首部显示...", NSLineBreakByTruncatingHead],
            @"value": @(NSLineBreakByTruncatingHead),
        },
        @{
            @"title": [NSString stringWithFormat:@"设置的属性是NSLineBreakByTruncatingTail(%ld)，最后一行尾部部显示...", NSLineBreakByTruncatingTail],
            @"value": @(NSLineBreakByTruncatingTail),
        },
        @{
            @"title": [NSString stringWithFormat:@"设置的属性是NSLineBreakByTruncatingMiddle(%ld)，最后一行中间部显示...", NSLineBreakByTruncatingMiddle],
            @"value": @(NSLineBreakByTruncatingMiddle),
        },
    ];
    for (NSDictionary *dic in arr) {
        NSString *title = dic[@"title"];
        NSNumber *value = dic[@"value"];
        [self createClickSetTableModelWithProperty:@"lineBreakMode" value:value title:title block:nil];
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

- (NSMutableArray *)TestProjectLabel_property_textAlignment:(NSInteger)index {
    NSArray *arr = @[
        @{
            @"title": [NSString stringWithFormat:@"设置的属性是NSTextAlignmentLeft(%ld)，居左展示", NSTextAlignmentLeft],
            @"value": @(NSTextAlignmentLeft),
        },
        @{
            @"title": [NSString stringWithFormat:@"设置的属性是NSTextAlignmentCenter(%ld)，居中展示", NSTextAlignmentCenter],
            @"value": @(NSTextAlignmentCenter),
        },
        @{
            @"title": [NSString stringWithFormat:@"设置的属性是NSTextAlignmentRight(%ld)，居右展示", NSTextAlignmentRight],
            @"value": @(NSTextAlignmentRight),
        },
        @{
            @"title": [NSString stringWithFormat:@"设置的属性是NSTextAlignmentJustified(%ld)，居两边展示，中间空出", NSTextAlignmentJustified],
            @"value": @(NSTextAlignmentJustified),
        },
        @{
            @"title": [NSString stringWithFormat:@"设置的属性是NSTextAlignmentNatural(%ld)，居左展示", NSTextAlignmentNatural],
            @"value": @(NSTextAlignmentNatural),
        },
    ];
    for (NSDictionary *dic in arr) {
        NSString *title = dic[@"title"];
        NSNumber *value = dic[@"value"];
        [self createClickSetTableModelWithProperty:@"textAlignment" value:value title:title block:nil];
    }
    return self.dataMutArr;
}

- (NSMutableArray *)TestProjectLabel_property_shadowOffset:(NSInteger)index {
    return [self createModelSingleArrayWithIndex:index
                                        property:@"font"
                                           value:[UIFont systemFontOfSize:30]
                                       operation:TestProjectCreateModelGetBeforeClickSet
                                           block:nil];
    return [self createClickSetSingleArrayTableModelWithProperty:@"shadowOffset" value:[NSValue valueWithCGSize:CGSizeMake(0, 5)]];
}

- (NSMutableArray *)TestProjectLabel_property_shadowColor:(NSInteger)index {
    return [self createModelSingleArrayWithIndex:index
                                        property:@"font"
                                           value:[UIFont systemFontOfSize:30]
                                       operation:TestProjectCreateModelGetBeforeClickSet
                                           block:nil];
    return [self createClickSetSingleArrayTableModelWithProperty:@"shadowColor" value:[UIColor yellowColor]];
}

- (NSMutableArray *)TestProjectLabel_property_textColor:(NSInteger)index {
    return [self createModelSingleArrayWithIndex:index
                                        property:@"textColor"
                                           value:[UIFont systemFontOfSize:30]
                                       operation:TestProjectCreateModelGetBeforeClickSet
                                           block:nil];
    return [self createClickSetSingleArrayTableModelWithProperty:@"textColor" value:[UIColor purpleColor]];
}

- (NSMutableArray *)TestProjectLabel_property_font:(NSInteger)index {
    return [self createModelSingleArrayWithIndex:index
                                        property:@"font"
                                           value:[UIFont systemFontOfSize:30]
                                       operation:TestProjectCreateModelGetBeforeClickSet
                                           block:nil];
}

- (NSDictionary *)method_1:(NSInteger)index {
    return @{
        @"dataModel": @{
            @"abstract": @"设置获取UILabel的属性text",
            @"title": @"@property(nullable, nonatomic,copy)   NSString           *text;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectLabel_property_text:index],
            }
        },
    };
}

- (NSMutableArray *)TestProjectLabel_property_text:(NSInteger)index {
    return [self createModelSingleArrayWithIndex:index
                                        property:@"text"
                                           value:@"我是个UILabel"
                                       operation:TestProjectCreateModelGetBeforeClickSet
                                           block:nil];
}

@end
