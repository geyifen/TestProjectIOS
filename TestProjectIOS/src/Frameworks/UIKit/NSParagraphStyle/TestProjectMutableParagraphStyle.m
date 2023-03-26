//
//  TestProjectMutableParagraphStyle.m
//  TestProjectIOS
//
//  Created by zjrcumac on 2023/3/16.
//

#import "TestProjectMutableParagraphStyle.h"

#import "TestProjectAttributeStringFoundationCell.h"

@interface TestProjectMutableParagraphStyle ()

@property (nonatomic, copy) NSString *firstAttrText;
@property (nonatomic, strong) NSMutableParagraphStyle *style;

@end

@implementation TestProjectMutableParagraphStyle

- (NSString *)firstAttrText {
    if (!_firstAttrText) {
        _firstAttrText = @"段落的演示，还是需要和富文本一起使用的。  this is my unkown area. so, you should study hard。\n段落的演示，还是需要和富文本一起使用的。    this is my unkown area. so, you should study hard。\n段落的演示，还是需要和富文本一起使用的。    this is my unkown area. so, you should study hard。\n段落的演示，还是需要和富文本一起使用的。this is my unkown area. so, you should study hard。\n段落的演示，还是需要和富文本一起使用的。this is my unkown area. so, you should study hard。  一个段落的开头的数据\n我是第二段的内容数据我是第二段的内容数据我是第二段的内容数据我是第二段的内容数据work work work work work work work work work work work work work work work work work work work work work work work work work work work work work work 我是第二段的内容数据    我是第二段的内容数据我是第二段的内容数据abcdefghijklmnopqrstuvwxyz我是第二段的内容数据我是第二段的内容数据我是第二段的内容数据我是第二段的内容数据我是第二段的内容数据我是第二段的内容数据我是第二段的内容数据\n我是第三段的开头数据       We can never get it by working for it directly. It comes, like happiness, to those who are aiming at something higher. It is a byproduct of great, simple living. The joy of living comes from what we put into living, not from what we seek to gett.";
    }
    return _firstAttrText;
}

- (NSMutableParagraphStyle *)style {
    if (!_style) {
        _style = [[NSMutableParagraphStyle alloc] init];
    }
    return _style;
}


- (NSDictionary *)method_1 {
    return @{
        @"@property (readonly, NS_NONATOMIC_IOSONLY) CGFloat lineSpacing;":@{
            @"method":@"TestProjectMutableParagraphStyle_property_lineSpacing",
            @"desc":@"设置NSMutableParagraphStyle的属性lineSpacing CGFloat \n 设置文本行间距"}
    };
}

- (NSDictionary *)method_2 {
    return @{
        @"@property (readonly, NS_NONATOMIC_IOSONLY) CGFloat paragraphSpacing;":@{
            @"method":@"TestProjectMutableParagraphStyle_property_paragraphSpacing",
            @"desc":@"设置NSMutableParagraphStyle的属性paragraphSpacing CGFloat \n 设置文本段落间距"}
    };
}

- (NSDictionary *)method_3 {
    return @{
        @"@property (readonly, NS_NONATOMIC_IOSONLY) NSTextAlignment alignment;":@{
            @"method":@"TestProjectMutableParagraphStyle_property_alignment",
            @"desc":@"设置NSMutableParagraphStyle的属性alignment NSTextAlignment \n 设置文本对齐方式"}
    };
}

- (NSDictionary *)method_4 {
    return @{
        @"@property (readonly, NS_NONATOMIC_IOSONLY) CGFloat headIndent;":@{
            @"method":@"TestProjectMutableParagraphStyle_property_headIndent",
            @"desc":@"设置NSMutableParagraphStyle的属性headIndent CGFloat \n 设置文本段落间距 \n 设置文本段落除了第一行，其它行缩进字符距离"}
    };
}

