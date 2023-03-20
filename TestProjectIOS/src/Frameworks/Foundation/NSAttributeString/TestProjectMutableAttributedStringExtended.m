//
//  TestProjectMutableAttributedStringExtended.m
//  TestProjectIOS
//
//  Created by zjrcumac on 2023/3/13.
//

#import "TestProjectMutableAttributedStringExtended.h"

#import "TestProjectAttributeStringFoundationCell.h"

@interface TestProjectMutableAttributedStringExtended ()

@property (nonatomic, copy) NSString *firstAttrText;
@property (nonatomic, copy) NSString *secondAttrText;
@property (nonatomic, copy) NSString *thirdAttrText;
@property (nonatomic, copy) NSString *fourthAttrText;
@property (nonatomic, copy) NSString *fivthAttrText;
@property (nonatomic, copy) NSString *sixthAttrText;

@end

@implementation TestProjectMutableAttributedStringExtended

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
        _thirdAttrText = @"我是第三个secondAttrText";
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
        @"@property (readonly, retain) NSMutableString *mutableString;":@{
            @"method":@"TestProjectMutableAttributedStringExtended_property_mutableString",
            @"desc":@"获取NSMutableAttributedString的mutableString"}
    };
}

- (NSDictionary *)method_2 {
    return @{
        @"- (void)addAttribute:(NSAttributedStringKey)name value:(id)value range:(NSRange)range;":@{
            @"method":@"TestProjectMutableAttributedStringExtended_addAttribute_value_range",
            @"desc":@" 给NSMutableAttributedString添加单个NSAttributedStringKey信息 \n 在range范围的attrText如果NSAttributedStringKey相同则替换，否则添加 \n 崩溃异常: range不在整个attrText的范围内 \n @param name :给定NSAttributedStringKey值 \n @param value :给定NSAttributedStringKey值的value \n @parma range :给定范围"}
    };
}

- (NSDictionary *)method_3 {
    return @{
        @"- (void)addAttributes:(NSDictionary<NSAttributedStringKey, id> *)attrs range:(NSRange)range;":@{
            @"method":@"TestProjectMutableAttributedStringExtended_addAttributes_range",
            @"desc":@" 给NSMutableAttributedString添加NSAttributedStringKey集合信息 \n 在range范围的attrText如果NSAttributedStringKey相同则替换，否则添加 \n 崩溃异常: range不在整个attrText的范围内 \n @param name :给定NSAttributedStringKey集合信息 \n @parma range :给定范围"}
    };
}

- (NSDictionary *)method_4 {
    return @{
        @"- (void)removeAttribute:(NSAttributedStringKey)name range:(NSRange)range;":@{
            @"method":@"TestProjectMutableAttributedStringExtended_removeAttribute_range",
            @"desc":@" 给NSMutableAttributedString移除NSAttributedStringKey单个信息 \n 在range范围的attrText如果NSAttributedStringKey相同则移除，否则保持原有信息 \n 崩溃异常: range不在整个attrText的范围内 \n @param name :给定NSAttributedStringKey单个信息 \n @parma range :给定范围"}
    };
}

- (NSDictionary *)method_5 {
    return @{
        @"- (void)replaceCharactersInRange:(NSRange)range withAttributedString:(NSAttributedString *)attrString;":@{
            @"method":@"TestProjectMutableAttributedStringExtended_replaceCharactersInRange_withAttributedString",
            @"desc":@" 在NSMutableAttributedString某个范围内人替换为整个新的attrText信息 \n 在range范围的attrText替换新的attrText信息，包含文字和所有NSAttributedStringKey信息 \n 崩溃异常: range不在整个attrText的范围内 \n @parma range :给定范围 \n @param attrString :给定attrString信息"}
    };
}

