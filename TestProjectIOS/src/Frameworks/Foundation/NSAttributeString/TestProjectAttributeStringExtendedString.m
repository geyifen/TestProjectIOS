//
//  TestProjectAttributeStringExtendedString.m
//  TestProjectIOS
//
//  Created by zjrcumac on 2023/3/3.
//

#import "TestProjectAttributeStringExtendedString.h"

#import "TestProjectAttributeStringFoundationCell.h"

@interface TestProjectAttributeStringExtendedString ()

@end

@implementation TestProjectAttributeStringExtendedString


- (NSDictionary *)method_1 {
    return @{
        @"dataModel": @{
            @"abstract": @"获取NSAttributeString的字符串长度",
            @"title": @"@property (readonly) NSUInteger length;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"modelClass": TestProjectAttributeStringFoundationModel.class,
                @"childItems": [self TestProjectAttributeStringFoundation_property_length],
                @"compareViewModel": self.compareViewModel,
            }
        },
    };
}

- (NSDictionary *)method_2 {
    return @{
        @"dataModel": @{
            @"abstract": @"获取单个NSAttributedStringKey的信息",
            @"title": @"- (nullable id)attribute:(NSAttributedStringKey)attrName atIndex:(NSUInteger)location effectiveRange:(nullable NSRangePointer)range;",
            @"desc":[NSString stringWithFormat:@"获取到location所在位置的attrText字段，如果有则返回，没有也不往后继续寻找并且返回为null \n @param location :匹配到在哪段attrText中 \n @param range :根据匹配的字段字符返回range \n异常崩溃条件: location超过字符长度 \nfirstTextLength:%ld, secondTextLength:%ld, thirdAttrTextLength:%ld, fourthAttrLength:%ld, fivthAttrTextLength:%ld, sixthAttrTextLength:%ld", self.firstAttrText.length, self.secondAttrText.length, self.thirdAttrText.length, self.fourthAttrText.length, self.fivthAttrText.length, self.sixthAttrText.length],
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"modelClass": TestProjectAttributeStringFoundationModel.class,
                @"childItems": [self TestProjectAttributeStringFoundation_attribute_atIndex_effectiveRange],
                @"compareViewModel": self.compareViewModel,
            }
        },
    };
}

- (NSDictionary *)method_3 {
    return @{
        @"dataModel": @{
            @"abstract": @"获取attrText的子字符串",
            @"title": @"- (NSAttributedString *)attributedSubstringFromRange:(NSRange)range;",
            @"desc":[NSString stringWithFormat:@" 根据range从attrText获取子串 \n 崩溃异常条件：range的范围必须在attrText范围中，否则崩溃 \n  @param range :获取子字符串的范围 \n firstTextLength:%ld, secondTextLength:%ld", self.firstAttrText.length,  self.secondAttrText.length],
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"modelClass": TestProjectAttributeStringFoundationModel.class,
                @"childItems": [self TestProjectAttributeStringFoundation_attributedSubstringFromRange],
                @"compareViewModel": self.compareViewModel,
            }
        },
    };
}

- (NSDictionary *)method_4 {
    return @{
        @"dataModel": @{
            @"abstract": @"获取attrText的NSAttributedStringKey集合信息",
            @"title": @"- (NSDictionary<NSAttributedStringKey, id> *)attributesAtIndex:(NSUInteger)location longestEffectiveRange:(nullable NSRangePointer)range inRange:(NSRange)rangeLimit;",
            @"desc":@"先根据location查到是第几段attribute，没设置则返回空的字典；如果查到的attribute不是最后一段，则rangeLimit无效；如果是最后一段，则attribute的长度是否在rangeLimit限制中，不符合的崩溃；range则看attribute是否在rangeLimit中，在则返回attribute的range，不在返回NSMakeRange(0, 0) \n 崩溃异常条件：1、location超过文字长度 2、location在最后一段attrText字段中并且rangeLimit超过文字长度 \n @param location :从哪个位置开始 \n @param range :根据匹配的字段字符返回range \n @param rangeLimit: 配合location返回effRange",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"modelClass": TestProjectAttributeStringFoundationModel.class,
                @"childItems": [self TestProjectAttributeStringFoundation_attributesAtIndex_longestEffectiveRange_inRange],
                @"compareViewModel": self.compareViewModel,
            }
        },
    };
}