- (NSDictionary *)method_5 {
    return @{
        @"@property (readonly, NS_NONATOMIC_IOSONLY) CGFloat tailIndent;":@{
            @"method":@"TestProjectMutableParagraphStyle_property_tailIndent",
            @"desc":@"设置NSMutableParagraphStyle的属性tailIndent CGFloat \n 设置文本尾部缩进字符距离, 目前只有0和正数，为正则一个字符占用一行"}
    };
}

- (NSDictionary *)method_6 {
    return @{
        @"@property (readonly, NS_NONATOMIC_IOSONLY) CGFloat firstLineHeadIndent;":@{
            @"method":@"TestProjectMutableParagraphStyle_property_firstLineHeadIndent",
            @"desc":@"设置NSMutableParagraphStyle的属性firstLineHeadIndent CGFloat \n 设置文本段落第一行缩进字符距离"}
    };
}

- (NSDictionary *)method_7 {
    return @{
        @"@property (readonly, NS_NONATOMIC_IOSONLY) CGFloat minimumLineHeight;":@{
            @"method":@"TestProjectMutableParagraphStyle_property_minimumLineHeight",
            @"desc":@"设置NSMutableParagraphStyle的属性minimumLineHeight CGFloat \n 设置文本最小行间距"}
    };
}

- (NSDictionary *)method_8 {
    return @{
        @"@property (readonly, NS_NONATOMIC_IOSONLY) CGFloat maximumLineHeight;":@{
            @"method":@"TestProjectMutableParagraphStyle_property_maximumLineHeight",
            @"desc":@"设置NSMutableParagraphStyle的属性maximumLineHeight CGFloat \n 设置文本最大行间距"}
    };
}

- (NSDictionary *)method_9 {
    return @{
        @"@property (readonly, NS_NONATOMIC_IOSONLY) NSLineBreakMode lineBreakMode;":@{
            @"method":@"TestProjectMutableParagraphStyle_property_lineBreakMode",
            @"desc":@"设置NSMutableParagraphStyle的属性lineBreakMode NSLineBreakMode \n 如果文本不够高，则设置文本截断方式"}
    };
}

- (NSDictionary *)method_10 {
    return @{
        @"@property (readonly, NS_NONATOMIC_IOSONLY) NSWritingDirection baseWritingDirection;":@{
            @"method":@"TestProjectMutableParagraphStyle_property_baseWritingDirection",
            @"desc":@"设置NSMutableParagraphStyle的属性baseWritingDirection NSWritingDirection \n 设置文本书写方向"}
    };
}

- (NSDictionary *)method_11 {
    return @{
        @"@property (readonly, NS_NONATOMIC_IOSONLY) CGFloat lineHeightMultiple;":@{
            @"method":@"TestProjectMutableParagraphStyle_property_lineHeightMultiple",
            @"desc":@"设置NSMutableParagraphStyle的属性lineHeightMultiple CGFloat \n 设置文本插入几个\"\\n\""}
    };
}

- (NSDictionary *)method_12 {
    return @{
        @"@property (readonly, NS_NONATOMIC_IOSONLY) CGFloat paragraphSpacingBefore;":@{
            @"method":@"TestProjectMutableParagraphStyle_property_paragraphSpacingBefore",
            @"desc":@"设置NSMutableParagraphStyle的属性paragraphSpacingBefore CGFloat \n 设置文本两个段落的间距"}
    };
}

- (NSDictionary *)method_13 {
    return @{
        @"@property (readonly, NS_NONATOMIC_IOSONLY) float hyphenationFactor;":@{
            @"method":@"TestProjectMutableParagraphStyle_property_hyphenationFactor",
            @"desc":@"设置NSMutableParagraphStyle的属性hyphenationFactor float \n 设置文本以‘-’连接一个单词被分割的两端"}
    };
}

- (NSDictionary *)method_14 {
    return @{
        @"@property (readonly, NS_NONATOMIC_IOSONLY) BOOL usesDefaultHyphenation API_AVAILABLE(macos(12.0), ios(15.0), tvos(15.0), watchos(8.0));":@{
            @"method":@"TestProjectMutableParagraphStyle_property_usesDefaultHyphenation",
            @"desc":@"设置NSMutableParagraphStyle的属性usesDefaultHyphenation BOOL \n 是否设置文本连接符"}
    };
}