- (NSDictionary *)method_6 {
    return @{
        @"- (void)insertAttributedString:(NSAttributedString *)attrString atIndex:(NSUInteger)loc;":@{
            @"method":@"TestProjectMutableAttributedStringExtended_insertAttributedString_atIndex",
            @"desc":@" 在NSMutableAttributedString某个位置添加整个新的attrText信息 \n 在attrText第atIndex后的位置添加新的attrText信息 \n 崩溃异常: atIndex不在整个attrText的范围内 \n @param attrString :给定attrString信息 \n @parma loc :给定添加的位置"}
    };
}

- (NSDictionary *)method_7 {
    return @{
        @"- (void)appendAttributedString:(NSAttributedString *)attrString;":@{
            @"method":@"TestProjectMutableAttributedStringExtended_appendAttributedString",
            @"desc":@" 在NSMutableAttributedString最后面位置添加整个新的attrText信息 \n 在attrText最后的位置添加新的attrText信息 \n @param attrString :给定attrString信息 \n"}
    };
}

- (NSDictionary *)method_8 {
    return @{
        @"- (void)deleteCharactersInRange:(NSRange)range;":@{
            @"method":@"TestProjectMutableAttributedStringExtended_deleteCharactersInRange",
            @"desc":@" 在NSMutableAttributedString删除某个范围的attrText信息 \n 在range范围内把attrText删除掉 \n 崩溃异常: range不在整个attrText的范围内 \n @parma range :给定范围 \n"}
    };
}

- (NSDictionary *)method_9 {
    return @{
        @"- (void)setAttributedString:(NSAttributedString *)attrString;":@{
            @"method":@"TestProjectMutableAttributedStringExtended_setAttributedString",
            @"desc":@"用新的attrText替换NSMutableAttributedString的整个attrText"}
    };
}

- (TestProjectAttributeStringFoundationModel *)createAttrStrModel {
    TestProjectAttributeStringFoundationModel *attrStrModel = [[TestProjectAttributeStringFoundationModel alloc] init];
    NSAttributedString *firstAttrStr = [[NSAttributedString alloc] initWithString:self.firstAttrText attributes:@{NSForegroundColorAttributeName:[UIColor colorFromString:@"#333"], NSFontAttributeName:[UIFont systemFontOfSize:11]}];
    NSAttributedString *secondAttrStr = [[NSAttributedString alloc] initWithString:self.secondAttrText attributes:@{NSForegroundColorAttributeName:[UIColor colorFromString:@"#F33"], NSFontAttributeName:[UIFont systemFontOfSize:22]}];
    NSAttributedString *thirdAttrStr = [[NSAttributedString alloc] initWithString:self.thirdAttrText attributes:nil];


    attrStrModel.titleMutAttrStr = [[NSMutableAttributedString alloc] initWithAttributedString:firstAttrStr];
    [attrStrModel.titleMutAttrStr appendAttributedString:secondAttrStr];
    [attrStrModel.titleMutAttrStr appendAttributedString:thirdAttrStr];
    return attrStrModel;
}

- (void)TestProjectMutableAttributedStringExtended_setAttributedString {
    TestProjectAttributeStringFoundationModel *m0 = [self createAttrStrModel];
    m0.desc = [NSString stringWithFormat:@"当前的attrText的信息:\n%@", m0.titleMutAttrStr];
    [m0 calculDataViewHeight];
    self.compareViewModel = m0;

    NSAttributedString *sixAttrStr = [[NSAttributedString alloc] initWithString:self.sixthAttrText attributes:@{NSForegroundColorAttributeName:[UIColor colorFromString:@"#FF3"], NSFontAttributeName:[UIFont systemFontOfSize:22]}];

    NSMutableArray *mutDataArr = [NSMutableArray array];
    
    TestProjectAttributeStringFoundationModel *m1 = [self createAttrStrModel];
    [m1.titleMutAttrStr setAttributedString:sixAttrStr];
    m1.desc = [NSString stringWithFormat:@"替换所有字符的key:NSForegroundColorAttributeName, value:[UIColor colorFromString:@\"#ffff33\"] 得到的是所有字符的attrText:%@", m1.titleMutAttrStr];
    [m1 calculDataViewHeight];
    [mutDataArr addObject:m1];
    
    self.tableView.dataSourceArray = mutDataArr;
}

