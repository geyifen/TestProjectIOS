//
//  TestProjectMutableAttributedStringExtended.m
//  TestProjectIOS
//
//  Created by zjrcumac on 2023/3/13.
//

#import "TestProjectMutableAttributedStringExtended.h"

@interface TestProjectMutableAttributedStringExtended ()

@end

@implementation TestProjectMutableAttributedStringExtended

- (NSDictionary *)method_1 {
    return @{
        @"dataModel": @{
            @"abstract": @"获取NSMutableAttributedString的mutableString",
            @"title": @"@property (readonly, retain) NSMutableString *mutableString;",
            @"dataModel": @{
                @"modelClass": TestProjectAttributeStringFoundationModel.class,
                @"childItems": [self TestProjectMutableAttributedStringExtended_property_mutableString],
                @"compareViewModel": self.compareViewModel,
            }
        },
    };
}

- (NSDictionary *)method_2 {
    return @{
        @"dataModel": @{
            @"abstract": @"给NSMutableAttributedString添加单个NSAttributedStringKey信息",
            @"title": @"- (void)addAttribute:(NSAttributedStringKey)name value:(id)value range:(NSRange)range;",
            @"desc": @"在range范围的attrText如果NSAttributedStringKey相同则替换，否则添加 \n 崩溃异常: range不在整个attrText的范围内 \n @param name :给定NSAttributedStringKey值 \n @param value :给定NSAttributedStringKey值的value \n @parma range :给定范围",
            @"dataModel": @{
                @"modelClass": TestProjectAttributeStringFoundationModel.class,
                @"childItems": [self TestProjectMutableAttributedStringExtended_addAttribute_value_range],
                @"compareViewModel": self.compareViewModel,
            }
        },
    };
}

- (NSDictionary *)method_3 {
    return @{
        @"dataModel": @{
            @"abstract": @"给NSMutableAttributedString添加NSAttributedStringKey集合信息",
            @"title": @"- (void)addAttributes:(NSDictionary<NSAttributedStringKey, id> *)attrs range:(NSRange)range;",
            @"desc": @"在range范围的attrText如果NSAttributedStringKey相同则替换，否则添加 \n 崩溃异常: range不在整个attrText的范围内 \n @param name :给定NSAttributedStringKey集合信息 \n @parma range :给定范围",
            @"dataModel": @{
                @"modelClass": TestProjectAttributeStringFoundationModel.class,
                @"childItems": [self TestProjectMutableAttributedStringExtended_addAttributes_range],
                @"compareViewModel": self.compareViewModel,
            }
        },
    };
}

- (NSDictionary *)method_4 {
    return @{
        @"dataModel": @{
            @"abstract": @"给NSMutableAttributedString移除NSAttributedStringKey单个信息",
            @"title": @"- (void)removeAttribute:(NSAttributedStringKey)name range:(NSRange)range;",
            @"desc": @"在range范围的attrText如果NSAttributedStringKey相同则移除，否则保持原有信息 \n 崩溃异常: range不在整个attrText的范围内 \n @param name :给定NSAttributedStringKey单个信息 \n @parma range :给定范围",
            @"dataModel": @{
                @"modelClass": TestProjectAttributeStringFoundationModel.class,
                @"childItems": [self TestProjectMutableAttributedStringExtended_removeAttribute_range],
                @"compareViewModel": self.compareViewModel,
            }
        },
    };
}

- (NSDictionary *)method_5 {
    return @{
        @"dataModel": @{
            @"abstract": @"在NSMutableAttributedString某个范围内替换为整个新的attrText信息",
            @"title": @"- (void)replaceCharactersInRange:(NSRange)range withAttributedString:(NSAttributedString *)attrString;",
            @"desc": @"在range范围的attrText替换新的attrText信息，包含文字和所有NSAttributedStringKey信息 \n 崩溃异常: range不在整个attrText的范围内 \n @parma range :给定范围 \n @param attrString :给定attrString信息",
            @"dataModel": @{
                @"modelClass": TestProjectAttributeStringFoundationModel.class,
                @"childItems": [self TestProjectMutableAttributedStringExtended_replaceCharactersInRange_withAttributedString],
                @"compareViewModel": self.compareViewModel,
            }
        },
    };
}

