//
//  TestProjectAttributeStringKit.m
//  TestProjectIOS
//
//  Created by zjrcumac on 2023/3/3.
//

#import "TestProjectAttributeStringKit.h"

@interface TestProjectAttributeStringKit ()

@end

@implementation TestProjectAttributeStringKit

- (NSDictionary *)method_1 {
    return @{
        @"dataModel": @{
            @"abstract": @"设置attrText的字体 \n value 是UIFont",
            @"title": @"NSFontAttributeName",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"modelClass": TestProjectAttributeStringFoundationModel.class,
                @"childItems": [self TestProjectAttributeStringKit_key_NSFontAttributeName],
                @"compareViewModel": self.compareViewModel,
            }
        },
    };
}

- (NSDictionary *)method_2 {
    return @{
        @"dataModel": @{
            @"abstract": @"设置attrText的段落样式 \n value 是NSParagraphStyle",
            @"title": @"NSParagraphStyleAttributeName",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"modelClass": TestProjectAttributeStringFoundationModel.class,
                @"childItems": [self TestProjectAttributeStringKit_key_NSParagraphStyleAttributeName],
                @"compareViewModel": self.compareViewModel,
            }
        },
    };
}

- (NSDictionary *)method_3 {
    return @{
        @"dataModel": @{
            @"abstract": @"设置attrText的字体颜色 \n value 是UIColor",
            @"title": @"NSForegroundColorAttributeName",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"modelClass": TestProjectAttributeStringFoundationModel.class,
                @"childItems": [self TestProjectAttributeStringKit_key_NSForegroundColorAttributeName],
                @"compareViewModel": self.compareViewModel,
            }
        },
    };
}

- (NSDictionary *)method_4 {
    return @{
        @"dataModel": @{
            @"abstract": @"设置attrText的字体背景颜色 \n value 是UIColor",
            @"title": @"NSBackgroundColorAttributeName",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"modelClass": TestProjectAttributeStringFoundationModel.class,
                @"childItems": [self TestProjectAttributeStringKit_key_NSBackgroundColorAttributeName],
                @"compareViewModel": self.compareViewModel,
            }
        },
    };
}

- (NSDictionary *)method_5 {
    return @{
        @"dataModel": @{
            @"abstract": @"设置attrText的字体的连体样式 \n value 是NSNumber",
            @"title": @"NSLigatureAttributeName",
            @"desc": @"value 0表示没有连体字符，1表示使用默认的联通字符，一般中文用不到，在英文中可能出现相邻的字母连笔的情况",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"modelClass": TestProjectAttributeStringFoundationModel.class,
                @"childItems": [self TestProjectAttributeStringKit_key_NSLigatureAttributeName],
                @"compareViewModel": self.compareViewModel,
            }
        },
    };
}

- (NSDictionary *)method_6 {
    return @{
        @"dataModel": @{
            @"abstract": @"设置attrText的字间距属性 \n value 是NSNumber 默认值为0",
            @"title": @"NSKernAttributeName",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"modelClass": TestProjectAttributeStringFoundationModel.class,
                @"childItems": [self TestProjectAttributeStringKit_key_NSKernAttributeName],
                @"compareViewModel": self.compareViewModel,
            }
        },
    };
}

- (NSDictionary *)method_7 {
    return @{
        @"dataModel": @{
            @"abstract": @"设置attrText的字间距属性 \n value 是NSNumber 默认值为0",
            @"title": @"NSTrackingAttributeName",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"modelClass": TestProjectAttributeStringFoundationModel.class,
                @"childItems": [self TestProjectAttributeStringKit_key_NSTrackingAttributeName],
                @"compareViewModel": self.compareViewModel,
            }
        },
    };
}

