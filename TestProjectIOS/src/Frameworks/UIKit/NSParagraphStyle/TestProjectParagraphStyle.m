//
//  TestProjectParagraphStyle.m
//  TestProjectIOS
//
//  Created by zjrcumac on 2023/3/16.
//

#import "TestProjectParagraphStyle.h"

#import "TestProjectAttributeStringFoundationCell.h"

@interface TestProjectParagraphStyle ()

@property (nonatomic, copy) NSString *firstAttrText;
@property (nonatomic, strong) NSMutableParagraphStyle *style;

@end

@implementation TestProjectParagraphStyle

- (NSString *)firstAttrText {
    if (!_firstAttrText) {
        _firstAttrText = @"我是第一个段落的开头的数据\n我是第二段的内容数据我是第二段的内容数据我是第二段的内容数据我是第二段的内容数据我是第二段的内容数据我是第二段的内容数据我是第二段的内容数据我是第二段的内容数据我是第二段的内容数据我是第二段的内容数据我是第二段的内容数据我是第二段的内容数据我是第二段的内容数据我是第二段的内容数据\n我是第三段的开头数据";
    }
    return _firstAttrText;
}

- (NSMutableParagraphStyle *)style {
    if (!_style) {
        _style = [NSMutableParagraphStyle defaultParagraphStyle];
    }
    return _style;
}

- (NSDictionary *)method_1 {
    return @{
        @"@property (readonly, NS_NONATOMIC_IOSONLY) CGFloat lineSpacing;":@{
            @"method":@"TestProjectParagraphStyle_property_lineSpacing",
            @"desc":@"获取NSMutableParagraphStyle的属性lineSpacing CGFloat"}
    };
}

- (NSDictionary *)method_2 {
    return @{
        @"@property (readonly, NS_NONATOMIC_IOSONLY) CGFloat paragraphSpacing;":@{
            @"method":@"TestProjectParagraphStyle_property_paragraphSpacing",
            @"desc":@"获取NSMutableParagraphStyle的属性paragraphSpacing CGFloat"}
    };
}

- (NSDictionary *)method_3 {
    return @{
        @"@property (readonly, NS_NONATOMIC_IOSONLY) NSTextAlignment alignment;":@{
            @"method":@"TestProjectParagraphStyle_property_alignment",
            @"desc":@"获取NSMutableParagraphStyle的属性alignment NSTextAlignment"}
    };
}

- (NSDictionary *)method_4 {
    return @{
        @"@property (readonly, NS_NONATOMIC_IOSONLY) CGFloat headIndent;":@{
            @"method":@"TestProjectParagraphStyle_property_headIndent",
            @"desc":@"获取NSMutableParagraphStyle的属性headIndent CGFloat"}
    };
}

- (NSDictionary *)method_5 {
    return @{
        @"@property (readonly, NS_NONATOMIC_IOSONLY) CGFloat tailIndent;":@{
            @"method":@"TestProjectParagraphStyle_property_tailIndent",
            @"desc":@"获取NSMutableParagraphStyle的属性tailIndent CGFloat"}
    };
}

- (NSDictionary *)method_6 {
    return @{
        @"@property (readonly, NS_NONATOMIC_IOSONLY) CGFloat firstLineHeadIndent;":@{
            @"method":@"TestProjectParagraphStyle_property_firstLineHeadIndent",
            @"desc":@"获取NSMutableParagraphStyle的属性firstLineHeadIndent CGFloat"}
    };
}

- (NSDictionary *)method_7 {
    return @{
        @"@property (readonly, NS_NONATOMIC_IOSONLY) CGFloat minimumLineHeight;":@{
            @"method":@"TestProjectParagraphStyle_property_minimumLineHeight",
            @"desc":@"获取NSMutableParagraphStyle的属性minimumLineHeight CGFloat"}
    };
}

- (NSDictionary *)method_8 {
    return @{
        @"@property (readonly, NS_NONATOMIC_IOSONLY) CGFloat maximumLineHeight;":@{
            @"method":@"TestProjectParagraphStyle_property_maximumLineHeight",
            @"desc":@"获取NSMutableParagraphStyle的属性maximumLineHeight CGFloat"}
    };
}

- (NSDictionary *)method_9 {
    return @{
        @"@property (readonly, NS_NONATOMIC_IOSONLY) NSLineBreakMode lineBreakMode;":@{
            @"method":@"TestProjectParagraphStyle_property_lineBreakMode",
            @"desc":@"获取NSMutableParagraphStyle的属性lineBreakMode NSLineBreakMode"}
    };
}