- (NSDictionary *)method_5 {
    return @{
        @"dataModel": @{
            @"abstract": @"获取单个NSAttributedStringKey的信息",
            @"title": @"- (nullable id)attribute:(NSAttributedStringKey)attrName atIndex:(NSUInteger)location longestEffectiveRange:(nullable NSRangePointer)range inRange:(NSRange)rangeLimit;",
            @"desc":@"先根据location查到是第几段attribute，没设置则返回null；range则看查到的attribute是否在rangeLimit中，在则返回attribute的range，不在返回NSMakeRange(0, 0) \n 异常崩溃：location超过全段文字的长度 \n @param attrName :要获取的NSAttributedStringKey信息 \n @param location :匹配在哪段attrText中 \n @param range :根据匹配的字段字符返回range，如果location不在rangeLimit范围中，返回NSMakeRange(0, 0) \n @param rangeLimit: 根据匹配的字段字符返回range ",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"modelClass": TestProjectAttributeStringFoundationModel.class,
                @"childItems": [self TestProjectAttributeStringFoundation_attribute_atIndex_longestEffectiveRange_inRange],
                @"compareViewModel": self.compareViewModel,
            }
        },
    };
}

- (NSDictionary *)method_6 {
    return @{
        @"dataModel": @{
            @"abstract": @"判断两个attrText是否相同，如果文字不对或者长度不对或者NSAttributedStringKey不相等就不一样",
            @"title": @"- (BOOL)isEqualToAttributedString:(NSAttributedString *)other;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"modelClass": TestProjectAttributeStringFoundationModel.class,
                @"childItems": [self TestProjectAttributeStringFoundation_isEqualToAttributedString],
                @"compareViewModel": self.compareViewModel,
            }
        },
    };
}

- (NSDictionary *)method_7 {
    return @{
        @"dataModel": @{
            @"abstract": @"通过initWithString创建attrText",
            @"title": @"- (instancetype)initWithString:(NSString *)str;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"modelClass": TestProjectAttributeStringFoundationModel.class,
                @"childItems": [self TestProjectAttributeStringFoundation_initWithString],
                @"compareViewModel": self.compareViewModel,
            }
        },
    };
}

- (NSDictionary *)method_8 {
    return @{
        @"dataModel": @{
            @"abstract": @"通过initWithString和attributes创建attrText",
            @"title": @"- (instancetype)initWithString:(NSString *)str attributes:(nullable NSDictionary<NSAttributedStringKey, id> *)attrs;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"modelClass": TestProjectAttributeStringFoundationModel.class,
                @"childItems": [self TestProjectAttributeStringFoundation_initWithString_attributes],
                @"compareViewModel": self.compareViewModel,
            }
        },
    };
}

- (NSDictionary *)method_9 {
    return @{
        @"dataModel": @{
            @"abstract": @"通过init NSAttributedString创建attrText",
            @"title": @"- (instancetype)initWithAttributedString:(NSAttributedString *)attrStr;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"modelClass": TestProjectAttributeStringFoundationModel.class,
                @"childItems": [self TestProjectAttributeStringFoundation_initWithAttributedString],
                @"compareViewModel": self.compareViewModel,
            }
        },
    };
}