- (NSDictionary *)method_8 {
    return @{
        @"dataModel": @{
            @"abstract": @"设置attrText的删除线 \n value 是NSNumber 默认值为0",
            @"title": @"NSStrikethroughStyleAttributeName",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"modelClass": TestProjectAttributeStringFoundationModel.class,
                @"childItems": [self TestProjectAttributeStringKit_key_NSStrikethroughStyleAttributeName],
                @"compareViewModel": self.compareViewModel,
            }
        },
    };
}

- (NSDictionary *)method_9 {
    return @{
        @"dataModel": @{
            @"abstract": @"设置attrText的下划线 \n value 是NSNumber 默认值为0",
            @"title": @"NSUnderlineStyleAttributeName",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"modelClass": TestProjectAttributeStringFoundationModel.class,
                @"childItems": [self TestProjectAttributeStringKit_key_NSUnderlineStyleAttributeName],
                @"compareViewModel": self.compareViewModel,
            }
        },
    };
}

- (NSDictionary *)method_10 {
    return @{
        @"dataModel": @{
            @"abstract": @"设置attrText的文字描边颜色，必须和NSStrokeWidthAttributeName配合使用才有用 \n value 是UIColor 默认值为UIColor",
            @"title": @"NSStrokeColorAttributeName",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"modelClass": TestProjectAttributeStringFoundationModel.class,
                @"childItems": [self TestProjectAttributeStringKit_key_NSStrokeColorAttributeName],
                @"compareViewModel": self.compareViewModel,
            }
        },
    };
}

- (NSDictionary *)method_11 {
    return @{
        @"dataModel": @{
            @"abstract": @"设置attrText的设置attrText的文字描边宽度 \n value 是NSNumber 默认值为0",
            @"title": @"NSStrokeWidthAttributeName",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"modelClass": TestProjectAttributeStringFoundationModel.class,
                @"childItems": [self TestProjectAttributeStringKit_key_NSStrokeWidthAttributeName],
                @"compareViewModel": self.compareViewModel,
            }
        },
    };
}

- (NSDictionary *)method_12 {
    return @{
        @"dataModel": @{
            @"abstract": @"设置attrText的字体阴影 \n value 是NSShadow",
            @"title": @"NSShadowAttributeName",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"modelClass": TestProjectAttributeStringFoundationModel.class,
                @"childItems": [self TestProjectAttributeStringKit_key_NSShadowAttributeName],
                @"compareViewModel": self.compareViewModel,
            }
        },
    };
}

- (NSDictionary *)method_13 {
    return @{
        @"dataModel": @{
            @"abstract": @"设置attrText的文本的特殊印刷效果 \n value 只有一种印刷效果NSTextEffectLetterpressStyle",
            @"title": @"NSTextEffectAttributeName",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"modelClass": TestProjectAttributeStringFoundationModel.class,
                @"childItems": [self TestProjectAttributeStringKit_key_NSTextEffectAttributeName],
                @"compareViewModel": self.compareViewModel,
            }
        },
    };
}

- (NSDictionary *)method_14 {
    return @{
        @"dataModel": @{
            @"abstract": @"设置attrText的图文混排 通过attributedStringWithAttachment方式设置 \n value NSTextAttachment",
            @"title": @"NSAttachmentAttributeName",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"modelClass": TestProjectAttributeStringFoundationModel.class,
                @"childItems": [self TestProjectAttributeStringKit_key_NSAttachmentAttributeName],
                @"compareViewModel": self.compareViewModel,
            }
        },
    };
}

- (NSDictionary *)method_15 {
    return @{
        @"dataModel": @{
            @"abstract": @"设置attrText的链接效果 \n value NSURL ",
            @"title": @"NSLinkAttributeName",
            @"desc": @"这个只能UITextView可用UITextView的代理方法中shouldInteractWithURL返回true可用",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"modelClass": TestProjectAttributeStringFoundationModel.class,
                @"childItems": [self TestProjectAttributeStringKit_key_NSLinkAttributeName],
                @"compareViewModel": self.compareViewModel,
            }
        },
    };
}

