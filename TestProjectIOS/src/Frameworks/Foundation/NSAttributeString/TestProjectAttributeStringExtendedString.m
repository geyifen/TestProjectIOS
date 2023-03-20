//
//  TestProjectAttributeStringExtendedString.m
//  TestProjectIOS
//
//  Created by zjrcumac on 2023/3/3.
//

#import "TestProjectAttributeStringExtendedString.h"

#import "TestProjectAttributeStringFoundationCell.h"

@interface TestProjectAttributeStringExtendedString ()

@property (nonatomic, copy) NSString *firstAttrText;
@property (nonatomic, copy) NSString *secondAttrText;
@property (nonatomic, copy) NSString *thirdAttrText;
@property (nonatomic, copy) NSString *fourthAttrText;
@property (nonatomic, copy) NSString *fivthAttrText;
@property (nonatomic, copy) NSString *sixthAttrText;

@end

@implementation TestProjectAttributeStringExtendedString

- (NSString *)firstAttrText {
    if (!_firstAttrText) {
        _firstAttrText = @"我是第一个firstAttrText测试数据及解决";
    }
    return _firstAttrText;
}

- (NSString *)secondAttrText {
    if (!_secondAttrText) {
        _secondAttrText = @"我是第二个secondAttrText";
    }
    return _secondAttrText;
}

- (NSString *)thirdAttrText {
    if (!_thirdAttrText) {
        _thirdAttrText = @"我是第二个secondAttrText";
    }
    return _thirdAttrText;
}

- (NSString *)fourthAttrText {
    if (!_fourthAttrText) {
        _fourthAttrText = @"我是第四个secondAttrText";
    }
    return _fourthAttrText;
}

- (NSString *)fivthAttrText {
    if (!_fivthAttrText) {
        _fivthAttrText = @"我是第五个fivthAttrText";
    }
    return _fivthAttrText;
}

- (NSString *)sixthAttrText {
    if (!_sixthAttrText) {
        _sixthAttrText = @"我是第六个sixthAttrText";
    }
    return _sixthAttrText;
}

- (NSDictionary *)method_1 {
    return @{
        @"@property (readonly) NSUInteger length;":@{
            @"method":@"TestProjectAttributeStringFoundation_property_length",
            @"desc":[NSString stringWithFormat:@" 获取NSAttributeString的字符串长度 \n firstTextLength:%ld, secondTextLength:%ld", self.firstAttrText.length, self.secondAttrText.length]}
    };
}

- (NSDictionary *)method_2 {
    return @{
        @"- (nullable id)attribute:(NSAttributedStringKey)attrName atIndex:(NSUInteger)location effectiveRange:(nullable NSRangePointer)range;":@{
            @"method":@"TestProjectAttributeStringFoundation_attribute_atIndex_effectiveRange",
            @"desc":[NSString stringWithFormat:@" 获取单个NSAttributedStringKey的信息 \n 获取到location所在位置的attrText字段，如果有则返回，没有也不往后继续寻找并且返回为null \n @param location :匹配到在哪段attrText中 \n @param range :根据匹配的字段字符返回range \nfirstTextLength:%ld, secondTextLength:%ld", self.firstAttrText.length, self.secondAttrText.length]}
    };
}

- (NSDictionary *)method_3 {
    return @{
        @"- (NSAttributedString *)attributedSubstringFromRange:(NSRange)range;":@{
            @"method":@"TestProjectAttributeStringFoundation_attributedSubstringFromRange",
            @"desc":[NSString stringWithFormat:@" 获取attrText的子字符串 \n 根据range从attrText获取子串 \n 崩溃异常条件：range的范围必须在attrText范围中，否则崩溃 \n  @param range :获取子字符串的范围 \n firstTextLength:%ld, secondTextLength:%ld", self.firstAttrText.length,  self.secondAttrText.length]}
    };
}

- (NSDictionary *)method_4 {
    return @{
        @"- (NSDictionary<NSAttributedStringKey, id> *)attributesAtIndex:(NSUInteger)location longestEffectiveRange:(nullable NSRangePointer)range inRange:(NSRange)rangeLimit;":@{
            @"method":@"TestProjectAttributeStringFoundation_attributesAtIndex_longestEffectiveRange_inRange",
            @"desc":[NSString stringWithFormat:@" 获取attrText的NSAttributedStringKey集合信息 \n 先根据location查到是第几段attribute，没设置则返回空的字典；如果查到的attribute不是最后一段，则rangeLimit无效；如果是最后一段，则attribute的长度是否在rangeLimit限制中，不符合的崩溃；range则看attribute是否在rangeLimit中，在则返回attribute的range，不在返回NSMakeRange(0, 0) \n 崩溃异常条件：1、location超过文字长度 2、location在最后一段attrText字段中并且rangeLimit超过文字长度 \n @param location :从哪个位置开始 \n @param range :根据匹配的字段字符返回range \n @param rangeLimit: 配合location返回effRange \n firstTextLength:%ld, secondTextLength:%ld", self.firstAttrText.length, self.secondAttrText.length]}
    };
}

