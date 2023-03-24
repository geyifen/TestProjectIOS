//
//  TestProjectFont.m
//  TestProjectIOS
//
//  Created by zjrcumac on 2023/3/20.
//

#import "TestProjectFont.h"

#import "TestProjectAttributeStringFoundationCell.h"

@interface TestProjectFont ()

@property (nonatomic, copy) NSString *firstAttrText;

@end

@implementation TestProjectFont

- (NSString *)firstAttrText {
    if (!_firstAttrText) {
        _firstAttrText = @"我是第一个段落的开头的数据\n我是第二段的内容数据我是第二段的内容数据我是第二段的内容数据我是第二段的内容数据ABCDEFGHIJKLMNOPQRSTUVWXYZ我是第二段的内容数据我是第二段的内容数据我是第二段的内容数据abggggfffcbbdefghijklmnopqrstuwwwvvvwxyz我是第二段的内容数据我是第二段的内容数据我是第二段的内容数据我是第二段的内容数据我是第二段的内容数据我是第二段的内容数据我是第二段的内容数据\n我是第三段的开头数据";
    }
    return _firstAttrText;
}

- (NSDictionary *)method_1 {
    return @{
        @"+ (UIFont *)preferredFontForTextStyle:(UIFontTextStyle)style API_AVAILABLE(ios(7.0));":@{
            @"method":@"TestProjectFont_add_preferredFontForTextStyle",
            @"desc":@"根据系统的定义的类型获取的UIFont"}
    };
}

- (NSDictionary *)method_2 {
    return @{
        @"+ (UIFont *)preferredFontForTextStyle:(UIFontTextStyle)style compatibleWithTraitCollection:(nullable UITraitCollection *)traitCollection API_AVAILABLE(ios(10.0)) API_UNAVAILABLE(watchos);":@{
            @"method":@"TestProjectFont_add_preferredFontForTextStyle_compatibleWithTraitCollection",
            @"desc":@"根据系统的定义的类型获取的UIFont \n @parma style:系统定义的类型 \n @param traitCollection: 暂时不知道怎么玩"}
    };
}

- (NSDictionary *)method_3 {
    return @{
        @"+ (nullable UIFont *)fontWithName:(NSString *)fontName size:(CGFloat)fontSize;":@{
            @"method":@"TestProjectFont_add_fontWithName_size",
            @"desc":@"根据字体的类型获取的UIFont \n 只有部分字体的类型可以和UIFontWeight结合起来共同使用, 可以使用[UIFont fontNamesForFamilyName:name]查看每个字体可以搭配的 \n @parma fontName:字体的类型 \n @param fontSize: 字体的大小"}
    };
}

- (NSDictionary *)method_4 {
    return @{
        @"@property(class, nonatomic, readonly) NSArray<NSString *> *familyNames;":@{
            @"method":@"TestProjectFont_property_familyNames",
            @"desc":@"获取系统的所有字体类型 用的是class方法获取的"}
    };
}

- (NSDictionary *)method_5 {
    return @{
        @"+ (NSArray<NSString *> *)fontNamesForFamilyName:(NSString *)familyName;":@{
            @"method":@"TestProjectFont_add_fontNamesForFamilyName",
            @"desc":@"根据字体类型查看当前类型可以搭配的UIFontWeight"}
    };
}

- (NSDictionary *)method_6 {
    return @{
        @"+ (UIFont *)systemFontOfSize:(CGFloat)fontSize;":@{
            @"method":@"TestProjectFont_add_systemFontOfSize",
            @"desc":@"根据传入的size设置字体大小"}
    };
}

- (NSDictionary *)method_7 {
    return @{
        @"+ (UIFont *)boldSystemFontOfSize:(CGFloat)fontSize;":@{
            @"method":@"TestProjectFont_add_boldSystemFontOfSize",
            @"desc":@"根据传入的size设置字体大小并且默认是加粗的"}
    };
}

- (NSDictionary *)method_8 {
    return @{
        @"+ (UIFont *)italicSystemFontOfSize:(CGFloat)fontSize;":@{
            @"method":@"TestProjectFont_add_italicSystemFontOfSize",
            @"desc":@"根据传入的size设置字体大小并且默认是斜体的"}
    };
}