- (void)TestProjectMutableAttributedStringExtended_deleteCharactersInRange {
    TestProjectAttributeStringFoundationModel *m0 = [self createAttrStrModel];
    m0.desc = [NSString stringWithFormat:@"当前的attrText的信息:\n%@", m0.titleMutAttrStr];
    [m0 calculDataViewHeight];
    self.compareViewModel = m0;

    NSMutableArray *mutDataArr = [NSMutableArray array];
    
    NSRange range1 = NSMakeRange(0, self.firstAttrText.length - 2);
    TestProjectAttributeStringFoundationModel *m1 = [self createAttrStrModel];
    [m1.titleMutAttrStr deleteCharactersInRange:range1];
    m1.desc = [NSString stringWithFormat:@"替换的是第一段字符少两个字符的range:%@ 替换的是第一段字符少两个字符的key:NSForegroundColorAttributeName, value:[UIColor colorFromString:@\"#ffff33\"] 得到的是在第一段字符少两个字符的attrText:%@", NSStringFromRange(range1), m1.titleMutAttrStr];
    [m1 calculDataViewHeight];
    [mutDataArr addObject:m1];
    
    TestProjectAttributeStringFoundationModel *m2 = [self createAttrStrModel];
    NSRange range2 = NSMakeRange(0, m2.titleMutAttrStr.length);
    [m2.titleMutAttrStr deleteCharactersInRange:range2];
    m2.desc = [NSString stringWithFormat:@"替换的是全段字符的range:%@ 替换的是第全段字符的key:NSForegroundColorAttributeName, value:[UIColor colorFromString:@\"#ffff33\"] 有相同的attrText是移除相同的字符的attrText，其它的继续保持:%@", NSStringFromRange(range2), m2.titleMutAttrStr];
    [m2 calculDataViewHeight];
    [mutDataArr addObject:m2];

    self.tableView.dataSourceArray = mutDataArr;
}

- (void)TestProjectMutableAttributedStringExtended_appendAttributedString {
    TestProjectAttributeStringFoundationModel *m0 = [self createAttrStrModel];
    m0.desc = [NSString stringWithFormat:@"当前的attrText的信息:\n%@", m0.titleMutAttrStr];
    [m0 calculDataViewHeight];
    self.compareViewModel = m0;

    NSAttributedString *sixAttrStr = [[NSAttributedString alloc] initWithString:self.sixthAttrText attributes:@{NSForegroundColorAttributeName:[UIColor colorFromString:@"#FF3"], NSFontAttributeName:[UIFont systemFontOfSize:22]}];

    NSMutableArray *mutDataArr = [NSMutableArray array];
    TestProjectAttributeStringFoundationModel *m1 = [self createAttrStrModel];
    [m1.titleMutAttrStr appendAttributedString:sixAttrStr];
    m1.desc = [NSString stringWithFormat:@"添加在末尾的key:NSForegroundColorAttributeName, value:[UIColor colorFromString:@\"#ffff33\"] 得到的是在在末尾attrText:%@", m1.titleMutAttrStr];
    [m1 calculDataViewHeight];
    [mutDataArr addObject:m1];

    self.tableView.dataSourceArray = mutDataArr;
}

