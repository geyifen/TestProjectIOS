//
//  TestProjectAttributeStringKit.m
//  TestProjectIOS
//
//  Created by zjrcumac on 2023/3/3.
//

#import "TestProjectAttributeStringKit.h"

#import "TestProjectAttributeStringFoundationCell.h"

@interface TestProjectAttributeStringKit ()

@property (nonatomic, copy) NSString *firstAttrText;
@property (nonatomic, strong) NSMutableArray *dataMutArr;

@end

@implementation TestProjectAttributeStringKit

- (NSString *)firstAttrText {
    if (!_firstAttrText) {
        _firstAttrText = @"我是第一个段落的开头的数据\n我是第二段的内容数据我是第二段的内容数据我是第二段的内容数据我是第二段的内容数据ABCDEFGHIJKLMNOPQRSTUVWXYZ我是第二段的内容数据我是第二段的内容数据我是第二段的内容数据abggggfffcbbdefghijklmnopqrstuwwwvvvwxyz我是第二段的内容数据我是第二段的内容数据我是第二段的内容数据我是第二段的内容数据我是第二段的内容数据我是第二段的内容数据我是第二段的内容数据\n我是第三段的开头数据";
    }
    return _firstAttrText;
}

- (NSMutableArray *)dataMutArr {
    if (!_dataMutArr) {
        _dataMutArr = [NSMutableArray array];
    }
    return _dataMutArr;
}

- (NSDictionary *)method_1 {
    return @{
        @"NSFontAttributeName":@{
            @"method":@"TestProjectAttributeStringKit_key_NSFontAttributeName",
            @"desc":@"设置attrText的字体 \n value 是UIFont"}
    };
}

- (NSDictionary *)method_2 {
    return @{
        @"NSParagraphStyleAttributeName":@{
            @"method":@"TestProjectAttributeStringKit_key_NSParagraphStyleAttributeName",
            @"desc":@"设置attrText的段落样式 \n value 是NSParagraphStyle"}
    };
}

- (NSDictionary *)method_3 {
    return @{
        @"NSForegroundColorAttributeName":@{
            @"method":@"TestProjectAttributeStringKit_key_NSForegroundColorAttributeName",
            @"desc":@"设置attrText的字体颜色 \n value 是UIColor"}
    };
}

- (NSDictionary *)method_4 {
    return @{
        @"NSBackgroundColorAttributeName":@{
            @"method":@"TestProjectAttributeStringKit_key_NSBackgroundColorAttributeName",
            @"desc":@"设置attrText的字体背景颜色 \n value 是UIColor"}
    };
}

- (NSDictionary *)method_5 {
    return @{
        @"NSLigatureAttributeName":@{
            @"method":@"TestProjectAttributeStringKit_key_NSLigatureAttributeName",
            @"desc":@"设置attrText的字体的连体样式 \n value 是NSNumber 0表示没有连体字符，1表示使用默认的联通字符，一般中文用不到，在英文中可能出现相邻的字母连笔的情况"}
    };
}

- (NSDictionary *)method_6 {
    return @{
        @"NSKernAttributeName":@{
            @"method":@"TestProjectAttributeStringKit_key_NSKernAttributeName",
            @"desc":@"设置attrText的字间距属性 \n value 是NSNumber 默认值为0"}
    };
}

- (NSDictionary *)method_7 {
    return @{
        @"NSTrackingAttributeName":@{
            @"method":@"TestProjectAttributeStringKit_key_NSTrackingAttributeName",
            @"desc":@"设置attrText的字间距属性 \n value 是NSNumber 默认值为0"}
    };
}

- (NSDictionary *)method_8 {
    return @{
        @"NSStrikethroughStyleAttributeName":@{
            @"method":@"TestProjectAttributeStringKit_key_NSStrikethroughStyleAttributeName",
            @"desc":@"设置attrText的删除线 \n value 是NSNumber 默认值为0"}
    };
}

- (NSDictionary *)method_9 {
    return @{
        @"NSUnderlineStyleAttributeName":@{
            @"method":@"TestProjectAttributeStringKit_key_NSUnderlineStyleAttributeName",
            @"desc":@"设置attrText的下划线 \n value 是NSNumber 默认值为0"}
    };
}

- (NSDictionary *)method_10 {
    return @{
        @"NSStrokeColorAttributeName":@{
            @"method":@"TestProjectAttributeStringKit_key_NSStrokeColorAttributeName",
            @"desc":@"设置attrText的文字描边颜色，必须和NSStrokeWidthAttributeName配合使用才有用 \n value 是UIColor 默认值为UIColor"}
    };
}

- (NSDictionary *)method_11 {
    return @{
        @"NSStrokeWidthAttributeName":@{
            @"method":@"TestProjectAttributeStringKit_key_NSStrokeWidthAttributeName",
            @"desc":@"设置attrText的设置attrText的文字描边宽度 \n value 是NSNumber 默认值为0"}
    };
}

- (NSDictionary *)method_12 {
    return @{
        @"NSShadowAttributeName":@{
            @"method":@"TestProjectAttributeStringKit_key_NSShadowAttributeName",
            @"desc":@"设置attrText的字体阴影 \n value 是NSShadow"}
    };
}

- (NSDictionary *)method_13 {
    return @{
        @"NSTextEffectAttributeName":@{
            @"method":@"TestProjectAttributeStringKit_key_NSTextEffectAttributeName",
            @"desc":@"设置attrText的文本的特殊印刷效果 \n value 只有一种印刷效果NSTextEffectLetterpressStyle"}
    };
}

