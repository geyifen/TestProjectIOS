//
//  TestProjectColorNamedColors.m
//  TestProjectIOS
//
//  Created by 李文凡 on 2023/2/26.
//

#import "TestProjectColorNamedColors.h"

#import "TestProjectColorCell.h"

@implementation TestProjectColorNamedColors

- (NSDictionary *)method_1 {
    return @{
        @"+ (nullable UIColor *)colorNamed:(NSString *)name API_AVAILABLE(ios(11.0));":@{
            @"method":@"TestProjectColorNamedColors_colorNamed",
            @"desc":@"从asset根据名字获取颜色"}
    };
}

- (NSDictionary *)method_2 {
    return @{
        @"+ (nullable UIColor *)colorNamed:(NSString *)name inBundle:(nullable NSBundle *)bundle compatibleWithTraitCollection:(nullable UITraitCollection *)traitCollection API_AVAILABLE(ios(11.0)) API_UNAVAILABLE(watchos);":@{
            @"method":@"TestProjectColorNamedColors_colorNamed_inBundle_compatibleWithTraitCollection",
            @"desc":@"从asset根据名字获取颜色"}
    };
}

- (TestProjectColorModel *)createColorModel:(UIColor *)color text:(NSString *)text {
    TestProjectColorModel *colorModel = [[TestProjectColorModel alloc] init];
    colorModel.title = text;
    colorModel.backgroundColor = color;
    [colorModel calculDataViewHeight];
    return colorModel;
}

- (void)TestProjectColorNamedColors_colorNamed_inBundle_compatibleWithTraitCollection {
    NSMutableArray *mutDataArr = [NSMutableArray array];
    TestProjectColorModel *m1 = [self createColorModel:[UIColor colorNamed:@"Color_Red" inBundle:nil compatibleWithTraitCollection:nil] text:@"从asset根据名字获取颜色, 名字是：Color_Red"];
    [mutDataArr addObject:m1];
    self.tableView.dataSourceArray = mutDataArr;
}

- (void)TestProjectColorNamedColors_colorNamed {
    NSMutableArray *mutDataArr = [NSMutableArray array];
    TestProjectColorModel *m1 = [self createColorModel:[UIColor colorNamed:@"Color_Red"] text:@"从asset根据名字获取颜色, 名字是：Color_Red"];
    [mutDataArr addObject:m1];
    self.tableView.dataSourceArray = mutDataArr;
}

@end
