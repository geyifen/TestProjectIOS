//
//  TestProjectUIFontDescriptor.m
//  TestProjectIOS
//
//  Created by liwenfan on 2023/6/20.
//

#import "TestProjectUIFontDescriptor.h"

@interface TestProjectUIFontDescriptor ()

@property (nonatomic, strong) UIFont *childFont;
@property (nonatomic, strong) UIFontDescriptor *childFontDescriptor;

@end

@implementation TestProjectUIFontDescriptor

- (UIFont *)childFont {
    if (!_childFont) {
        _childFont = [UIFont systemFontOfSize:17];
    }
    return _childFont;
}

- (UIFontDescriptor *)childFontDescriptor {
    if (!_childFontDescriptor) {
        _childFontDescriptor = self.childFont.fontDescriptor;
    }
    return _childFontDescriptor;
}

- (id)setPropertyValueObject {
    return self.childFontDescriptor;
}

+ (UIFont *)getUIFontFromFontDescriptor:(UIFontDescriptor *)fontDescriptor {
    CGFloat poinstSize = fontDescriptor.pointSize;
    if (poinstSize <= 0) {
        poinstSize = 30;
    }
    return [UIFont fontWithDescriptor:fontDescriptor size:poinstSize];
}

+ (NSAttributedString *)getAttrStringFromFontDescriptor:(UIFontDescriptor *)fontDescriptor {
    UIFont *font = [self getUIFontFromFontDescriptor:fontDescriptor];
    NSAttributedString *attr = [[NSAttributedString alloc] initWithString:[NSString stringWithFormat:@"我是个ceshi数据%@", fontDescriptor] attributes:@{NSFontAttributeName: font}];
    return attr;
}

- (NSArray *)getUIFontTextStyle {
    return @[
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
}

- (NSDictionary *)method_1:(NSInteger)index {
    return @{
        @"dataModel": @{
            @"abstract": @"获取UIFontDescriptor的属性postscriptName",
            @"title": @"@property(nonatomic, readonly) NSString *postscriptName;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectFontDescriptor_property_postscriptName:index],
            }
        },
    };
}

- (NSDictionary *)method_2:(NSInteger)index {
    return @{
        @"dataModel": @{
            @"abstract": @"获取UIFontDescriptor的属性pointSize",
            @"title": @"@property(nonatomic, readonly) CGFloat   pointSize;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectFontDescriptor_property_pointSize:index],
            }
        },
    };
}

- (NSDictionary *)method_3:(NSInteger)index {
    return @{
        @"dataModel": @{
            @"abstract": @"获取UIFontDescriptor的属性matrix",
            @"title": @"@property(nonatomic, readonly) CGAffineTransform matrix API_UNAVAILABLE(macCatalyst);",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectFontDescriptor_property_matrix:index],
            }
        },
    };
}

- (NSDictionary *)method_4:(NSInteger)index {
    return @{
        @"dataModel": @{
            @"abstract": @"获取UIFontDescriptor的属性symbolicTraits",
            @"title": @"@property(nonatomic, readonly) UIFontDescriptorSymbolicTraits symbolicTraits;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectFontDescriptor_property_symbolicTraits:index],
            }
        },
    };
}

- (NSDictionary *)method_5:(NSInteger)index {
    return @{
        @"dataModel": @{
            @"abstract": @"执行UIFontDescriptor的方法objectForKey:",
            @"title": @"- (nullable id)objectForKey:(UIFontDescriptorAttributeName)anAttribute;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectFontDescriptor_objectForKey:index],
            }
        },
    };
}

- (NSDictionary *)method_6:(NSInteger)index {
    return @{
        @"dataModel": @{
            @"abstract": @"获取UIFontDescriptor的属性fontAttributes",
            @"title": @"@property(nonatomic, readonly) NSDictionary<UIFontDescriptorAttributeName, id> *fontAttributes;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectFontDescriptor_property_fontAttributes:index],
            }
        },
    };
}

- (NSDictionary *)method_7:(NSInteger)index {
    return @{
        @"dataModel": @{
            @"abstract": @"执行UIFontDescriptor的方法matchingFontDescriptorsWithMandatoryKeys:",
            @"title": @"- (NSArray<UIFontDescriptor *> *)matchingFontDescriptorsWithMandatoryKeys:(nullable NSSet<UIFontDescriptorAttributeName> *)mandatoryKeys;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectFontDescriptor_matchingFontDescriptorsWithMandatoryKeys:index],
            }
        },
    };
}

