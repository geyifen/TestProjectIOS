//
//  TestProjectMutableAttributedString.m
//  TestProjectIOS
//
//  Created by zjrcumac on 2023/3/7.
//

#import "TestProjectMutableAttributedString.h"

#import "TestProjectAttributeStringFoundationCell.h"

@interface TestProjectMutableAttributedString ()

@property (nonatomic, copy) NSString *firstAttrText;
@property (nonatomic, copy) NSString *secondAttrText;
@property (nonatomic, copy) NSString *thirdAttrText;

@end

@implementation TestProjectMutableAttributedString

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

- (NSDictionary *)method_1 {
    return @{
        @"- (void)replaceCharactersInRange:(NSRange)range withString:(NSString *)str;":@{
            @"method":@"TestProjectMutableAttributedString_replaceCharactersInRange_withString",
            @"desc":@" 用NSString替换在range范围内的attrText \n 替换的字符串的样式是默认的 \n 异常崩溃：range不在文字的范围内会崩溃"}
    };
}

- (NSDictionary *)method_2 {
    return @{
        @"- (void)setAttributes:(nullable NSDictionary<NSAttributedStringKey, id> *)attrs range:(NSRange)range;":@{
            @"method":@"TestProjectMutableAttributedString_setAttributes_range",
            @"desc":@" 在range范围内替换NSAttributedStringKey \n 异常崩溃：range不在文字的范围内会崩溃"}
    };
}

- (TestProjectAttributeStringFoundationModel *)createAttrStrModel {
    TestProjectAttributeStringFoundationModel *attrStrModel = [[TestProjectAttributeStringFoundationModel alloc] init];
    NSAttributedString *firstAttrStr = [[NSAttributedString alloc] initWithString:self.firstAttrText attributes:@{NSForegroundColorAttributeName:[UIColor colorFromString:@"#333"], NSFontAttributeName:[UIFont systemFontOfSize:11]}];
    NSAttributedString *secondAttrStr = [[NSAttributedString alloc] initWithString:self.secondAttrText attributes:@{NSForegroundColorAttributeName:[UIColor colorFromString:@"#F33"], NSFontAttributeName:[UIFont systemFontOfSize:22]}];

    attrStrModel.titleMutAttrStr = [[NSMutableAttributedString alloc] initWithAttributedString:firstAttrStr];
    [attrStrModel.titleMutAttrStr appendAttributedString:secondAttrStr];
    return attrStrModel;
}

- (void)TestProjectMutableAttributedString_setAttributes_range {
    NSMutableArray *mutDataArr = [NSMutableArray array];
    
    TestProjectAttributeStringFoundationModel *m1 = [self createAttrStrModel];
    NSRange set_range1 = NSMakeRange(0, self.firstAttrText.length - 2);
    NSDictionary *dic1 = [m1.titleMutAttrStr attributesAtIndex:0 effectiveRange:nil];
    [m1.titleMutAttrStr setAttributes:@{NSForegroundColorAttributeName: [UIColor colorFromString:@"#00ff00"]} range:set_range1];
    NSDictionary *set_dic1 = [m1.titleMutAttrStr attributesAtIndex:0 effectiveRange:nil];
    m1.desc = [[NSString alloc] initWithFormat:@"被替换的是第一段的少两个字符的range:%@\n 被替换的是第一段的少两个字符的attrTextColor:%@\n 替换的attrTextColor:%@", NSStringFromRange(set_range1), dic1, set_dic1];

    [m1 calculDataViewHeight];
    [mutDataArr addObject:m1];
    
    TestProjectAttributeStringFoundationModel *m2 = [self createAttrStrModel];
    NSRange set_range2 = NSMakeRange(3, m2.titleMutAttrStr.length - 3);
    NSInteger atIndex2 = self.firstAttrText.length;
    NSDictionary *dic2 = [m2.titleMutAttrStr attributesAtIndex:atIndex2 effectiveRange:nil];
    [m2.titleMutAttrStr setAttributes:@{NSForegroundColorAttributeName: [UIColor colorFromString:@"#00ff00"]} range:set_range2];
    NSDictionary *set_dic2 = [m2.titleMutAttrStr attributesAtIndex:0 effectiveRange:nil];
    m2.desc = [[NSString alloc] initWithFormat:@"被替换的是全段的少三个字符的range:%@ 被替换的是全段的少三个字符的attrTextColor:%@  替换的attrTextColor:%@", NSStringFromRange(set_range2), dic2, set_dic2];
    [m2 calculDataViewHeight];
    [mutDataArr addObject:m2];

    self.tableView.dataSourceArray = mutDataArr;
}

- (void)TestProjectMutableAttributedString_replaceCharactersInRange_withString {
    NSMutableArray *mutDataArr = [NSMutableArray array];
    
    NSRange range1 = NSMakeRange(0, self.firstAttrText.length - 2);
    TestProjectAttributeStringFoundationModel *m1 = [self createAttrStrModel];
    m1.descMutAttrStr = [[NSMutableAttributedString alloc] initWithString:[NSString stringWithFormat:@"被替换的是第一段的少两个字符的range:%@ 替换的文字是:%@ 被替换的attrText:", NSStringFromRange(range1), self.thirdAttrText]];
    [m1.descMutAttrStr appendAttributedString:m1.titleMutAttrStr];

    [m1.titleMutAttrStr replaceCharactersInRange:range1 withString:self.thirdAttrText];
    [m1 calculDataViewHeight];
    [mutDataArr addObject:m1];
    
    NSRange range2 = NSMakeRange(0, self.firstAttrText.length + 2);
    TestProjectAttributeStringFoundationModel *m2 = [self createAttrStrModel];
    m2.descMutAttrStr = [[NSMutableAttributedString alloc] initWithString:[NSString stringWithFormat:@"是第一段的多两个字符的range:%@ 替换的文字是:%@ 被替换的attrText:", NSStringFromRange(range2), self.thirdAttrText]];
    [m2.descMutAttrStr appendAttributedString:m2.titleMutAttrStr];

    [m2.titleMutAttrStr replaceCharactersInRange:range2 withString:self.thirdAttrText];
    [m2 calculDataViewHeight];
    [mutDataArr addObject:m2];

    self.tableView.dataSourceArray = mutDataArr;
}

@end