- (NSDictionary *)method_5 {
    return @{
        @"- (nullable id)attribute:(NSAttributedStringKey)attrName atIndex:(NSUInteger)location longestEffectiveRange:(nullable NSRangePointer)range inRange:(NSRange)rangeLimit;":@{
            @"method":@"TestProjectAttributeStringFoundation_attribute_atIndex_longestEffectiveRange_inRange",
            @"desc":[NSString stringWithFormat:@" 获取单个NSAttributedStringKey的信息  \n 先根据location查到是第几段attribute，没设置则返回null；range则看location是否在rangeLimit中，在则返回attribute的range，不在返回NSMakeRange(0, 0) \n 异常崩溃：location超过全段文字的长度 \n @param attrName :要获取的NSAttributedStringKey信息 \n @param location :匹配在哪段attrText中 \n @param range :根据匹配的字段字符返回range，如果location不在rangeLimit范围中，返回NSMakeRange(0, 0) \n @param rangeLimit: 根据匹配的字段字符返回range \n firstTextLength:%ld, secondTextLength:%ld", self.firstAttrText.length, self.secondAttrText.length]}
    };
}

- (NSDictionary *)method_6 {
    return @{
        @"- (BOOL)isEqualToAttributedString:(NSAttributedString *)other;":@{
            @"method":@"TestProjectAttributeStringFoundation_isEqualToAttributedString",
            @"desc":[NSString stringWithFormat:@" 判断两个attrText是否相同，如果文字不对或者长度不对或者NSAttributedStringKey不相等就不一样 \n firstTextLength:%ld, secondTextLength:%ld", self.firstAttrText.length, self.secondAttrText.length]}
    };
}

- (NSDictionary *)method_7 {
    return @{
        @"- (instancetype)initWithString:(NSString *)str;":@{
            @"method":@"TestProjectAttributeStringFoundation_initWithString",
            @"desc":@"通过initWithString创建attrText"}
    };
}

- (NSDictionary *)method_8 {
    return @{
        @"- (instancetype)initWithString:(NSString *)str attributes:(nullable NSDictionary<NSAttributedStringKey, id> *)attrs;":@{
            @"method":@"TestProjectAttributeStringFoundation_initWithString_attributes",
            @"desc":@"通过initWithString和attributes创建attrText"}
    };
}

- (NSDictionary *)method_9 {
    return @{
        @"- (instancetype)initWithAttributedString:(NSAttributedString *)attrStr;":@{
            @"method":@"TestProjectAttributeStringFoundation_initWithAttributedString",
            @"desc":@"通过init NSAttributedString创建attrText"}
    };
}

- (NSDictionary *)method_10 {
    return @{
        @"- (void)enumerateAttributesInRange:(NSRange)enumerationRange options:(NSAttributedStringEnumerationOptions)opts usingBlock:(void (NS_NOESCAPE ^)(NSDictionary<NSAttributedStringKey, id> *attrs, NSRange range, BOOL *stop))block API_AVAILABLE(macos(10.6), ios(4.0), watchos(2.0), tvos(9.0));":@{
            @"method":@"TestProjectAttributeStringFoundation_enumerateAttributesInRange_options_usingBlock",
            @"desc":@"通过block方式查询NSAttributedStringKey的集合信息 \n @param enumerationRange :查询的范围 \n @paramoptions :倒序还是顺序输出 \n @param block :输出的block"}
    };
}

- (NSDictionary *)method_11 {
    return @{
        @"- (void)enumerateAttribute:(NSAttributedStringKey)attrName inRange:(NSRange)enumerationRange options:(NSAttributedStringEnumerationOptions)opts usingBlock:(void (NS_NOESCAPE ^)(id _Nullable value, NSRange range, BOOL *stop))block API_AVAILABLE(macos(10.6), ios(4.0), watchos(2.0), tvos(9.0));":@{
            @"method":@"TestProjectAttributeStringFoundation_enumerateAttribute_inRange_options_usingBlock",
            @"desc":@" 通过block方式查询特定的NSAttributedStringKey单个信息 \n @param attrName :查询的NSAttributedStringKey\n@param enumerationRange :查询的范围 \n @paramoptions :倒序还是顺序输出 \n @param block :输出的block"}
    };
}

- (TestProjectAttributeStringFoundationModel *)createAttrStrModel {
    TestProjectAttributeStringFoundationModel *attrStrModel = [[TestProjectAttributeStringFoundationModel alloc] init];
    NSAttributedString *firstAttrStr = [[NSAttributedString alloc] initWithString:self.firstAttrText attributes:@{NSFontAttributeName:[UIFont systemFontOfSize:11]}];
    NSAttributedString *secondAttrStr = [[NSAttributedString alloc] initWithString:self.secondAttrText attributes:@{NSForegroundColorAttributeName:[UIColor colorFromString:@"#F33"], NSFontAttributeName:[UIFont systemFontOfSize:22]}];
    NSAttributedString *thirdAttrStr = [[NSAttributedString alloc] initWithString:self.thirdAttrText attributes:@{NSForegroundColorAttributeName:[UIColor colorFromString:@"#F33"], NSFontAttributeName:[UIFont systemFontOfSize:22]}];
    NSAttributedString *fourthAttrStr = [[NSAttributedString alloc] initWithString:self.fourthAttrText attributes:@{NSForegroundColorAttributeName:[UIColor colorFromString:@"#F33"], NSFontAttributeName:[UIFont systemFontOfSize:22]}];
    NSAttributedString *fivethAttrStr = [[NSAttributedString alloc] initWithString:self.fivthAttrText attributes:nil];
    NSAttributedString *sixthAttrStr = [[NSAttributedString alloc] initWithString:self.sixthAttrText attributes:@{NSStrokeColorAttributeName:[UIColor colorFromString:@"#33F"]}];

    attrStrModel.titleMutAttrStr = [[NSMutableAttributedString alloc] initWithAttributedString:firstAttrStr];
    [attrStrModel.titleMutAttrStr appendAttributedString:secondAttrStr];
    [attrStrModel.titleMutAttrStr appendAttributedString:thirdAttrStr];
    [attrStrModel.titleMutAttrStr appendAttributedString:fourthAttrStr];
    [attrStrModel.titleMutAttrStr appendAttributedString:fivethAttrStr];
    [attrStrModel.titleMutAttrStr appendAttributedString:sixthAttrStr];

    return attrStrModel;
}