- (NSDictionary *)method_16 {
    return @{
        @"dataModel": @{
            @"abstract": @"设置attrText的文本基线偏移值 \n value NSNumber",
            @"title": @"NSBaselineOffsetAttributeName",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"modelClass": TestProjectAttributeStringFoundationModel.class,
                @"childItems": [self TestProjectAttributeStringKit_key_NSBaselineOffsetAttributeName],
                @"compareViewModel": self.compareViewModel,
            }
        },
    };
}

- (NSDictionary *)method_17 {
    return @{
        @"dataModel": @{
            @"abstract": @"设置下划线颜色得配合NSUnderlineStyleAttributeName使用 \n value UIColor",
            @"title": @"NSUnderlineColorAttributeName",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"modelClass": TestProjectAttributeStringFoundationModel.class,
                @"childItems": [self TestProjectAttributeStringKit_key_NSUnderlineColorAttributeName],
                @"compareViewModel": self.compareViewModel,
            }
        },
    };
}

- (NSDictionary *)method_18 {
    return @{
        @"dataModel": @{
            @"abstract": @"设置删除线线颜色得配合NSStrikethroughStyleAttributeName使用 \n value UIColor",
            @"title": @"NSStrikethroughColorAttributeName",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"modelClass": TestProjectAttributeStringFoundationModel.class,
                @"childItems": [self TestProjectAttributeStringKit_key_NSStrikethroughColorAttributeName],
                @"compareViewModel": self.compareViewModel,
            }
        },
    };
}

- (NSDictionary *)method_19 {
    return @{
        @"dataModel": @{
            @"abstract": @"设置attrText的斜体 \n value NSNumber 正的往左边倾斜，负的往右边倾斜",
            @"title": @"NSObliquenessAttributeName",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"modelClass": TestProjectAttributeStringFoundationModel.class,
                @"childItems": [self TestProjectAttributeStringKit_key_NSObliquenessAttributeName],
                @"compareViewModel": self.compareViewModel,
            }
        },
    };
}

- (NSDictionary *)method_20 {
    return @{
        @"dataModel": @{
            @"abstract": @"设置attrText的文本的伸缩 \n value NSNumber 正的拉伸，负的压缩",
            @"title": @"NSExpansionAttributeName",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"modelClass": TestProjectAttributeStringFoundationModel.class,
                @"childItems": [self TestProjectAttributeStringKit_key_NSExpansionAttributeName],
                @"compareViewModel": self.compareViewModel,
            }
        },
    };
}

- (NSDictionary *)method_21 {
    return @{
        @"dataModel": @{
            @"abstract": @"设置attrText的文本的书写方向，默认是左到右 \n value NSarray[NSNumber]",
            @"title": @"NSWritingDirectionAttributeName",
            @"desc": @"NSWritingDirectionLeftToRight从左到右书写，NSWritingDirectionRightToLeft从右到左书写",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"modelClass": TestProjectAttributeStringFoundationModel.class,
                @"childItems": [self TestProjectAttributeStringKit_key_NSWritingDirectionAttributeName],
                @"compareViewModel": self.compareViewModel,
            }
        },
    };
}

- (NSDictionary *)method_22 {
    return @{
        @"dataModel": @{
            @"abstract": @"设置attrText的文本的排版 \n value NSNumber",
            @"title": @"NSVerticalGlyphFormAttributeName",
            @"desc": @"value 0表示水平，1表示垂直，但在iOS中，只能以横向排版 \n 搜素这个方法[fixAttributesInRange], 设置1的时候，英文的方向是横着的",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"modelClass": TestProjectAttributeStringFoundationModel.class,
                @"childItems": [self TestProjectAttributeStringKit_key_NSVerticalGlyphFormAttributeName],
                @"compareViewModel": self.compareViewModel,
            }
        },
    };
}