- (NSDictionary *)method_10 {
    return @{
        @"dataModel": @{
            @"abstract": @"通过block方式查询NSAttributedStringKey的集合信息",
            @"title": @"- (void)enumerateAttributesInRange:(NSRange)enumerationRange options:(NSAttributedStringEnumerationOptions)opts usingBlock:(void (NS_NOESCAPE ^)(NSDictionary<NSAttributedStringKey, id> *attrs, NSRange range, BOOL *stop))block API_AVAILABLE(macos(10.6), ios(4.0), watchos(2.0), tvos(9.0));",
            @"desc": @"@param enumerationRange :查询的范围 \n @paramoptions :倒序还是顺序输出 \n @param block :输出的block",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"modelClass": TestProjectAttributeStringFoundationModel.class,
                @"childItems": [self TestProjectAttributeStringFoundation_enumerateAttributesInRange_options_usingBlock],
                @"compareViewModel": self.compareViewModel,
            }
        },
    };
}

- (NSDictionary *)method_11 {
    return @{
        @"dataModel": @{
            @"abstract": @"通过block方式查询特定的NSAttributedStringKey单个信息",
            @"title": @"- (void)enumerateAttribute:(NSAttributedStringKey)attrName inRange:(NSRange)enumerationRange options:(NSAttributedStringEnumerationOptions)opts usingBlock:(void (NS_NOESCAPE ^)(id _Nullable value, NSRange range, BOOL *stop))block API_AVAILABLE(macos(10.6), ios(4.0), watchos(2.0), tvos(9.0));",
            @"desc": @"@param attrName :查询的NSAttributedStringKey\n@param enumerationRange :查询的范围 \n @paramoptions :倒序还是顺序输出 \n @param block :输出的block \n NSAttributedStringEnumerationReverse倒序输出，会把连续相同的放在一起输出；NSAttributedStringEnumerationLongestEffectiveRangeNotRequired正序输出，连续相同的不会在一起输出",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"modelClass": TestProjectAttributeStringFoundationModel.class,
                @"childItems": [self TestProjectAttributeStringFoundation_enumerateAttribute_inRange_options_usingBlock],
                @"compareViewModel": self.compareViewModel,
            }
        },
    };
}


- (NSMutableArray *)TestProjectAttributeStringFoundation_enumerateAttribute_inRange_options_usingBlock {
    NSArray *arr = @[
        @{
            @"length": @(self.compareViewModel.titleMutAttrStr.length),
            @"options": @(NSAttributedStringEnumerationReverse),
            @"desc": @"我是全局的attrText NSAttributedStringEnumerationReverse我是倒序执行\n",
        },
        @{
            @"length": @(self.compareViewModel.titleMutAttrStr.length),
            @"options": @(NSAttributedStringEnumerationLongestEffectiveRangeNotRequired),
            @"desc": @"我是全局的attrText NSAttributedStringEnumerationLongestEffectiveRangeNotRequired我是顺序执行\n",
        },
        @{
            @"length": @(self.firstAttrText.length),
            @"options": @(NSAttributedStringEnumerationReverse),
            @"desc": @"我是第一段的attrText NSAttributedStringEnumerationReverse我是倒序执行\n",
        },
        @{
            @"length": @(self.firstAttrText.length),
            @"options": @(NSAttributedStringEnumerationLongestEffectiveRangeNotRequired),
            @"desc": @"我是第一段的attrText NSAttributedStringEnumerationLongestEffectiveRangeNotRequired我是顺序执行\n",
        },
    ];
    for (NSDictionary *dic in arr) {
        NSInteger length = [dic[@"length"] integerValue];
        NSAttributedStringEnumerationOptions options = [dic[@"options"] integerValue];
        NSString *desc = dic[@"desc"];
        NSRange range = NSMakeRange(0, length);
        
        TestProjectAttributeStringFoundationModel *m = [self createAttrStrModel];
        NSMutableString *mutStr = [[NSMutableString alloc] initWithString:desc];

        [self.compareViewModel.titleMutAttrStr enumerateAttribute:NSForegroundColorAttributeName inRange:range options:options usingBlock:^(NSDictionary<NSAttributedStringKey,id> * _Nonnull attrs, NSRange range, BOOL * _Nonnull stop) {
            [mutStr appendString:[NSString stringWithFormat:@"attrs:%@ range:%@ stop:%u\n", attrs, NSStringFromRange(range), *stop]];
        }];
        m.desc = mutStr;
        [m calculDataViewHeight];
    }
    return self.dataMutArr;
}