- (NSDictionary *)method_15 {
    return @{
        @"@property (readonly,copy, NS_NONATOMIC_IOSONLY) NSArray<NSTextTab *> *tabStops API_AVAILABLE(macos(10.0), ios(7.0));":@{
            @"method":@"TestProjectMutableParagraphStyle_property_tabStops",
            @"desc":@"设置NSMutableParagraphStyle的属性tabStops NSArray<NSTextTab *> *"}
    };
}

- (NSDictionary *)method_16 {
    return @{
        @"@property (readonly, NS_NONATOMIC_IOSONLY) CGFloat defaultTabInterval API_AVAILABLE(macos(10.0), ios(7.0));":@{
            @"method":@"TestProjectMutableParagraphStyle_property_defaultTabInterval",
            @"desc":@"设置NSMutableParagraphStyle的属性defaultTabInterval CGFloat"}
    };
}

- (NSDictionary *)method_17 {
    return @{
        @"@property (readonly, copy, NS_NONATOMIC_IOSONLY) NSArray<NSTextList *> *textLists API_AVAILABLE(macos(10.0), ios(7.0), tvos(9.0)) API_UNAVAILABLE(watchos);":@{
            @"method":@"TestProjectMutableParagraphStyle_property_textLists",
            @"desc":@"设置NSMutableParagraphStyle的属性textLists NSArray<NSTextList *> *"}
    };
}

- (NSDictionary *)method_18 {
    return @{
        @"@property (readonly, NS_NONATOMIC_IOSONLY) BOOL allowsDefaultTighteningForTruncation API_AVAILABLE(macos(10.11), ios(9.0));":@{
            @"method":@"TestProjectMutableParagraphStyle_property_allowsDefaultTighteningForTruncation",
            @"desc":@"设置NSMutableParagraphStyle的属性allowsDefaultTighteningForTruncation BOOL \n 截断是否紧缩文字"}
    };
}

- (NSDictionary *)method_19 {
    return @{
        @"@property (readonly, NS_NONATOMIC_IOSONLY) NSLineBreakStrategy lineBreakStrategy API_AVAILABLE(macos(10.11), ios(9.0));":@{
            @"method":@"TestProjectMutableParagraphStyle_property_lineBreakStrategy",
            @"desc":@"设置NSMutableParagraphStyle的属性lineBreakStrategy NSLineBreakStrategy"}
    };
}

- (TestProjectAttributeStringFoundationModel *)createAttrStrModel {
    TestProjectAttributeStringFoundationModel *attrStrModel = [[TestProjectAttributeStringFoundationModel alloc] init];
    NSAttributedString *firstAttrStr = [[NSAttributedString alloc] initWithString:self.firstAttrText attributes:@{NSParagraphStyleAttributeName : self.style}];

    attrStrModel.titleMutAttrStr = [[NSMutableAttributedString alloc] initWithAttributedString:firstAttrStr];
    [self.dataMutArr addObject:attrStrModel];
    return attrStrModel;
}

//NSLineBreakStrategyNone = 0,
//// Use the push out line break strategy.
//// This strategy allows the text system to "push out" individual lines by some number of words to avoid an orphan word on the last line of the paragraph.
//// The current implementation usually pushes out the last line by a single word.
//NSLineBreakStrategyPushOut API_AVAILABLE(macos(10.11), ios(9.0)) = 1 << 0,
//// When specified, it prohibits breaking between Hangul characters. It is the preferable typesetting strategy for the modern Korean documents suitable for UI strings.
//NSLineBreakStrategyHangulWordPriority API_AVAILABLE(macos(11.0), ios(14.0)) = 1 << 1,
//// Use the same configuration of line break strategies that the system uses for standard UI labels. This set of line break strategies is optimized for displaying shorter strings that are common in UI labels and may not be suitable for large amounts of text.
//NSLineBreakStrategyStandard API_AVAILABLE(macos(11.0), ios(14.0)) = 0xFFFF