- (void)TestProjectMutableAttributedStringExtended_insertAttributedString_atIndex {
    TestProjectAttributeStringFoundationModel *m0 = [self createAttrStrModel];
    m0.desc = [NSString stringWithFormat:@"当前的attrText的信息:\n%@", m0.titleMutAttrStr];
    [m0 calculDataViewHeight];
    self.compareViewModel = m0;

    NSAttributedString *sixAttrStr = [[NSAttributedString alloc] initWithString:self.sixthAttrText attributes:@{NSForegroundColorAttributeName:[UIColor colorFromString:@"#FF3"], NSFontAttributeName:[UIFont systemFontOfSize:22]}];

    NSMutableArray *mutDataArr = [NSMutableArray array];
    
    NSInteger atIndex1 = self.firstAttrText.length - 2;
    TestProjectAttributeStringFoundationModel *m1 = [self createAttrStrModel];
    [m1.titleMutAttrStr insertAttributedString:sixAttrStr atIndex:atIndex1];
    m1.desc = [NSString stringWithFormat:@"添加的是在第一段字符少两个字符的atIndex:%ld 添加的是第一段字符少两个字符的key:NSForegroundColorAttributeName, value:[UIColor colorFromString:@\"#ffff33\"] 得到的是在第一段字符少两个字符的添加attrText:%@", atIndex1, m1.titleMutAttrStr];
    [m1 calculDataViewHeight];
    [mutDataArr addObject:m1];
    
    TestProjectAttributeStringFoundationModel *m2 = [self createAttrStrModel];
    NSInteger atIndex2 = m2.titleMutAttrStr.length;
    [m2.titleMutAttrStr insertAttributedString:sixAttrStr atIndex:atIndex2];
    m2.desc = [NSString stringWithFormat:@"添加的是在全段字符的atIndex2:%ld 添加的是第全段字符的key:NSForegroundColorAttributeName, value:[UIColor colorFromString:@\"#ffff33\"] 得到的是在全段字符少两个字符的添加attrText:%@", atIndex2, m2.titleMutAttrStr];
    [m2 calculDataViewHeight];
    [mutDataArr addObject:m2];

    self.tableView.dataSourceArray = mutDataArr;
}

- (void)TestProjectMutableAttributedStringExtended_replaceCharactersInRange_withAttributedString {
    TestProjectAttributeStringFoundationModel *m0 = [self createAttrStrModel];
    m0.desc = [NSString stringWithFormat:@"当前的attrText的信息:\n%@", m0.titleMutAttrStr];
    [m0 calculDataViewHeight];
    self.compareViewModel = m0;

    NSAttributedString *sixAttrStr = [[NSAttributedString alloc] initWithString:self.sixthAttrText attributes:@{NSForegroundColorAttributeName:[UIColor colorFromString:@"#FF3"], NSFontAttributeName:[UIFont systemFontOfSize:22]}];

    NSMutableArray *mutDataArr = [NSMutableArray array];
    
    NSRange range1 = NSMakeRange(0, self.firstAttrText.length - 2);
    TestProjectAttributeStringFoundationModel *m1 = [self createAttrStrModel];
    [m1.titleMutAttrStr replaceCharactersInRange:range1 withAttributedString:sixAttrStr];
    m1.desc = [NSString stringWithFormat:@"替换的是第一段字符少两个字符的range:%@ 替换的是第一段字符少两个字符的key:NSForegroundColorAttributeName, value:[UIColor colorFromString:@\"#ffff33\"] 得到的是在第一段字符少两个字符的attrText:%@", NSStringFromRange(range1), m1.titleMutAttrStr];
    [m1 calculDataViewHeight];
    [mutDataArr addObject:m1];
    
    TestProjectAttributeStringFoundationModel *m2 = [self createAttrStrModel];
    NSRange range2 = NSMakeRange(0, m2.titleMutAttrStr.length);
    [m2.titleMutAttrStr replaceCharactersInRange:range2 withAttributedString:sixAttrStr];
    m2.desc = [NSString stringWithFormat:@"替换的是全段字符的range:%@ 替换的是第全段字符的key:NSForegroundColorAttributeName, value:[UIColor colorFromString:@\"#ffff33\"] 有相同的attrText是移除相同的字符的attrText，其它的继续保持:%@", NSStringFromRange(range2), m2.titleMutAttrStr];
    [m2 calculDataViewHeight];
    [mutDataArr addObject:m2];

    self.tableView.dataSourceArray = mutDataArr;
}

