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
        @"dataModel": @{
            @"abstract": @"为了适配暗黑模式，当切换模式的时候，会进行回调改变色值",
            @"title": @"+ (UIColor *)colorWithDynamicProvider:(UIColor * (^)(UITraitCollection *traitCollection))dynamicProvider API_AVAILABLE(ios(13.0), tvos(13.0)) API_UNAVAILABLE(watchos);", 
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"modelClass": TestProjectUIColorModel.class,
                @"childItems": [self TestProjectColorDynamicdColors_colorWithDynamicProvider],
            }
        },
    };
}

- (NSDictionary *)method_2 {
    return @{
        @"dataModel": @{
            @"abstract": @"为了适配暗黑模式，当切换模式的时候，会进行回调改变色值",
            @"title": @"- (UIColor *)initWithDynamicProvider:(UIColor * (^)(UITraitCollection *traitCollection))dynamicProvider API_AVAILABLE(ios(13.0), tvos(13.0)) API_UNAVAILABLE(watchos);", 
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"modelClass": TestProjectUIColorModel.class,
                @"childItems": [self TestProjectColorDynamicdColors_initWithDynamicProvider],
            }
        },
    };
}

- (NSDictionary *)method_3 {
    return @{
        @"dataModel": @{
            @"abstract": @"动态解析CGColor",
            @"title": @"- (UIColor *)resolvedColorWithTraitCollection:(UITraitCollection *)traitCollection API_AVAILABLE(ios(13.0), tvos(13.0)) API_UNAVAILABLE(watchos);",
            @"desc": @"UIColor是动态解析的，但是CGColor是静态的, 使用这个方法可以动态解析CGColor", 
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"modelClass": TestProjectUIColorModel.class,
                @"childItems": [self TestProjectColorDynamicdColors_resolvedColorWithTraitCollection],
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

- (NSMutableArray *)TestProjectColorDynamicdColors_resolvedColorWithTraitCollection {
    __block NSString *traitCollectionDesc = @"";
    UIColor *color = [[UIColor alloc] initWithDynamicProvider:^UIColor * _Nonnull(UITraitCollection * _Nonnull traitCollection) {
        traitCollectionDesc = [NSString stringWithFormat:@"%@", traitCollection];
        if (traitCollection.userInterfaceStyle == UIUserInterfaceStyleDark) {
            return [UIColor yellowColor];
        }
        return [UIColor blackColor];
    }];
    [color resolvedColorWithTraitCollection:self.traitCollection];
    [self createColorModel:color text:traitCollectionDesc];
    return self.dataMutArr;
}

- (NSMutableArray *)TestProjectColorDynamicdColors_initWithDynamicProvider {
    [self createColorModel:[[UIColor alloc] initWithDynamicProvider:^UIColor * _Nonnull(UITraitCollection * _Nonnull traitCollection) {
        if (traitCollection.userInterfaceStyle == UIUserInterfaceStyleDark) {
            return [UIColor yellowColor];
        }
        return [UIColor redColor];
    }] text:@"这个没有回调数据"];
    return self.dataMutArr;
}

- (NSMutableArray *)TestProjectColorDynamicdColors_colorWithDynamicProvider {
    __block NSString *traitCollectionDesc = @"";
    UIColor *color = [UIColor colorWithDynamicProvider:^UIColor * _Nonnull(UITraitCollection * _Nonnull traitCollection) {
        traitCollectionDesc = [NSString stringWithFormat:@"%@", traitCollection];
        if (traitCollection.userInterfaceStyle == UIUserInterfaceStyleDark) {
            return [UIColor yellowColor];
        }
        return [UIColor blueColor];
    }];

   [self createColorModel:color text:@"这个没有回调数据"];
    return self.dataMutArr;
}

@end