- (NSDictionary *)method_10 {
    return @{
        @"@property (readonly, NS_NONATOMIC_IOSONLY) NSWritingDirection baseWritingDirection;":@{
            @"method":@"TestProjectParagraphStyle_property_baseWritingDirection",
            @"desc":@"获取NSMutableParagraphStyle的属性baseWritingDirection NSWritingDirection"}
    };
}

- (NSDictionary *)method_11 {
    return @{
        @"@property (readonly, NS_NONATOMIC_IOSONLY) CGFloat lineHeightMultiple;":@{
            @"method":@"TestProjectParagraphStyle_property_lineHeightMultiple",
            @"desc":@"获取NSMutableParagraphStyle的属性lineHeightMultiple CGFloat"}
    };
}

- (NSDictionary *)method_12 {
    return @{
        @"@property (readonly, NS_NONATOMIC_IOSONLY) CGFloat paragraphSpacingBefore;":@{
            @"method":@"TestProjectParagraphStyle_property_paragraphSpacingBefore",
            @"desc":@"获取NSMutableParagraphStyle的属性paragraphSpacingBefore CGFloat"}
    };
}

- (NSDictionary *)method_13 {
    return @{
        @"@property (readonly, NS_NONATOMIC_IOSONLY) float hyphenationFactor;":@{
            @"method":@"TestProjectParagraphStyle_property_hyphenationFactor",
            @"desc":@"获取NSMutableParagraphStyle的属性hyphenationFactor float"}
    };
}

- (NSDictionary *)method_14 {
    return @{
        @"@property (readonly, NS_NONATOMIC_IOSONLY) BOOL usesDefaultHyphenation API_AVAILABLE(macos(12.0), ios(15.0), tvos(15.0), watchos(8.0));":@{
            @"method":@"TestProjectParagraphStyle_property_usesDefaultHyphenation",
            @"desc":@"获取NSMutableParagraphStyle的属性usesDefaultHyphenation BOOL"}
    };
}

- (NSDictionary *)method_15 {
    return @{
        @"@property (readonly,copy, NS_NONATOMIC_IOSONLY) NSArray<NSTextTab *> *tabStops API_AVAILABLE(macos(10.0), ios(7.0));":@{
            @"method":@"TestProjectParagraphStyle_property_tabStops",
            @"desc":@"获取NSMutableParagraphStyle的属性tabStops NSArray<NSTextTab *> *"}
    };
}

- (NSDictionary *)method_16 {
    return @{
        @"@property (readonly, NS_NONATOMIC_IOSONLY) CGFloat defaultTabInterval API_AVAILABLE(macos(10.0), ios(7.0));":@{
            @"method":@"TestProjectParagraphStyle_property_defaultTabInterval",
            @"desc":@"获取NSMutableParagraphStyle的属性defaultTabInterval CGFloat"}
    };
}

- (NSDictionary *)method_17 {
    return @{
        @"@property (readonly, copy, NS_NONATOMIC_IOSONLY) NSArray<NSTextList *> *textLists API_AVAILABLE(macos(10.0), ios(7.0), tvos(9.0)) API_UNAVAILABLE(watchos);":@{
            @"method":@"TestProjectParagraphStyle_property_textLists",
            @"desc":@"获取NSMutableParagraphStyle的属性textLists NSArray<NSTextList *> *"}
    };
}

- (NSDictionary *)method_18 {
    return @{
        @"@property (readonly, NS_NONATOMIC_IOSONLY) BOOL allowsDefaultTighteningForTruncation API_AVAILABLE(macos(10.11), ios(9.0));":@{
            @"method":@"TestProjectParagraphStyle_property_allowsDefaultTighteningForTruncation",
            @"desc":@"获取NSMutableParagraphStyle的属性allowsDefaultTighteningForTruncation BOOL"}
    };
}

- (NSDictionary *)method_19 {
    return @{
        @"@property (readonly, NS_NONATOMIC_IOSONLY) NSLineBreakStrategy lineBreakStrategy API_AVAILABLE(macos(10.11), ios(9.0));":@{
            @"method":@"TestProjectParagraphStyle_property_lineBreakStrategy",
            @"desc":@"获取NSMutableParagraphStyle的属性lineBreakStrategy NSLineBreakStrategy"}
    };
}