- (NSDictionary *)method_8:(NSInteger)index {
    return @{
        @"dataModel": @{
            @"abstract": @"执行UIFontDescriptor的class方法fontDescriptorWithFontAttributes:",
            @"title": @"+ (UIFontDescriptor *)fontDescriptorWithFontAttributes:(NSDictionary<UIFontDescriptorAttributeName, id> *)attributes;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectFontDescriptor_class_fontDescriptorWithFontAttributes:index],
            }
        },
    };
}

- (NSDictionary *)method_9:(NSInteger)index {
    return @{
        @"dataModel": @{
            @"abstract": @"执行UIFontDescriptor的class方法fontDescriptorWithName:size:",
            @"title": @"+ (UIFontDescriptor *)fontDescriptorWithName:(NSString *)fontName size:(CGFloat)size;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectFontDescriptor_class_fontDescriptorWithName_size:index],
            }
        },
    };
}

- (NSDictionary *)method_10:(NSInteger)index {
    return @{
        @"dataModel": @{
            @"abstract": @"执行UIFontDescriptor的class方法fontDescriptorWithName:matrix:",
            @"title": @"+ (UIFontDescriptor *)fontDescriptorWithName:(NSString *)fontName matrix:(CGAffineTransform)matrix;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectFontDescriptor_class_fontDescriptorWithName_matrix:index],
            }
        },
    };
}

- (NSDictionary *)method_11:(NSInteger)index {
    return @{
        @"dataModel": @{
            @"abstract": @"执行UIFontDescriptor的class方法preferredFontDescriptorWithTextStyle:",
            @"title": @"+ (UIFontDescriptor *)preferredFontDescriptorWithTextStyle:(UIFontTextStyle)style;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectFontDescriptor_class_preferredFontDescriptorWithTextStyle:index],
            }
        },
    };
}

- (NSDictionary *)method_12:(NSInteger)index {
    return @{
        @"dataModel": @{
            @"abstract": @"执行UIFontDescriptor的class方法preferredFontDescriptorWithTextStyle:compatibleWithTraitCollection:",
            @"title": @"+ (UIFontDescriptor *)preferredFontDescriptorWithTextStyle:(UIFontTextStyle)style compatibleWithTraitCollection:(nullable UITraitCollection *)traitCollection API_AVAILABLE(ios(10.0)) API_UNAVAILABLE(watchos);",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectFontDescriptor_class_preferredFontDescriptorWithTextStyle_compatibleWithTraitCollection:index],
            }
        },
    };
}

- (NSDictionary *)method_13:(NSInteger)index {
    return @{
        @"dataModel": @{
            @"abstract": @"执行UIFontDescriptor的方法initWithFontAttributes:",
            @"title": @"- (instancetype)initWithFontAttributes:(NSDictionary<UIFontDescriptorAttributeName, id> *)attributes NS_DESIGNATED_INITIALIZER;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectFontDescriptor_alloc_initWithFontAttributes:index],
            }
        },
    };
}

- (NSDictionary *)method_14:(NSInteger)index {
    return @{
        @"dataModel": @{
            @"abstract": @"执行UIFontDescriptor的方法fontDescriptorByAddingAttributes:",
            @"title": @"- (UIFontDescriptor *)fontDescriptorByAddingAttributes:(NSDictionary<UIFontDescriptorAttributeName, id> *)attributes;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectFontDescriptor_fontDescriptorByAddingAttributes:index],
            }
        },
    };
}

- (NSDictionary *)method_15:(NSInteger)index {
    return @{
        @"dataModel": @{
            @"abstract": @"执行UIFontDescriptor的方法fontDescriptorWithSize:",
            @"title": @"- (UIFontDescriptor *)fontDescriptorWithSize:(CGFloat)newPointSize;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectFontDescriptor_fontDescriptorWithSize:index],
            }
        },
    };
}