- (NSMutableArray *)TestProjectAttributeStringKit_key_NSVerticalGlyphFormAttributeName {
    NSArray *arr = @[@1, @0];
    for (NSNumber *num in arr) {
        TestProjectAttributeStringFoundationModel *m = [self createAttrStrModelWithAttributes:@{NSVerticalGlyphFormAttributeName:num}];
        m.desc = [NSString stringWithFormat:@"设置的是@{NSVerticalGlyphFormAttributeName: @%ld} \n attrText:%@", num.integerValue, m.titleMutAttrStr];
        [m calculDataViewHeight];
    }

    return self.dataMutArr;
}

- (NSMutableArray *)TestProjectAttributeStringKit_key_NSWritingDirectionAttributeName {
    NSArray *arr = @[
        @{
            @"title": @"这个文字方向是从左到右展示",
            @"value": @[@(NSWritingDirectionLeftToRight | NSWritingDirectionEmbedding)],
            @"stringValue": @"NSWritingDirectionLeftToRight | NSWritingDirectionEmbedding",
        },
        @{
            @"title": @"这个文字方向是从左到右展示",
            @"value": @[@(NSWritingDirectionLeftToRight | NSWritingDirectionOverride)],
            @"stringValue": @"NSWritingDirectionLeftToRight | NSWritingDirectionOverride",
        },
        @{
            @"title": @"这个文字方向是从左到右展示",
            @"value": @[@(NSWritingDirectionRightToLeft | NSWritingDirectionEmbedding)],
            @"stringValue": @"NSWritingDirectionRightToLeft | NSWritingDirectionEmbedding",
        },
        @{
            @"title": @"这个文字方向是从右到左展示",
            @"value": @[@(NSWritingDirectionRightToLeft | NSWritingDirectionOverride)],
            @"stringValue": @"NSWritingDirectionRightToLeft | NSWritingDirectionOverride",
        },
    ];
    for (NSDictionary *dic in arr) {
        NSString *title = dic[@"title"];
        NSString *stringValue = dic[@"stringValue"];
        NSArray *value = dic[@"value"];
        TestProjectAttributeStringFoundationModel *m = [self createAttrStrModelWithAttributes:@{NSWritingDirectionAttributeName:value}];
        m.desc = [NSString stringWithFormat:@"%@\n设置的是@{NSWritingDirectionAttributeName: @(%@-%@)} \n attrText:%@", title, stringValue, value, m.titleMutAttrStr];
        [m calculDataViewHeight];
    }

    return self.dataMutArr;
}

- (NSMutableArray *)TestProjectAttributeStringKit_key_NSExpansionAttributeName {
    NSArray *arr = @[@1, @-1];
    for (NSNumber *num in arr) {
        TestProjectAttributeStringFoundationModel *m = [self createAttrStrModelWithAttributes:@{NSExpansionAttributeName:num}];
        m.desc = [NSString stringWithFormat:@"设置的是@{NSExpansionAttributeName: @%ld} \n attrText:%@", num.integerValue, m.titleMutAttrStr];
        [m calculDataViewHeight];
    }

    return self.dataMutArr;
}

- (NSMutableArray *)TestProjectAttributeStringKit_key_NSObliquenessAttributeName {
    NSArray *arr = @[@1, @-1];
    for (NSNumber *num in arr) {
        TestProjectAttributeStringFoundationModel *m = [self createAttrStrModelWithAttributes:@{NSObliquenessAttributeName:num}];
        m.desc = [NSString stringWithFormat:@"设置的是@{NSObliquenessAttributeName: @%ld} \n attrText:%@", num.integerValue, m.titleMutAttrStr];
        [m calculDataViewHeight];
    }
    
    return self.dataMutArr;
}