- (void)TestProjectMutableParagraphStyle_property_lineBreakStrategy {
    if (@available(iOS 14.0, *)) {
        NSArray *lineBreakStrategys = @[@(NSLineBreakStrategyNone), @(NSLineBreakStrategyPushOut),  @(NSLineBreakStrategyHangulWordPriority),  @(NSLineBreakStrategyStandard)];
        for (NSNumber *num in lineBreakStrategys) {
            _style = nil;
            self.style.lineBreakStrategy = [num integerValue];
            TestProjectAttributeStringFoundationModel *m1 = [self createAttrStrModel];
            m1.desc = [NSString stringWithFormat:@"设置的属性lineBreakStrategy：%ld attrText:%@", self.style.lineBreakStrategy, m1.titleMutAttrStr];
            [m1 calculDataViewHeight];
        }
    }
    self.tableView.dataSourceArray = self.dataMutArr;
}

- (void)TestProjectMutableParagraphStyle_property_allowsDefaultTighteningForTruncation {
    NSArray *allows = @[
    @{@(YES):@"截断是否紧缩文字：YES"},
    @{@(NO):@"截断是否紧缩文字：NO"}, ];
    for (NSDictionary *dic in allows) {
        NSNumber *num = dic.allKeys.firstObject;
        _style = nil;
        self.style.allowsDefaultTighteningForTruncation = [num boolValue];
        TestProjectAttributeStringFoundationModel *m1 = [self createAttrStrModel];
        m1.desc = [NSString stringWithFormat:@"设置的属性allowsDefaultTighteningForTruncation：%u attrText:%@", self.style.allowsDefaultTighteningForTruncation, m1.titleMutAttrStr];
        [m1 calculDataViewHeight];
    }
    
    self.tableView.dataSourceArray = self.dataMutArr;
}

- (void)TestProjectMutableParagraphStyle_property_textLists {
    NSTextList *textList1 = [[NSTextList alloc] init];
    textList1.startingItemNumber = 10;
    
    NSTextList *textList2 = [[NSTextList alloc] init];
    textList2.startingItemNumber = 100;

    self.style.textLists = @[textList1, textList2];

    TestProjectAttributeStringFoundationModel *m1 = [self createAttrStrModel];
    m1.desc = [NSString stringWithFormat:@"设置的属性textLists：%@ attrText:%@", self.style.textLists, m1.titleMutAttrStr];
    [m1 calculDataViewHeight];
    
    self.tableView.dataSourceArray = self.dataMutArr;
}

- (void)TestProjectMutableParagraphStyle_property_defaultTabInterval {
    self.style.defaultTabInterval = 100;

    TestProjectAttributeStringFoundationModel *m1 = [self createAttrStrModel];
    m1.desc = [NSString stringWithFormat:@"设置的属性defaultTabInterval：%f attrText:%@", self.style.defaultTabInterval, m1.titleMutAttrStr];
    [m1 calculDataViewHeight];
    
    self.tableView.dataSourceArray = self.dataMutArr;
}

- (void)TestProjectMutableParagraphStyle_property_tabStops {
    NSDictionary * tabDic = @{
        NSTabColumnTerminatorsAttributeName : [UIFont systemFontOfSize:30]
    };
    NSTextTab *textTab1 = [[NSTextTab alloc] initWithTextAlignment:NSTextAlignmentCenter location:1 options:tabDic];
    NSTextTab *textTab2 = [[NSTextTab alloc] initWithTextAlignment:NSTextAlignmentRight location:2 options:tabDic];
    self.style.tabStops = @[textTab1, textTab2];
    self.style.defaultTabInterval = 1;
    TestProjectAttributeStringFoundationModel *m1 = [self createAttrStrModel];
    m1.desc = [NSString stringWithFormat:@"设置的属性tabStops：%@ attrText:%@", self.style.tabStops, m1.titleMutAttrStr];
    [m1 calculDataViewHeight];
    
    self.tableView.dataSourceArray = self.dataMutArr;
}

