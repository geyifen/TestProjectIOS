//
//  TestProjectAttributedStringDocumentFormats.m
//  TestProjectIOS
//
//  Created by 李文凡 on 2023/3/18.
//

#import "TestProjectAttributedStringDocumentFormats.h"

@implementation TestProjectAttributedStringDocumentFormats

- (NSDictionary *)method_1 {
    return @{
        @"dataModel": @{
            @"abstract": @"修改attrText的信息，保持一致",
            @"title": @"- (nullable instancetype)initWithURL:(NSURL *)url options:(NSDictionary<NSAttributedStringDocumentReadingOptionKey, id> *)options documentAttributes:(NSDictionary<NSAttributedStringDocumentAttributeKey, id> * __nullable * __nullable)dict error:(NSError **)error API_AVAILABLE(macos(10.4), ios(9.0));",
            @"desc": @"NSMutableAttributedString提供若干方法，即可以修改字符串，又可以修改字符串的属性。经过多次修改后，有些信息可能变的不一致了，为了让信息保持一致，可以使用下面的方法 \n 异常崩溃条件：range超过文字的范围 \n NSVerticalGlyphFormAttributeName 为1的时候英文字母是横着放向的，0的时候是竖着方向的",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"modelClass": TestProjectAttributeStringFoundationModel.class,
                @"childItems": [self TestProjectAttributedStringDocumentFormats_initWithURL_options_documentAttributes_error],
                @"compareViewModel": self.compareViewModel,
            }
        },
    };

    return @{
        @"- (nullable instancetype)initWithURL:(NSURL *)url options:(NSDictionary<NSAttributedStringDocumentReadingOptionKey, id> *)options documentAttributes:(NSDictionary<NSAttributedStringDocumentAttributeKey, id> * __nullable * __nullable)dict error:(NSError **)error API_AVAILABLE(macos(10.4), ios(9.0));":@{
            @"method":@"TestProjectAttributedStringDocumentFormats_initWithURL_options_documentAttributes_error",
            @"desc":@"修改attrText的信息，保持一致 \n NSMutableAttributedString提供若干方法，即可以修改字符串，又可以修改字符串的属性。经过多次修改后，有些信息可能变的不一致了，为了让信息保持一致，可以使用下面的方法"}
    };
}

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

- (NSMutableArray *)TestProjectAttributedStringDocumentFormats_initWithURL_options_documentAttributes_error {
    NSArray *arr = @[
        @{
            @"location": @0,
            @"length": @(self.firstAttrText.length),
            @"atIndex": @1,
            @"value": @1,
        },
        @{
            @"location": @(0),
            @"length": @(self.secondAttrText.length + self.firstAttrText.length),
            @"atIndex": @0,
            @"value": @0,
        },
    ];
    for (NSDictionary *dic in arr) {
        NSInteger location = [dic[@"location"] integerValue];
        NSInteger length = [dic[@"length"] integerValue];
        NSInteger atIndex = [dic[@"atIndex"] integerValue];
        NSNumber *value = dic[@"value"];
        NSRange range = NSMakeRange(location, length);
        TestProjectAttributeStringFoundationModel *m = [self createAttrStrModelWithAttributes:@{NSVerticalGlyphFormAttributeName:value}];
        NSError *err;
        NSAttributedString *attr = [[NSAttributedString alloc] initWithURL:[NSURL URLWithString:@"file://www.baidu.com"] options:nil documentAttributes:nil error:&err];
        if (!err && attr) {
            [m.titleMutAttrStr appendAttributedString:attr];
        }

        m.desc = [NSString stringWithFormat:@"我是在第%ld段的range:%@ attrText:%@", atIndex, NSStringFromRange(range),  m.titleMutAttrStr];
        [m.titleMutAttrStr fixAttributesInRange:range];
        [m calculDataViewHeight];
    }
    return self.dataMutArr;
}


@end