- (NSMutableArray *)TestProjectAttributeStringKit_key_NSStrikethroughColorAttributeName {
    TestProjectAttributeStringFoundationModel *m = [self createAttrStrModelWithAttributes:@{NSStrikethroughColorAttributeName: [UIColor colorFromString:@"#ff0000"], NSStrikethroughStyleAttributeName: [NSNumber numberWithInteger:NSUnderlineStyleSingle | NSUnderlinePatternDashDot], NSBaselineOffsetAttributeName:@0}];
    m.desc = [NSString stringWithFormat:@"设置的是@{NSStrikethroughColorAttributeName: [UIColor colorFromString:@\"#33ffff\"]} \n attrText:%@", m.titleMutAttrStr];
    [m calculDataViewHeight];

    return self.dataMutArr;
}

- (NSMutableArray *)TestProjectAttributeStringKit_key_NSUnderlineColorAttributeName {
    TestProjectAttributeStringFoundationModel *m = [self createAttrStrModelWithAttributes:@{NSUnderlineColorAttributeName: [UIColor colorFromString:@"#33ffff"], NSUnderlineStyleAttributeName: @(NSUnderlineStyleDouble)}];
    m.desc = [NSString stringWithFormat:@"设置的是@{NSUnderlineColorAttributeName: [UIColor colorFromString:@\"#33ffff\"]} \n attrText:%@", m.titleMutAttrStr];
    [m calculDataViewHeight];

    return self.dataMutArr;
}

- (NSMutableArray *)TestProjectAttributeStringKit_key_NSBaselineOffsetAttributeName {
    NSArray *arr = @[@10, @-10, @100, @-100];
    for (NSNumber *num in arr) {
        TestProjectAttributeStringFoundationModel *m = [self createAttrStrModelWithAttributes:@{NSBackgroundColorAttributeName: [UIColor colorFromString:@"#ff0000"], NSBaselineOffsetAttributeName:num}];
        m.desc = [NSString stringWithFormat:@"设置的是@{NSBaselineOffsetAttributeName: %ld} \n attrText:%@", num.integerValue, m.titleMutAttrStr];
        [m calculDataViewHeight];
    }
    return self.dataMutArr;
}

- (NSMutableArray *)TestProjectAttributeStringKit_key_NSLinkAttributeName {
    TestProjectAttributeStringFoundationModel *m = [self createAttrStrModelWithAttributes:@{NSLinkAttributeName: [NSURL URLWithString:@"https://www.baidu.com"]}];
    m.desc = [NSString stringWithFormat:@"设置的是@{NSLinkAttributeName: [NSURL URLWithString:@\"https://www.baidu.com\"]} \n attrText:%@", m.titleMutAttrStr];
    [m calculDataViewHeight];

    return self.dataMutArr;
}

- (NSMutableArray *)TestProjectAttributeStringKit_key_NSAttachmentAttributeName {
    NSTextAttachment *attachment = [[NSTextAttachment alloc] init];
    attachment.image = [UIImage imageNamed:@"lyf_1"];
    attachment.bounds = CGRectMake(0, 0, 100, 50);
    TestProjectAttributeStringFoundationModel *m = [self createAttrStrModelWithAttributes:nil];
    NSAttributedString *attachmentAttrText = [NSAttributedString attributedStringWithAttachment:attachment];
    [m.titleMutAttrStr appendAttributedString:attachmentAttrText];
    m.desc = [NSString stringWithFormat:@"设置图片的attachment \n attrText:%@", m.titleMutAttrStr];
    [m calculDataViewHeight];

    return self.dataMutArr;
}

- (NSMutableArray *)TestProjectAttributeStringKit_key_NSTextEffectAttributeName {
    TestProjectAttributeStringFoundationModel *m = [self createAttrStrModelWithAttributes:@{NSTextEffectAttributeName: NSTextEffectLetterpressStyle}];
    m.desc = [NSString stringWithFormat:@"设置的是@{NSTextEffectAttributeName: NSTextEffectLetterpressStyle} \n attrText:%@", m.titleMutAttrStr];
    [m calculDataViewHeight];

    return self.dataMutArr;
}