- (NSDictionary *)method_9 {
    return @{
        @"+ (UIFont *)systemFontOfSize:(CGFloat)fontSize weight:(UIFontWeight)weight API_AVAILABLE(ios(8.2))":@{
            @"method":@"TestProjectFont_add_systemFontOfSize_weight",
            @"desc":@"根据传入的size和weight获取UIFont字体"}
    };
}

- (NSDictionary *)method_10 {
    return @{
        @"+ (UIFont *)monospacedDigitSystemFontOfSize:(CGFloat)fontSize weight:(UIFontWeight)weight API_AVAILABLE(ios(9.0));":@{
            @"method":@"TestProjectFont_add_monospacedDigitSystemFontOfSize_weight",
            @"desc":@"根据传入的size和weight获取UIFont字体"}
    };
}

- (NSDictionary *)method_11 {
    return @{
        @"+ (UIFont *)systemFontOfSize:(CGFloat)fontSize weight:(UIFontWeight)weight width:(UIFontWidth)width API_AVAILABLE(ios(16.0));":@{
            @"method":@"TestProjectFont_add_systemFontOfSize_weight_width",
            @"desc":@"根据传入的size和weight和width获取UIFont字体"}
    };
}

- (NSDictionary *)method_12 {
    return @{
        @"+ (UIFont *)monospacedSystemFontOfSize:(CGFloat)fontSize weight:(UIFontWeight)weight API_AVAILABLE(ios(13.0));":@{
            @"method":@"TestProjectFont_add_monospacedSystemFontOfSize_weight",
            @"desc":@"根据传入的size和weight和width获取UIFont字体"}
    };
}

- (NSDictionary *)method_13 {
    return @{
        @"@property(nonatomic,readonly,strong) NSString *familyName;":@{
            @"method":@"TestProjectFont_property_familyName",
            @"desc":@"获取UIFont的familyName"}
    };
}

- (NSDictionary *)method_14 {
    return @{
        @"@property(nonatomic,readonly,strong) NSString *fontName;":@{
            @"method":@"TestProjectFont_property_fontName",
            @"desc":@"获取UIFont的fontName"}
    };
}

- (NSDictionary *)method_15 {
    return @{
        @"@property(nonatomic,readonly)        CGFloat   pointSize;":@{
            @"method":@"TestProjectFont_property_pointSize",
            @"desc":@"获取UIFont的pointSize"}
    };
}

- (NSDictionary *)method_16 {
    return @{
        @"@property(nonatomic,readonly)        CGFloat   ascender;":@{
            @"method":@"TestProjectFont_property_ascender",
            @"desc":@"获取UIFont的ascender"}
    };
}

- (NSDictionary *)method_17 {
    return @{
        @"@property(nonatomic,readonly)        CGFloat   descender;":@{
            @"method":@"TestProjectFont_property_descender",
            @"desc":@"获取UIFont的descender"}
    };
}

- (NSDictionary *)method_18 {
    return @{
        @"@property(nonatomic,readonly)        CGFloat   capHeight;":@{
            @"method":@"TestProjectFont_property_capHeight",
            @"desc":@"获取UIFont的capHeight"}
    };
}

- (NSDictionary *)method_19 {
    return @{
        @"@property(nonatomic,readonly)        CGFloat   xHeight;":@{
            @"method":@"TestProjectFont_property_xHeight",
            @"desc":@"获取UIFont的xHeight"}
    };
}

- (NSDictionary *)method_20 {
    return @{
        @"@property(nonatomic,readonly)        CGFloat   lineHeight API_AVAILABLE(ios(4.0));":@{
            @"method":@"TestProjectFont_property_lineHeight",
            @"desc":@"获取UIFont的lineHeight"}
    };
}

- (NSDictionary *)method_21 {
    return @{
        @"@property(nonatomic,readonly)        CGFloat   leading;":@{
            @"method":@"TestProjectFont_property_leading",
            @"desc":@"获取UIFont的leading"}
    };
}