- (NSDictionary *)method_16:(NSInteger)index {
    return @{
        @"dataModel": @{
            @"abstract": @"执行UIFontDescriptor的方法fontDescriptorWithMatrix:",
            @"title": @"- (UIFontDescriptor *)fontDescriptorWithMatrix:(CGAffineTransform)matrix API_UNAVAILABLE(macCatalyst);",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectFontDescriptor_fontDescriptorWithMatrix:index],
            }
        },
    };
}

- (NSDictionary *)method_17:(NSInteger)index {
    return @{
        @"dataModel": @{
            @"abstract": @"执行UIFontDescriptor的方法fontDescriptorWithFace:",
            @"title": @"- (UIFontDescriptor *)fontDescriptorWithFace:(NSString *)newFace;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectFontDescriptor_fontDescriptorWithFace:index],
            }
        },
    };
}

- (NSDictionary *)method_18:(NSInteger)index {
    return @{
        @"dataModel": @{
            @"abstract": @"执行UIFontDescriptor的方法fontDescriptorWithFamily:",
            @"title": @"- (UIFontDescriptor *)fontDescriptorWithFamily:(NSString *)newFamily;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectFontDescriptor_fontDescriptorWithFamily:index],
            }
        },
    };
}

- (NSDictionary *)method_19:(NSInteger)index {
    return @{
        @"dataModel": @{
            @"abstract": @"执行UIFontDescriptor的方法fontDescriptorWithSymbolicTraits:",
            @"title": @"- (nullable UIFontDescriptor *)fontDescriptorWithSymbolicTraits:(UIFontDescriptorSymbolicTraits)symbolicTraits;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectFontDescriptor_fontDescriptorWithSymbolicTraits:index],
            }
        },
    };
}

- (NSDictionary *)method_20:(NSInteger)index {
    return @{
        @"dataModel": @{
            @"abstract": @"执行UIFontDescriptor的方法fontDescriptorWithDesign:",
            @"title": @"- (nullable UIFontDescriptor *)fontDescriptorWithDesign:(UIFontDescriptorSystemDesign)design API_AVAILABLE(ios(13.0), watchos(5.2), tvos(13.0));",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectFontDescriptor_fontDescriptorWithDesign:index],
            }
        },
    };
}

//UIKIT_EXTERN UIFontDescriptorSystemDesign const UIFontDescriptorSystemDesignDefault API_AVAILABLE(ios(13.0), watchos(5.2), tvos(13.0));
//UIKIT_EXTERN UIFontDescriptorSystemDesign const UIFontDescriptorSystemDesignRounded API_AVAILABLE(ios(13.0), watchos(5.2), tvos(13.0));
//UIKIT_EXTERN UIFontDescriptorSystemDesign const UIFontDescriptorSystemDesignSerif API_AVAILABLE(ios(13.0), watchos(7.0), tvos(13.0));
//UIKIT_EXTERN UIFontDescriptorSystemDesign const UIFontDescriptorSystemDesignMonospaced API_AVAILABLE(ios(13.0), watchos(7.0), tvos(13.0));

- (NSMutableArray *)TestProjectFontDescriptor_fontDescriptorWithDesign:(NSInteger)index {
    NSArray *arr = @[
        @{
            @"title": @"设置的属性是:UIFontDescriptorSystemDesignDefault",
            @"value": UIFontDescriptorSystemDesignDefault,
        },
        @{
            @"title": @"设置的属性是:UIFontDescriptorSystemDesignRounded",
            @"value": UIFontDescriptorSystemDesignRounded,
        },
        @{
            @"title": @"设置的属性是:UIFontDescriptorSystemDesignSerif",
            @"value": UIFontDescriptorSystemDesignSerif,
        },
        @{
            @"title": @"设置的属性是:UIFontDescriptorSystemDesignMonospaced",
            @"value": UIFontDescriptorSystemDesignMonospaced,
        },
    ];
    for (NSDictionary *dic in arr) {
        UIFontDescriptorSystemDesign value = dic[@"value"];
        UIFontDescriptor *fontDescriptor = [self.childFontDescriptor fontDescriptorWithDesign:value];
        NSAttributedString *attrStr = [TestProjectUIFontDescriptor getAttrStringFromFontDescriptor:fontDescriptor];
        [self createModelWithIndex:index
                    attributeTitle:attrStr
                             block:nil];
    }
    return self.dataMutArr;
}