- (void)TestProjectAttributeStringFoundation_enumerateAttribute_inRange_options_usingBlock {
    TestProjectAttributeStringFoundationModel *m0 = [self createAttrStrModel];
    m0.desc = [NSString stringWithFormat:@"当前的attrText的信息:\n%@", m0.titleMutAttrStr];
    [m0 calculDataViewHeight];
    self.compareViewModel = m0;

    NSMutableArray *mutDataArr = [NSMutableArray array];
    
    TestProjectAttributeStringFoundationModel *m1 = [self createAttrStrModel];
    NSRange inRange1 = NSMakeRange(0, m1.titleMutAttrStr.length);
    NSMutableString *mut1Str = [[NSMutableString alloc] initWithString:@"NSAttributedStringEnumerationReverse我是倒序执行\n"];
    [m1.titleMutAttrStr enumerateAttribute:NSForegroundColorAttributeName inRange:inRange1 options:NSAttributedStringEnumerationReverse usingBlock:^(NSDictionary<NSAttributedStringKey,id> * _Nonnull attrs, NSRange range, BOOL * _Nonnull stop) {
        [mut1Str appendString:[NSString stringWithFormat:@"attrs:%@ range:%@ stop:%u\n", attrs, NSStringFromRange(range), *stop]];
    }];
    m1.desc = mut1Str;
    [m1 calculDataViewHeight];
    [mutDataArr addObject:m1];
    
    TestProjectAttributeStringFoundationModel *m2 = [self createAttrStrModel];
    NSRange inRange2 = NSMakeRange(0, m2.titleMutAttrStr.length);
    NSMutableString *mut2Str = [[NSMutableString alloc] initWithString:@"NSAttributedStringEnumerationLongestEffectiveRangeNotRequired我是顺序执行\n"];
    [m2.titleMutAttrStr enumerateAttribute:NSForegroundColorAttributeName inRange:inRange2 options:NSAttributedStringEnumerationLongestEffectiveRangeNotRequired usingBlock:^(NSDictionary<NSAttributedStringKey,id> * _Nonnull attrs, NSRange range, BOOL * _Nonnull stop) {
        [mut2Str appendString:[NSString stringWithFormat:@"attrs:%@ range:%@ stop:%u\n", attrs, NSStringFromRange(range), *stop]];
    }];
    m2.desc = mut2Str;
    [m2 calculDataViewHeight];
    [mutDataArr addObject:m2];

    self.tableView.dataSourceArray = mutDataArr;
}

- (void)TestProjectAttributeStringFoundation_enumerateAttributesInRange_options_usingBlock {
    TestProjectAttributeStringFoundationModel *m0 = [self createAttrStrModel];
    m0.desc = [NSString stringWithFormat:@"当前的attrText的信息:\n%@", m0.titleMutAttrStr];
    [m0 calculDataViewHeight];
    self.compareViewModel = m0;

    NSMutableArray *mutDataArr = [NSMutableArray array];
    
    TestProjectAttributeStringFoundationModel *m1 = [self createAttrStrModel];
    NSRange inRange1 = NSMakeRange(0, m1.titleMutAttrStr.length);
    NSMutableString *mut1Str = [[NSMutableString alloc] initWithString:@"我是全局的attrText NSAttributedStringEnumerationReverse我是倒序执行\n"];
    [m1.titleMutAttrStr enumerateAttributesInRange:inRange1 options:NSAttributedStringEnumerationReverse usingBlock:^(NSDictionary<NSAttributedStringKey,id> * _Nonnull attrs, NSRange range, BOOL * _Nonnull stop) {
        [mut1Str appendString:[NSString stringWithFormat:@"attrs:%@ range:%@ stop:%u\n", attrs, NSStringFromRange(range), *stop]];
    }];
    m1.desc = mut1Str;
    [m1 calculDataViewHeight];
    [mutDataArr addObject:m1];
    
    TestProjectAttributeStringFoundationModel *m2 = [self createAttrStrModel];
    NSRange inRange2 = NSMakeRange(0, self.firstAttrText.length);
    NSMutableString *mut2Str = [[NSMutableString alloc] initWithString:@"我是第一段的attrText NSAttributedStringEnumerationReverse我是倒序执行\n"];
    [m2.titleMutAttrStr enumerateAttributesInRange:inRange2 options:NSAttributedStringEnumerationReverse usingBlock:^(NSDictionary<NSAttributedStringKey,id> * _Nonnull attrs, NSRange range, BOOL * _Nonnull stop) {
        [mut2Str appendString:[NSString stringWithFormat:@"attrs:%@ range:%@ stop:%u\n", attrs, NSStringFromRange(range), *stop]];
    }];
    m2.desc = mut2Str;
    [m2 calculDataViewHeight];
    [mutDataArr addObject:m2];

    TestProjectAttributeStringFoundationModel *m3 = [self createAttrStrModel];
    NSRange inRange3 = NSMakeRange(0, m3.titleMutAttrStr.length);
    NSMutableString *mut3Str = [[NSMutableString alloc] initWithString:@"我是全局的attrText NSAttributedStringEnumerationReverse我是顺序执行\n"];
    [m3.titleMutAttrStr enumerateAttributesInRange:inRange3 options:NSAttributedStringEnumerationReverse usingBlock:^(NSDictionary<NSAttributedStringKey,id> * _Nonnull attrs, NSRange range, BOOL * _Nonnull stop) {
        [mut3Str appendString:[NSString stringWithFormat:@"attrs:%@ range:%@ stop:%u\n", attrs, NSStringFromRange(range), *stop]];
    }];
    m3.desc = mut3Str;
    [m3 calculDataViewHeight];
    [mutDataArr addObject:m3];

    
    TestProjectAttributeStringFoundationModel *m4 = [self createAttrStrModel];
    NSRange inRange4 = NSMakeRange(0, self.firstAttrText.length);
    NSMutableString *mut4Str = [[NSMutableString alloc] initWithString:@"我是第一段的NSAttributedStringEnumerationLongestEffectiveRangeNotRequired我是顺序执行\n"];
    [m4.titleMutAttrStr enumerateAttributesInRange:inRange4 options:NSAttributedStringEnumerationLongestEffectiveRangeNotRequired usingBlock:^(NSDictionary<NSAttributedStringKey,id> * _Nonnull attrs, NSRange range, BOOL * _Nonnull stop) {
        [mut4Str appendString:[NSString stringWithFormat:@"attrs:%@ range:%@ stop:%u\n", attrs, NSStringFromRange(range), *stop]];
    }];
    m4.desc = mut4Str;
    [m4 calculDataViewHeight];
    [mutDataArr addObject:m4];

    self.tableView.dataSourceArray = mutDataArr;
}