- (NSMutableArray *)TestProjectAttributeStringFoundation_enumerateAttributesInRange_options_usingBlock {
    NSArray *arr = @[
        @{
            @"length": @(self.compareViewModel.titleMutAttrStr.length),
            @"options": @(NSAttributedStringEnumerationReverse),
            @"desc": @"我是全局的attrText NSAttributedStringEnumerationReverse我是倒序执行\n",
        },
        @{
            @"length": @(self.compareViewModel.titleMutAttrStr.length),
            @"options": @(NSAttributedStringEnumerationLongestEffectiveRangeNotRequired),
            @"desc": @"我是全局的attrText NSAttributedStringEnumerationLongestEffectiveRangeNotRequired我是顺序执行\n",
        },
        @{
            @"length": @(self.firstAttrText.length),
            @"options": @(NSAttributedStringEnumerationReverse),
            @"desc": @"我是第一段的attrText NSAttributedStringEnumerationReverse我是倒序执行\n",
        },
        @{
            @"length": @(self.firstAttrText.length),
            @"options": @(NSAttributedStringEnumerationLongestEffectiveRangeNotRequired),
            @"desc": @"我是第一段的attrText NSAttributedStringEnumerationLongestEffectiveRangeNotRequired我是顺序执行\n",
        },
    ];
    for (NSDictionary *dic in arr) {
        NSInteger length = [dic[@"length"] integerValue];
        NSAttributedStringEnumerationOptions options = [dic[@"options"] integerValue];
        NSString *desc = dic[@"desc"];
        NSRange range = NSMakeRange(0, length);
        
        TestProjectAttributeStringFoundationModel *m = [self createAttrStrModel];
        NSMutableString *mutStr = [[NSMutableString alloc] initWithString:desc];
        
        [self.compareViewModel.titleMutAttrStr enumerateAttributesInRange:range options:options usingBlock:^(NSDictionary<NSAttributedStringKey,id> * _Nonnull attrs, NSRange range, BOOL * _Nonnull stop) {
            [mutStr appendString:[NSString stringWithFormat:@"attrs:%@ range:%@ stop:%u\n", attrs, NSStringFromRange(range), *stop]];
        }];
        m.desc = mutStr;
        [m calculDataViewHeight];
    }
    return self.dataMutArr;
}

- (NSMutableArray *)TestProjectAttributeStringFoundation_initWithAttributedString {
    TestProjectAttributeStringFoundationModel *m = [[TestProjectAttributeStringFoundationModel alloc] init];
    m.titleMutAttrStr = [[NSMutableAttributedString alloc] initWithAttributedString:self.compareViewModel.titleMutAttrStr];
    NSRange range;
    NSDictionary *dic = [m.titleMutAttrStr attributesAtIndex:0 effectiveRange:&range];
    m.desc = [NSString stringWithFormat:@"range:%@ %@", NSStringFromRange(range), dic];
    [m calculDataViewHeight];
    [self.dataMutArr addObject:m];

    return self.dataMutArr;
}

- (NSMutableArray *)TestProjectAttributeStringFoundation_initWithString_attributes {
    TestProjectAttributeStringFoundationModel *m = [[TestProjectAttributeStringFoundationModel alloc] init];
    m.titleMutAttrStr = [[NSMutableAttributedString alloc] initWithString:self.firstAttrText attributes:@{NSForegroundColorAttributeName:[UIColor colorFromString:@"#223322"], NSFontAttributeName:[UIFont systemFontOfSize:20]}];
    NSRange range;
    NSDictionary *dic = [m.titleMutAttrStr attributesAtIndex:0 effectiveRange:&range];
    m.desc = [NSString stringWithFormat:@"range:%@ %@", NSStringFromRange(range), dic];;
    [m calculDataViewHeight];
    [self.dataMutArr addObject:m];

    return self.dataMutArr;
}

