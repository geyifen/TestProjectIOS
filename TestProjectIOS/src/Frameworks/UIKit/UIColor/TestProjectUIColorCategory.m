//
//  TestProjectUIColorCategory.m
//  TestProjectIOS
//
//  Created by liwenfan on 2023/3/2.
//

#import "TestProjectUIColorCategory.h"

#import "TestProjectUIColorCell.h"

@implementation TestProjectUIColorCategory

- (Class)createTableModelClass:(TestProjectTableViewParams *)params {
    return TestProjectUIColorModel.class;
}

- (NSMutableArray *)TestProjectColorCategory_colorString:(TestProjectTableViewParams *)params {
    UIColor *color = [UIColor colorFromString:@"#90ff3333"];
    NSString *colorStr = [color colorString];
    [self createModelWithParams:params
                         title:[NSString stringWithFormat:@"从@\"#ff3333\"颜色得到的颜色字符串%@", colorStr]
                 modelKeyValue:@{@"backgroundColor": color}
                         block:nil];
    return self.dataMutArr;
}

- (NSDictionary *)method_4:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"根据颜色获取字符串",
            @"title": @"- (NSString *)colorString;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectColorCategory_colorString:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectColorCategory_class_colorWithHex_alpha:(TestProjectTableViewParams *)params {
    UIColor *color = [UIColor colorWithHex:0xff3333 alpha:0.5];
    [self createModelWithParams:params
                         title:@"从0xff3333 alpha为0.5得到颜色"
                 modelKeyValue:@{@"backgroundColor": color}
                         block:nil];
    return self.dataMutArr;
}

- (NSDictionary *)method_3:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"执行UIColor的calss方法, 根据数值获取颜色",
            @"title": @"+ (UIColor *)colorWithHex:(long)hexColor alpha:(float)opacity;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectColorCategory_class_colorWithHex_alpha:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectColorCategory_class_colorWithHex:(TestProjectTableViewParams *)params {
    UIColor *color = [UIColor colorWithHex:0xff3333];
    [self createModelWithParams:params
                         title:@"从0xff3333得到颜色"
                 modelKeyValue:@{@"backgroundColor": color}
                         block:nil];
    return self.dataMutArr;
}

- (NSDictionary *)method_2:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"执行UIColor的calss方法, 根据数值获取颜色，alpha默认为1",
            @"title": @"+ (UIColor*)colorWithHex:(long)hexColor;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectColorCategory_class_colorWithHex:params],
            }
        },
    };
}


- (NSMutableArray *)TestProjectColorCategory_class_colorFromString:(TestProjectTableViewParams *)params {
    UIColor *color = [UIColor colorFromString:@"#ff3333"];
    [self createModelWithParams:params
                         title:@"从@\"#ff3333\"得到颜色"
                 modelKeyValue:@{@"backgroundColor": color}
                         block:nil];
    return self.dataMutArr;
}

- (NSDictionary *)method_1:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"执行UIColor的calss方法, 根据#AARRGGBB,#RRGGBB,#ARGB,#RGB获得UIColor",
            @"title": @"+ (UIColor *)colorFromString:(NSString *)string;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectColorCategory_class_colorFromString:params],
            }
        },
    };
}

@end