- (NSDictionary *)method_6 {
    return @{
        @"dataModel": @{
            @"abstract": @"在NSMutableAttributedString某个位置添加整个新的attrText信息",
            @"title": @"- (void)insertAttributedString:(NSAttributedString *)attrString atIndex:(NSUInteger)loc;",
            @"desc": @"在attrText第atIndex后的位置添加新的attrText信息 \n 崩溃异常: atIndex不在整个attrText的范围内 \n @param attrString :给定attrString信息 \n @parma loc :给定添加的位置",
            @"dataModel": @{
                @"modelClass": TestProjectAttributeStringFoundationModel.class,
                @"childItems": [self TestProjectMutableAttributedStringExtended_insertAttributedString_atIndex],
                @"compareViewModel": self.compareViewModel,
            }
        },
    };
}

- (NSDictionary *)method_7 {
    return @{
        @"dataModel": @{
            @"abstract": @"在NSMutableAttributedString最后面位置添加整个新的attrText信息",
            @"title": @"- (void)appendAttributedString:(NSAttributedString *)attrString;",
            @"desc": @"在attrText最后的位置添加新的attrText信息 \n @param attrString :给定attrString信息 ",
            @"dataModel": @{
                @"modelClass": TestProjectAttributeStringFoundationModel.class,
                @"childItems": [self TestProjectMutableAttributedStringExtended_appendAttributedString],
                @"compareViewModel": self.compareViewModel,
            }
        },
    };
}

- (NSDictionary *)method_8 {
    return @{
        @"dataModel": @{
            @"abstract": @"在NSMutableAttributedString删除某个范围的attrText信息",
            @"title": @"- (void)deleteCharactersInRange:(NSRange)range;",
            @"desc": @"在range范围内把attrText删除掉 \n 崩溃异常: range不在整个attrText的范围内 \n @parma range :给定范围 \n",
            @"dataModel": @{
                @"modelClass": TestProjectAttributeStringFoundationModel.class,
                @"childItems": [self TestProjectMutableAttributedStringExtended_deleteCharactersInRange],
                @"compareViewModel": self.compareViewModel,
            }
        },
    };
}

- (NSDictionary *)method_9 {
    return @{
        @"dataModel": @{
            @"abstract": @"用新的attrText替换NSMutableAttributedString的整个attrText",
            @"title": @"- (void)setAttributedString:(NSAttributedString *)attrString;",
            @"desc": @"在range范围的attrText如果NSAttributedStringKey相同则替换，否则添加 \n 崩溃异常: range不在整个attrText的范围内 \n @param name :给定NSAttributedStringKey值 \n @param value :给定NSAttributedStringKey值的value \n @parma range :给定范围",
            @"dataModel": @{
                @"modelClass": TestProjectAttributeStringFoundationModel.class,
                @"childItems": [self TestProjectMutableAttributedStringExtended_setAttributedString],
                @"compareViewModel": self.compareViewModel,
            }
        },
    };
}


- (NSMutableArray *)TestProjectMutableAttributedStringExtended_setAttributedString {
    NSAttributedString *sixAttrStr = [[NSAttributedString alloc] initWithString:self.sixthAttrText attributes:@{NSForegroundColorAttributeName:[UIColor colorFromString:@"#FF3"], NSFontAttributeName:[UIFont systemFontOfSize:22]}];

    TestProjectAttributeStringFoundationModel *m = [self createAttrStrModel];
    [m.titleMutAttrStr setAttributedString:sixAttrStr];
    m.desc = [NSString stringWithFormat:@"替换所有字符的key:NSForegroundColorAttributeName, value:[UIColor colorFromString:@\"#ffff33\"] 得到的是所有字符的attrText:%@", m.titleMutAttrStr];
    m.titleMutAttrStr = m.titleMutAttrStr;
    [m calculDataViewHeight];
    
    return self.dataMutArr;
}

- (NSMutableArray *)TestProjectMutableAttributedStringExtended_deleteCharactersInRange {
    NSInteger totalLength = ((TestProjectAttributeStringFoundationModel *)self.compareViewModel).titleMutAttrStr.length;
    NSArray *arr = @[
        @{
            @"location": @0,
            @"length": @(self.firstAttrText.length - 2),
            @"atIndex": @1,
        },
        @{
            @"location": @(self.firstAttrText.length),
            @"length": @(self.secondAttrText.length),
            @"atIndex": @2,
        },
        @{
            @"location": @0,
            @"length": @(totalLength),
            @"atIndex": @0,
        },
    ];
    for (NSDictionary *dic in arr) {
        NSInteger location = [dic[@"location"] integerValue];
        NSInteger length = [dic[@"length"] integerValue];
        NSInteger atIndex = [dic[@"atIndex"] integerValue];
        NSRange range = NSMakeRange(location, length);

        TestProjectAttributeStringFoundationModel *m = [self createAttrStrModel];
        [m.titleMutAttrStr deleteCharactersInRange:range];
        m.desc = [NSString stringWithFormat:@"移除的是第%ld段字符的range:%@ 移除的是在第%ld段的attrText:%@", atIndex, NSStringFromRange(range), atIndex, m.titleMutAttrStr];
        m.titleMutAttrStr = m.titleMutAttrStr;
        [m calculDataViewHeight];
    }
    return self.dataMutArr;
}