//typedef NS_OPTIONS(uint32_t, UIFontDescriptorSymbolicTraits) {
//    /* Symbolic Font Traits (Typeface info - lower 16 bits of UIFontDescriptorSymbolicTraits) */
//    /*
//     UIFontDescriptorSymbolicTraits symbolically describes stylistic aspects of a font. The upper 16 bits is used to describe appearance of the font whereas the lower 16 bits for typeface. The font appearance information represented by the upper 16 bits can be used for stylistic font matching.
//     */
//    UIFontDescriptorTraitItalic = 1u << 0,
//    UIFontDescriptorTraitBold = 1u << 1,
//    UIFontDescriptorTraitExpanded = 1u << 5, // expanded and condensed traits are mutually exclusive
//    UIFontDescriptorTraitCondensed = 1u << 6,
//    UIFontDescriptorTraitMonoSpace = 1u << 10, // Use fixed-pitch glyphs if available. May have multiple glyph advances (most CJK glyphs may contain two spaces)
//    UIFontDescriptorTraitVertical = 1u << 11, // Use vertical glyph variants and metrics
//    UIFontDescriptorTraitUIOptimized = 1u << 12, // Synthesize appropriate attributes for UI rendering such as control titles if necessary
//    UIFontDescriptorTraitTightLeading = 1u << 15, // Use tighter leading values
//    UIFontDescriptorTraitLooseLeading = 1u << 16, // Use looser leading values
//
//    /* Font appearance info (upper 16 bits of NSFontSymbolicTraits */
//    /* UIFontDescriptorClassFamily classifies certain stylistic qualities of the font. These values correspond closely to the font class values in the OpenType 'OS/2' table. The class values are bundled in the upper four bits of the UIFontDescriptorSymbolicTraits and can be accessed via UIFontDescriptorClassMask. For specific meaning of each identifier, refer to the OpenType specification.
//     */
//    UIFontDescriptorClassMask = 0xF0000000,
//
//    UIFontDescriptorClassUnknown = 0u << 28,
//    UIFontDescriptorClassOldStyleSerifs = 1u << 28,
//    UIFontDescriptorClassTransitionalSerifs = 2u << 28,
//    UIFontDescriptorClassModernSerifs = 3u << 28,
//    UIFontDescriptorClassClarendonSerifs = 4u << 28,
//    UIFontDescriptorClassSlabSerifs = 5u << 28,
//    UIFontDescriptorClassFreeformSerifs = 7u << 28,
//    UIFontDescriptorClassSansSerif = 8u << 28,
//    UIFontDescriptorClassOrnamentals = 9u << 28,
//    UIFontDescriptorClassScripts = 10u << 28,
//    UIFontDescriptorClassSymbolic = 12u << 28
//} API_AVAILABLE(ios(7.0));

- (NSMutableArray *)TestProjectFontDescriptor_fontDescriptorWithSymbolicTraits:(NSInteger)index {
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
        UIFontDescriptor *fontDescriptor = [self.childFontDescriptor fontDescriptorWithSymbolicTraits:value];
        NSAttributedString *attrStr = [TestProjectUIFontDescriptor getAttrStringFromFontDescriptor:fontDescriptor];
        [self createModelWithIndex:index
                    attributeTitle:attrStr
                             block:nil];
    }
    return self.dataMutArr;
}

- (NSMutableArray *)TestProjectFontDescriptor_fontDescriptorWithFamily:(NSInteger)index {
    UIFontDescriptor *fontDescriptor = [self.childFontDescriptor fontDescriptorWithFamily:@"Bodoni 72"];
    NSAttributedString *attrStr = [TestProjectUIFontDescriptor getAttrStringFromFontDescriptor:fontDescriptor];
    return [self createModelSingleArrayWithIndex:index
                                           attributeTitle:attrStr
                                           block:nil];
}

- (NSMutableArray *)TestProjectFontDescriptor_fontDescriptorWithFace:(NSInteger)index {
    UIFontDescriptor *fontDescriptor = [self.childFontDescriptor fontDescriptorWithFace:@"Semibold"];
    NSAttributedString *attrStr = [TestProjectUIFontDescriptor getAttrStringFromFontDescriptor:fontDescriptor];
    return [self createModelSingleArrayWithIndex:index
                                           attributeTitle:attrStr
                                           block:nil];
}