- (NSMutableArray *)TestProjectAttributeStringKit_key_NSShadowAttributeName {
    NSShadow *shadow = [[NSShadow alloc] init];
    //模糊度
    shadow.shadowBlurRadius = 5;
    shadow.shadowColor = [UIColor redColor];
    shadow.shadowOffset = CGSizeMake(5, 5);
    
    NSArray *arr = @[
        @{
            @"title": @"设置的是并且是横排",
            @"value": @0,
            @"key": NSVerticalGlyphFormAttributeName,
            @"stringKey": @"NSVerticalGlyphFormAttributeName",
        },
        @{
            @"title": @"设置的字体是倾斜",
            @"value": @1,
            @"key": NSObliquenessAttributeName,
            @"stringKey": @"NSObliquenessAttributeName",
        },
        @{
            @"title": @"设置的文本是扁平化",
            @"value": @1,
            @"key": NSExpansionAttributeName,
            @"stringKey": @"NSExpansionAttributeName",
        },
    ];
    for (NSDictionary *dic in arr) {
        NSString *title = dic[@"title"];
        NSNumber *value = dic[@"value"];
        NSString *key = dic[@"key"];
        NSString *stringKey = dic[@"stringKey"];

        TestProjectAttributeStringFoundationModel *m = [self createAttrStrModelWithAttributes:@{NSShadowAttributeName: shadow, key:value}];
        m.desc = [NSString stringWithFormat:@"shadow是%@ 设置的值@{(%@-%@): %@} 展示的效果是:%@ \n attrText:%@", shadow, stringKey, key, value, title, m.titleMutAttrStr];
        [m calculDataViewHeight];
    }
    return self.dataMutArr;
}

- (NSMutableArray *)TestProjectAttributeStringKit_key_NSStrokeWidthAttributeName {
    NSArray *arr = @[@3, @-3, @100, @-100];
    for (NSNumber *num in arr) {
        TestProjectAttributeStringFoundationModel *m = [self createAttrStrModelWithAttributes:@{NSStrokeColorAttributeName: [UIColor colorFromString:@"#33ffff"], NSStrokeWidthAttributeName:num}];
        m.desc = [NSString stringWithFormat:@"没有设置NSStrokeWidthAttributeName则文字描边无效@{NSStrokeColorAttributeName: [UIColor colorFromString:@\"#33ffff\"]} \n attrText:%@", m.titleMutAttrStr];
        [m calculDataViewHeight];
    }
    return self.dataMutArr;
}

- (NSMutableArray *)TestProjectAttributeStringKit_key_NSStrokeColorAttributeName {
    NSArray *arr = @[@3, @-3, @100, @-100];
    for (NSNumber *num in arr) {
        TestProjectAttributeStringFoundationModel *m = [self createAttrStrModelWithAttributes:@{NSStrokeColorAttributeName: [UIColor colorFromString:@"#33ffff"], NSStrokeWidthAttributeName:num}];
        m.desc = [NSString stringWithFormat:@"没有设置NSStrokeWidthAttributeName则文字描边无效@{NSStrokeColorAttributeName: [UIColor colorFromString:@\"#33ffff\"]} \n attrText:%@", m.titleMutAttrStr];
        [m calculDataViewHeight];
    }
    return self.dataMutArr;
}

