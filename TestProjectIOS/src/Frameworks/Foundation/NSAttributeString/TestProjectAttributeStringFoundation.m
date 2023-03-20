//
//  TestProjectAttributeStringFoundation.m
//  TestProjectIOS
//
//  Created by zjrcumac on 2023/3/3.
//

#import "TestProjectAttributeStringFoundation.h"

#import "TestProjectAttributeStringFoundationCell.h"

@interface TestProjectAttributeStringFoundation ()

@property (nonatomic, copy) NSString *firstAttrText;
@property (nonatomic, copy) NSString *secondAttrText;

@end

@implementation TestProjectAttributeStringFoundation

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

- (NSDictionary *)method_1 {
    return @{
        @"@property (readonly, copy) NSString *string;":@{
            @"method":@"TestProjectAttributeStringFoundation_property_string",
            @"desc":@"从NSAttributeString获取的字符串"}
    };
}

- (NSDictionary *)method_2 {
    return @{
        @"- (NSDictionary<NSAttributedStringKey, id> *)attributesAtIndex:(NSUInteger)location effectiveRange:(nullable NSRangePointer)range;":@{
            @"method":@"TestProjectAttributeStringFoundation_attributesAtIndex_effectiveRange",
            @"desc":@" 获取NSAttributedStringKey的集合信息 \n 根据location匹配，返回这段文字的所有NSAttributedStringKey，如果没有匹配到则返回空的dictionary \n @param location :匹配的在哪段attrText \n @param range :根据匹配的字段字符返回range"}
    };
}

- (TestProjectAttributeStringFoundationModel *)createAttrStrModel {
    TestProjectAttributeStringFoundationModel *attrStrModel = [[TestProjectAttributeStringFoundationModel alloc] init];
    NSAttributedString *textAttrStr = [[NSAttributedString alloc] initWithString:self.firstAttrText attributes:@{NSForegroundColorAttributeName:[UIColor colorFromString:@"#333"], NSFontAttributeName:[UIFont systemFontOfSize:20]}];
    NSAttributedString *subTxtAttrStr = [[NSAttributedString alloc] initWithString:self.secondAttrText attributes:@{NSForegroundColorAttributeName:[UIColor colorFromString:@"#F33"], NSFontAttributeName:[UIFont systemFontOfSize:22]}];

    attrStrModel.titleMutAttrStr = [[NSMutableAttributedString alloc] initWithAttributedString:textAttrStr];
    [attrStrModel.titleMutAttrStr appendAttributedString:subTxtAttrStr];
    return attrStrModel;
}

- (void)TestProjectAttributeStringFoundation_attributesAtIndex_effectiveRange {
    TestProjectAttributeStringFoundationModel *m0 = [self createAttrStrModel];
    m0.desc = [NSString stringWithFormat:@"当前的attrText的信息:\n%@", m0.titleMutAttrStr];
    [m0 calculDataViewHeight];
    self.compareViewModel = m0;

    NSMutableArray *mutDataArr = [NSMutableArray array];
    TestProjectAttributeStringFoundationModel *m1 = [self createAttrStrModel];
    NSRange range1;
    NSInteger location1 = 0;
    NSDictionary *dic1 = [m1.titleMutAttrStr attributesAtIndex:location1 effectiveRange:&range1];
    m1.desc = [NSString stringWithFormat:@"我是第一段的atIndex:%ld 获取的是在第一段内的range:%@ 获取的是在第一段内的NSAttributedStringKey集合信息%@", location1, NSStringFromRange(range1), dic1];
    [m1 calculDataViewHeight];
    [mutDataArr addObject:m1];
    
    TestProjectAttributeStringFoundationModel *m2 = [self createAttrStrModel];
    NSRange range2;
    NSInteger location2 = self.firstAttrText.length;
    NSDictionary *dic2 = [m2.titleMutAttrStr attributesAtIndex:location2 effectiveRange:&range2];
    m2.desc = [NSString stringWithFormat:@"我是第一段的atIndex:%ld 获取的是在第一段内的range:%@ 获取的是在第一段内的NSAttributedStringKey集合信息%@", location2, NSStringFromRange(range2), dic2];
    [m2 calculDataViewHeight];
    [mutDataArr addObject:m2];

    self.tableView.dataSourceArray = mutDataArr;
}

- (void)TestProjectAttributeStringFoundation_property_string {
    NSMutableArray *mutDataArr = [NSMutableArray array];
    TestProjectAttributeStringFoundationModel *m1 = [self createAttrStrModel];
    m1.desc = [NSString stringWithFormat:@"NSAttributeString.string是：%@", m1.titleMutAttrStr.string];
    [m1 calculDataViewHeight];
    [mutDataArr addObject:m1];
    self.tableView.dataSourceArray = mutDataArr;
}

@end