- (NSMutableArray *)TestProjectFontDescriptor_fontDescriptorWithMatrix:(NSInteger)index {
    UIFontDescriptor *fontDescriptor = [self.childFontDescriptor fontDescriptorWithMatrix:CGAffineTransformMake(1, 0, 0, 1, 30, 30)];
    NSAttributedString *attrStr = [TestProjectUIFontDescriptor getAttrStringFromFontDescriptor:fontDescriptor];
    return [self createModelSingleArrayWithIndex:index
                                           attributeTitle:attrStr
                                           block:nil];
}

- (NSMutableArray *)TestProjectFontDescriptor_fontDescriptorWithSize:(NSInteger)index {
    UIFontDescriptor *fontDescriptor = [self.childFontDescriptor fontDescriptorWithSize:10];
    NSAttributedString *attrStr = [TestProjectUIFontDescriptor getAttrStringFromFontDescriptor:fontDescriptor];
    return [self createModelSingleArrayWithIndex:index
                                           attributeTitle:attrStr
                                           block:nil];
}

- (NSMutableArray *)TestProjectFontDescriptor_fontDescriptorByAddingAttributes:(NSInteger)index {
    UIFontDescriptor *fontDescriptor = [self.childFontDescriptor fontDescriptorByAddingAttributes:@{UIFontDescriptorNameAttribute:@".SFUI-Semibold"}];
    NSAttributedString *attrStr = [TestProjectUIFontDescriptor getAttrStringFromFontDescriptor:fontDescriptor];
    return [self createModelSingleArrayWithIndex:index
                                           attributeTitle:attrStr
                                           block:nil];
}

- (NSMutableArray *)TestProjectFontDescriptor_alloc_initWithFontAttributes:(NSInteger)index {
    UIFontDescriptor *fontDescriptor = [[UIFontDescriptor alloc] initWithFontAttributes:@{UIFontDescriptorNameAttribute:@".SFUI-Semibold"}];
    NSAttributedString *attrStr = [TestProjectUIFontDescriptor getAttrStringFromFontDescriptor:fontDescriptor];
    return [self createModelSingleArrayWithIndex:index
                                           attributeTitle:attrStr
                                           block:nil];
}

- (NSMutableArray *)TestProjectFontDescriptor_class_preferredFontDescriptorWithTextStyle_compatibleWithTraitCollection:(NSInteger)index {
    UIFontDescriptor *fontDescriptor = [UIFontDescriptor preferredFontDescriptorWithTextStyle:UIFontTextStyleCaption2 compatibleWithTraitCollection:self.traitCollection];
    NSAttributedString *attrStr = [TestProjectUIFontDescriptor getAttrStringFromFontDescriptor:fontDescriptor];
    return [self createModelSingleArrayWithIndex:index
                                           attributeTitle:attrStr
                                           block:nil];
}

- (NSMutableArray *)TestProjectFontDescriptor_class_preferredFontDescriptorWithTextStyle:(NSInteger)index {
    NSArray *arr = [self getUIFontTextStyle];
    for (NSDictionary *dic in arr) {
        UIFontTextStyle style = dic[@"style"];
        UIFontDescriptor *fontDescriptor = [UIFontDescriptor preferredFontDescriptorWithTextStyle:style];
        NSAttributedString *attrStr = [TestProjectUIFontDescriptor getAttrStringFromFontDescriptor:fontDescriptor];
        [self createModelWithIndex:index
                    attributeTitle:attrStr
                             block:nil];
    }
    return self.dataMutArr;
}

- (NSMutableArray *)TestProjectFontDescriptor_class_fontDescriptorWithName_matrix:(NSInteger)index {
    UIFontDescriptor *fontDescriptor = [UIFontDescriptor fontDescriptorWithName:UIFontDescriptorMatrixAttribute matrix:CGAffineTransformMake(1, 0, 0, 1, 30, 30)];
    NSAttributedString *attrStr = [TestProjectUIFontDescriptor getAttrStringFromFontDescriptor:fontDescriptor];
    return [self createModelSingleArrayWithIndex:index
                                           attributeTitle:attrStr
                                           block:nil];
}

