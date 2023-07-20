//
//  TestProjectUIColorCategory.m
//  TestProjectIOS
//
//  Created by zjrcumac on 2023/3/2.
//

#import "TestProjectUIColorCategory.h"

#import "TestProjectUIColorCell.h"

@implementation TestProjectUIColorCategory

- (Class)createTableModelClass {
    return TestProjectUIColorModel.class;
}

- (NSDictionary *)method_1:(NSInteger)index {
    return @{
        @"dataModel": @{
            @"abstract": @"执行UIColor的calss方法, 根据#AARRGGBB,#RRGGBB,#ARGB,#RGB获得UIColor",
            @"title": @"+ (UIColor *)colorFromString:(NSString *)string;", 
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectColorCategory_class_colorFromString:index],
            }
        },
    };
}

- (NSDictionary *)method_2:(NSInteger)index {
    return @{
        @"dataModel": @{
            @"abstract": @"执行UIColor的calss方法, 根据数值获取颜色，alpha默认为1",
            @"title": @"+ (UIColor*)colorWithHex:(long)hexColor;", 
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectColorCategory_class_colorWithHex:index],
            }
        },
    };
}

- (NSDictionary *)method_3:(NSInteger)index {
    return @{
        @"dataModel": @{
            @"abstract": @"执行UIColor的calss方法, 根据数值获取颜色",
            @"title": @"+ (UIColor *)colorWithHex:(long)hexColor alpha:(float)opacity;", 
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectColorCategory_class_colorWithHex_alpha:index],
            }
        },
    };
}

- (NSDictionary *)method_4:(NSInteger)index {
    return @{
        @"dataModel": @{
            @"abstract": @"根据颜色获取字符串",
            @"title": @"- (NSString *)colorString;", 
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectColorCategory_colorString:index],
            }
        },
    };
}

- (NSMutableArray *)TestProjectColorCategory_colorString:(NSInteger)index {
    UIColor *color = [UIColor colorFromString:@"#90ff3333"];
    NSString *colorStr = [color colorString];
    [self createModelWithIndex:index
                         title:[NSString stringWithFormat:@"从@\"#ff3333\"颜色得到的颜色字符串%@", colorStr]
                 modelKeyValue:@{@"backgroundColor": color}
                         block:nil];
    return self.dataMutArr;
}

- (NSMutableArray *)TestProjectColorCategory_class_colorWithHex_alpha:(NSInteger)index {
    UIColor *color = [UIColor colorWithHex:0xff3333 alpha:0.5];
    [self createModelWithIndex:index
                         title:@"从0xff3333 alpha为0.5得到颜色"
                 modelKeyValue:@{@"backgroundColor": color}
                         block:nil];
    return self.dataMutArr;
}

- (NSMutableArray *)TestProjectColorCategory_class_colorWithHex:(NSInteger)index {
    UIColor *color = [UIColor colorWithHex:0xff3333];
    [self createModelWithIndex:index
                         title:@"从0xff3333得到颜色"
                 modelKeyValue:@{@"backgroundColor": color}
                         block:nil];
    return self.dataMutArr;
}

- (NSMutableArray *)TestProjectColorCategory_class_colorFromString:(NSInteger)index {
    UIColor *color = [UIColor colorFromString:@"#ff3333"];
    [self createModelWithIndex:index
                         title:@"从@\"#ff3333\"得到颜色"
                 modelKeyValue:@{@"backgroundColor": color}
                         block:nil];
    return self.dataMutArr;
}

@end
