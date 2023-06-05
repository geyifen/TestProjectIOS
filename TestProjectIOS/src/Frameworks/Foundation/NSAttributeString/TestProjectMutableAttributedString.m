//
//  TestProjectMutableAttributedString.m
//  TestProjectIOS
//
//  Created by zjrcumac on 2023/3/7.
//

#import "TestProjectMutableAttributedString.h"

#import "TestProjectAttributeStringFoundationCell.h"

@interface TestProjectMutableAttributedString ()

@end

@implementation TestProjectMutableAttributedString

- (NSDictionary *)method_1 {
    return @{
        @"dataModel": @{
            @"abstract": @"用NSString替换在range范围内的attrText",
            @"title": @"- (void)replaceCharactersInRange:(NSRange)range withString:(NSString *)str;",
            @"desc": @" 替换的字符串的样式是默认的 \n 异常崩溃：range不在文字的范围内会崩溃",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"modelClass": TestProjectAttributeStringFoundationModel.class,
                @"childItems": [self TestProjectMutableAttributedString_replaceCharactersInRange_withString],
                @"compareViewModel": self.compareViewModel,
            }
        },
    };
}

- (NSDictionary *)method_2 {
    return @{
        @"dataModel": @{
            @"abstract": @"在range范围内替换NSAttributedStringKey",
            @"title": @"- (void)setAttributes:(nullable NSDictionary<NSAttributedStringKey, id> *)attrs range:(NSRange)range;",
            @"desc": @"异常崩溃：range不在文字的范围内会崩溃",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"modelClass": TestProjectAttributeStringFoundationModel.class,
                @"childItems": [self TestProjectMutableAttributedString_setAttributes_range],
                @"compareViewModel": self.compareViewModel,
            }
        },
    };
}

- (NSMutableArray *)TestProjectMutableAttributedString_setAttributes_range {
    NSArray *arr = @[
        @{
            @"location": @0,
            @"length": @(self.firstAttrText.length - 2),
        },
        @{
            @"location": @0,
            @"length": @(self.firstAttrText.length + 2),
        }
    ];
    for (NSDictionary *dic in arr) {
        NSInteger location = [dic[@"location"] integerValue];
        NSInteger length = [dic[@"length"] integerValue];
        TestProjectAttributeStringFoundationModel *m = [self createAttrStrModelWithNeedAdd:YES];
        NSRange range = NSMakeRange(location, length);
        TestProjectAttributeStringFoundationModel *rm = [self createAttrStrModelWithNeedAdd:NO];
        [rm.titleMutAttrStr setAttributes:@{NSForegroundColorAttributeName: [UIColor colorFromString:@"#00ff00"]} range:range];
        m.titleMutAttrStr = rm.titleMutAttrStr;
        m.desc = [NSString stringWithFormat:@"被替换的range:%@", NSStringFromRange(range)];
        [m calculDataViewHeight];
    }
    return self.dataMutArr;
}

- (NSMutableArray *)TestProjectMutableAttributedString_replaceCharactersInRange_withString {
    NSArray *arr = @[
        @{
            @"location": @0,
            @"length": @(self.firstAttrText.length - 2),
            @"text": self.thirdAttrText,
        },
        @{
            @"location": @0,
            @"length": @(self.firstAttrText.length + 2),
            @"text": self.thirdAttrText,
        }
    ];
    for (NSDictionary *dic in arr) {
        NSInteger location = [dic[@"location"] integerValue];
        NSInteger length = [dic[@"length"] integerValue];
        NSString *text = dic[@"text"];
        TestProjectAttributeStringFoundationModel *rm = [self createAttrStrModelWithNeedAdd:NO];
        TestProjectAttributeStringFoundationModel *m = [self createAttrStrModel];
        NSRange range = NSMakeRange(location, length);
        [rm.titleMutAttrStr replaceCharactersInRange:range withString:text];
        m.desc = [NSString stringWithFormat:@"被替换的range:%@ 被替换的文字是:%@", NSStringFromRange(range), text];
        m.titleMutAttrStr = rm.titleMutAttrStr;
        [m calculDataViewHeight];
    }
    return self.dataMutArr;
}

@end