- (NSMutableArray *)TestProjectMutableAttributedStringExtended_appendAttributedString {
    NSAttributedString *sixAttrStr = [[NSAttributedString alloc] initWithString:self.sixthAttrText attributes:@{NSForegroundColorAttributeName:[UIColor colorFromString:@"#FF3"], NSFontAttributeName:[UIFont systemFontOfSize:22]}];

    TestProjectAttributeStringFoundationModel *m = [self createAttrStrModel];
    [m.titleMutAttrStr appendAttributedString:sixAttrStr];
    m.desc = [NSString stringWithFormat:@"添加在末尾的key:NSForegroundColorAttributeName, value:[UIColor colorFromString:@\"#ffff33\"] 得到的是在在末尾attrText:%@", m.titleMutAttrStr];
    m.titleMutAttrStr = m.titleMutAttrStr;
    [m calculDataViewHeight];

    return self.dataMutArr;
}

- (NSMutableArray *)TestProjectMutableAttributedStringExtended_insertAttributedString_atIndex {
    NSInteger totalLength = ((TestProjectAttributeStringFoundationModel *)self.compareViewModel).titleMutAttrStr.length;
    NSArray *arr = @[
        @{
            @"location": @0,
            @"atIndex": @1,
            @"key": @"NSStrokeColorAttributeName",
            @"stringKey": NSStrokeColorAttributeName,
            @"value": [UIColor colorFromString:@"#ff0000"],
        },
        @{
            @"location": @(self.firstAttrText.length),
            @"atIndex": @2,
            @"key": @"NSStrokeColorAttributeName",
            @"stringKey": NSStrokeColorAttributeName,
            @"value": [UIColor colorFromString:@"#ff0000"],
        },
    ];
    for (NSDictionary *dic in arr) {
        NSInteger location = [dic[@"location"] integerValue];
        NSInteger atIndex = [dic[@"atIndex"] integerValue];
        NSString *stringKey = dic[@"stringKey"];
        NSString *key = dic[@"key"];
        id value = dic[@"value"];
        
        NSAttributedString *sixAttrStr = [[NSAttributedString alloc] initWithString:self.sixthAttrText attributes:@{stringKey:value, NSFontAttributeName:[UIFont systemFontOfSize:22]}];

        TestProjectAttributeStringFoundationModel *m = [self createAttrStrModel];
        [m.titleMutAttrStr insertAttributedString:sixAttrStr atIndex:location];
        m.desc = [NSString stringWithFormat:@"插入的是位置%ld 插入的是第%ld段字符key:(%@-%@), value:%@ 插入的是在第%ld段的attrText:%@", location, atIndex, key, stringKey, value, atIndex, m.titleMutAttrStr];
        m.titleMutAttrStr = m.titleMutAttrStr;
        [m calculDataViewHeight];
    }
    return self.dataMutArr;
}

- (NSMutableArray *)TestProjectMutableAttributedStringExtended_replaceCharactersInRange_withAttributedString {
    NSInteger totalLength = ((TestProjectAttributeStringFoundationModel *)self.compareViewModel).titleMutAttrStr.length;
    NSArray *arr = @[
        @{
            @"location": @0,
            @"length": @(self.firstAttrText.length - 2),
            @"atIndex": @1,
            @"key": @"NSStrokeColorAttributeName",
            @"stringKey": NSStrokeColorAttributeName,
            @"value": [UIColor colorFromString:@"#ff0000"],
        },
        @{
            @"location": @(self.firstAttrText.length),
            @"length": @(self.secondAttrText.length),
            @"atIndex": @2,
            @"key": @"NSStrokeColorAttributeName",
            @"stringKey": NSStrokeColorAttributeName,
            @"value": [UIColor colorFromString:@"#ff0000"],
        },
        @{
            @"location": @0,
            @"length": @(totalLength),
            @"atIndex": @0,
            @"key": @"NSForegroundColorAttributeName",
            @"stringKey": NSForegroundColorAttributeName,
            @"value": [UIColor colorFromString:@"#ff0000"],
        },
    ];
    for (NSDictionary *dic in arr) {
        NSInteger location = [dic[@"location"] integerValue];
        NSInteger length = [dic[@"length"] integerValue];
        NSInteger atIndex = [dic[@"atIndex"] integerValue];
        NSString *stringKey = dic[@"stringKey"];
        NSString *key = dic[@"key"];
        id value = dic[@"value"];
        NSRange range = NSMakeRange(location, length);
        
        NSAttributedString *sixAttrStr = [[NSAttributedString alloc] initWithString:self.sixthAttrText attributes:@{stringKey:value, NSFontAttributeName:[UIFont systemFontOfSize:22]}];

        TestProjectAttributeStringFoundationModel *m = [self createAttrStrModel];
        [m.titleMutAttrStr replaceCharactersInRange:range withAttributedString:sixAttrStr];
        m.desc = [NSString stringWithFormat:@"替换的是第%ld段字符的range:%@ 替换的是第%ld段字符key:(%@-%@), value:%@ 替换的是在第%ld段的attrText:%@", atIndex, NSStringFromRange(range), atIndex, key, stringKey, value, atIndex, m.titleMutAttrStr];
        m.titleMutAttrStr = m.titleMutAttrStr;
        [m calculDataViewHeight];
    }
    return self.dataMutArr;
}