- (NSDictionary *)method_14 {
    return @{
        @"NSAttachmentAttributeName":@{
            @"method":@"TestProjectAttributeStringKit_key_NSAttachmentAttributeName",
            @"desc":@"设置attrText的图文混排 通过attributedStringWithAttachment方式设置 \n value NSTextAttachment"}
    };
}

- (NSDictionary *)method_15 {
    return @{
        @"NSLinkAttributeName":@{
            @"method":@"TestProjectAttributeStringKit_key_NSLinkAttributeName",
            @"desc":@"设置attrText的链接效果 \n value NSURL \n 这个只能UITextView可用UITextView的代理方法中shouldInteractWithURL返回true可用"}
    };
}

- (NSDictionary *)method_16 {
    return @{
        @"NSBaselineOffsetAttributeName":@{
            @"method":@"TestProjectAttributeStringKit_key_NSBaselineOffsetAttributeName",
            @"desc":@"设置attrText的文本基线偏移值 \n value NSNumber"}
    };
}

- (NSDictionary *)method_17 {
    return @{
        @"NSUnderlineColorAttributeName":@{
            @"method":@"TestProjectAttributeStringKit_key_NSUnderlineColorAttributeName",
            @"desc":@"设置下划线颜色得配合NSUnderlineStyleAttributeName使用 \n value UIColor"}
    };
}

- (NSDictionary *)method_18 {
    return @{
        @"NSStrikethroughColorAttributeName":@{
            @"method":@"TestProjectAttributeStringKit_key_NSStrikethroughColorAttributeName",
            @"desc":@"设置删除线线颜色得配合NSStrikethroughStyleAttributeName使用 \n value UIColor"}
    };
}

- (NSDictionary *)method_19 {
    return @{
        @"NSObliquenessAttributeName":@{
            @"method":@"TestProjectAttributeStringKit_key_NSObliquenessAttributeName",
            @"desc":@"设置attrText的斜体 \n value NSNumber 正的往左边倾斜，负的往右边倾斜"}
    };
}

- (NSDictionary *)method_20 {
    return @{
        @"NSExpansionAttributeName":@{
            @"method":@"TestProjectAttributeStringKit_key_NSExpansionAttributeName",
            @"desc":@"设置attrText的文本的伸缩 \n value NSNumber 正的拉伸，负的压缩"}
    };
}

- (NSDictionary *)method_21 {
    return @{
        @"NSWritingDirectionAttributeName":@{
            @"method":@"TestProjectAttributeStringKit_key_NSWritingDirectionAttributeName",
            @"desc":@"设置attrText的文本的书写方向，默认是 \n value NSarray[NSNumber] NSWritingDirectionLeftToRight从左到右书写，NSWritingDirectionRightToLeft从右到左书写"}
    };
}

- (NSDictionary *)method_22 {
    return @{
        @"NSVerticalGlyphFormAttributeName":@{
            @"method":@"TestProjectAttributeStringKit_key_NSVerticalGlyphFormAttributeName",
            @"desc":@"设置attrText的文本的排版 \n value NSNumber \n 0表示水平，1表示垂直，但在iOS中，只能以横向排版 \n 搜素这个方法[fixAttributesInRange], 设置1的时候，英文的方向是横着的"}
    };
}

- (TestProjectAttributeStringFoundationModel *)createAttrStrModelWith:(NSDictionary *)keyValue {
    TestProjectAttributeStringFoundationModel *attrStrModel = [[TestProjectAttributeStringFoundationModel alloc] init];
    NSAttributedString *firstAttrStr = [[NSAttributedString alloc] initWithString:self.firstAttrText attributes:keyValue];

    attrStrModel.titleMutAttrStr = [[NSMutableAttributedString alloc] initWithAttributedString:firstAttrStr];
    [self.dataMutArr addObject:attrStrModel];
    return attrStrModel;
}

- (void)TestProjectAttributeStringKit_key_NSVerticalGlyphFormAttributeName {
    TestProjectAttributeStringFoundationModel *m1 = [self createAttrStrModelWith:@{NSVerticalGlyphFormAttributeName: @1}];
    m1.desc = [NSString stringWithFormat:@"设置的是@{NSVerticalGlyphFormAttributeName: @1} \n attrText:%@", m1.titleMutAttrStr];
    
    TestProjectAttributeStringFoundationModel *m2 = [self createAttrStrModelWith:@{NSVerticalGlyphFormAttributeName: @0}];
    m2.desc = [NSString stringWithFormat:@"设置的是@{NSVerticalGlyphFormAttributeName: @0} \n attrText:%@", m2.titleMutAttrStr];
    for (TestProjectAttributeStringFoundationModel *model in self.dataMutArr) {
        [model calculDataViewHeight];
    }

    self.tableView.dataSourceArray = self.dataMutArr;
}