- (void)TestProjectMutableParagraphStyle_property_usesDefaultHyphenation {
    if (@available(iOS 15.0, *)) {
        NSArray *usesDefaultHyphenations = @[
        @{@(YES):@"是否使用连字符：YES"},
        @{@(NO):@"是否使用连字符：NO"}, ];
        for (NSDictionary *dic in usesDefaultHyphenations) {
            NSNumber *num = dic.allKeys.firstObject;
            _style = nil;
            self.style.usesDefaultHyphenation = [num boolValue];
            TestProjectAttributeStringFoundationModel *m1 = [self createAttrStrModel];
            m1.desc = [NSString stringWithFormat:@"设置的属性usesDefaultHyphenation：%u \n %@ \n attrText:%@", self.style.usesDefaultHyphenation, [dic objectForKey:num], m1.titleMutAttrStr];
            [m1 calculDataViewHeight];
        }
    }
    self.tableView.dataSourceArray = self.dataMutArr;
}

- (void)TestProjectMutableParagraphStyle_property_hyphenationFactor {
    self.style.hyphenationFactor = 1;

    TestProjectAttributeStringFoundationModel *m1 = [self createAttrStrModel];
    m1.desc = [NSString stringWithFormat:@"设置的属性hyphenationFactor：%f attrText:%@", self.style.hyphenationFactor, m1.titleMutAttrStr];
    [m1 calculDataViewHeight];
    
    self.tableView.dataSourceArray = self.dataMutArr;
}

- (void)TestProjectMutableParagraphStyle_property_paragraphSpacingBefore {
    self.style.paragraphSpacingBefore = 10;

    TestProjectAttributeStringFoundationModel *m1 = [self createAttrStrModel];
    m1.desc = [NSString stringWithFormat:@"设置的属性paragraphSpacingBefore：%f attrText:%@", self.style.paragraphSpacingBefore, m1.titleMutAttrStr];
    [m1 calculDataViewHeight];
    
    self.tableView.dataSourceArray = self.dataMutArr;
}

- (void)TestProjectMutableParagraphStyle_property_lineHeightMultiple {
    self.style.lineHeightMultiple = 5;

    TestProjectAttributeStringFoundationModel *m1 = [self createAttrStrModel];
    m1.desc = [NSString stringWithFormat:@"设置的属性lineHeightMultiple：%f attrText:%@", self.style.lineHeightMultiple, m1.titleMutAttrStr];
    [m1 calculDataViewHeight];
    
    self.tableView.dataSourceArray = self.dataMutArr;
}

//NSWritingDirectionNatural       = -1,   // Determines direction using the Unicode Bidi Algorithm rules P2 and P3
//NSWritingDirectionLeftToRight   = 0,    // Left to right writing direction
//NSWritingDirectionRightToLeft   = 1     // Right to left writing direction

- (void)TestProjectMutableParagraphStyle_property_baseWritingDirection {
    NSArray *writingDirections = @[
    @{@(NSWritingDirectionNatural):@"书写方向：从左到右"},
    @{@(NSWritingDirectionLeftToRight):@"书写方向：从左到右"},
    @{@(NSWritingDirectionRightToLeft):@"书写方向：从右到左"}, ];
    for (NSDictionary *dic in writingDirections) {
        NSNumber *num = dic.allKeys.firstObject;
        _style = nil;
        NSWritingDirection writingDirection = [num integerValue];
        self.style.baseWritingDirection = writingDirection;

        TestProjectAttributeStringFoundationModel *m1 = [self createAttrStrModel];
        m1.desc = [NSString stringWithFormat:@"设置的属性baseWritingDirection：%ld \n %@ \n attrText:%@", self.style.baseWritingDirection, [dic objectForKey:num], m1.titleMutAttrStr];
        [m1 calculDataViewHeight];
    }
    
    self.tableView.dataSourceArray = self.dataMutArr;
}