- (NSMutableArray *)TestProjectMutableAttributedStringExtended_removeAttribute_range {
    NSInteger totalLength = ((TestProjectAttributeStringFoundationModel *)self.compareViewModel).titleMutAttrStr.length;
    NSArray *arr = @[
        @{
            @"location": @0,
            @"length": @(self.firstAttrText.length - 2),
            @"atIndex": @1,
            @"key": @"NSStrokeColorAttributeName",
            @"stringKey": NSStrokeColorAttributeName,
        },
        @{
            @"location": @(self.firstAttrText.length + self.secondAttrText.length),
            @"length": @(self.thirdAttrText.length - 3),
            @"atIndex": @2,
            @"key": @"NSForegroundColorAttributeName",
            @"stringKey": NSForegroundColorAttributeName,
        },
        @{
            @"location": @0,
            @"length": @(totalLength),
            @"atIndex": @0,
            @"key": @"NSForegroundColorAttributeName",
            @"stringKey": NSForegroundColorAttributeName,
        },
    ];
    for (NSDictionary *dic in arr) {
        NSInteger location = [dic[@"location"] integerValue];
        NSInteger length = [dic[@"length"] integerValue];
        NSInteger atIndex = [dic[@"atIndex"] integerValue];
        NSString *stringKey = dic[@"stringKey"];
        NSString *key = dic[@"key"];
        NSRange range = NSMakeRange(location, length);

        TestProjectAttributeStringFoundationModel *m = [self createAttrStrModel];
        [m.titleMutAttrStr removeAttribute:stringKey range:range];
        m.desc = [NSString stringWithFormat:@"移除的是第%ld段字符的range:%@ 移除的是第%ld段字符key:(%@-%@) 移除的是在第%ld段的attrText:%@", atIndex, NSStringFromRange(range), atIndex, key, stringKey, atIndex, m.titleMutAttrStr];
        m.titleMutAttrStr = m.titleMutAttrStr;
        [m calculDataViewHeight];
    }
    return self.dataMutArr;
}