- (NSMutableArray *)TestProjectAttributeStringKit_key_set:(NSString *)desc keyStr:(NSString *)keyStr key:(NSAttributedStringKey)key {
    NSArray *arr = @[
        @{
            @"title": [NSString stringWithFormat:@"无%@", desc],
            @"value": @(NSUnderlineStyleNone),
            @"stringKey": @"NSUnderlineStyleNone",
        },
        @{
            @"title": [NSString stringWithFormat:@"有%@但是轻线", desc],
            @"value": @(NSUnderlineStyleSingle),
            @"stringKey": @"NSUnderlineStyleSingle",
        },
        @{
            @"title": [NSString stringWithFormat:@"有%@但是厚线", desc],
            @"value": @(NSUnderlineStyleThick),
            @"stringKey": @"NSUnderlineStyleThick",
        },
        @{
            @"title": [NSString stringWithFormat:@"有%@但是双线", desc],
            @"value": @(NSUnderlineStyleDouble),
            @"stringKey": @"NSUnderlineStyleDouble",
        },
        @{
            @"title": [NSString stringWithFormat:@"有%@但是实心线, 需要设置两个值才能生效", desc],
            @"value": [NSNumber numberWithInteger:NSUnderlineStyleDouble | NSUnderlineStylePatternSolid],
            @"stringKey": @"NSUnderlineStyleDouble | NSUnderlineStylePatternSolid",
        },
        @{
            @"title": [NSString stringWithFormat:@"有%@但是点线, 需要设置两个值才能生效", desc],
            @"value": [NSNumber numberWithInteger:NSUnderlineStyleDouble | NSUnderlineStylePatternDot],
            @"stringKey": @"NSUnderlineStyleDouble | NSUnderlineStylePatternDot",
        },
        @{
            @"title": [NSString stringWithFormat:@"有%@但是虚线, 需要设置两个值才能生效", desc],
            @"value": [NSNumber numberWithInteger:NSUnderlineStyleDouble | NSUnderlineStylePatternDash],
            @"stringKey": @"NSUnderlineStyleDouble | NSUnderlineStylePatternDash",
        },
        @{
            @"title": [NSString stringWithFormat:@"有%@但是虚点点线, 需要设置两个值才能生效", desc],
            @"value": [NSNumber numberWithInteger:NSUnderlineStyleDouble | NSUnderlineStylePatternDashDotDot],
            @"stringKey": @"NSUnderlineStyleDouble | NSUnderlineStylePatternDashDotDot",
        },
        @{
            @"title": [NSString stringWithFormat:@"有%@但是实心线, 需要设置两个值才能生效", desc],
            @"value": [NSNumber numberWithInteger:NSUnderlineStyleDouble | NSUnderlineStyleByWord],
            @"stringKey": @"NSUnderlineStyleDouble | NSUnderlineStyleByWord",
        },
    ];
    for (NSDictionary *dic in arr) {
        NSString *title = dic[@"title"];
        NSString *stringKey = dic[@"stringKey"];
        NSNumber *value = dic[@"value"];
        TestProjectAttributeStringFoundationModel *m = [self createAttrStrModelWithAttributes:@{key: value, NSStrikethroughColorAttributeName: [UIColor colorFromString:@"#00ffff"]}];
        m.desc = [NSString stringWithFormat:@"设置的是%@ @{%@: @(%@-%ld)} \n attrText:%@", title, keyStr, stringKey, value.integerValue, m.titleMutAttrStr];
        [m calculDataViewHeight];
    }
    return self.dataMutArr;

}

- (NSMutableArray *)TestProjectAttributeStringKit_key_NSUnderlineStyleAttributeName {
    return [self TestProjectAttributeStringKit_key_set:@"下滑线" keyStr:@"NSUnderlineStyleAttributeName" key:NSUnderlineStyleAttributeName];
}

- (NSMutableArray *)TestProjectAttributeStringKit_key_NSStrikethroughStyleAttributeName {
    return [self TestProjectAttributeStringKit_key_set:@"删除线" keyStr:@"NSStrikethroughStyleAttributeName" key:NSStrikethroughStyleAttributeName];
}