- (void)TestProjectAttributeStringKit_key_NSWritingDirectionAttributeName {
    TestProjectAttributeStringFoundationModel *m1 = [self createAttrStrModelWith:@{NSWritingDirectionAttributeName: @[[NSNumber numberWithInteger:NSWritingDirectionLeftToRight | NSWritingDirectionEmbedding]]}];
    m1.desc = [NSString stringWithFormat:@"设置的是@{NSWritingDirectionAttributeName: [NSNumber numberWithInteger:NSWritingDirectionLeftToRight | NSWritingDirectionEmbedding]} \n attrText:%@", m1.titleMutAttrStr];
    
    TestProjectAttributeStringFoundationModel *m2 = [self createAttrStrModelWith:@{NSWritingDirectionAttributeName: @[[NSNumber numberWithInteger:NSWritingDirectionLeftToRight | NSWritingDirectionOverride]]}];
    m2.desc = [NSString stringWithFormat:@"设置的是@{NSWritingDirectionAttributeName: [NSNumber numberWithInteger:NSWritingDirectionLeftToRight | NSWritingDirectionOverride]} \n attrText:%@", m2.titleMutAttrStr];
    
    TestProjectAttributeStringFoundationModel *m3 = [self createAttrStrModelWith:@{NSWritingDirectionAttributeName: @[[NSNumber numberWithInteger:NSWritingDirectionRightToLeft | NSWritingDirectionEmbedding]]}];
    m3.desc = [NSString stringWithFormat:@"设置的是@{NSWritingDirectionAttributeName: [NSNumber numberWithInteger:NSWritingDirectionRightToLeft | NSWritingDirectionEmbedding]} \n attrText:%@", m3.titleMutAttrStr];
    
    TestProjectAttributeStringFoundationModel *m4 = [self createAttrStrModelWith:@{NSWritingDirectionAttributeName: @[[NSNumber numberWithInteger:NSWritingDirectionRightToLeft | NSWritingDirectionOverride]]}];
    m4.desc = [NSString stringWithFormat:@"设置的是@{NSWritingDirectionAttributeName: [NSNumber numberWithInteger:NSWritingDirectionRightToLeft | NSWritingDirectionOverride]} \n attrText:%@", m4.titleMutAttrStr];

    for (TestProjectAttributeStringFoundationModel *model in self.dataMutArr) {
        [model calculDataViewHeight];
    }

    self.tableView.dataSourceArray = self.dataMutArr;
}

- (void)TestProjectAttributeStringKit_key_NSExpansionAttributeName {
    TestProjectAttributeStringFoundationModel *m1 = [self createAttrStrModelWith:@{NSExpansionAttributeName: @1}];
    m1.desc = [NSString stringWithFormat:@"设置的是@{NSExpansionAttributeName: @1} \n attrText:%@", m1.titleMutAttrStr];

    TestProjectAttributeStringFoundationModel *m2 = [self createAttrStrModelWith:@{NSExpansionAttributeName: @-1}];
    m2.desc = [NSString stringWithFormat:@"设置的是@{NSExpansionAttributeName: @1} \n attrText:%@", m2.titleMutAttrStr];

    for (TestProjectAttributeStringFoundationModel *model in self.dataMutArr) {
        [model calculDataViewHeight];
    }

    self.tableView.dataSourceArray = self.dataMutArr;
}

- (void)TestProjectAttributeStringKit_key_NSObliquenessAttributeName {
    TestProjectAttributeStringFoundationModel *m1 = [self createAttrStrModelWith:@{NSObliquenessAttributeName: @1}];
    m1.desc = [NSString stringWithFormat:@"设置的是@{NSObliquenessAttributeName: @1} \n attrText:%@", m1.titleMutAttrStr];
    
    TestProjectAttributeStringFoundationModel *m2 = [self createAttrStrModelWith:@{NSObliquenessAttributeName: @-1}];
    m2.desc = [NSString stringWithFormat:@"设置的是@{NSObliquenessAttributeName: @-1} \n attrText:%@", m2.titleMutAttrStr];

    for (TestProjectAttributeStringFoundationModel *model in self.dataMutArr) {
        [model calculDataViewHeight];
    }

    self.tableView.dataSourceArray = self.dataMutArr;
}

- (void)TestProjectAttributeStringKit_key_NSStrikethroughColorAttributeName {
    TestProjectAttributeStringFoundationModel *m1 = [self createAttrStrModelWith:@{NSStrikethroughColorAttributeName: [UIColor colorFromString:@"#ff0000"], NSStrikethroughStyleAttributeName: [NSNumber numberWithInteger:NSUnderlineStyleSingle | NSUnderlinePatternDashDot], NSBaselineOffsetAttributeName:@0}];
    m1.desc = [NSString stringWithFormat:@"设置的是@{NSStrikethroughColorAttributeName: [UIColor colorFromString:@\"#33ffff\"]} \n attrText:%@", m1.titleMutAttrStr];
    for (TestProjectAttributeStringFoundationModel *model in self.dataMutArr) {
        [model calculDataViewHeight];
    }

    self.tableView.dataSourceArray = self.dataMutArr;
}

- (void)TestProjectAttributeStringKit_key_NSUnderlineColorAttributeName {
    TestProjectAttributeStringFoundationModel *m1 = [self createAttrStrModelWith:@{NSUnderlineColorAttributeName: [UIColor colorFromString:@"#33ffff"], NSUnderlineStyleAttributeName: @(NSUnderlineStyleDouble)}];
    m1.desc = [NSString stringWithFormat:@"设置的是@{NSUnderlineColorAttributeName: [UIColor colorFromString:@\"#33ffff\"]} \n attrText:%@", m1.titleMutAttrStr];
    for (TestProjectAttributeStringFoundationModel *model in self.dataMutArr) {
        [model calculDataViewHeight];
    }

    self.tableView.dataSourceArray = self.dataMutArr;
}

- (void)TestProjectAttributeStringKit_key_NSBaselineOffsetAttributeName {
    TestProjectAttributeStringFoundationModel *m1 = [self createAttrStrModelWith:@{NSBaselineOffsetAttributeName: @-10, NSBackgroundColorAttributeName: [UIColor redColor]}];
    m1.desc = [NSString stringWithFormat:@"设置的是@{NSBaselineOffsetAttributeName: [UIColor colorFromString:@\"#33ffff\"]} \n attrText:%@", m1.titleMutAttrStr];
    for (TestProjectAttributeStringFoundationModel *model in self.dataMutArr) {
        [model calculDataViewHeight];
    }

    self.tableView.dataSourceArray = self.dataMutArr;
}