- (NSMutableArray *)TestProjectMutableAttributedStringExtended_addAttributes_range {
    NSInteger totalLength = ((TestProjectAttributeStringFoundationModel *)self.compareViewModel).titleMutAttrStr.length;
    NSArray *arr = @[
        @{
            @"location": @0,
            @"length": @(self.firstAttrText.length - 2),
            @"atIndex": @1,
            @"attributes": @{NSStrokeColorAttributeName:[UIColor colorFromString:@"#ff0000"], NSForegroundColorAttributeName:[UIColor colorFromString:@"#ff3300"]},
            @"attributesString": @[[NSString stringWithFormat:@"NSStrokeColorAttributeName-%@", NSStrokeColorAttributeName], [NSString stringWithFormat:@"NSForegroundColorAttributeName-%@", NSForegroundColorAttributeName]],
        },
        @{
            @"location": @(self.firstAttrText.length),
            @"length": @(self.secondAttrText.length),
            @"atIndex": @2,
            @"attributes": @{NSStrokeColorAttributeName:[UIColor colorFromString:@"#ff0000"], NSForegroundColorAttributeName:[UIColor colorFromString:@"#ff00ff"]},
            @"attributesString": @[[NSString stringWithFormat:@"NSStrokeColorAttributeName-%@", NSStrokeColorAttributeName], [NSString stringWithFormat:@"NSForegroundColorAttributeName-%@", NSForegroundColorAttributeName]],
        },
        @{
            @"location": @0,
            @"length": @(totalLength),
            @"atIndex": @0,
            @"attributes": @{NSStrokeColorAttributeName:[UIColor colorFromString:@"#ff0000"], NSForegroundColorAttributeName:[UIColor colorFromString:@"#ff3300"]},
            @"attributesString": @[[NSString stringWithFormat:@"NSStrokeColorAttributeName-%@", NSStrokeColorAttributeName], [NSString stringWithFormat:@"NSForegroundColorAttributeName-%@", NSForegroundColorAttributeName]],
        },
    ];
    for (NSDictionary *dic in arr) {
        NSInteger location = [dic[@"location"] integerValue];
        NSInteger length = [dic[@"length"] integerValue];
        NSInteger atIndex = [dic[@"atIndex"] integerValue];
        NSDictionary *attributes = dic[@"attributes"];
        NSArray *attributesString = dic[@"attributesString"];
        NSRange range = NSMakeRange(location, length);

        TestProjectAttributeStringFoundationModel *m = [self createAttrStrModel];
        [m.titleMutAttrStr addAttributes:attributes range:range];
        m.desc = [NSString stringWithFormat:@"添加的是第%ld段字符的range:%@ 添加的是第%ld段字符key:%@ 得到的是在第%ld段的attrText:%@", atIndex, NSStringFromRange(range), atIndex, attributesString, atIndex, m.titleMutAttrStr];
        m.titleMutAttrStr = m.titleMutAttrStr;
        [m calculDataViewHeight];
    }
    return self.dataMutArr;
}

- (NSMutableArray *)TestProjectMutableAttributedStringExtended_addAttribute_value_range {
    NSInteger totalLength = ((TestProjectAttributeStringFoundationModel *)self.compareViewModel).titleMutAttrStr.length;
    NSArray *arr = @[
        @{
            @"location": @0,
            @"length": @(self.firstAttrText.length - 2),
            @"atIndex": @1,
            @"key": @"NSStrokeColorAttributeName",
            @"stringKey": NSStrokeColorAttributeName,
            @"value": [UIColor colorFromString:@"#ff0000"],
        },
        @{
            @"location": @(self.firstAttrText.length),
            @"length": @(self.secondAttrText.length),
            @"atIndex": @2,
            @"key": @"NSForegroundColorAttributeName",
            @"stringKey": NSForegroundColorAttributeName,
            @"value": [UIColor colorFromString:@"#ffff00"],
        },
        @{
            @"location": @0,
            @"length": @(totalLength),
            @"atIndex": @0,
            @"key": @"NSForegroundColorAttributeName",
            @"stringKey": NSForegroundColorAttributeName,
            @"value": [UIColor colorFromString:@"#ff0000"],
        },
    ];
    for (NSDictionary *dic in arr) {
        NSInteger location = [dic[@"location"] integerValue];
        NSInteger length = [dic[@"length"] integerValue];
        NSInteger atIndex = [dic[@"atIndex"] integerValue];
        NSString *stringKey = dic[@"stringKey"];
        NSString *key = dic[@"key"];
        id value = dic[@"value"];
        NSRange range = NSMakeRange(location, length);

        TestProjectAttributeStringFoundationModel *m = [self createAttrStrModel];
        [m.titleMutAttrStr addAttribute:stringKey value:value range:range];
        m.desc = [NSString stringWithFormat:@"添加的是第%ld段字符的range:%@ 添加的是第%ld段字符key:(%@-%@), value:%@ 得到的是在第%ld段的attrText:%@", atIndex, NSStringFromRange(range), atIndex, key, stringKey, value, atIndex, m.titleMutAttrStr];
        m.titleMutAttrStr = m.titleMutAttrStr;
        [m calculDataViewHeight];
    }
    return self.dataMutArr;
}

- (NSMutableArray *)TestProjectMutableAttributedStringExtended_property_mutableString {
    TestProjectAttributeStringFoundationModel *m = [self createAttrStrModel];
    NSAttributedString *abstractAttr = [[NSAttributedString alloc] initWithString:@"获取到的mutableString：\n" attributes:@{NSForegroundColorAttributeName: [UIColor redColor]}];
    m.descMutAttrStr = [[NSMutableAttributedString alloc] initWithString:[NSString stringWithFormat:@"%@", [self.compareViewModel.titleMutAttrStr mutableString]]];
    [m.descMutAttrStr insertAttributedString:abstractAttr atIndex:0];
    [m calculDataViewHeight];
    return self.dataMutArr;
}

@end