- (void)TestProjectAttributeStringFoundation_initWithAttributedString {
    NSMutableArray *mutDataArr = [NSMutableArray array];
    TestProjectAttributeStringFoundationModel *m1_c = [self createAttrStrModel];

    TestProjectAttributeStringFoundationModel *m1 = [[TestProjectAttributeStringFoundationModel alloc] init];
    m1.titleMutAttrStr = [[NSMutableAttributedString alloc] initWithAttributedString:m1_c.titleMutAttrStr];
    NSRange range;
    NSDictionary *dic = [m1.titleMutAttrStr attributesAtIndex:0 effectiveRange:&range];
    m1.desc = [NSString stringWithFormat:@"range:%@ %@", NSStringFromRange(range), dic];
    [m1 calculDataViewHeight];
    [mutDataArr addObject:m1];

    self.tableView.dataSourceArray = mutDataArr;
}

- (void)TestProjectAttributeStringFoundation_initWithString_attributes {
    NSMutableArray *mutDataArr = [NSMutableArray array];

    TestProjectAttributeStringFoundationModel *m1 = [[TestProjectAttributeStringFoundationModel alloc] init];
    m1.titleMutAttrStr = [[NSMutableAttributedString alloc] initWithString:self.firstAttrText attributes:@{NSForegroundColorAttributeName:[UIColor colorFromString:@"#223322"], NSFontAttributeName:[UIFont systemFontOfSize:20]}];
    NSRange range;
    NSDictionary *dic = [m1.titleMutAttrStr attributesAtIndex:0 effectiveRange:&range];
    m1.desc = [NSString stringWithFormat:@"range:%@ %@", NSStringFromRange(range), dic];;
    [m1 calculDataViewHeight];
    [mutDataArr addObject:m1];

    self.tableView.dataSourceArray = mutDataArr;
}

- (void)TestProjectAttributeStringFoundation_initWithString {
    NSMutableArray *mutDataArr = [NSMutableArray array];

    TestProjectAttributeStringFoundationModel *m1 = [[TestProjectAttributeStringFoundationModel alloc] init];
    m1.titleMutAttrStr = [[NSMutableAttributedString alloc] initWithString:self.firstAttrText];
    NSRange range;
    NSDictionary *dic = [m1.titleMutAttrStr attributesAtIndex:0 effectiveRange:&range];
    m1.desc = [NSString stringWithFormat:@"range:%@ %@", NSStringFromRange(range), dic];;
    [m1 calculDataViewHeight];
    [mutDataArr addObject:m1];

    self.tableView.dataSourceArray = mutDataArr;
}