- (void)TestProjectAttributeStringKit_key_NSLinkAttributeName {
    TestProjectAttributeStringFoundationModel *m1 = [self createAttrStrModelWith:@{NSLinkAttributeName: [NSURL URLWithString:@"https://www.baidu.com"]}];
    m1.desc = [NSString stringWithFormat:@"设置的是@{NSLinkAttributeName: [NSURL URLWithString:@\"https://www.baidu.com\"]} \n attrText:%@", m1.titleMutAttrStr];
    for (TestProjectAttributeStringFoundationModel *model in self.dataMutArr) {
        [model calculDataViewHeight];
    }

    self.tableView.dataSourceArray = self.dataMutArr;
}

- (void)TestProjectAttributeStringKit_key_NSAttachmentAttributeName {
    NSTextAttachment *attachment = [[NSTextAttachment alloc] init];
    attachment.image = [UIImage imageNamed:@"lyf_1"];
    attachment.bounds = CGRectMake(0, 0, 100, 50);
    TestProjectAttributeStringFoundationModel *m1 = [self createAttrStrModelWith:nil];
    NSAttributedString *attachmentAttrText = [NSAttributedString attributedStringWithAttachment:attachment];
    [m1.titleMutAttrStr appendAttributedString:attachmentAttrText];
    m1.desc = [NSString stringWithFormat:@"设置的是@{NSBackgroundColorAttributeName: [UIColor colorFromString:@\"#33ffff\"]} \n attrText:%@", m1.titleMutAttrStr];
    for (TestProjectAttributeStringFoundationModel *model in self.dataMutArr) {
        [model calculDataViewHeight];
    }

    self.tableView.dataSourceArray = self.dataMutArr;
}

- (void)TestProjectAttributeStringKit_key_NSTextEffectAttributeName {
    TestProjectAttributeStringFoundationModel *m1 = [self createAttrStrModelWith:@{NSTextEffectAttributeName: NSTextEffectLetterpressStyle}];
    m1.desc = [NSString stringWithFormat:@"设置的是@{NSTextEffectAttributeName: NSTextEffectLetterpressStyle} \n attrText:%@", m1.titleMutAttrStr];
    for (TestProjectAttributeStringFoundationModel *model in self.dataMutArr) {
        [model calculDataViewHeight];
    }

    self.tableView.dataSourceArray = self.dataMutArr;
}

- (void)TestProjectAttributeStringKit_key_NSShadowAttributeName {
    NSShadow *shadow = [[NSShadow alloc] init];
    //模糊度
    shadow.shadowBlurRadius = 5;
    shadow.shadowColor = [UIColor redColor];
    shadow.shadowOffset = CGSizeMake(5, 5);
    TestProjectAttributeStringFoundationModel *m1 = [self createAttrStrModelWith:@{NSShadowAttributeName: shadow}];
    m1.desc = [NSString stringWithFormat:@"设置的是@{NSShadowAttributeName: %@} \n attrText:%@", shadow, m1.titleMutAttrStr];
    
    TestProjectAttributeStringFoundationModel *m2 = [self createAttrStrModelWith:@{NSShadowAttributeName: shadow, NSVerticalGlyphFormAttributeName:@0}];
    m2.desc = [NSString stringWithFormat:@"设置的是并且是横排@{NSShadowAttributeName: %@} \n attrText:%@", shadow, m2.titleMutAttrStr];

    TestProjectAttributeStringFoundationModel *m3 = [self createAttrStrModelWith:@{NSShadowAttributeName: shadow, NSObliquenessAttributeName:@1}];
    m3.desc = [NSString stringWithFormat:@"设置的是字体倾斜@{NSShadowAttributeName: %@, NSObliquenessAttributeName:@1} \n attrText:%@", shadow, m3.titleMutAttrStr];

    TestProjectAttributeStringFoundationModel *m4 = [self createAttrStrModelWith:@{NSShadowAttributeName: shadow, NSExpansionAttributeName:@1}];
    m4.desc = [NSString stringWithFormat:@"设置的是并且是文本扁平化@{NSShadowAttributeName: %@, NSExpansionAttributeName} \n attrText:%@", shadow, m4.titleMutAttrStr];

    for (TestProjectAttributeStringFoundationModel *model in self.dataMutArr) {
        [model calculDataViewHeight];
    }

    self.tableView.dataSourceArray = self.dataMutArr;
}

- (void)TestProjectAttributeStringKit_key_NSStrokeWidthAttributeName {
    TestProjectAttributeStringFoundationModel *m1 = [self createAttrStrModelWith:@{NSStrokeWidthAttributeName: @3}];
    m1.desc = [NSString stringWithFormat:@"设置的是@{NSStrokeWidthAttributeName: @3} \n attrText:%@", m1.titleMutAttrStr];
    
    TestProjectAttributeStringFoundationModel *m2 = [self createAttrStrModelWith:@{NSStrokeWidthAttributeName: @-3}];
    m2.desc = [NSString stringWithFormat:@"文字描边@{NSStrokeWidthAttributeName: @-3} \n attrText:%@", m2.titleMutAttrStr];

    TestProjectAttributeStringFoundationModel *m3 = [self createAttrStrModelWith:@{NSStrokeWidthAttributeName: @100}];
    m3.desc = [NSString stringWithFormat:@"文字描边@{NSStrokeWidthAttributeName: @100} \n attrText:%@", m3.titleMutAttrStr];
    
    TestProjectAttributeStringFoundationModel *m4 = [self createAttrStrModelWith:@{NSStrokeWidthAttributeName: @-100}];
    m4.desc = [NSString stringWithFormat:@"文字描边@{NSStrokeWidthAttributeName: @-100} \n attrText:%@", m4.titleMutAttrStr];
    for (TestProjectAttributeStringFoundationModel *model in self.dataMutArr) {
        [model calculDataViewHeight];
    }

    self.tableView.dataSourceArray = self.dataMutArr;
}