- (void)TestProjectMutableAttributedStringExtended_removeAttribute_range {
    TestProjectAttributeStringFoundationModel *m0 = [self createAttrStrModel];
    m0.desc = [NSString stringWithFormat:@"当前的attrText的信息:\n%@", m0.titleMutAttrStr];
    [m0 calculDataViewHeight];
    self.compareViewModel = m0;

    NSMutableArray *mutDataArr = [NSMutableArray array];
    
    NSRange range1 = NSMakeRange(0, self.firstAttrText.length - 2);
    TestProjectAttributeStringFoundationModel *m1 = [self createAttrStrModel];
    [m1.titleMutAttrStr removeAttribute:NSForegroundColorAttributeName range:range1];
    m1.desc = [NSString stringWithFormat:@"移除的是第一段字符少两个字符的range:%@ 移除的是第一段字符少两个字符的key:NSStrokeColorAttributeName, value:[UIColor colorFromString:@\"#ff3333\"] 得到的是在第一段字符少两个字符的attrText:%@", NSStringFromRange(range1), m1.titleMutAttrStr];
    [m1 calculDataViewHeight];
    [mutDataArr addObject:m1];
    
    TestProjectAttributeStringFoundationModel *m2 = [self createAttrStrModel];
    NSRange range2 = NSMakeRange(0, m2.titleMutAttrStr.length);
    [m2.titleMutAttrStr addAttributes:@{NSForegroundColorAttributeName: [UIColor colorFromString:@"#ff3333"]} range:range2];
    m2.desc = [NSString stringWithFormat:@"移除的是全段字符的range:%@ 移除的是第全段字符的key:NSForegroundColorAttributeName, value:[UIColor colorFromString:@\"#ff3333\"] 有相同的attrText是移除相同的字符的attrText，其它的继续保持:%@", NSStringFromRange(range2), m2.titleMutAttrStr];
    [m2 calculDataViewHeight];
    [mutDataArr addObject:m2];

    self.tableView.dataSourceArray = mutDataArr;
}

- (void)TestProjectMutableAttributedStringExtended_addAttributes_range {
    TestProjectAttributeStringFoundationModel *m0 = [self createAttrStrModel];
    m0.desc = [NSString stringWithFormat:@"当前的attrText的信息:\n%@", m0.titleMutAttrStr];
    [m0 calculDataViewHeight];
    self.compareViewModel = m0;

    NSMutableArray *mutDataArr = [NSMutableArray array];
    
    NSRange range1 = NSMakeRange(0, self.firstAttrText.length - 2);
    TestProjectAttributeStringFoundationModel *m1 = [self createAttrStrModel];
    [m1.titleMutAttrStr addAttributes:@{NSStrokeColorAttributeName: [UIColor colorFromString:@"#ff3333"]} range:range1];
    m1.desc = [NSString stringWithFormat:@"添加的是第一段字符少两个字符的range:%@ 添加的是第一段字符少两个字符的key:NSStrokeColorAttributeName, value:[UIColor colorFromString:@\"#ff3333\"] 得到的是在第一段字符少两个字符的attrText:%@", NSStringFromRange(range1), m1.titleMutAttrStr];
    [m1 calculDataViewHeight];
    [mutDataArr addObject:m1];
    
    NSRange range2 = NSMakeRange(self.firstAttrText.length, self.secondAttrText.length);
    TestProjectAttributeStringFoundationModel *m2 = [self createAttrStrModel];
    [m2.titleMutAttrStr addAttributes:@{NSStrokeColorAttributeName: [UIColor colorFromString:@"#ff3333"]} range:range2];
    m2.desc = [NSString stringWithFormat:@"添加的是第二段字符的range:%@ 添加的是第二段字符的key:NSStrokeColorAttributeName, value:[UIColor colorFromString:@\"#ff3333\"] 得到的是在第二段字符的attrText:%@", NSStringFromRange(range2), m2.titleMutAttrStr];
    [m2 calculDataViewHeight];
    [mutDataArr addObject:m2];

    TestProjectAttributeStringFoundationModel *m3 = [self createAttrStrModel];
    NSRange range3 = NSMakeRange(0, m3.titleMutAttrStr.length);
    [m3.titleMutAttrStr addAttributes:@{NSForegroundColorAttributeName: [UIColor colorFromString:@"#ff3333"]} range:range3];
    m3.desc = [NSString stringWithFormat:@"添加的是全段字符的range:%@ 添加的是第全段字符的key:NSForegroundColorAttributeName, value:[UIColor colorFromString:@\"#ff3333\"] 有相同的attrText是替换相同的字符的attrText，其它的是添加的字符:%@", NSStringFromRange(range3), m3.titleMutAttrStr];
    [m3 calculDataViewHeight];
    [mutDataArr addObject:m3];

    self.tableView.dataSourceArray = mutDataArr;
}