- (void)TestProjectAttributeStringFoundation_isEqualToAttributedString {
    TestProjectAttributeStringFoundationModel *m0 = [self createAttrStrModel];
    m0.desc = [NSString stringWithFormat:@"当前的attrText的信息:\n%@", m0.titleMutAttrStr];
    [m0 calculDataViewHeight];
    self.compareViewModel = m0;

    TestProjectAttributeStringFoundationModel *m1_c = [self createAttrStrModel];
    TestProjectAttributeStringFoundationModel *m2_c = [self createAttrStrModel];
    NSAttributedString *m1_2_c = [m1_c.titleMutAttrStr attributedSubstringFromRange:NSMakeRange(self.firstAttrText.length, self.secondAttrText.length)];
    NSAttributedString *m2_2_c = [m1_c.titleMutAttrStr attributedSubstringFromRange:NSMakeRange(self.firstAttrText.length, self.secondAttrText.length)];
    NSAttributedString *m2_3_c = [m1_c.titleMutAttrStr attributedSubstringFromRange:NSMakeRange((self.firstAttrText.length + self.secondAttrText.length), self.thirdAttrText.length)];
    NSAttributedString *m2_3_less_c = [m1_c.titleMutAttrStr attributedSubstringFromRange:NSMakeRange((self.firstAttrText.length + self.secondAttrText.length), self.thirdAttrText.length - 5)];
    NSAttributedString *m2_4_c = [m1_c.titleMutAttrStr attributedSubstringFromRange:NSMakeRange((m2_c.titleMutAttrStr.length - self.fourthAttrText.length), self.fourthAttrText.length)];


    BOOL res_title_c = [m1_c.titleMutAttrStr isEqualToAttributedString:m2_c.titleMutAttrStr];

    NSMutableArray *mutDataArr = [NSMutableArray array];
    TestProjectAttributeStringFoundationModel *m1 = [self createAttrStrModel];
    m1.desc = [NSString stringWithFormat:@"第一个的标题和第二个的标题比较 attrText是否相同 res_title_c:%u", res_title_c];
    [m1 calculDataViewHeight];
    [mutDataArr addObject:m1];
    
    BOOL res_2_2_c = [m1_2_c isEqualToAttributedString:m2_2_c];
    TestProjectAttributeStringFoundationModel *m2 = [self createAttrStrModel];
    m2.desc = [NSString stringWithFormat:@"第一个的第二段的attrText和第二个的第二段的attrText是否相同 res_2_2_c:%u", res_2_2_c];
    [m2 calculDataViewHeight];
    [mutDataArr addObject:m2];
    
    BOOL res_2_3_c = [m1_2_c isEqualToAttributedString:m2_3_c];
    TestProjectAttributeStringFoundationModel *m3 = [self createAttrStrModel];
    m3.desc = [NSString stringWithFormat:@"第一个的第二段的attrText和第二个的第三段的attrText是否相同 res_2_3_c:%u", res_2_3_c];
    [m3 calculDataViewHeight];
    [mutDataArr addObject:m3];

    BOOL res_2_3_less_c = [m1_2_c isEqualToAttributedString:m2_3_less_c];
    TestProjectAttributeStringFoundationModel *m4 = [self createAttrStrModel];
    m4.desc = [NSString stringWithFormat:@"第一个的第二段的attrText和第二个的第三段的attrText的长度减少是否相同 res_2_3_less_c:%u", res_2_3_less_c];
    [m4 calculDataViewHeight];
    [mutDataArr addObject:m4];
    
    BOOL res_2_4_c = [m1_2_c isEqualToAttributedString:m2_4_c];
    TestProjectAttributeStringFoundationModel *m5 = [self createAttrStrModel];
    m5.desc = [NSString stringWithFormat:@"第一个的第二段的attrText和第二个的第四段的attrText是否相同 res_2_4_c:%u", res_2_4_c];
    [m5 calculDataViewHeight];
    [mutDataArr addObject:m5];

    self.tableView.dataSourceArray = mutDataArr;
}