- (NSDictionary *)method_22 {
    return @{
        @"- (UIFont *)fontWithSize:(CGFloat)fontSize;":@{
            @"method":@"TestProjectFont_fontWithSize",
            @"desc":@"通过fontSize获取Font"}
    };
}

- (NSDictionary *)method_23 {
    return @{
        @"+ (UIFont *)fontWithDescriptor:(UIFontDescriptor *)descriptor size:(CGFloat)pointSize API_AVAILABLE(ios(7.0));":@{
            @"method":@"TestProjectFont_add_fontWithDescriptor_size",
            @"desc":@"通过descriptor和pointSize获取Font"}
    };
}

- (NSDictionary *)method_24 {
    return @{
        @"@property(nonatomic, readonly) UIFontDescriptor *fontDescriptor API_AVAILABLE(ios(7.0));":@{
            @"method":@"TestProjectFont_property_fontDescriptor",
            @"desc":@"获取UIFont的fontDescriptor"}
    };
}

- (TestProjectAttributeStringFoundationModel *)createAttrStrModelWith:(UIFont *)font {
    TestProjectAttributeStringFoundationModel *attrStrModel = [[TestProjectAttributeStringFoundationModel alloc] init];
    NSAttributedString *firstAttrStr = [[NSAttributedString alloc] initWithString:self.firstAttrText attributes:@{NSFontAttributeName: font}];

    attrStrModel.titleMutAttrStr = [[NSMutableAttributedString alloc] initWithAttributedString:firstAttrStr];
    [self.dataMutArr addObject:attrStrModel];
    return attrStrModel;
}

- (void)TestProjectFont_add_fontWithDescriptor_size {
    UIFontDescriptor *desc = [UIFontDescriptor fontDescriptorWithName:@".SFUI-Regular" size:12];
    UIFont *font1 = [UIFont fontWithDescriptor:desc size:18];
    TestProjectAttributeStringFoundationModel *m1 = [self createAttrStrModelWith:font1];
    m1.desc = [NSString stringWithFormat:@"FontDescriptor:%@\nattrText:%@", desc, m1.titleMutAttrStr];
    for (TestProjectAttributeStringFoundationModel *model in self.dataMutArr) {
        [model calculDataViewHeight];
    }

    self.tableView.dataSourceArray = self.dataMutArr;
}

- (void)TestProjectFont_property_fontDescriptor {
    UIFont *font = [UIFont systemFontOfSize:18];
    TestProjectAttributeStringFoundationModel *m1 = [self createAttrStrModelWith:font];
    m1.desc = [NSString stringWithFormat:@"获取属性fontDescriptor:%@\nattrText:%@", font.fontDescriptor, m1.titleMutAttrStr];
    for (TestProjectAttributeStringFoundationModel *model in self.dataMutArr) {
        [model calculDataViewHeight];
    }

    self.tableView.dataSourceArray = self.dataMutArr;
}

- (void)TestProjectFont_fontWithSize {
    UIFont *font = [UIFont systemFontOfSize:18];
    font = [font fontWithSize:12];
    TestProjectAttributeStringFoundationModel *m1 = [self createAttrStrModelWith:font];
    m1.desc = [NSString stringWithFormat:@"重新修改font大小为12\nattrText:%@", m1.titleMutAttrStr];
    for (TestProjectAttributeStringFoundationModel *model in self.dataMutArr) {
        [model calculDataViewHeight];
    }

    self.tableView.dataSourceArray = self.dataMutArr;
}

- (void)TestProjectFont_property_leading {
    UIFont *font = [UIFont systemFontOfSize:18];
    TestProjectAttributeStringFoundationModel *m1 = [self createAttrStrModelWith:font];
    m1.desc = [NSString stringWithFormat:@"获取属性leading:%f\nattrText:%@", font.leading, m1.titleMutAttrStr];
    for (TestProjectAttributeStringFoundationModel *model in self.dataMutArr) {
        [model calculDataViewHeight];
    }

    self.tableView.dataSourceArray = self.dataMutArr;
}