- (void)TestProjectAttributeStringKit_key_NSStrokeColorAttributeName {
    TestProjectAttributeStringFoundationModel *m0 = [self createAttrStrModelWith:@{NSStrokeColorAttributeName: [UIColor colorFromString:@"#33ffff"]}];
    m0.desc = [NSString stringWithFormat:@"没有设置NSStrokeWidthAttributeName则文字描边无效@{NSStrokeColorAttributeName: [UIColor colorFromString:@\"#33ffff\"]} \n attrText:%@", m0.titleMutAttrStr];

    TestProjectAttributeStringFoundationModel *m1 = [self createAttrStrModelWith:@{NSStrokeColorAttributeName: [UIColor colorFromString:@"#33ffff"], NSStrokeWidthAttributeName: @3}];
    m1.desc = [NSString stringWithFormat:@"文字描边@{NSStrokeColorAttributeName: [UIColor colorFromString:@\"#33ffff\"], NSStrokeWidthAttributeName: @-3} \n attrText:%@", m1.titleMutAttrStr];
    
    TestProjectAttributeStringFoundationModel *m2 = [self createAttrStrModelWith:@{NSStrokeColorAttributeName: [UIColor colorFromString:@"#33ffff"], NSStrokeWidthAttributeName: @-3}];
    m2.desc = [NSString stringWithFormat:@"文字描边@{NSStrokeColorAttributeName: [UIColor colorFromString:@\"#33ffff\"], NSStrokeWidthAttributeName: @-3} \n attrText:%@", m2.titleMutAttrStr];

    TestProjectAttributeStringFoundationModel *m3 = [self createAttrStrModelWith:@{NSStrokeColorAttributeName: [UIColor colorFromString:@"#33ffff"], NSStrokeWidthAttributeName: @100}];
    m3.desc = [NSString stringWithFormat:@"文字描边@{NSStrokeColorAttributeName: [UIColor colorFromString:@\"#33ffff\"], NSStrokeWidthAttributeName: @100} \n attrText:%@", m3.titleMutAttrStr];
    
    TestProjectAttributeStringFoundationModel *m4 = [self createAttrStrModelWith:@{NSStrokeColorAttributeName: [UIColor colorFromString:@"#33ffff"], NSStrokeWidthAttributeName: @-100}];
    m4.desc = [NSString stringWithFormat:@"文字描边@{NSStrokeColorAttributeName: [UIColor colorFromString:@\"#33ffff\"], NSStrokeWidthAttributeName: @-100} \n attrText:%@", m4.titleMutAttrStr];
    for (TestProjectAttributeStringFoundationModel *model in self.dataMutArr) {
        [model calculDataViewHeight];
    }
    self.tableView.dataSourceArray = self.dataMutArr;
}