- (NSMutableArray *)TestProjectAttributeStringFoundation_initWithString {
    TestProjectAttributeStringFoundationModel *m = [[TestProjectAttributeStringFoundationModel alloc] init];
    m.titleMutAttrStr = [[NSMutableAttributedString alloc] initWithString:self.firstAttrText];
    NSRange range;
    NSDictionary *dic = [m.titleMutAttrStr attributesAtIndex:0 effectiveRange:&range];
    m.desc = [NSString stringWithFormat:@"range:%@ %@", NSStringFromRange(range), dic];;
    [m calculDataViewHeight];
    [self.dataMutArr addObject:m];

    return self.dataMutArr;
}

- (NSMutableArray *)TestProjectAttributeStringFoundation_isEqualToAttributedString {
    TestProjectAttributeStringFoundationModel *m1 = [self createAttrStrModelWithNeedAdd:NO];
    TestProjectAttributeStringFoundationModel *m2 = [self createAttrStrModelWithNeedAdd:NO];
    NSArray *arr = @[
        @{
            @"location1": @(self.firstAttrText.length),
            @"length1": @(self.secondAttrText.length),
            @"atIndex1": @2,
            @"location2": @(self.firstAttrText.length),
            @"length2": @(self.secondAttrText.length),
            @"atIndex2": @2,
        },
        @{
            @"location1": @(self.firstAttrText.length),
            @"length1": @(self.secondAttrText.length),
            @"atIndex1": @2,
            @"location2": @(self.firstAttrText.length + self.secondAttrText.length),
            @"length2": @(self.thirdAttrText.length),
            @"atIndex2": @3,
        },
        @{
            @"location1": @(self.firstAttrText.length),
            @"length1": @(self.secondAttrText.length),
            @"atIndex1": @2,
            @"location2": @(self.firstAttrText.length + self.secondAttrText.length + self.thirdAttrText.length),
            @"length2": @(self.fourthAttrText.length),
            @"atIndex2": @3,
        },
    ];
    for (NSDictionary *dic in arr) {
        NSInteger location1 = [dic[@"location1"] integerValue];
        NSInteger length1 = [dic[@"length1"] integerValue];
        NSInteger location2 = [dic[@"location2"] integerValue];
        NSInteger length2 = [dic[@"length2"] integerValue];
        NSInteger atIndex1 = [dic[@"atIndex1"] integerValue];
        NSInteger atIndex2 = [dic[@"atIndex2"] integerValue];

        NSRange range1 = NSMakeRange(location1, length1);
        NSRange range2 = NSMakeRange(location2, length2);
        NSAttributedString *attrS1 = [m1.titleMutAttrStr attributedSubstringFromRange:range1];
        NSAttributedString *attrS2 = [m2.titleMutAttrStr attributedSubstringFromRange:range2];
        
        BOOL ret = [attrS1 isEqualToAttributedString:attrS2];
        TestProjectAttributeStringFoundationModel *m = [self createAttrStrModel];
        m.desc = [NSString stringWithFormat:@"第一个的第%ld段的标题和第二个的第%ld段的标题比较：是否相同：%u", atIndex1, atIndex2, ret];
        [m calculDataViewHeight];
    }
    return self.dataMutArr;
}