- (NSMutableArray *)TestProjectAttributeStringKit_key_NSTrackingAttributeName {
    if (@available(iOS 14.0, *)) {
        NSArray *arr = @[@10, @0, @-10];
        for (NSNumber *num in arr) {
            TestProjectAttributeStringFoundationModel *m = [self createAttrStrModelWithAttributes:@{NSTrackingAttributeName: num}];
            m.desc = [NSString stringWithFormat:@"设置的是@{NSTrackingAttributeName: @%ld} attrText:%@", num.integerValue, m.titleMutAttrStr];
            [m calculDataViewHeight];
        }
    }
    return self.dataMutArr;
}

- (NSMutableArray *)TestProjectAttributeStringKit_key_NSKernAttributeName {
    NSArray *arr = @[@0, @1, @-100, @10];
    for (NSNumber *num in arr) {
        TestProjectAttributeStringFoundationModel *m = [self createAttrStrModelWithAttributes:@{NSKernAttributeName: num}];
        m.desc = [NSString stringWithFormat:@"设置的是@{NSKernAttributeName: @%ld} attrText:%@", num.integerValue, m.titleMutAttrStr];
        [m calculDataViewHeight];
    }
    return self.dataMutArr;
}

- (NSMutableArray *)TestProjectAttributeStringKit_key_NSLigatureAttributeName {
    NSArray *arr = @[@0, @1, @-100, @10];
    for (NSNumber *num in arr) {
        TestProjectAttributeStringFoundationModel *m = [self createAttrStrModelWithAttributes:@{NSLigatureAttributeName: num}];
        m.desc = [NSString stringWithFormat:@"设置的是@{NSLigatureAttributeName: @%ld} attrText:%@", num.integerValue, m.titleMutAttrStr];
        [m calculDataViewHeight];
    }
    return self.dataMutArr;
}

- (NSMutableArray *)TestProjectAttributeStringKit_key_NSBackgroundColorAttributeName {
    TestProjectAttributeStringFoundationModel *m = [self createAttrStrModelWithAttributes:@{NSBackgroundColorAttributeName: [UIColor colorFromString:@"#33ffff"]}];
    m.desc = [NSString stringWithFormat:@"设置的是@{NSBackgroundColorAttributeName: [UIColor colorFromString:@\"#33ffff\"]} \n attrText:%@", m.titleMutAttrStr];
    [m calculDataViewHeight];

    return self.dataMutArr;
}

- (NSMutableArray *)TestProjectAttributeStringKit_key_NSForegroundColorAttributeName {
    TestProjectAttributeStringFoundationModel *m = [self createAttrStrModelWithAttributes:@{NSForegroundColorAttributeName: [UIColor colorFromString:@"#33ffff"]}];
    m.desc = [NSString stringWithFormat:@"设置的是@{NSForegroundColorAttributeName: [UIColor colorFromString:@\"#33ffff\"]} \n attrText:%@", m.titleMutAttrStr];
    [m calculDataViewHeight];

    return self.dataMutArr;
}

- (NSMutableArray *)TestProjectAttributeStringKit_key_NSParagraphStyleAttributeName {
    NSParagraphStyle *style = [NSParagraphStyle defaultParagraphStyle];
    TestProjectAttributeStringFoundationModel *m = [self createAttrStrModelWithAttributes:@{NSParagraphStyleAttributeName: style}];
    m.desc = [NSString stringWithFormat:@"设置的是@{NSParagraphStyleAttributeName: [NSParagraphStyle defaultParagraphStyle]} \n attrText:%@", m.titleMutAttrStr];
    [m calculDataViewHeight];

    return self.dataMutArr;
}

- (NSMutableArray *)TestProjectAttributeStringKit_key_NSFontAttributeName {
    TestProjectAttributeStringFoundationModel *m = [self createAttrStrModelWithAttributes:@{NSFontAttributeName: [UIFont systemFontOfSize:40]}];
    m.desc = [NSString stringWithFormat:@"设置的是@{NSFontAttributeName: [UIFont systemFontOfSize:40]} \n attrText:%@", m.titleMutAttrStr];
    [m calculDataViewHeight];

    return self.dataMutArr;
}

@end