- (void)TestProjectAttributeStringKit_key_NSUnderlineStyleAttributeName {
    TestProjectAttributeStringFoundationModel *m1 = [self createAttrStrModelWith:@{NSUnderlineStyleAttributeName: @(NSUnderlineStyleNone), NSStrikethroughColorAttributeName: [UIColor colorFromString:@"#00ffff"]}];
    m1.desc = [NSString stringWithFormat:@"设置的是无下划线@{NSUnderlineStyleAttributeName: @(NSUnderlineStyleNone)} \n attrText:%@", m1.titleMutAttrStr];
    
    TestProjectAttributeStringFoundationModel *m2 = [self createAttrStrModelWith:@{NSUnderlineStyleAttributeName: @(NSUnderlineStyleSingle), NSStrikethroughColorAttributeName: [UIColor colorFromString:@"#00ffff"]}];
    m2.desc = [NSString stringWithFormat:@"设置的是有下划线但是轻@{NSUnderlineStyleAttributeName: @(NSUnderlineStyleNone)} \n attrText:%@", m2.titleMutAttrStr];
    
    TestProjectAttributeStringFoundationModel *m3 = [self createAttrStrModelWith:@{NSUnderlineStyleAttributeName: @(NSUnderlineStyleThick), NSStrikethroughColorAttributeName: [UIColor colorFromString:@"#00ffff"]}];
    m3.desc = [NSString stringWithFormat:@"设置的是有下划线但是厚线 @{NSUnderlineStyleAttributeName: @(NSUnderlineStyleThick)} \n attrText:%@", m3.titleMutAttrStr];

    TestProjectAttributeStringFoundationModel *m4 = [self createAttrStrModelWith:@{NSUnderlineStyleAttributeName: @(NSUnderlineStyleDouble), NSStrikethroughColorAttributeName: [UIColor colorFromString:@"#00ffff"]}];
    m4.desc = [NSString stringWithFormat:@"设置的是有下划线但是双线 @{NSUnderlineStyleAttributeName: @(NSUnderlineStyleDouble)} \n attrText:%@", m4.titleMutAttrStr];

    TestProjectAttributeStringFoundationModel *m5 = [self createAttrStrModelWith:@{NSUnderlineStyleAttributeName: [NSNumber numberWithInteger:NSUnderlineStyleDouble | NSUnderlineStylePatternSolid], NSStrikethroughColorAttributeName: [UIColor colorFromString:@"#ff0000"]}];
    m5.desc = [NSString stringWithFormat:@"设置的是有下划线但是实心线 @{NSUnderlineStyleAttributeName: [NSNumber numberWithInteger:NSUnderlineStyleDouble | NSUnderlineStylePatternSolid]} \n attrText:%@", m5.titleMutAttrStr];

    TestProjectAttributeStringFoundationModel *m6 = [self createAttrStrModelWith:@{NSUnderlineStyleAttributeName: [NSNumber numberWithInteger:NSUnderlineStyleDouble | NSUnderlineStylePatternDot], NSStrikethroughColorAttributeName: [UIColor colorFromString:@"#00ffff"]}];
    m6.desc = [NSString stringWithFormat:@"设置的是有下划线但是点线 @{NSUnderlineStyleAttributeName: @(NSUnderlineStylePatternDot)} \n attrText:%@", m6.titleMutAttrStr];

    TestProjectAttributeStringFoundationModel *m7 = [self createAttrStrModelWith:@{NSUnderlineStyleAttributeName: [NSNumber numberWithInteger:NSUnderlineStyleDouble | NSUnderlineStylePatternDash], NSStrikethroughColorAttributeName: [UIColor colorFromString:@"#00ffff"]}];
    m7.desc = [NSString stringWithFormat:@"设置的是有下划线但是虚线 @{NSUnderlineStyleAttributeName: [NSNumber numberWithInteger:NSUnderlineStyleDouble | NSUnderlineStylePatternDash]} \n attrText:%@", m7.titleMutAttrStr];

    TestProjectAttributeStringFoundationModel *m8 = [self createAttrStrModelWith:@{NSUnderlineStyleAttributeName: [NSNumber numberWithInteger:NSUnderlineStyleDouble | NSUnderlineStylePatternDashDot], NSStrikethroughColorAttributeName: [UIColor colorFromString:@"#00ffff"]}];
    m8.desc = [NSString stringWithFormat:@"设置的是有下划线但是虚点线 @{NSUnderlineStyleAttributeName: [NSNumber numberWithInteger:NSUnderlineStyleDouble | NSUnderlineStylePatternDashDot]} \n attrText:%@", m8.titleMutAttrStr];

    TestProjectAttributeStringFoundationModel *m9 = [self createAttrStrModelWith:@{NSUnderlineStyleAttributeName: [NSNumber numberWithInteger:NSUnderlineStyleDouble | NSUnderlineStylePatternDashDotDot], NSStrikethroughColorAttributeName: [UIColor colorFromString:@"#00ffff"]}];
    m9.desc = [NSString stringWithFormat:@"设置的是有下划线但是虚点点线 @{NSUnderlineStyleAttributeName: [NSNumber numberWithInteger:NSUnderlineStyleDouble | NSUnderlineStylePatternDashDotDot]} \n attrText:%@", m9.titleMutAttrStr];

    TestProjectAttributeStringFoundationModel *m10 = [self createAttrStrModelWith:@{NSUnderlineStyleAttributeName: [NSNumber numberWithInteger:NSUnderlineStyleDouble | NSUnderlineStyleByWord], NSStrikethroughColorAttributeName: [UIColor colorFromString:@"#00ffff"]}];
    m10.desc = [NSString stringWithFormat:@"设置的有下划线但是实心线 @{NSUnderlineStyleAttributeName: [NSNumber numberWithInteger:NSUnderlineStyleDouble | NSUnderlineStyleByWord]} \n attrText:%@", m10.titleMutAttrStr];
    for (TestProjectAttributeStringFoundationModel *model in self.dataMutArr) {
        [model calculDataViewHeight];
    }

    self.tableView.dataSourceArray = self.dataMutArr;
}