- (void)TestProjectAttributeStringFoundation_attribute_atIndex_longestEffectiveRange_inRange {
    TestProjectAttributeStringFoundationModel *m0 = [self createAttrStrModel];
    m0.desc = [NSString stringWithFormat:@"当前的attrText的信息:\n%@", m0.titleMutAttrStr];
    [m0 calculDataViewHeight];
    self.compareViewModel = m0;

    NSMutableArray *mutDataArr = [NSMutableArray array];
    TestProjectAttributeStringFoundationModel *m1 = [self createAttrStrModel];
    NSRange effecRange1;
    NSRange inRange1 = NSMakeRange(0, self.firstAttrText.length + 1000);
    NSInteger atIndex1 = 0;
    NSDictionary *dic1 = [m1.titleMutAttrStr attribute:NSForegroundColorAttributeName atIndex:atIndex1 longestEffectiveRange:&effecRange1 inRange:inRange1];
    m1.desc = [NSString stringWithFormat:@"我是在第一段内的atIndex:%ld 获取的是在第一段内的effecRange:%@ 我是在全段内的inRange:%@ 获取的是在第一段内的NSAttributedStringKey的信息: %@", atIndex1, NSStringFromRange(effecRange1), NSStringFromRange(inRange1), dic1];
    [m1 calculDataViewHeight];
    [mutDataArr addObject:m1];
    
    TestProjectAttributeStringFoundationModel *m2 = [self createAttrStrModel];
    NSRange effecRange2;
    NSInteger atIndex2 = m2.titleMutAttrStr.length - self.sixthAttrText.length - self.fivthAttrText.length;
    NSRange inRange2 = NSMakeRange(atIndex2, self.fivthAttrText.length);
    NSDictionary *dic2 = [m2.titleMutAttrStr attribute:NSForegroundColorAttributeName atIndex:atIndex2 longestEffectiveRange:&effecRange2 inRange:inRange2];
    m2.desc = [NSString stringWithFormat:@"我是在第五段内的atIndex:%ld 获取的是在第五段内的effecRange:%@ 我是在五段内的inRange:%@ 获取的是在第五段内的NSAttributedStringKey的信息: %@", atIndex2, NSStringFromRange(effecRange2), NSStringFromRange(inRange2), dic2];
    [m2 calculDataViewHeight];
    [mutDataArr addObject:m2];
    
    TestProjectAttributeStringFoundationModel *m3 = [self createAttrStrModel];
    NSRange effecRange3;
    NSInteger atIndex3 = m3.titleMutAttrStr.length - self.sixthAttrText.length - self.fivthAttrText.length - 2;
    NSRange inRange3 = NSMakeRange(m3.titleMutAttrStr.length - self.sixthAttrText.length - self.fivthAttrText.length, self.fivthAttrText.length);
    NSDictionary *dic3 = [m3.titleMutAttrStr attribute:NSForegroundColorAttributeName atIndex:atIndex3 longestEffectiveRange:&effecRange3 inRange:inRange3];
    m3.desc = [NSString stringWithFormat:@"我是在第五段内的前两个字符atIndex:%ld 获取的是NSMakeRange(0, 0)的effecRange:%@ 我是在五段内的inRange:%@ 获取的是在第四段内的NSAttributedStringKey的信息: %@", atIndex3, NSStringFromRange(effecRange3), NSStringFromRange(inRange3), dic3];
    [m3 calculDataViewHeight];
    [mutDataArr addObject:m3];

    TestProjectAttributeStringFoundationModel *m4 = [self createAttrStrModel];
    NSRange effecRange4;
    NSInteger atIndex4 = m4.titleMutAttrStr.length - self.sixthAttrText.length;
    NSRange inRange4 = NSMakeRange(m4.titleMutAttrStr.length - self.sixthAttrText.length - self.fivthAttrText.length, 100);
    NSDictionary *dic4 = [m4.titleMutAttrStr attribute:NSForegroundColorAttributeName atIndex:atIndex4 longestEffectiveRange:&effecRange4 inRange:inRange4];
    m4.desc = [NSString stringWithFormat:@"我是在第六段内的atIndex:%ld 获取的是NSMakeRange(0, 0)的:%@ 我是在五段内的inRange:%@ 获取的是在第六段内的NSAttributedStringKey的信息: %@", atIndex4, NSStringFromRange(effecRange4), NSStringFromRange(inRange4), dic4];
    [m4 calculDataViewHeight];
    [mutDataArr addObject:m4];

    TestProjectAttributeStringFoundationModel *m5 = [self createAttrStrModel];
    NSRange effecRange5;
    NSInteger atIndex5 = m5.titleMutAttrStr.length - self.sixthAttrText.length;
    NSRange inRange5 = NSMakeRange(atIndex5, self.sixthAttrText.length);
    NSDictionary *dic5 = [m5.titleMutAttrStr attribute:NSForegroundColorAttributeName atIndex:atIndex5 longestEffectiveRange:&effecRange5 inRange:inRange5];
    m5.desc = [NSString stringWithFormat:@"我是在第六段内的atIndex:%ld 获取的是在第六段内的effecRange:%@ 我是在六段内的inRange:%@ 获取的是在第六段内的NSAttributedStringKey的信息: %@", atIndex5, NSStringFromRange(effecRange5), NSStringFromRange(inRange5), dic5];
    [m5 calculDataViewHeight];
    [mutDataArr addObject:m5];

    TestProjectAttributeStringFoundationModel *m6 = [self createAttrStrModel];
    NSRange effecRange6;
    NSRange inRange6 = NSMakeRange(0, m6.titleMutAttrStr.length + 1000);
    NSInteger atIndex6 = m6.titleMutAttrStr.length - 3;
    NSDictionary *dic6 = [m6.titleMutAttrStr attribute:NSStrokeColorAttributeName atIndex:atIndex6 longestEffectiveRange:&effecRange6 inRange:inRange6];
    m6.desc = [NSString stringWithFormat:@"我是在第六段内的atIndex:%ld 获取的是在第六段内的effecRange:%@ 我是在超过全段内的inRange:%@ 获取的是在第六段内的NSAttributedStringKey的信息: %@", atIndex6, NSStringFromRange(effecRange6), NSStringFromRange(inRange6), dic6];
    [m6 calculDataViewHeight];
    [mutDataArr addObject:m6];

    self.tableView.dataSourceArray = mutDataArr;
}

