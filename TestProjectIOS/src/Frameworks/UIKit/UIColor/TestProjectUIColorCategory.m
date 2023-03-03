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
        @"+ (UIColor *)colorFromString:(NSString *)string;":@{
            @"method":@"TestProjectColorCategory_colorFromString",
            @"desc":@"//根据#AARRGGBB,#RRGGBB,#ARGB,#RGB获得UIColor"}
    };
}

- (NSDictionary *)method_2 {
    return @{
        @"+ (UIColor*)colorWithHex:(long)hexColor;":@{
            @"method":@"TestProjectColorCategory_colorWithHex",
            @"desc":@"//根据数值获取颜色，alpha默认为1"}
    };
}

- (NSDictionary *)method_3 {
    return @{
        @"+ (UIColor *)colorWithHex:(long)hexColor alpha:(float)opacity;":@{
            @"method":@"TestProjectColorCategory_colorWithHex_alpha",
            @"desc":@"//根据数值获取颜色"}
    };
}

- (NSDictionary *)method_4 {
    return @{
        @"- (NSString *)colorString;":@{
            @"method":@"TestProjectColorCategory_colorString",
            @"desc":@"//根据颜色获取字符串"}
    };
}

- (TestProjectUIColorModel *)createColorModel:(UIColor *)color text:(NSString *)text {
    TestProjectUIColorModel *colorModel = [[TestProjectUIColorModel alloc] init];
    colorModel.title = text;
    colorModel.backgroundColor = color;
    [colorModel calculDataViewHeight];
    return colorModel;
}

- (void)TestProjectColorCategory_colorString {
    UIColor *color = [UIColor colorFromString:@"#90ff3333"];
    NSMutableArray *mutDataArr = [NSMutableArray array];
    NSString *colorStr = [color colorString];
    TestProjectUIColorModel *m1 = [self createColorModel:color text:[NSString stringWithFormat:@"从@\"#ff3333\"颜色得到的颜色字符串%@", colorStr]];
    [mutDataArr addObject:m1];
    self.tableView.dataSourceArray = mutDataArr;
}

- (void)TestProjectColorCategory_colorWithHex_alpha {
    UIColor *color = [UIColor colorWithHex:0xff3333 alpha:0.5];
    NSMutableArray *mutDataArr = [NSMutableArray array];
    TestProjectUIColorModel *m1 = [self createColorModel:color text:@"从0xff3333 alpha为0.5得到颜色"];
    [mutDataArr addObject:m1];
    self.tableView.dataSourceArray = mutDataArr;
}

- (void)TestProjectColorCategory_colorWithHex {
    UIColor *color = [UIColor colorWithHex:0xff3333];
    NSMutableArray *mutDataArr = [NSMutableArray array];
    TestProjectUIColorModel *m1 = [self createColorModel:color text:@"从0xff3333得到颜色"];
    [mutDataArr addObject:m1];
    self.tableView.dataSourceArray = mutDataArr;
}

- (void)TestProjectColorCategory_colorFromString {
    UIColor *color = [UIColor colorFromString:@"#ff3333"];
    NSMutableArray *mutDataArr = [NSMutableArray array];
    TestProjectUIColorModel *m1 = [self createColorModel:color text:@"从@\"#ff3333\"得到颜色"];
    [mutDataArr addObject:m1];
    self.tableView.dataSourceArray = mutDataArr;
}

@end