- (void)TestProjectFont_property_lineHeight {
    UIFont *font = [UIFont systemFontOfSize:18];
    TestProjectAttributeStringFoundationModel *m1 = [self createAttrStrModelWith:font];
    m1.desc = [NSString stringWithFormat:@"获取属性lineHeight:%f\nattrText:%@", font.lineHeight, m1.titleMutAttrStr];
    for (TestProjectAttributeStringFoundationModel *model in self.dataMutArr) {
        [model calculDataViewHeight];
    }

    self.tableView.dataSourceArray = self.dataMutArr;
}

- (void)TestProjectFont_property_xHeight {
    UIFont *font = [UIFont systemFontOfSize:18];
    TestProjectAttributeStringFoundationModel *m1 = [self createAttrStrModelWith:font];
    m1.desc = [NSString stringWithFormat:@"获取属性xHeight:%f\nattrText:%@", font.xHeight, m1.titleMutAttrStr];
    for (TestProjectAttributeStringFoundationModel *model in self.dataMutArr) {
        [model calculDataViewHeight];
    }

    self.tableView.dataSourceArray = self.dataMutArr;
}

- (void)TestProjectFont_property_capHeight {
    UIFont *font = [UIFont systemFontOfSize:18];
    TestProjectAttributeStringFoundationModel *m1 = [self createAttrStrModelWith:font];
    m1.desc = [NSString stringWithFormat:@"获取属性capHeight:%f\nattrText:%@", font.capHeight, m1.titleMutAttrStr];
    for (TestProjectAttributeStringFoundationModel *model in self.dataMutArr) {
        [model calculDataViewHeight];
    }
    self.tableView.dataSourceArray = self.dataMutArr;
}

- (void)TestProjectFont_property_descender {
    UIFont *font = [UIFont systemFontOfSize:18];
    TestProjectAttributeStringFoundationModel *m1 = [self createAttrStrModelWith:font];
    m1.desc = [NSString stringWithFormat:@"获取属性descender:%f\nattrText:%@", font.descender, m1.titleMutAttrStr];
    for (TestProjectAttributeStringFoundationModel *model in self.dataMutArr) {
        [model calculDataViewHeight];
    }

    self.tableView.dataSourceArray = self.dataMutArr;
}

- (void)TestProjectFont_property_ascender {
    UIFont *font = [UIFont systemFontOfSize:18];
    TestProjectAttributeStringFoundationModel *m1 = [self createAttrStrModelWith:font];
    m1.desc = [NSString stringWithFormat:@"获取属性ascender:%f\nattrText:%@", font.ascender, m1.titleMutAttrStr];
    for (TestProjectAttributeStringFoundationModel *model in self.dataMutArr) {
        [model calculDataViewHeight];
    }

    self.tableView.dataSourceArray = self.dataMutArr;
}

- (void)TestProjectFont_property_pointSize {
    UIFont *font = [UIFont systemFontOfSize:18];
    TestProjectAttributeStringFoundationModel *m1 = [self createAttrStrModelWith:font];
    m1.desc = [NSString stringWithFormat:@"获取属性pointSize:%f\nattrText:%@", font.pointSize, m1.titleMutAttrStr];
    for (TestProjectAttributeStringFoundationModel *model in self.dataMutArr) {
        [model calculDataViewHeight];
    }

    self.tableView.dataSourceArray = self.dataMutArr;
}

- (void)TestProjectFont_property_fontName {
    UIFont *font = [UIFont systemFontOfSize:18];
    TestProjectAttributeStringFoundationModel *m1 = [self createAttrStrModelWith:font];
    m1.desc = [NSString stringWithFormat:@"获取属性fontName:%@\nattrText:%@", font.fontName, m1.titleMutAttrStr];
    for (TestProjectAttributeStringFoundationModel *model in self.dataMutArr) {
        [model calculDataViewHeight];
    }

    self.tableView.dataSourceArray = self.dataMutArr;
}

