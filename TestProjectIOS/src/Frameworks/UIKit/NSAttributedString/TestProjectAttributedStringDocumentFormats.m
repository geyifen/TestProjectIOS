//
//  TestProjectAttributedStringDocumentFormats.m
//  TestProjectIOS
//
//  Created by 李文凡 on 2023/3/18.
//

#import "TestProjectAttributedStringDocumentFormats.h"

#import "TestProjectAttributeStringFoundationCell.h"

@interface TestProjectAttributedStringDocumentFormats ()

@property (nonatomic, copy) NSString *firstAttrText;
@property (nonatomic, copy) NSString *secondAttrText;
@property (nonatomic, strong) NSMutableArray *dataMutArr;

@end

@implementation TestProjectAttributedStringDocumentFormats

- (NSString *)firstAttrText {
    if (!_firstAttrText) {
        _firstAttrText = @"我是第一个段落的开头的数据\n我是第二段的内容数据我是第二段的内容数据我是第二段的内容数据我是第二段的内容数据ABCDEFGHIJKLMNOPQRSTUVWXYZ我是第二段的内容数据我是第二段的内容数据我是第二段的内容数据abggggfffcbbdefghijklmnopqrstuwwwvvvwxyz我是第二段的内容数据我是第二段的内容数据我是第二段的内容数据我是第二段的内容数据我是第二段的内容数据我是第二段的内容数据我是第二段的内容数据\n我是第三段的开头数据";
    }
    return _firstAttrText;
}

- (NSString *)secondAttrText {
    if (!_secondAttrText) {
        _secondAttrText = @"我是第二个secondAttrText";
    }
    return _secondAttrText;
}

- (NSMutableArray *)dataMutArr {
    if (!_dataMutArr) {
        _dataMutArr = [NSMutableArray array];
    }
    return _dataMutArr;
}

//- (NSDictionary *)method_1 {
//    return @{
//        @"- (nullable instancetype)initWithURL:(NSURL *)url options:(NSDictionary<NSAttributedStringDocumentReadingOptionKey, id> *)options documentAttributes:(NSDictionary<NSAttributedStringDocumentAttributeKey, id> * __nullable * __nullable)dict error:(NSError **)error API_AVAILABLE(macos(10.4), ios(9.0));":@{
//            @"method":@"TestProjectAttributedStringDocumentFormats_initWithURL_options_documentAttributes_error",
//            @"desc":@"修改attrText的信息，保持一致 \n NSMutableAttributedString提供若干方法，即可以修改字符串，又可以修改字符串的属性。经过多次修改后，有些信息可能变的不一致了，为了让信息保持一致，可以使用下面的方法"}
//    };
//}

- (TestProjectAttributeStringFoundationModel *)createAttrStrModelWith:(NSDictionary *)keyValue {
    TestProjectAttributeStringFoundationModel *attrStrModel = [[TestProjectAttributeStringFoundationModel alloc] init];
//    NSAttributedString *firstAttrStr = [[NSAttributedString alloc] initWithString:self.firstAttrText attributes:keyValue];
//    NSAttributedString *secondAttrStr = [[NSAttributedString alloc] initWithString:self.secondAttrText attributes:@{NSForegroundColorAttributeName:[UIColor colorFromString:@"#F33"], NSFontAttributeName:[UIFont systemFontOfSize:22]}];
//
//    attrStrModel.titleMutAttrStr = [[NSMutableAttributedString alloc] initWithAttributedString:firstAttrStr];
//    [attrStrModel.titleMutAttrStr appendAttributedString:secondAttrStr];
    attrStrModel.titleMutAttrStr = [[NSMutableAttributedString alloc] init];
    [self.dataMutArr addObject:attrStrModel];
    return attrStrModel;
}

- (void)TestProjectAttributedStringDocumentFormats_initWithURL_options_documentAttributes_error {
    
    NSError *err;
    TestProjectAttributeStringFoundationModel *m1 = [self createAttrStrModelWith:@{NSVerticalGlyphFormAttributeName: @1}];
    NSAttributedString *a1 = [[NSAttributedString alloc] initWithURL:[NSURL URLWithString:@"https://www.baidu.com"] options:nil documentAttributes:nil error:&err];
    [m1.titleMutAttrStr appendAttributedString:a1];
    
    NSRange range1 = NSMakeRange(0, self.firstAttrText.length);
    m1.desc = [NSString stringWithFormat:@"我是在第一段的range:%@ attrText:%@", NSStringFromRange(range1),  m1.titleMutAttrStr];
    [m1.titleMutAttrStr fixAttributesInRange:range1];
    
    TestProjectAttributeStringFoundationModel *m2 = [self createAttrStrModelWith:@{NSVerticalGlyphFormAttributeName: @0}];
    NSRange range2 = NSMakeRange(0, m2.titleMutAttrStr.length);
    m2.desc = [NSString stringWithFormat:@"我是在第一段的range:%@  attrText:%@", NSStringFromRange(range2), m2.titleMutAttrStr];
    [m2.titleMutAttrStr fixAttributesInRange:range2];

    for (TestProjectAttributeStringFoundationModel *model in self.dataMutArr) {
        [model calculDataViewHeight];
    }

    self.tableView.dataSourceArray = self.dataMutArr;
}


@end