- (NSMutableArray *)TestProjectFontDescriptor_class_fontDescriptorWithName_size:(NSInteger)index {
    UIFontDescriptor *fontDescriptor = [UIFontDescriptor fontDescriptorWithName:UIFontDescriptorSizeAttribute size:50];
    NSAttributedString *attrStr = [TestProjectUIFontDescriptor getAttrStringFromFontDescriptor:fontDescriptor];
    return [self createModelSingleArrayWithIndex:index
                                           attributeTitle:attrStr
                                           block:nil];
}

- (NSMutableArray *)TestProjectFontDescriptor_class_fontDescriptorWithFontAttributes:(NSInteger)index {
    UIFontDescriptor *fontDescriptor = [UIFontDescriptor fontDescriptorWithFontAttributes:@{UIFontDescriptorNameAttribute:@".SFUI-Semibold"}];
    NSAttributedString *attrStr = [TestProjectUIFontDescriptor getAttrStringFromFontDescriptor:fontDescriptor];
    return [self createModelSingleArrayWithIndex:index
                                           attributeTitle:attrStr
                                           block:nil];
}

- (NSMutableArray *)TestProjectFontDescriptor_matchingFontDescriptorsWithMandatoryKeys:(NSInteger)index {
    NSArray *arr = [self getUIFontDescriptorAttributeName];
    NSSet<UIFontDescriptorAttributeName> *names = [NSSet set];
    for (NSDictionary *dic in arr) {
        UIFontDescriptorAttributeName vaule = dic[@"value"];
        [names setByAddingObject:vaule];
    }
    NSArray *result = [self.childFontDescriptor matchingFontDescriptorsWithMandatoryKeys:names];
    return [self createModelSingleArrayWithIndex:index
                                           title:[NSString stringWithFormat:@"%@", result]
                                           block:nil];
}

- (NSMutableArray *)TestProjectFontDescriptor_property_fontAttributes:(NSInteger)index {
    return [self createModelSingleArrayWithIndex:index
                                        property:@"fontAttributes"
                                           value:nil
                                       operation:TestProjectCreateModelGetBeforeClickGet
                                           block:nil];
}

//UIKIT_EXTERN UIFontDescriptorAttributeName const UIFontDescriptorFamilyAttribute API_AVAILABLE(ios(7.0));
//UIKIT_EXTERN UIFontDescriptorAttributeName const UIFontDescriptorNameAttribute API_AVAILABLE(ios(7.0));
//UIKIT_EXTERN UIFontDescriptorAttributeName const UIFontDescriptorFaceAttribute API_AVAILABLE(ios(7.0));
//UIKIT_EXTERN UIFontDescriptorAttributeName const UIFontDescriptorSizeAttribute API_AVAILABLE(ios(7.0));
//UIKIT_EXTERN UIFontDescriptorAttributeName const UIFontDescriptorVisibleNameAttribute API_AVAILABLE(ios(7.0));
//
//UIKIT_EXTERN UIFontDescriptorAttributeName const UIFontDescriptorMatrixAttribute API_AVAILABLE(ios(7.0)); // An NSValue containing a CGAffineTransform. (default: identity matrix)
//UIKIT_EXTERN UIFontDescriptorAttributeName const UIFontDescriptorCharacterSetAttribute API_AVAILABLE(ios(7.0)); // An NSCharacterSet instance representing a set of Unicode characters covered by the font. (default: supplied by font)
//UIKIT_EXTERN UIFontDescriptorAttributeName const UIFontDescriptorCascadeListAttribute API_AVAILABLE(ios(7.0)); // An NSArray instance. Each member of the array is a sub-descriptor. (default: the system default cascading list for user's locale)
//UIKIT_EXTERN UIFontDescriptorAttributeName const UIFontDescriptorTraitsAttribute API_AVAILABLE(ios(7.0)); // An NSDictionary instance fully describing font traits. (default: supplied by font)
//UIKIT_EXTERN UIFontDescriptorAttributeName const UIFontDescriptorFixedAdvanceAttribute API_AVAILABLE(ios(7.0)); // A float represented as an NSNumber. The value overrides glyph advancement specified by the font. (default: supplied by each glyph)
//UIKIT_EXTERN UIFontDescriptorAttributeName const UIFontDescriptorFeatureSettingsAttribute API_AVAILABLE(ios(7.0)); // An array of dictionaries representing non-default font feature settings. Each dictionary contains UIFontFeatureTypeIdentifierKey and UIFontFeatureSelectorIdentifierKey.
//
//// An NSString containing the desired Text Style
//UIKIT_EXTERN UIFontDescriptorAttributeName const UIFontDescriptorTextStyleAttribute API_AVAILABLE(ios(7.0));