- (void)TestProjectFont_property_familyName {
    UIFont *font = [UIFont systemFontOfSize:18];
    TestProjectAttributeStringFoundationModel *m1 = [self createAttrStrModelWith:font];
    m1.desc = [NSString stringWithFormat:@"获取属性familyName:%@\nattrText:%@", font.familyName, m1.titleMutAttrStr];
    for (TestProjectAttributeStringFoundationModel *model in self.dataMutArr) {
        [model calculDataViewHeight];
    }

    self.tableView.dataSourceArray = self.dataMutArr;
}

- (void)TestProjectFont_add_monospacedSystemFontOfSize_weight {
    for (NSInteger i = 0; i < 10; i++) {
        NSInteger size = 20 + i;
        UIFont *font = [UIFont monospacedSystemFontOfSize:size weight:UIFontWeightBold];
        TestProjectAttributeStringFoundationModel *m = [self createAttrStrModelWith:font];
        m.desc = [NSString stringWithFormat:@"[UIFont monospacedSystemFontOfSize:%ld weight:UIFontWeightBold]设置字体的大小为：\n%@", size, m.titleMutAttrStr];
        [m calculDataViewHeight];
    }

    self.tableView.dataSourceArray = self.dataMutArr;
}

- (void)TestProjectFont_add_systemFontOfSize_weight_width {
    if (@available(iOS 16.0, *)) {
        NSArray *widths = @[@(UIFontWidthCondensed), @(UIFontWidthStandard), @(UIFontWidthExpanded), @(UIFontWidthCompressed)];
        for (NSInteger i = 0; i < widths.count; i++) {
            UIFontWeight width = [widths[i] floatValue];
            UIFont *font = [UIFont systemFontOfSize:14 weight:UIFontWeightBold width:width];
            TestProjectAttributeStringFoundationModel *m = [self createAttrStrModelWith:font];
            m.desc = [NSString stringWithFormat:@"设置字体的粗重为：\n%@", m.titleMutAttrStr];
            [m calculDataViewHeight];
        }
    }

    self.tableView.dataSourceArray = self.dataMutArr;
}

- (void)TestProjectFont_add_monospacedDigitSystemFontOfSize_weight {
    for (NSInteger i = 0; i < 10; i++) {
        NSInteger size = 20 + i;
        UIFont *font = [UIFont monospacedDigitSystemFontOfSize:size weight:UIFontWeightBold];
        TestProjectAttributeStringFoundationModel *m = [self createAttrStrModelWith:font];
        m.desc = [NSString stringWithFormat:@"[UIFont monospacedSystemFontOfSize:%ld weight:UIFontWeightBold]设置字体的大小为：\n%@", size, m.titleMutAttrStr];
        [m calculDataViewHeight];
    }

    self.tableView.dataSourceArray = self.dataMutArr;
}

- (void)TestProjectFont_add_systemFontOfSize_weight {
    NSArray *weights = @[@(UIFontWeightUltraLight), @(UIFontWeightThin), @(UIFontWeightLight), @(UIFontWeightRegular), @(UIFontWeightMedium), @(UIFontWeightSemibold), @(UIFontWeightBold), @(UIFontWeightHeavy), @(UIFontWeightBlack)];
    for (NSInteger i = 0; i < weights.count; i++) {
        UIFontWeight weight = [weights[i] floatValue];
        UIFont *font = [UIFont systemFontOfSize:14 weight:weight];
        TestProjectAttributeStringFoundationModel *m = [self createAttrStrModelWith:font];
        m.desc = [NSString stringWithFormat:@"设置字体的粗重为：\n%@", m.titleMutAttrStr];
        [m calculDataViewHeight];
    }

    self.tableView.dataSourceArray = self.dataMutArr;
}

- (void)TestProjectFont_add_italicSystemFontOfSize {
    for (NSInteger i = 0; i < 10; i++) {
        NSInteger size = 20 + i;
        UIFont *font = [UIFont italicSystemFontOfSize:size];
        TestProjectAttributeStringFoundationModel *m = [self createAttrStrModelWith:font];
        m.desc = [NSString stringWithFormat:@"[UIFont italicSystemFontOfSize:%ld]设置字体的大小为：\n%@", size, m.titleMutAttrStr];
        [m calculDataViewHeight];
    }

    self.tableView.dataSourceArray = self.dataMutArr;
}