- (void)TestProjectAttributeStringKit_key_NSStrikethroughStyleAttributeName {
    TestProjectAttributeStringFoundationModel *m1 = [self createAttrStrModelWith:@{NSStrikethroughStyleAttributeName: @(NSUnderlineStyleNone), NSStrikethroughColorAttributeName: [UIColor colorFromString:@"#00ffff"]}];
    m1.desc = [NSString stringWithFormat:@"设置的是无删除线 @{NSStrikethroughStyleAttributeName: @(NSUnderlineStyleNone)} \n attrText:%@", m1.titleMutAttrStr];
    
    TestProjectAttributeStringFoundationModel *m2 = [self createAttrStrModelWith:@{NSStrikethroughStyleAttributeName: @(NSUnderlineStyleSingle), NSStrikethroughColorAttributeName: [UIColor colorFromString:@"#00ffff"]}];
    m2.desc = [NSString stringWithFormat:@"设置的是有删除线但是轻线 @{NSStrikethroughStyleAttributeName: @(NSUnderlineStyleSingle)} \n attrText:%@", m2.titleMutAttrStr];

    TestProjectAttributeStringFoundationModel *m3 = [self createAttrStrModelWith:@{NSStrikethroughStyleAttributeName: @(NSUnderlineStyleThick), NSStrikethroughColorAttributeName: [UIColor colorFromString:@"#00ffff"]}];
    m3.desc = [NSString stringWithFormat:@"设置的是有删除线但是厚线 @{NSStrikethroughStyleAttributeName: @(NSUnderlineStyleThick)} \n attrText:%@", m3.titleMutAttrStr];

    TestProjectAttributeStringFoundationModel *m4 = [self createAttrStrModelWith:@{NSStrikethroughStyleAttributeName: @(NSUnderlineStyleDouble), NSStrikethroughColorAttributeName: [UIColor colorFromString:@"#00ffff"]}];
    m4.desc = [NSString stringWithFormat:@"设置的是有删除线但是双线 @{NSStrikethroughStyleAttributeName: @(NSUnderlineStyleDouble)} \n attrText:%@", m4.titleMutAttrStr];

    TestProjectAttributeStringFoundationModel *m5 = [self createAttrStrModelWith:@{NSStrikethroughStyleAttributeName: [NSNumber numberWithInteger:NSUnderlineStyleDouble | NSUnderlineStylePatternSolid], NSStrikethroughColorAttributeName: [UIColor colorFromString:@"#00ffff"]}];
    m5.desc = [NSString stringWithFormat:@"设置的是有删除线但是实心线 @{NSStrikethroughStyleAttributeName: [NSNumber numberWithInteger:NSUnderlineStyleDouble | NSUnderlineStylePatternSolid]} \n attrText:%@", m5.titleMutAttrStr];

    TestProjectAttributeStringFoundationModel *m6 = [self createAttrStrModelWith:@{NSStrikethroughStyleAttributeName: [NSNumber numberWithInteger:NSUnderlineStyleDouble | NSUnderlineStylePatternDot], NSStrikethroughColorAttributeName: [UIColor colorFromString:@"#00ffff"]}];
    m6.desc = [NSString stringWithFormat:@"设置的是有删除线但是点线 @{NSStrikethroughStyleAttributeName: [NSNumber numberWithInteger:NSUnderlineStyleDouble | NSUnderlineStylePatternDot]} \n attrText:%@", m6.titleMutAttrStr];

    TestProjectAttributeStringFoundationModel *m7 = [self createAttrStrModelWith:@{NSStrikethroughStyleAttributeName: [NSNumber numberWithInteger:NSUnderlineStyleDouble | NSUnderlineStylePatternDash], NSStrikethroughColorAttributeName: [UIColor colorFromString:@"#00ffff"]}];
    m7.desc = [NSString stringWithFormat:@"设置的是有删除线但是虚线 @{NSStrikethroughStyleAttributeName: [NSNumber numberWithInteger:NSUnderlineStyleDouble | NSUnderlineStylePatternDash]} \n attrText:%@", m7.titleMutAttrStr];

    TestProjectAttributeStringFoundationModel *m8 = [self createAttrStrModelWith:@{NSStrikethroughStyleAttributeName: [NSNumber numberWithInteger:NSUnderlineStyleDouble | NSUnderlineStylePatternDashDot], NSStrikethroughColorAttributeName: [UIColor colorFromString:@"#00ffff"]}];
    m8.desc = [NSString stringWithFormat:@"设置的是有删除线但是虚点线 @{NSStrikethroughStyleAttributeName: [NSNumber numberWithInteger:NSUnderlineStyleDouble | NSUnderlineStylePatternDashDot]} \n attrText:%@", m8.titleMutAttrStr];

    TestProjectAttributeStringFoundationModel *m9 = [self createAttrStrModelWith:@{NSStrikethroughStyleAttributeName: [NSNumber numberWithInteger:NSUnderlineStyleDouble | NSUnderlineStylePatternDashDotDot], NSStrikethroughColorAttributeName: [UIColor colorFromString:@"#00ffff"]}];
    m9.desc = [NSString stringWithFormat:@"设置的是有删除线但是虚点点线 @{NSStrikethroughStyleAttributeName: [NSNumber numberWithInteger:NSUnderlineStyleDouble | NSUnderlineStylePatternDashDotDot]} \n attrText:%@", m9.titleMutAttrStr];

    TestProjectAttributeStringFoundationModel *m10 = [self createAttrStrModelWith:@{NSStrikethroughStyleAttributeName: [NSNumber numberWithInteger:NSUnderlineStyleDouble | NSUnderlineStyleByWord], NSStrikethroughColorAttributeName: [UIColor colorFromString:@"#00ffff"]}];
    m10.desc = [NSString stringWithFormat:@"设置的是有删除线但是实心线 @{NSStrikethroughStyleAttributeName: [NSNumber numberWithInteger:NSUnderlineStyleDouble | NSUnderlineStyleByWord]} \n attrText:%@", m10.titleMutAttrStr];
    for (TestProjectAttributeStringFoundationModel *model in self.dataMutArr) {
        [model calculDataViewHeight];
    }

    self.tableView.dataSourceArray = self.dataMutArr;
}

- (void)TestProjectAttributeStringKit_key_NSTrackingAttributeName {
    if (@available(iOS 14.0, *)) {
        TestProjectAttributeStringFoundationModel *m1 = [self createAttrStrModelWith:@{NSTrackingAttributeName: @0}];
        m1.desc = [NSString stringWithFormat:@"设置的是@{NSTrackingAttributeName: @0} attrText:%@", m1.titleMutAttrStr];
        
        TestProjectAttributeStringFoundationModel *m2 = [self createAttrStrModelWith:@{NSTrackingAttributeName: @10}];
        m2.desc = [NSString stringWithFormat:@"设置的是@{NSTrackingAttributeName: @10} attrText:%@", m2.titleMutAttrStr];

        TestProjectAttributeStringFoundationModel *m3 = [self createAttrStrModelWith:@{NSTrackingAttributeName: @-10}];
        m3.desc = [NSString stringWithFormat:@"设置的是@{NSTrackingAttributeName: @-10} attrText:%@", m3.titleMutAttrStr];
        for (TestProjectAttributeStringFoundationModel *model in self.dataMutArr) {
            [model calculDataViewHeight];
        }

        self.tableView.dataSourceArray = self.dataMutArr;
    }
}

