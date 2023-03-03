//
//  TestProjectUIColorDynamicdColors.m
//  TestProjectIOS
//
//  Created by 李文凡 on 2023/2/26.
//

#import "TestProjectUIColorDynamicdColors.h"

#import "TestProjectUIColorCell.h"

@implementation TestProjectUIColorDynamicdColors

- (NSDictionary *)method_1 {
    return @{
        @"+ (UIColor *)colorWithDynamicProvider:(UIColor * (^)(UITraitCollection *traitCollection))dynamicProvider API_AVAILABLE(ios(13.0), tvos(13.0)) API_UNAVAILABLE(watchos);":@{
            @"method":@"TestProjectColorDynamicdColors_colorWithDynamicProvider",
            @"desc":@"为了适配暗黑模式，当切换模式的时候，会进行回调改变色值"}
    };
}

- (NSDictionary *)method_2 {
    return @{
        @"- (UIColor *)initWithDynamicProvider:(UIColor * (^)(UITraitCollection *traitCollection))dynamicProvider API_AVAILABLE(ios(13.0), tvos(13.0)) API_UNAVAILABLE(watchos);":@{
            @"method":@"TestProjectColorDynamicdColors_initWithDynamicProvider",
            @"desc":@"为了适配暗黑模式，当切换模式的时候，会进行回调改变色值"}
    };
}

- (NSDictionary *)method_3 {
    return @{
        @"- (UIColor *)resolvedColorWithTraitCollection:(UITraitCollection *)traitCollection API_AVAILABLE(ios(13.0), tvos(13.0)) API_UNAVAILABLE(watchos);":@{
            @"method":@"TestProjectColorDynamicdColors_resolvedColorWithTraitCollection",
            @"desc":@"UIColor是动态解析的，但是CGColor是静态的"}
    };
}

- (TestProjectUIColorModel *)createColorModel:(UIColor *)color text:(NSString *)text {
    TestProjectUIColorModel *colorModel = [[TestProjectUIColorModel alloc] init];
    colorModel.title = text;
    colorModel.backgroundColor = color;
    [colorModel calculDataViewHeight];
    return colorModel;
}

- (void)TestProjectColorDynamicdColors_resolvedColorWithTraitCollection {
    NSMutableArray *mutDataArr = [NSMutableArray array];
    __block NSString *traitCollectionDesc = @"";
    UIColor *color = [[UIColor alloc] initWithDynamicProvider:^UIColor * _Nonnull(UITraitCollection * _Nonnull traitCollection) {
        traitCollectionDesc = [NSString stringWithFormat:@"%@", traitCollection];
        if (traitCollection.userInterfaceStyle == UIUserInterfaceStyleDark) {
            return [UIColor yellowColor];
        }
        return [UIColor redColor];
    }];
    TestProjectUIColorModel *m1 = [self createColorModel:[UIColor whiteColor] text:traitCollectionDesc];
    m1.cgColor = [color resolvedColorWithTraitCollection:self.traitCollection].CGColor;
    [mutDataArr addObject:m1];
    self.tableView.dataSourceArray = mutDataArr;
}

- (void)TestProjectColorDynamicdColors_initWithDynamicProvider {
    NSMutableArray *mutDataArr = [NSMutableArray array];
    __block NSString *traitCollectionDesc = @"";
    TestProjectUIColorModel *m1 = [self createColorModel:[[UIColor alloc] initWithDynamicProvider:^UIColor * _Nonnull(UITraitCollection * _Nonnull traitCollection) {
        traitCollectionDesc = [NSString stringWithFormat:@"%@", traitCollection];
        if (traitCollection.userInterfaceStyle == UIUserInterfaceStyleDark) {
            return [UIColor yellowColor];
        }
        return [UIColor redColor];
    }] text:traitCollectionDesc];
    [mutDataArr addObject:m1];
    self.tableView.dataSourceArray = mutDataArr;
}

- (void)TestProjectColorDynamicdColors_colorWithDynamicProvider {
    NSMutableArray *mutDataArr = [NSMutableArray array];
    __block NSString *traitCollectionDesc = @"";
    TestProjectUIColorModel *m1 = [self createColorModel:[UIColor colorWithDynamicProvider:^UIColor * _Nonnull(UITraitCollection * _Nonnull traitCollection) {
        traitCollectionDesc = [NSString stringWithFormat:@"%@", traitCollection];
        if (traitCollection.userInterfaceStyle == UIUserInterfaceStyleDark) {
            return [UIColor yellowColor];
        }
        return [UIColor redColor];
    }] text:traitCollectionDesc];
    [mutDataArr addObject:m1];
    self.tableView.dataSourceArray = mutDataArr;
}

@end
