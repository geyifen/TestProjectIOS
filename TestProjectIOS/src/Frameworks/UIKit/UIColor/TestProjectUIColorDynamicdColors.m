//
//  TestProjectUIColorDynamicdColors.m
//  TestProjectIOS
//
//  Created by 李文凡 on 2023/2/26.
//

#import "TestProjectUIColorDynamicdColors.h"

#import "TestProjectUIColorCell.h"

@implementation TestProjectUIColorDynamicdColors

- (Class)createTableModelClass {
    return TestProjectUIColorModel.class;
}

- (NSDictionary *)method_1:(NSInteger)index {
    return @{
        @"dataModel": @{
            @"abstract": @"执行UIColor的class方法, 为了适配暗黑模式，当切换模式的时候，会进行回调改变色值",
            @"title": @"+ (UIColor *)colorWithDynamicProvider:(UIColor * (^)(UITraitCollection *traitCollection))dynamicProvider API_AVAILABLE(ios(13.0), tvos(13.0)) API_UNAVAILABLE(watchos);", 
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectColorDynamicdColors_colorWithDynamicProvider:index],
            }
        },
    };
}

- (NSDictionary *)method_2:(NSInteger)index {
    return @{
        @"dataModel": @{
            @"abstract": @"为了适配暗黑模式，当切换模式的时候，会进行回调改变色值",
            @"title": @"- (UIColor *)initWithDynamicProvider:(UIColor * (^)(UITraitCollection *traitCollection))dynamicProvider API_AVAILABLE(ios(13.0), tvos(13.0)) API_UNAVAILABLE(watchos);", 
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectColorDynamicdColors_initWithDynamicProvider:index],
            }
        },
    };
}

- (NSDictionary *)method_3:(NSInteger)index {
    return @{
        @"dataModel": @{
            @"abstract": @"动态解析CGColor",
            @"title": @"- (UIColor *)resolvedColorWithTraitCollection:(UITraitCollection *)traitCollection API_AVAILABLE(ios(13.0), tvos(13.0)) API_UNAVAILABLE(watchos);",
            @"desc": @"UIColor是动态解析的，但是CGColor是静态的, 使用这个方法可以动态解析CGColor", 
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectColorDynamicdColors_resolvedColorWithTraitCollection:index],
            }
        },
    };
}

- (NSMutableArray *)TestProjectColorDynamicdColors_resolvedColorWithTraitCollection:(NSInteger)index {
    __block NSString *traitCollectionDesc = @"";
    UIColor *color = [[UIColor alloc] initWithDynamicProvider:^UIColor * _Nonnull(UITraitCollection * _Nonnull traitCollection) {
        traitCollectionDesc = [NSString stringWithFormat:@"%@", traitCollection];
        if (traitCollection.userInterfaceStyle == UIUserInterfaceStyleDark) {
            return [UIColor yellowColor];
        }
        return [UIColor blackColor];
    }];
    [color resolvedColorWithTraitCollection:self.traitCollection];
    [self createModelWithIndex:index
                         title:traitCollectionDesc
                 modelKeyValue:@{@"backgroundColor": color}
                         block:nil];
    return self.dataMutArr;
}

- (NSMutableArray *)TestProjectColorDynamicdColors_initWithDynamicProvider:(NSInteger)index {
    UIColor *color = [[UIColor alloc] initWithDynamicProvider:^UIColor * _Nonnull(UITraitCollection * _Nonnull traitCollection) {
        if (traitCollection.userInterfaceStyle == UIUserInterfaceStyleDark) {
            return [UIColor yellowColor];
        }
        return [UIColor redColor];
    }];
 
    [self createModelWithIndex:index
                         title:@"这个没有回调数据"
                 modelKeyValue:@{@"backgroundColor": color}
                         block:nil];

    return self.dataMutArr;
}

- (NSMutableArray *)TestProjectColorDynamicdColors_colorWithDynamicProvider:(NSInteger)index {
    __block NSString *traitCollectionDesc = @"";
    UIColor *color = [UIColor colorWithDynamicProvider:^UIColor * _Nonnull(UITraitCollection * _Nonnull traitCollection) {
        traitCollectionDesc = [NSString stringWithFormat:@"%@", traitCollection];
        if (traitCollection.userInterfaceStyle == UIUserInterfaceStyleDark) {
            return [UIColor yellowColor];
        }
        return [UIColor blueColor];
    }];

    [self createModelWithIndex:index
                         title:@"这个没有回调数据"
                 modelKeyValue:@{@"backgroundColor": color}
                         block:nil];
    return self.dataMutArr;
}

@end