- (void)TestProjectAttributeStringFoundation_attributesAtIndex_longestEffectiveRange_inRange {
    TestProjectAttributeStringFoundationModel *m0 = [self createAttrStrModel];
    m0.desc = [NSString stringWithFormat:@"当前的attrText的信息:\n%@", m0.titleMutAttrStr];
    [m0 calculDataViewHeight];
    self.compareViewModel = m0;

    NSMutableArray *mutDataArr = [NSMutableArray array];

    TestProjectAttributeStringFoundationModel *m1 = [self createAttrStrModel];
    NSRange effecRange1;
    NSRange inRange1 = NSMakeRange(0, self.firstAttrText.length + 1000);
    NSInteger atIndex1 = 0;
    NSDictionary *dic1 = [m1.titleMutAttrStr attributesAtIndex:atIndex1 longestEffectiveRange:&effecRange1 inRange:inRange1];
    m1.desc = [NSString stringWithFormat:@"我是在第一段内的atIndex:%ld 获取的是在第一段内的effecRange:%@ 我是超过全段内的inRange:%@ 获取的是在第一段内的NSAttributedStringKey的集合：%@", atIndex1, NSStringFromRange(effecRange1), NSStringFromRange(inRange1), dic1];
    [m1 calculDataViewHeight];
    [mutDataArr addObject:m1];
    
    TestProjectAttributeStringFoundationModel *m2 = [self createAttrStrModel];
    NSRange effecRange2;
    NSRange inRange2 = NSMakeRange(self.firstAttrText.length, self.secondAttrText.length);
    NSInteger atIndex2 = self.firstAttrText.length;
    NSDictionary *dic2 = [m2.titleMutAttrStr attributesAtIndex:atIndex2 longestEffectiveRange:&effecRange2 inRange:inRange2];
    m2.desc = [NSString stringWithFormat:@"我是在第二段内的atIndex:%ld 获取的是在第二段内的effecRange:%@ 我是在第二段内的inRange:%@ 获取的是在第二段内的NSAttributedStringKey的集合：%@", atIndex2, NSStringFromRange(effecRange2), NSStringFromRange(inRange2), dic2];
    [m2 calculDataViewHeight];
    [mutDataArr addObject:m2];
    
    TestProjectAttributeStringFoundationModel *m3 = [self createAttrStrModel];
    NSRange effecRange3;
    NSInteger atIndex3 = m3.titleMutAttrStr.length - self.sixthAttrText.length - self.fivthAttrText.length;
    NSRange inRange3 = NSMakeRange(m3.titleMutAttrStr.length - self.sixthAttrText.length, self.sixthAttrText.length);
    NSDictionary *dic3 = [m3.titleMutAttrStr attributesAtIndex:atIndex3 longestEffectiveRange:&effecRange3 inRange:inRange3];
    m3.desc = [NSString stringWithFormat:@"我是在第五段内的atIndex:%ld 获取的是NSMakeRange(0, 0)的effecRange:%@ 我是在第六段内的inRange:%@ 获取的是在第五段内的NSAttributedStringKey的集合：%@", atIndex3, NSStringFromRange(effecRange3), NSStringFromRange(inRange3), dic3];
    [m3 calculDataViewHeight];
    [mutDataArr addObject:m3];

    TestProjectAttributeStringFoundationModel *m4 = [self createAttrStrModel];
    NSRange effecRange4;
    NSInteger atIndex4 = m4.titleMutAttrStr.length - self.sixthAttrText.length - self.fivthAttrText.length;
    NSRange inRange4 = NSMakeRange(atIndex4, self.fivthAttrText.length);
    NSDictionary *dic4 = [m4.titleMutAttrStr attributesAtIndex:atIndex4 longestEffectiveRange:&effecRange4 inRange:inRange4];
    m4.desc = [NSString stringWithFormat:@"我是在第五段内的atIndex:%ld 获取的是在第五段内的effecRange:%@ 我是在第五段内的inRange:%@ 获取的是在第五段内的NSAttributedStringKey的集合：%@", atIndex4, NSStringFromRange(effecRange4), NSStringFromRange(inRange4), dic4];
    [m4 calculDataViewHeight];
    [mutDataArr addObject:m4];

    TestProjectAttributeStringFoundationModel *m5 = [self createAttrStrModel];
    NSRange effecRange5;
    NSInteger atIndex5 = m5.titleMutAttrStr.length - self.sixthAttrText.length;
    NSRange inRange5 = NSMakeRange(m5.titleMutAttrStr.length - self.sixthAttrText.length - self.fivthAttrText.length, self.fivthAttrText.length);
    NSDictionary *dic5 = [m5.titleMutAttrStr attributesAtIndex:atIndex5 longestEffectiveRange:&effecRange5 inRange:inRange5];
    m5.desc = [NSString stringWithFormat:@"我是在第六段内的atIndex:%ld 获取的是NSMakeRange(0, 0)的effecRange:%@ 我是在第五段内的inRange:%@ 获取的是在第六段内的NSAttributedStringKey的集合：%@", atIndex5, NSStringFromRange(effecRange5), NSStringFromRange(inRange5), dic5];
    [m5 calculDataViewHeight];
    [mutDataArr addObject:m5];

    TestProjectAttributeStringFoundationModel *m6 = [self createAttrStrModel];
    NSRange effecRange6;
    NSRange inRange6 = NSMakeRange(0, m1.titleMutAttrStr.length);
    NSInteger atIndex6 = m6.titleMutAttrStr.length - self.sixthAttrText.length ;
    NSDictionary *dic6 = [m6.titleMutAttrStr attributesAtIndex:atIndex6 longestEffectiveRange:&effecRange6 inRange:inRange6];
    m6.desc = [NSString stringWithFormat:@"我是在第六段内的atIndex:%ld 获取的是在第六段内的effecRange:%@ 我是在第全段内的inRange:%@ 获取的是在第六段内的NSAttributedStringKey的集合：%@", atIndex6, NSStringFromRange(effecRange6), NSStringFromRange(inRange6), dic6];
    [m6 calculDataViewHeight];
    [mutDataArr addObject:m6];

    self.tableView.dataSourceArray = mutDataArr;
}

- (void)TestProjectAttributeStringFoundation_attributedSubstringFromRange {
    NSMutableArray *mutDataArr = [NSMutableArray array];
    TestProjectAttributeStringFoundationModel *m1 = [self createAttrStrModel];
    NSRange range = NSMakeRange(0, 24);
    m1.descMutAttrStr = [[NSMutableAttributedString alloc] initWithAttributedString:[m1.titleMutAttrStr attributedSubstringFromRange:range]];
    [m1 calculDataViewHeight];
    [mutDataArr addObject:m1];
    self.tableView.dataSourceArray = mutDataArr;
}