- (void)TestProjectFont_add_boldSystemFontOfSize {
    for (NSInteger i = 0; i < 10; i++) {
        NSInteger size = 20 + i;
        UIFont *font = [UIFont boldSystemFontOfSize:size];
        TestProjectAttributeStringFoundationModel *m = [self createAttrStrModelWith:font];
        m.desc = [NSString stringWithFormat:@"[UIFont boldSystemFontOfSize:%ld]设置字体的大小为：\n%@", size, m.titleMutAttrStr];
        [m calculDataViewHeight];
    }

    self.tableView.dataSourceArray = self.dataMutArr;
}

- (void)TestProjectFont_add_systemFontOfSize {
    for (NSInteger i = 0; i < 10; i++) {
        NSInteger size = 20 + i;
        UIFont *font = [UIFont systemFontOfSize:size];
        TestProjectAttributeStringFoundationModel *m = [self createAttrStrModelWith:font];
        m.desc = [NSString stringWithFormat:@"[UIFont systemFontOfSize:%ld]设置字体的大小为：\n%@", size, m.titleMutAttrStr];
        [m calculDataViewHeight];
    }

    self.tableView.dataSourceArray = self.dataMutArr;
}

- (void)TestProjectFont_add_fontNamesForFamilyName {
    NSArray *font_familyNames = [UIFont familyNames];
    for (NSString *fontName in font_familyNames) {
        NSArray *fontNames = [UIFont fontNamesForFamilyName:fontName];
        TestProjectAttributeStringFoundationModel *m = [[TestProjectAttributeStringFoundationModel alloc] init];
        m.desc = [NSString stringWithFormat:@"获取%@字体的可以搭配的属性：\n%@", fontName, fontNames];
        [m calculDataViewHeight];
        [self.dataMutArr addObject:m];
    }

    self.tableView.dataSourceArray = self.dataMutArr;
}

- (void)TestProjectFont_property_familyNames {
    NSArray *font_familyNames = [UIFont familyNames];
    TestProjectAttributeStringFoundationModel *m1 = [[TestProjectAttributeStringFoundationModel alloc] init];
    NSString *desc = [NSString stringWithFormat:@"获取UIFont所有字体: 总个数为:%ld \n %@", font_familyNames.count, font_familyNames];
    m1.desc = desc;
    [m1 calculDataViewHeight];
    [self.dataMutArr addObject:m1];
    NSLog(@"%@", desc);

    self.tableView.dataSourceArray = self.dataMutArr;
}

- (void)TestProjectFont_add_fontWithName_size {
    NSArray *font_familyNames = [UIFont familyNames];
    for (NSString *fontName in font_familyNames) {
        UIFont *font = [UIFont fontWithName:fontName size:14];
        TestProjectAttributeStringFoundationModel *m = [self createAttrStrModelWith:font];
        m.desc = [NSString stringWithFormat:@"设置的字体是[UIFont fontWithName:@\"%@\" size:18] attrText:%@", fontName, m.titleMutAttrStr];
    }
    
    for (TestProjectAttributeStringFoundationModel *model in self.dataMutArr) {
        [model calculDataViewHeight];
    }

    self.tableView.dataSourceArray = self.dataMutArr;
}

- (void)TestProjectFont_add_preferredFontForTextStyle_compatibleWithTraitCollection {
    UIFont *font1 = [UIFont preferredFontForTextStyle:UIFontTextStyleLargeTitle compatibleWithTraitCollection:nil];
    TestProjectAttributeStringFoundationModel *m1 = [self createAttrStrModelWith:font1];
    m1.desc = [NSString stringWithFormat:@"设置的是UIFontTextStyleLargeTitle-34 attrText:%@", m1.titleMutAttrStr];
    for (TestProjectAttributeStringFoundationModel *model in self.dataMutArr) {
        [model calculDataViewHeight];
    }

    self.tableView.dataSourceArray = self.dataMutArr;
}

