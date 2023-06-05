//
//  TestProjectUIColorCategory.m
//  TestProjectIOS
//
//  Created by zjrcumac on 2023/3/2.
//

#import "TestProjectUIColorCategory.h"

#import "TestProjectUIColorCell.h"

@implementation TestProjectUIColorCategory

- (NSDictionary *)method_1 {
    return @{
        @"dataModel": @{
            @"abstract": @"根据#AARRGGBB,#RRGGBB,#ARGB,#RGB获得UIColor",
            @"title": @"+ (UIColor *)colorFromString:(NSString *)string;", 
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"modelClass": TestProjectUIColorModel.class,
                @"childItems": [self TestProjectColorCategory_colorFromString],
            }
        },
    };
}

- (NSDictionary *)method_2 {
    return @{
        @"dataModel": @{
            @"abstract": @"根据数值获取颜色，alpha默认为1",
            @"title": @"+ (UIColor*)colorWithHex:(long)hexColor;", 
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"modelClass": TestProjectUIColorModel.class,
                @"childItems": [self TestProjectColorCategory_colorWithHex],
            }
        },
    };
}

- (NSDictionary *)method_3 {
    return @{
        @"dataModel": @{
            @"abstract": @"根据数值获取颜色",
            @"title": @"+ (UIColor *)colorWithHex:(long)hexColor alpha:(float)opacity;", 
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"modelClass": TestProjectUIColorModel.class,
                @"childItems": [self TestProjectColorCategory_colorWithHex_alpha],
            }
        },
    };
}

- (NSDictionary *)method_4 {
    return @{
        @"dataModel": @{
            @"abstract": @"根据颜色获取字符串",
            @"title": @"- (NSString *)colorString;", 
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"modelClass": TestProjectUIColorModel.class,
                @"childItems": [self TestProjectColorCategory_colorString],
            }
        },
    };
}

- (void)createColorModel:(UIColor *)color text:(NSString *)text {
    TestProjectUIColorModel *colorModel = [[TestProjectUIColorModel alloc] init];
    colorModel.title = text;
    colorModel.backgroundColor = color;
    [self.dataMutArr addObject:colorModel];
}

- (NSMutableArray *)TestProjectColorCategory_colorString {
    UIColor *color = [UIColor colorFromString:@"#90ff3333"];
    NSString *colorStr = [color colorString];
    [self createColorModel:color text:[NSString stringWithFormat:@"从@\"#ff3333\"颜色得到的颜色字符串%@", colorStr]];
    return self.dataMutArr;
}

- (NSMutableArray *)TestProjectColorCategory_colorWithHex_alpha {
    UIColor *color = [UIColor colorWithHex:0xff3333 alpha:0.5];
    [self createColorModel:color text:@"从0xff3333 alpha为0.5得到颜色"];
    return self.dataMutArr;
}

- (NSMutableArray *)TestProjectColorCategory_colorWithHex {
    UIColor *color = [UIColor colorWithHex:0xff3333];
    [self createColorModel:color text:@"从0xff3333得到颜色"];
    return self.dataMutArr;
}

- (NSMutableArray *)TestProjectColorCategory_colorFromString {
    UIColor *color = [UIColor colorFromString:@"#ff3333"];
    [self createColorModel:color text:@"从@\"#ff3333\"得到颜色"];
    return self.dataMutArr;
}

@end
