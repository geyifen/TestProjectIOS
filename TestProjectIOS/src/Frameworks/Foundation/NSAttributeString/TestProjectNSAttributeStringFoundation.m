//
//  TestProjectNSAttributeStringFoundation.m
//  TestProjectIOS
//
//  Created by liwenfan on 2023/3/3.
//

#import "TestProjectNSAttributeStringFoundation.h"

#import "TestProjectNSAttributeStringFoundTableViewView.h"

@implementation TestProjectNSAttributeStringFoundation

- (NSMutableArray *)TestProjectAttributeStringFoundation_attributesAtIndex_effectiveRange:(TestProjectTableViewParams *)params {
    
    NSArray *arr = @[
        @{
            @"location": @0,
            @"atIndex": @1,
        },
        @{
            @"location": @(self.firstAttrText.length),
            @"atIndex": @2,
        },
    ];
    for (NSDictionary *dic in arr) {
        NSRange range;
        NSInteger location = [dic[@"location"] integerValue];
        NSInteger atIndex = [dic[@"atIndex"] integerValue];
        TestProjectTableViewModel *m = [self createAttrStrModel];
        
        NSDictionary *itemDic = [m.titleMutAttrStr attributesAtIndex:location effectiveRange:&range];
        m.desc = [NSString stringWithFormat:@"我是第%ld段的atIndex:%ld 获取的是在第%ld段内的range:%@ 获取的是在第%ld段内的NSAttributedStringKey集合信息%@", atIndex, location, atIndex, NSStringFromRange(range), atIndex, itemDic];
        [m calculDataViewHeight:params];
    }
    return self.dataMutArr;
}

- (NSDictionary *)method_2:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"获取NSAttributedStringKey的集合信息",
            @"title": @"- (NSDictionary<NSAttributedStringKey, id> *)attributesAtIndex:(NSUInteger)location effectiveRange:(nullable NSRangePointer)range;",
            @"desc": @"根据location匹配，返回这段文字的所有NSAttributedStringKey，如果没有匹配到则返回空的dictionary \n @param location :匹配的在哪段attrText \n @param range :根据匹配的字段字符返回range",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectAttributeStringFoundation_attributesAtIndex_effectiveRange:params],
                @"compareViewModel": self.compareViewModel,
            }
        },
    };
}

- (NSMutableArray *)TestProjectAttributeStringFoundation_property_string:(TestProjectTableViewParams *)params {
    TestProjectTableViewModel *m = [self createAttrStrModel];
    m.desc = [NSString stringWithFormat:@"获取的NSAttributeString.string是：\n%@", self.compareViewModel.titleMutAttrStr.string];
    [m calculDataViewHeight:params];
    return self.dataMutArr;
}

- (NSDictionary *)method_1:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"从NSAttributeString获取的字符串",
            @"title": @"@property (readonly, copy) NSString *string;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectAttributeStringFoundation_property_string:params],
                @"compareViewModel": self.compareViewModel,
            }
        },
    };
}

@end