- (void)TestProjectFont_add_preferredFontForTextStyle {
    UIFont *font1 = [UIFont preferredFontForTextStyle:UIFontTextStyleLargeTitle];
    TestProjectAttributeStringFoundationModel *m1 = [self createAttrStrModelWith:font1];
    m1.desc = [NSString stringWithFormat:@"设置的是UIFontTextStyleLargeTitle-34 attrText:%@", m1.titleMutAttrStr];
    
    UIFont *font2 = [UIFont preferredFontForTextStyle:UIFontTextStyleTitle1];
    TestProjectAttributeStringFoundationModel *m2 = [self createAttrStrModelWith:font2];
    m2.desc = [NSString stringWithFormat:@"设置的是UIFontTextStyleTitle1-28 attrText:%@", m2.titleMutAttrStr];

    UIFont *font3 = [UIFont preferredFontForTextStyle:UIFontTextStyleTitle2];
    TestProjectAttributeStringFoundationModel *m3 = [self createAttrStrModelWith:font3];
    m3.desc = [NSString stringWithFormat:@"设置的是UIFontTextStyleTitle2-22 attrText:%@", m3.titleMutAttrStr];

    UIFont *font4 = [UIFont preferredFontForTextStyle:UIFontTextStyleTitle3];
    TestProjectAttributeStringFoundationModel *m4 = [self createAttrStrModelWith:font4];
    m4.desc = [NSString stringWithFormat:@"设置的是UIFontTextStyleTitle3-20 attrText:%@", m4.titleMutAttrStr];

    UIFont *font5 = [UIFont preferredFontForTextStyle:UIFontTextStyleHeadline];
    TestProjectAttributeStringFoundationModel *m5 = [self createAttrStrModelWith:font5];
    m5.desc = [NSString stringWithFormat:@"设置的是UIFontTextStyleHeadline-17 attrText:%@", m5.titleMutAttrStr];

    UIFont *font6 = [UIFont preferredFontForTextStyle:UIFontTextStyleSubheadline];
    TestProjectAttributeStringFoundationModel *m6 = [self createAttrStrModelWith:font6];
    m6.desc = [NSString stringWithFormat:@"设置的是UIFontTextStyleSubheadline-15 attrText:%@", m6.titleMutAttrStr];

    UIFont *font7 = [UIFont preferredFontForTextStyle:UIFontTextStyleBody];
    TestProjectAttributeStringFoundationModel *m7 = [self createAttrStrModelWith:font7];
    m7.desc = [NSString stringWithFormat:@"设置的是UIFontTextStyleBody-17 attrText:%@", m7.titleMutAttrStr];

    UIFont *font8 = [UIFont preferredFontForTextStyle:UIFontTextStyleCallout];
    TestProjectAttributeStringFoundationModel *m8 = [self createAttrStrModelWith:font8];
    m8.desc = [NSString stringWithFormat:@"设置的是UIFontTextStyleCallout-16 attrText:%@", m8.titleMutAttrStr];

    UIFont *font9 = [UIFont preferredFontForTextStyle:UIFontTextStyleFootnote];
    TestProjectAttributeStringFoundationModel *m9 = [self createAttrStrModelWith:font9];
    m9.desc = [NSString stringWithFormat:@"设置的是UIFontTextStyleFootnote-13 attrText:%@", m9.titleMutAttrStr];

    UIFont *font10 = [UIFont preferredFontForTextStyle:UIFontTextStyleCaption1];
    TestProjectAttributeStringFoundationModel *m10 = [self createAttrStrModelWith:font10];
    m10.desc = [NSString stringWithFormat:@"设置的是UIFontTextStyleCaption1-12 attrText:%@", m10.titleMutAttrStr];

    UIFont *font11 = [UIFont preferredFontForTextStyle:UIFontTextStyleCaption2];
    TestProjectAttributeStringFoundationModel *m11 = [self createAttrStrModelWith:font11];
    m11.desc = [NSString stringWithFormat:@"设置的是UIFontTextStyleCaption2-11 attrText:%@", m11.titleMutAttrStr];

    for (TestProjectAttributeStringFoundationModel *model in self.dataMutArr) {
        [model calculDataViewHeight];
    }

    self.tableView.dataSourceArray = self.dataMutArr;
}

@end