- (NSArray *)getUIFontDescriptorAttributeName {
    return @[
        @{
            @"title": @"设置的属性值是UIFontDescriptorFamilyAttribute",
            @"value": UIFontDescriptorFamilyAttribute,
        },
        @{
            @"title": @"设置的属性值是UIFontDescriptorNameAttribute",
            @"value": UIFontDescriptorNameAttribute,
        },
        @{
            @"title": @"设置的属性值是UIFontDescriptorFaceAttribute",
            @"value": UIFontDescriptorFaceAttribute,
        },
        @{
            @"title": @"设置的属性值是UIFontDescriptorSizeAttribute",
            @"value": UIFontDescriptorSizeAttribute,
        },
        @{
            @"title": @"设置的属性值是UIFontDescriptorVisibleNameAttribute",
            @"value": UIFontDescriptorVisibleNameAttribute,
        },
        @{
            @"title": @"设置的属性值是UIFontDescriptorMatrixAttribute",
            @"value": UIFontDescriptorMatrixAttribute,
        },
        @{
            @"title": @"设置的属性值是UIFontDescriptorCharacterSetAttribute",
            @"value": UIFontDescriptorCharacterSetAttribute,
        },
        @{
            @"title": @"设置的属性值是UIFontDescriptorCascadeListAttribute",
            @"value": UIFontDescriptorCascadeListAttribute,
        },
        @{
            @"title": @"设置的属性值是UIFontDescriptorTraitsAttribute",
            @"value": UIFontDescriptorTraitsAttribute,
        },
        @{
            @"title": @"设置的属性值是UIFontDescriptorFixedAdvanceAttribute",
            @"value": UIFontDescriptorFixedAdvanceAttribute,
        },
        @{
            @"title": @"设置的属性值是UIFontDescriptorFeatureSettingsAttribute",
            @"value": UIFontDescriptorFeatureSettingsAttribute,
        },
        @{
            @"title": @"设置的属性值是UIFontDescriptorTextStyleAttribute",
            @"value": UIFontDescriptorTextStyleAttribute,
        },
    ];
}

- (NSMutableArray *)TestProjectFontDescriptor_objectForKey:(NSInteger)index {
    NSArray *arr = [self getUIFontDescriptorAttributeName];
    for (NSDictionary *dic in arr) {
        NSString *title = dic[@"title"];
        UIFontDescriptorAttributeName value = dic[@"value"];
        [self createModelWithIndex:index
                             title:[NSString stringWithFormat:@"%@\n%@", title, [self.childFontDescriptor objectForKey:value]]
                             block:nil];
    }
    return self.dataMutArr;
}

- (NSMutableArray *)TestProjectFontDescriptor_property_symbolicTraits:(NSInteger)index {
    return [self createModelSingleArrayWithIndex:index
                                        property:@"symbolicTraits"
                                           value:nil
                                       operation:TestProjectCreateModelGetBeforeClickGet
                                           block:nil];
}

- (NSMutableArray *)TestProjectFontDescriptor_property_matrix:(NSInteger)index {
    return [self createModelSingleArrayWithIndex:index
                                        property:@"matrix"
                                           value:nil
                                       operation:TestProjectCreateModelGetBeforeClickGet
                                           block:nil];
}

- (NSMutableArray *)TestProjectFontDescriptor_property_pointSize:(NSInteger)index {
    return [self createModelSingleArrayWithIndex:index
                                        property:@"pointSize"
                                           value:nil
                                       operation:TestProjectCreateModelGetBeforeClickGet
                                           block:nil];
}

- (NSMutableArray *)TestProjectFontDescriptor_property_postscriptName:(NSInteger)index {
    return [self createModelSingleArrayWithIndex:index
                                        property:@"postscriptName"
                                           value:nil
                                       operation:TestProjectCreateModelGetBeforeClickGet
                                           block:nil];
}

@end