- (NSMutableArray *)TestProjectAttributeStringFoundation_attribute_atIndex_longestEffectiveRange_inRange {
    NSInteger totalLength = ((TestProjectAttributeStringFoundationModel *)self.compareViewModel).titleMutAttrStr.length;
    NSArray *arr = @[
        @{
            @"location": @0,
            @"start": @(self.firstAttrText.length),
            @"length": @(self.firstAttrText.length + 1000),
            @"atIndex": @1,
            @"key": @"NSForegroundColorAttributeName",
            @"stringKey": NSForegroundColorAttributeName,
        },
        @{
            @"location": @(self.firstAttrText.length),
            @"length": @(self.firstAttrText.length + 1000),
            @"atIndex": @2,
            @"key": @"NSForegroundColorAttributeName",
            @"stringKey": NSForegroundColorAttributeName,
        },
        @{
            @"location": @(totalLength - self.fivthAttrText.length - self.sixthAttrText.length - 2),
            @"length": @(self.firstAttrText.length + 1000),
            @"atIndex": @4,
            @"key": @"NSForegroundColorAttributeName",
            @"stringKey": NSForegroundColorAttributeName,
        },
        @{
            @"location": @(totalLength - self.sixthAttrText.length),
            @"length": @(self.firstAttrText.length + 1000),
            @"atIndex": @6,
            @"key": @"NSForegroundColorAttributeName",
            @"stringKey": NSForegroundColorAttributeName,
        },
        @{
            @"location": @(0),
            @"length": @(self.firstAttrText.length + 1000),
            @"atIndex": @1,
            @"key": @"NSStrokeColorAttributeName",
            @"stringKey": NSStrokeColorAttributeName,
        },
        @{
            @"location": @(totalLength - self.sixthAttrText.length),
            @"length": @(self.sixthAttrText.length),
            @"atIndex": @6,
            @"key": @"NSStrokeColorAttributeName",
            @"stringKey": NSStrokeColorAttributeName,
        },
    ];
    for (NSDictionary *dic in arr) {
        NSInteger start = [dic[@"start"] integerValue];
        NSInteger location = [dic[@"location"] integerValue];
        NSInteger length = [dic[@"length"] integerValue];
        NSInteger atIndex = [dic[@"atIndex"] integerValue];
        NSString *stringKey = dic[@"stringKey"];
        NSString *key = dic[@"key"];
        TestProjectAttributeStringFoundationModel *m = [self createAttrStrModel];
        NSRange range = NSMakeRange(start > 0 ? start : location, length);
        NSRange effRange;
        NSDictionary *itemDic = [self.compareViewModel.titleMutAttrStr attribute:stringKey atIndex:location longestEffectiveRange:&effRange inRange:range];
        m.desc = [NSString stringWithFormat:@"我是在第%ld段内的atIndex:%ld 获取的是在第%ld段内的effecRange:%@ 我是%ld段内的inRange:%@ 获取的是在第%ld段内的NSAttributedStringKey(%@-%@)的集合：%@", atIndex, location, atIndex, NSStringFromRange(effRange), atIndex, NSStringFromRange(range), atIndex, key, stringKey, itemDic];
        [m calculDataViewHeight];
    }
    return self.dataMutArr;
}

- (NSMutableArray *)TestProjectAttributeStringFoundation_attributesAtIndex_longestEffectiveRange_inRange {
    NSInteger totalLength = ((TestProjectAttributeStringFoundationModel *)self.compareViewModel).titleMutAttrStr.length;
    NSArray *arr = @[
        @{
            @"location": @0,
            @"length": @(self.firstAttrText.length + 1000),
            @"atIndex": @1,
        },
        @{
            @"location": @(self.firstAttrText.length),
            @"length": @(self.secondAttrText.length),
            @"atIndex": @2,
        },
        @{
            @"location": @(totalLength - self.fivthAttrText.length - self.sixthAttrText.length - 2),
            @"length": @(self.fivthAttrText.length + self.sixthAttrText.length + 2),
            @"atIndex": @4,
        },
        @{
            @"location": @(totalLength - self.sixthAttrText.length),
            @"length": @(self.sixthAttrText.length),
            @"atIndex": @6,
        },
    ];
    for (NSDictionary *dic in arr) {
        NSInteger location = [dic[@"location"] integerValue];
        NSInteger length = [dic[@"length"] integerValue];
        NSInteger atIndex = [dic[@"atIndex"] integerValue];
        NSRange range = NSMakeRange(location, length);
        NSRange effRange;
        TestProjectAttributeStringFoundationModel *m = [self createAttrStrModel];
        
        NSDictionary *itemDic = [self.compareViewModel.titleMutAttrStr attributesAtIndex:location longestEffectiveRange:&effRange inRange:range];
        m.desc = [NSString stringWithFormat:@"我是在第%ld段内的atIndex:%ld 获取的是在第%ld段内的effecRange:%@ 我是%ld段内的inRange:%@ 获取的是在第%ld段内的NSAttributedStringKey的集合：%@", atIndex, location, atIndex, NSStringFromRange(effRange), atIndex, NSStringFromRange(range), atIndex, itemDic];
        [m calculDataViewHeight];
    }
    return self.dataMutArr;
}