- (void)TestProjectAttributeStringFoundation_attribute_atIndex_effectiveRange {
    NSMutableArray *mutDataArr = [NSMutableArray array];
    
    TestProjectAttributeStringFoundationModel *m0 = [self createAttrStrModel];
    m0.desc = [NSString stringWithFormat:@"当前的attrText的信息:\n%@", m0.titleMutAttrStr];
    [m0 calculDataViewHeight];
    self.compareViewModel = m0;
    
    TestProjectAttributeStringFoundationModel *m1 = [self createAttrStrModel];
    NSRange effRange1;
    NSInteger atIndex1 = 0;
    NSDictionary *dic1 = [m1.titleMutAttrStr attribute:NSForegroundColorAttributeName atIndex:atIndex1 effectiveRange:&effRange1];
    m1.desc = [NSString stringWithFormat:@" effRange:%@\n 我是在第一段内的atIndex:%ld\n 获取的还是第一段的颜色 获取的NSAttributedStringKey的集合：%@", NSStringFromRange(effRange1), atIndex1, dic1];
    [m1 calculDataViewHeight];
    [mutDataArr addObject:m1];
    
    TestProjectAttributeStringFoundationModel *m2 = [self createAttrStrModel];
    NSRange effRange2;
    NSInteger atIndex2 = self.firstAttrText.length;
    NSDictionary *dic2 = [m2.titleMutAttrStr attribute:NSForegroundColorAttributeName atIndex:atIndex2 effectiveRange:&effRange2];
    m2.desc = [NSString stringWithFormat:@" effRange:%@\n 我是在第二段内的atIndex:%ld\n 获取的还是第二段的颜色 获取的NSAttributedStringKey的集合：%@", NSStringFromRange(effRange2), atIndex2, dic2];
    [m2 calculDataViewHeight];
    [mutDataArr addObject:m2];
    
    TestProjectAttributeStringFoundationModel *m3 = [self createAttrStrModel];
    NSRange effRange3;
    NSInteger atIndex3 = m3.titleMutAttrStr.length - self.fivthAttrText.length - self.sixthAttrText.length - 2;
    NSDictionary *dic3 = [m3.titleMutAttrStr attribute:NSForegroundColorAttributeName atIndex:atIndex3 effectiveRange:&effRange3];
    m3.desc = [NSString stringWithFormat:@" effRange:%@\n 我是在第五段前的两个字符的atIndex:%ld\n 获取的还是第四段的颜色\n 获取的NSAttributedStringKey的集合：%@", NSStringFromRange(effRange3), atIndex3, dic3];
    [m3 calculDataViewHeight];
    [mutDataArr addObject:m3];
    
    TestProjectAttributeStringFoundationModel *m4 = [self createAttrStrModel];
    NSRange effRange4;
    NSInteger atIndex4 = m4.titleMutAttrStr.length - self.sixthAttrText.length;
    NSDictionary *dic4 = [m4.titleMutAttrStr attribute:NSForegroundColorAttributeName atIndex:atIndex4 effectiveRange:&effRange4];
    m4.desc = [NSString stringWithFormat:@" effRange:%@\n 我是在第六段内的atIndex:%ld\n 获取的还是第六段的颜色\n 获取的NSAttributedStringKey的集合：%@", NSStringFromRange(effRange4), atIndex4, dic4];
    [m4 calculDataViewHeight];
    [mutDataArr addObject:m4];
    
    TestProjectAttributeStringFoundationModel *m5 = [self createAttrStrModel];
    NSRange effRange5;
    NSInteger atIndex5 = 0;
    NSDictionary *dic5 = [m5.titleMutAttrStr attribute:NSUnderlineStyleAttributeName atIndex:atIndex5 effectiveRange:&effRange5];
    m5.desc = [NSString stringWithFormat:@" effRange:%@\n 我是在第一段内的atIndex:%ld\n 获取的是第一段的NSUnderlineStyleAttributeName\n 获取的NSAttributedStringKey的集合：%@", NSStringFromRange(effRange5), atIndex5, dic5];
    [m5 calculDataViewHeight];
    [mutDataArr addObject:m5];

    TestProjectAttributeStringFoundationModel *m6 = [self createAttrStrModel];
    NSRange effRange6;
    NSInteger atIndex6 = m6.titleMutAttrStr.length - self.sixthAttrText.length;
    NSDictionary *dic6 = [m6.titleMutAttrStr attribute:NSStrokeColorAttributeName atIndex:atIndex6 effectiveRange:&effRange6];
    m6.desc = [NSString stringWithFormat:@" effRange:%@\n 我是在第六段内的atIndex:%ld\n 获取的是第六段的NSStrokeColorAttributeName\n 获取的NSAttributedStringKey的集合：%@", NSStringFromRange(effRange6), atIndex6, dic6];
    [m6 calculDataViewHeight];
    [mutDataArr addObject:m6];
    
    TestProjectAttributeStringFoundationModel *m7 = [self createAttrStrModel];
    NSRange effRange7;
    NSInteger atIndex7 = 0;
    NSDictionary *dic7 = [m7.titleMutAttrStr attribute:NSStrokeColorAttributeName atIndex:atIndex7 effectiveRange:&effRange7];
    m7.desc = [NSString stringWithFormat:@" effRange:%@\n 我是在第一段内的atIndex:%ld\n 获取的是第一段的NSStrokeColorAttributeName\n 获取的NSAttributedStringKey的集合：%@", NSStringFromRange(effRange7), atIndex7, dic7];
    [m7 calculDataViewHeight];
    [mutDataArr addObject:m7];

    self.tableView.dataSourceArray = mutDataArr;
}

- (void)TestProjectAttributeStringFoundation_property_length {
    NSMutableArray *mutDataArr = [NSMutableArray array];
    TestProjectAttributeStringFoundationModel *m1 = [self createAttrStrModel];
    m1.desc = [NSString stringWithFormat:@"NSAttributeString.length是：%ld", m1.titleMutAttrStr.length];
    [m1 calculDataViewHeight];
    [mutDataArr addObject:m1];
    self.tableView.dataSourceArray = mutDataArr;
}

@end