//NSLineBreakByWordWrapping = 0,         // Wrap at word boundaries, default
//NSLineBreakByCharWrapping,        // Wrap at character boundaries
//NSLineBreakByClipping,        // Simply clip
//NSLineBreakByTruncatingHead,    // Truncate at head of line: "...wxyz"
//NSLineBreakByTruncatingTail,    // Truncate at tail of line: "abcd..."
//NSLineBreakByTruncatingMiddle    // Truncate middle of line:  "ab...yz"

- (void)TestProjectMutableParagraphStyle_property_lineBreakMode {
    NSArray *lineBreakModels =@[
    @{@(NSLineBreakByWordWrapping):@"以单词划分截断"},
    @{@(NSLineBreakByCharWrapping):@"以字符划分截断"},
    @{@(NSLineBreakByClipping):@"以视图大小划分截断"},
    @{@(NSLineBreakByTruncatingHead):@"最后一行首部显示..."},
    @{@(NSLineBreakByTruncatingTail):@"最后一行尾部部显示..."},
    @{@(NSLineBreakByTruncatingMiddle):@"最后一行中间部显示..."},];
    for (NSDictionary *dic in lineBreakModels) {
        NSNumber *num = dic.allKeys.firstObject;
        _style = nil;
        NSLineBreakMode lineBreakModel = [num integerValue];
        self.style.lineBreakMode = lineBreakModel;
        TestProjectAttributeStringFoundationModel *m1 = [self createAttrStrModel];
        m1.desc = [NSString stringWithFormat:@"设置的属性lineBreakMode：%ld \n 字符截断显示：%@ \n attrText:%@", self.style.lineBreakMode, [dic objectForKey:num], m1.titleMutAttrStr];
        [m1 calculDataViewHeight];
        m1->_titleHeight = 100;
    }
    
    self.tableView.dataSourceArray = self.dataMutArr;
}

- (void)TestProjectMutableParagraphStyle_property_maximumLineHeight {
    self.style.maximumLineHeight = 100;

    TestProjectAttributeStringFoundationModel *m1 = [self createAttrStrModel];
    m1.desc = [NSString stringWithFormat:@"设置的属性maximumLineHeight：%f attrText:%@", self.style.maximumLineHeight, m1.titleMutAttrStr];
    [m1 calculDataViewHeight];


    _style = nil;
    self.style.maximumLineHeight = -100;

    TestProjectAttributeStringFoundationModel *m2 = [self createAttrStrModel];
    m2.desc = [NSString stringWithFormat:@"设置的属性maximumLineHeight：%f attrText:%@", self.style.maximumLineHeight, m2.titleMutAttrStr];
    [m2 calculDataViewHeight];

    self.tableView.dataSourceArray = self.dataMutArr;
}

- (void)TestProjectMutableParagraphStyle_property_minimumLineHeight {
    self.style.minimumLineHeight = 50;

    TestProjectAttributeStringFoundationModel *m1 = [self createAttrStrModel];
    m1.desc = [NSString stringWithFormat:@"设置的属性minimumLineHeight：%f attrText:%@", self.style.minimumLineHeight, m1.titleMutAttrStr];
    [m1 calculDataViewHeight];
    
    _style = nil;
    self.style.minimumLineHeight = -100;

    TestProjectAttributeStringFoundationModel *m2 = [self createAttrStrModel];
    m2.desc = [NSString stringWithFormat:@"设置的属性minimumLineHeight：%f attrText:%@", self.style.minimumLineHeight, m2.titleMutAttrStr];
    [m2 calculDataViewHeight];
    
    self.tableView.dataSourceArray = self.dataMutArr;
}