- (void)TestProjectAttributeStringKit_key_NSKernAttributeName {
    TestProjectAttributeStringFoundationModel *m1 = [self createAttrStrModelWith:@{NSKernAttributeName: @0}];
    m1.desc = [NSString stringWithFormat:@"设置的是@{NSKernAttributeName: @0} attrText:%@", m1.titleMutAttrStr];
    
    TestProjectAttributeStringFoundationModel *m2 = [self createAttrStrModelWith:@{NSKernAttributeName: @10}];
    m2.desc = [NSString stringWithFormat:@"设置的是@{NSKernAttributeName: @10} attrText:%@", m2.titleMutAttrStr];

    TestProjectAttributeStringFoundationModel *m3 = [self createAttrStrModelWith:@{NSKernAttributeName: @-10}];
    m3.desc = [NSString stringWithFormat:@"设置的是@{NSKernAttributeName: @-10} attrText:%@", m3.titleMutAttrStr];
    for (TestProjectAttributeStringFoundationModel *model in self.dataMutArr) {
        [model calculDataViewHeight];
    }

    self.tableView.dataSourceArray = self.dataMutArr;
}

- (void)TestProjectAttributeStringKit_key_NSLigatureAttributeName {
    TestProjectAttributeStringFoundationModel *m1 = [self createAttrStrModelWith:@{NSLigatureAttributeName: @0}];
    m1.desc = [NSString stringWithFormat:@"设置的是@{NSLigatureAttributeName: @0} attrText:%@", m1.titleMutAttrStr];
    
    TestProjectAttributeStringFoundationModel *m2 = [self createAttrStrModelWith:@{NSLigatureAttributeName: @1}];
    m2.desc = [NSString stringWithFormat:@"设置的是@{NSLigatureAttributeName: @1} attrText:%@", m2.titleMutAttrStr];

    TestProjectAttributeStringFoundationModel *m3 = [self createAttrStrModelWith:@{NSLigatureAttributeName: @-100}];
    m3.desc = [NSString stringWithFormat:@"设置的是@{NSLigatureAttributeName: @-100} attrText:%@", m3.titleMutAttrStr];
    for (TestProjectAttributeStringFoundationModel *model in self.dataMutArr) {
        [model calculDataViewHeight];
    }

    self.tableView.dataSourceArray = self.dataMutArr;
}

- (void)TestProjectAttributeStringKit_key_NSBackgroundColorAttributeName {
    TestProjectAttributeStringFoundationModel *m1 = [self createAttrStrModelWith:@{NSBackgroundColorAttributeName: [UIColor colorFromString:@"#33ffff"]}];
    m1.desc = [NSString stringWithFormat:@"设置的是@{NSBackgroundColorAttributeName: [UIColor colorFromString:@\"#33ffff\"]} \n attrText:%@", m1.titleMutAttrStr];
    for (TestProjectAttributeStringFoundationModel *model in self.dataMutArr) {
        [model calculDataViewHeight];
    }

    self.tableView.dataSourceArray = self.dataMutArr;
}

- (void)TestProjectAttributeStringKit_key_NSForegroundColorAttributeName {
    TestProjectAttributeStringFoundationModel *m1 = [self createAttrStrModelWith:@{NSForegroundColorAttributeName: [UIColor colorFromString:@"#33ffff"]}];
    m1.desc = [NSString stringWithFormat:@"设置的是@{NSForegroundColorAttributeName: [UIColor colorFromString:@\"#33ffff\"]} \n attrText:%@", m1.titleMutAttrStr];
    for (TestProjectAttributeStringFoundationModel *model in self.dataMutArr) {
        [model calculDataViewHeight];
    }

    self.tableView.dataSourceArray = self.dataMutArr;
}

- (void)TestProjectAttributeStringKit_key_NSParagraphStyleAttributeName {
    
    NSParagraphStyle *style1 = [[NSParagraphStyle alloc] init];
    TestProjectAttributeStringFoundationModel *m1 = [self createAttrStrModelWith:@{NSParagraphStyleAttributeName: style1}];
    m1.desc = [NSString stringWithFormat:@"设置的是@{NSParagraphStyleAttributeName: [[NSParagraphStyle alloc] init]} attrText:%@", m1.titleMutAttrStr];

    NSParagraphStyle *style2 = [NSParagraphStyle defaultParagraphStyle];
    TestProjectAttributeStringFoundationModel *m2 = [self createAttrStrModelWith:@{NSParagraphStyleAttributeName: style2}];
    m2.desc = [NSString stringWithFormat:@"设置的是@{NSParagraphStyleAttributeName: [NSParagraphStyle defaultParagraphStyle]} \n attrText:%@", m2.titleMutAttrStr];
    
    for (TestProjectAttributeStringFoundationModel *model in self.dataMutArr) {
        [model calculDataViewHeight];
    }

    self.tableView.dataSourceArray = self.dataMutArr;
}


- (void)TestProjectAttributeStringKit_key_NSFontAttributeName {
    TestProjectAttributeStringFoundationModel *m1 = [self createAttrStrModelWith:@{NSFontAttributeName: [UIFont systemFontOfSize:40]}];
    m1.desc = [NSString stringWithFormat:@"设置的是@{NSFontAttributeName: [UIFont systemFontOfSize:40]} \n attrText:%@", m1.titleMutAttrStr];
    for (TestProjectAttributeStringFoundationModel *model in self.dataMutArr) {
        [model calculDataViewHeight];
    }

    self.tableView.dataSourceArray = self.dataMutArr;
}

@end