- (void)TestProjectMutableAttributedStringExtended_addAttribute_value_range {
    TestProjectAttributeStringFoundationModel *m0 = [self createAttrStrModel];
    m0.desc = [NSString stringWithFormat:@"当前的attrText的信息:\n%@", m0.titleMutAttrStr];
    [m0 calculDataViewHeight];
    self.compareViewModel = m0;

    NSMutableArray *mutDataArr = [NSMutableArray array];
    
    NSRange range1 = NSMakeRange(0, self.firstAttrText.length - 2);
    TestProjectAttributeStringFoundationModel *m1 = [self createAttrStrModel];
    [m1.titleMutAttrStr addAttribute:NSStrokeColorAttributeName value:[UIColor colorFromString:@"#ff3333"] range:range1];
    m1.desc = [NSString stringWithFormat:@"添加的是第一段字符少两个字符的range:%@ 添加的是第一段字符少两个字符的key:NSStrokeColorAttributeName, value:[UIColor colorFromString:@\"#ff3333\"] 得到的是在第一段字符少两个字符的attrText:%@", NSStringFromRange(range1), m1.titleMutAttrStr];
    [m1 calculDataViewHeight];
    [mutDataArr addObject:m1];
    
    NSRange range2 = NSMakeRange(self.firstAttrText.length, self.secondAttrText.length);
    TestProjectAttributeStringFoundationModel *m2 = [self createAttrStrModel];
    [m2.titleMutAttrStr addAttribute:NSStrokeColorAttributeName value:[UIColor colorFromString:@"#ff3333"] range:range2];
    m2.desc = [NSString stringWithFormat:@"添加的是第二段字符的range:%@ 添加的是第二段字符的key:NSStrokeColorAttributeName, value:[UIColor colorFromString:@\"#ff3333\"] 得到的是在第二段字符的attrText:%@", NSStringFromRange(range2), m2.titleMutAttrStr];
    [m2 calculDataViewHeight];
    [mutDataArr addObject:m2];

    NSRange range3 = NSMakeRange(0, m1.titleMutAttrStr.length);
    TestProjectAttributeStringFoundationModel *m3 = [self createAttrStrModel];
    [m3.titleMutAttrStr addAttribute:NSForegroundColorAttributeName value:[UIColor colorFromString:@"#ff3333"] range:range3];
    m3.desc = [NSString stringWithFormat:@"添加的是全段字符的range:%@ 添加的是第全段字符的key:NSForegroundColorAttributeName, value:[UIColor colorFromString:@\"#ff3333\"] 有相同的attrText是替换相同的字符的attrText，其它的事添加的字符:%@", NSStringFromRange(range3), m3.titleMutAttrStr];
    [m3 calculDataViewHeight];
    [mutDataArr addObject:m3];

    self.tableView.dataSourceArray = mutDataArr;
}

- (void)TestProjectMutableAttributedStringExtended_property_mutableString {
    NSMutableArray *mutDataArr = [NSMutableArray array];
    
    TestProjectAttributeStringFoundationModel *m1 = [self createAttrStrModel];
    m1.desc = [m1.titleMutAttrStr mutableString];
    [m1 calculDataViewHeight];
    [mutDataArr addObject:m1];
    
    self.tableView.dataSourceArray = mutDataArr;
}

@end
