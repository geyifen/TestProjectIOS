//
//  TestProjectNSAttributedStringAttributeFixing.m
//  TestProjectIOS
//
//  Created by 李文凡 on 2023/3/18.
//

#import "TestProjectNSAttributedStringAttributeFixing.h"

@implementation TestProjectNSAttributedStringAttributeFixing

- (NSMutableArray *)TestProjectMutableAttributedStringAttributeFixing_fixAttributesInRange:(TestProjectTableViewParams *)params {
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
        TestProjectTableViewModel *m = [self createAttrStrModelWithAttributes:@{NSVerticalGlyphFormAttributeName:value}];
        m.desc = [NSString stringWithFormat:@"我是在第%ld段的range:%@ attrText:%@", atIndex, NSStringFromRange(range),  m.titleMutAttrStr];
        [m.titleMutAttrStr fixAttributesInRange:range];
        [m calculDataViewHeight:params];
    }
    
    return self.dataMutArr;
}

- (NSDictionary *)method_1:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"修改attrText的信息，保持一致",
            @"title": @"- (void)fixAttributesInRange:(NSRange)range API_AVAILABLE(macos(10.0), ios(7.0));",
            @"desc": @"NSMutableAttributedString提供若干方法，即可以修改字符串，又可以修改字符串的属性。经过多次修改后，有些信息可能变的不一致了，为了让信息保持一致，可以使用下面的方法 \n 异常崩溃条件：range超过文字的范围 \n NSVerticalGlyphFormAttributeName 为1的时候英文字母是横着放向的，0的时候是竖着方向的",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectMutableAttributedStringAttributeFixing_fixAttributesInRange:params],
                @"compareViewModel": self.compareViewModel,
            }
        },
    };
}

@end