- (TestProjectAttributeStringFoundationModel *)createAttrStrModel {
    NSMutableParagraphStyle *style = [NSMutableParagraphStyle defaultParagraphStyle];

    TestProjectAttributeStringFoundationModel *attrStrModel = [[TestProjectAttributeStringFoundationModel alloc] init];
    NSAttributedString *firstAttrStr = [[NSAttributedString alloc] initWithString:self.firstAttrText attributes:@{NSParagraphStyleAttributeName : self.style}];

    attrStrModel.titleMutAttrStr = [[NSMutableAttributedString alloc] initWithAttributedString:firstAttrStr];
    [self.dataMutArr addObject:attrStrModel];
    return attrStrModel;
}

- (void)TestProjectParagraphStyle_property_lineBreakStrategy {
    TestProjectAttributeStringFoundationModel *m1 = [self createAttrStrModel];
    m1.desc = [NSString stringWithFormat:@"获取的属性lineBreakStrategy：%ld attrText:%@", self.style.lineBreakStrategy, m1.titleMutAttrStr];
    [m1 calculDataViewHeight];
    
    self.tableView.dataSourceArray = self.dataMutArr;
}

- (void)TestProjectParagraphStyle_property_allowsDefaultTighteningForTruncation {
    TestProjectAttributeStringFoundationModel *m1 = [self createAttrStrModel];
    m1.desc = [NSString stringWithFormat:@"获取的属性allowsDefaultTighteningForTruncation：%u attrText:%@", self.style.allowsDefaultTighteningForTruncation, m1.titleMutAttrStr];
    [m1 calculDataViewHeight];
    
    self.tableView.dataSourceArray = self.dataMutArr;
}

- (void)TestProjectParagraphStyle_property_textLists {
    TestProjectAttributeStringFoundationModel *m1 = [self createAttrStrModel];
    m1.desc = [NSString stringWithFormat:@"获取的属性textLists：%@ attrText:%@", self.style.textLists, m1.titleMutAttrStr];
    [m1 calculDataViewHeight];
    
    self.tableView.dataSourceArray = self.dataMutArr;
}

- (void)TestProjectParagraphStyle_property_defaultTabInterval {
    TestProjectAttributeStringFoundationModel *m1 = [self createAttrStrModel];
    m1.desc = [NSString stringWithFormat:@"获取的属性defaultTabInterval：%f attrText:%@", self.style.defaultTabInterval, m1.titleMutAttrStr];
    [m1 calculDataViewHeight];
    
    self.tableView.dataSourceArray = self.dataMutArr;
}

- (void)TestProjectParagraphStyle_property_tabStops {
    TestProjectAttributeStringFoundationModel *m1 = [self createAttrStrModel];
    m1.desc = [NSString stringWithFormat:@"获取的属性tabStops：%@ attrText:%@", self.style.tabStops, m1.titleMutAttrStr];
    [m1 calculDataViewHeight];
    
    self.tableView.dataSourceArray = self.dataMutArr;
}

- (void)TestProjectParagraphStyle_property_usesDefaultHyphenation {
    TestProjectAttributeStringFoundationModel *m1 = [self createAttrStrModel];
    if (@available(iOS 15.0, *)) {
        m1.desc = [NSString stringWithFormat:@"获取的属性usesDefaultHyphenation：%u attrText:%@", self.style.usesDefaultHyphenation, m1.titleMutAttrStr];
        [m1 calculDataViewHeight];
        
        self.tableView.dataSourceArray = self.dataMutArr;
    }
}

- (void)TestProjectParagraphStyle_property_hyphenationFactor {
    TestProjectAttributeStringFoundationModel *m1 = [self createAttrStrModel];
    m1.desc = [NSString stringWithFormat:@"获取的属性hyphenationFactor：%f attrText:%@", self.style.hyphenationFactor, m1.titleMutAttrStr];
    [m1 calculDataViewHeight];
    
    self.tableView.dataSourceArray = self.dataMutArr;
}

- (void)TestProjectParagraphStyle_property_paragraphSpacingBefore {
    TestProjectAttributeStringFoundationModel *m1 = [self createAttrStrModel];
    m1.desc = [NSString stringWithFormat:@"获取的属性paragraphSpacingBefore：%f attrText:%@", self.style.paragraphSpacingBefore, m1.titleMutAttrStr];
    [m1 calculDataViewHeight];
    
    self.tableView.dataSourceArray = self.dataMutArr;
}

- (void)TestProjectParagraphStyle_property_lineHeightMultiple {
    TestProjectAttributeStringFoundationModel *m1 = [self createAttrStrModel];
    m1.desc = [NSString stringWithFormat:@"获取的属性lineHeightMultiple：%f attrText:%@", self.style.lineHeightMultiple, m1.titleMutAttrStr];
    [m1 calculDataViewHeight];
    
    self.tableView.dataSourceArray = self.dataMutArr;
}