- (NSMutableArray *)TestProjectAttributeStringFoundation_attributedSubstringFromRange {
    TestProjectAttributeStringFoundationModel *m = [self createAttrStrModel];
    NSRange range = NSMakeRange(0, 24);
    m.descMutAttrStr = [[NSMutableAttributedString alloc] initWithString:[NSString stringWithFormat:@"获取范围%@的attrText的是：\n", NSStringFromRange(range)]];
    [m.descMutAttrStr appendAttributedString:[self.compareViewModel.titleMutAttrStr attributedSubstringFromRange:range]];
    [m calculDataViewHeight];
    return self.dataMutArr;
}

- (NSMutableArray *)TestProjectAttributeStringFoundation_attribute_atIndex_effectiveRange {
    NSInteger totalLength = ((TestProjectAttributeStringFoundationModel *)self.compareViewModel).titleMutAttrStr.length;
    NSArray *arr = @[
        @{
            @"location": @0,
            @"atIndex": @1,
            @"key": @"NSForegroundColorAttributeName",
            @"stringKey": NSForegroundColorAttributeName,
        },
        @{
            @"location": @(self.firstAttrText.length),
            @"atIndex": @2,
            @"key": @"NSForegroundColorAttributeName",
            @"stringKey": NSForegroundColorAttributeName,
        },
        @{
            @"location": @(totalLength - self.fivthAttrText.length - self.sixthAttrText.length - 2),
            @"atIndex": @4,
            @"key": @"NSForegroundColorAttributeName",
            @"stringKey": NSForegroundColorAttributeName,
        },
        @{
            @"location": @(totalLength - self.sixthAttrText.length),
            @"atIndex": @6,
            @"key": @"NSForegroundColorAttributeName",
            @"stringKey": NSForegroundColorAttributeName,
        },
        @{
            @"location": @(0),
            @"atIndex": @1,
            @"key": @"NSStrokeColorAttributeName",
            @"stringKey": NSStrokeColorAttributeName,
        },
        @{
            @"location": @(totalLength - self.sixthAttrText.length),
            @"atIndex": @6,
            @"key": @"NSStrokeColorAttributeName",
            @"stringKey": NSStrokeColorAttributeName,
        },
    ];
    for (NSDictionary *dic in arr) {
        NSRange range;
        NSInteger location = [dic[@"location"] integerValue];
        NSInteger atIndex = [dic[@"atIndex"] integerValue];
        NSString *stringKey = dic[@"stringKey"];
        NSString *key = dic[@"key"];
        TestProjectAttributeStringFoundationModel *m = [self createAttrStrModel];
        
        NSDictionary *itemDic = [self.compareViewModel.titleMutAttrStr attribute:stringKey atIndex:location effectiveRange:&range];
        m.desc = [NSString stringWithFormat:@"我是第%ld段的atIndex:%ld 获取的是在第%ld段内的range:%@ 获取的是在第%ld段内的NSAttributedStringKey(%@-%@)集合信息%@", atIndex, location, atIndex, NSStringFromRange(range), atIndex, key, stringKey, itemDic];
        [m calculDataViewHeight];
    }
    return self.dataMutArr;
}

- (NSMutableArray *)TestProjectAttributeStringFoundation_property_length {
    TestProjectAttributeStringFoundationModel *m = [self createAttrStrModel];
    m.desc = [NSString stringWithFormat:@"NSAttributeString.length是：%ld", self.compareViewModel.titleMutAttrStr.length];
    [m calculDataViewHeight];
    return self.dataMutArr;
}

@end