- (void)TestProjectMutableParagraphStyle_property_firstLineHeadIndent {
    self.style.firstLineHeadIndent = 10;

    TestProjectAttributeStringFoundationModel *m1 = [self createAttrStrModel];
    m1.desc = [NSString stringWithFormat:@"设置的属性firstLineHeadIndent：%f attrText:%@", self.style.firstLineHeadIndent, m1.titleMutAttrStr];
    [m1 calculDataViewHeight];
    
    self.tableView.dataSourceArray = self.dataMutArr;
}

- (void)TestProjectMutableParagraphStyle_property_tailIndent {
    self.style.tailIndent = 0.001;

    TestProjectAttributeStringFoundationModel *m1 = [self createAttrStrModel];
    m1.desc = [NSString stringWithFormat:@"设置的属性tailIndent：%f attrText:%@", self.style.tailIndent, m1.titleMutAttrStr];
    [m1 calculDataViewHeight];
    
    self.tableView.dataSourceArray = self.dataMutArr;
}

- (void)TestProjectMutableParagraphStyle_property_headIndent {
    self.style.headIndent = 10;

    TestProjectAttributeStringFoundationModel *m1 = [self createAttrStrModel];
    m1.desc = [NSString stringWithFormat:@"设置的属性headIndent：%f attrText:%@", self.style.headIndent, m1.titleMutAttrStr];
    [m1 calculDataViewHeight];
    
    self.tableView.dataSourceArray = self.dataMutArr;
}

//NSTextAlignmentLeft      = 0,    // Visually left aligned
//#if TARGET_ABI_USES_IOS_VALUES
//NSTextAlignmentCenter    = 1,    // Visually centered
//NSTextAlignmentRight     = 2,    // Visually right aligned
//#else /* !TARGET_ABI_USES_IOS_VALUES */
//NSTextAlignmentRight     = 1,    // Visually right aligned
//NSTextAlignmentCenter    = 2,    // Visually centered
//#endif
//NSTextAlignmentJustified = 3,    // Fully-justified. The last line in a paragraph is natural-aligned.
//NSTextAlignmentNatural   = 4     // Indicates the default alignment for script

- (void)TestProjectMutableParagraphStyle_property_alignment {
    NSArray *alignments = @[
    @{@(NSTextAlignmentLeft):@"文本居左"},
    @{@(NSTextAlignmentCenter):@"文本居中"},
    @{@(NSTextAlignmentRight):@"文本居右"},
    @{@(NSTextAlignmentJustified):@"文本居左"},
    @{@(NSTextAlignmentNatural):@"文本居左"}, ];
    for (NSDictionary *dic in alignments) {
        NSNumber *num = dic.allKeys.firstObject;
        NSTextAlignment alignment = [num integerValue];
        _style = nil;
        self.style.alignment = alignment;
        TestProjectAttributeStringFoundationModel *m1 = [self createAttrStrModel];
        m1.desc = [NSString stringWithFormat:@"设置的属性alignment：%ld \n %@ \n attrText:%@", self.style.alignment, [dic objectForKey:num], m1.titleMutAttrStr];
        [m1 calculDataViewHeight];
    }
    
    self.tableView.dataSourceArray = self.dataMutArr;
}

- (void)TestProjectMutableParagraphStyle_property_paragraphSpacing {
    self.style.paragraphSpacing = 10;
    TestProjectAttributeStringFoundationModel *m1 = [self createAttrStrModel];
    m1.desc = [NSString stringWithFormat:@"设置的属性paragraphSpacing：%f attrText:%@", self.style.paragraphSpacing, m1.titleMutAttrStr];
    [m1 calculDataViewHeight];
    
    self.tableView.dataSourceArray = self.dataMutArr;
}

- (void)TestProjectMutableParagraphStyle_property_lineSpacing {
    self.style.lineSpacing = 10;
    TestProjectAttributeStringFoundationModel *m1 = [self createAttrStrModel];
    m1.desc = [NSString stringWithFormat:@"设置的属性lineSpacing：%f attrText:%@", self.style.lineSpacing, m1.titleMutAttrStr];
    [m1 calculDataViewHeight];
    
    self.tableView.dataSourceArray = self.dataMutArr;
}

@end