- (void)TestProjectParagraphStyle_property_baseWritingDirection {
    TestProjectAttributeStringFoundationModel *m1 = [self createAttrStrModel];
    m1.desc = [NSString stringWithFormat:@"获取的属性baseWritingDirection：%ld attrText:%@", self.style.baseWritingDirection, m1.titleMutAttrStr];
    [m1 calculDataViewHeight];
    
    self.tableView.dataSourceArray = self.dataMutArr;
}

- (void)TestProjectParagraphStyle_property_lineBreakMode {
    TestProjectAttributeStringFoundationModel *m1 = [self createAttrStrModel];
    m1.desc = [NSString stringWithFormat:@"获取的属性lineBreakMode：%ld attrText:%@", self.style.lineBreakMode, m1.titleMutAttrStr];
    [m1 calculDataViewHeight];
    
    self.tableView.dataSourceArray = self.dataMutArr;
}

- (void)TestProjectParagraphStyle_property_maximumLineHeight {
    TestProjectAttributeStringFoundationModel *m1 = [self createAttrStrModel];
    m1.desc = [NSString stringWithFormat:@"获取的属性maximumLineHeight：%f attrText:%@", self.style.maximumLineHeight, m1.titleMutAttrStr];
    [m1 calculDataViewHeight];
    
    self.tableView.dataSourceArray = self.dataMutArr;
}

- (void)TestProjectParagraphStyle_property_minimumLineHeight {
    TestProjectAttributeStringFoundationModel *m1 = [self createAttrStrModel];
    m1.desc = [NSString stringWithFormat:@"获取的属性minimumLineHeight：%f attrText:%@", self.style.minimumLineHeight, m1.titleMutAttrStr];
    [m1 calculDataViewHeight];
    
    self.tableView.dataSourceArray = self.dataMutArr;
}

- (void)TestProjectParagraphStyle_property_firstLineHeadIndent {
    TestProjectAttributeStringFoundationModel *m1 = [self createAttrStrModel];
    m1.desc = [NSString stringWithFormat:@"获取的属性firstLineHeadIndent：%f attrText:%@", self.style.firstLineHeadIndent, m1.titleMutAttrStr];
    [m1 calculDataViewHeight];
    
    self.tableView.dataSourceArray = self.dataMutArr;
}

- (void)TestProjectParagraphStyle_property_tailIndent {
    TestProjectAttributeStringFoundationModel *m1 = [self createAttrStrModel];
    m1.desc = [NSString stringWithFormat:@"获取的属性tailIndent：%f attrText:%@", self.style.tailIndent, m1.titleMutAttrStr];
    [m1 calculDataViewHeight];
    
    self.tableView.dataSourceArray = self.dataMutArr;
}

- (void)TestProjectParagraphStyle_property_headIndent {
    TestProjectAttributeStringFoundationModel *m1 = [self createAttrStrModel];
    m1.desc = [NSString stringWithFormat:@"获取的属性headIndent：%f attrText:%@", self.style.headIndent, m1.titleMutAttrStr];
    [m1 calculDataViewHeight];
    
    self.tableView.dataSourceArray = self.dataMutArr;
}

- (void)TestProjectParagraphStyle_property_alignment {
    TestProjectAttributeStringFoundationModel *m1 = [self createAttrStrModel];
    m1.desc = [NSString stringWithFormat:@"获取的属性alignment：%ld attrText:%@", self.style.alignment, m1.titleMutAttrStr];
    [m1 calculDataViewHeight];
    
    self.tableView.dataSourceArray = self.dataMutArr;
}

- (void)TestProjectParagraphStyle_property_paragraphSpacing {
    TestProjectAttributeStringFoundationModel *m1 = [self createAttrStrModel];
    m1.desc = [NSString stringWithFormat:@"获取的属性paragraphSpacing：%f attrText:%@", self.style.paragraphSpacing, m1.titleMutAttrStr];
    [m1 calculDataViewHeight];
    
    self.tableView.dataSourceArray = self.dataMutArr;
}

- (void)TestProjectParagraphStyle_property_lineSpacing {
    TestProjectAttributeStringFoundationModel *m1 = [self createAttrStrModel];
    m1.desc = [NSString stringWithFormat:@"获取的属性lineSpacing：%f attrText:%@", self.style.lineSpacing, m1.titleMutAttrStr];
    [m1 calculDataViewHeight];
    
    self.tableView.dataSourceArray = self.dataMutArr;
}

@end
