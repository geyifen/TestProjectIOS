//
//  TestProjectUIColorNamedColors.m
//  TestProjectIOS
//
//  Created by 李文凡 on 2023/2/26.
//

#import "TestProjectUIColorNamedColors.h"

#import "TestProjectUIColorCell.h"

@implementation TestProjectUIColorNamedColors

- (NSDictionary *)method_1 {
    return @{
        @"dataModel": @{
            @"abstract": @"从asset根据名字获取颜色",
            @"title": @"+ (nullable UIColor *)colorNamed:(NSString *)name API_AVAILABLE(ios(11.0));", 
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"modelClass": TestProjectUIColorModel.class,
                @"childItems": [self TestProjectColorNamedColors_colorNamed],
            }
        },
    };
}

- (NSDictionary *)method_2 {
    return @{
        @"dataModel": @{
            @"abstract": @"从asset根据名字获取颜色",
            @"title": @"+ (nullable UIColor *)colorNamed:(NSString *)name inBundle:(nullable NSBundle *)bundle compatibleWithTraitCollection:(nullable UITraitCollection *)traitCollection API_AVAILABLE(ios(11.0)) API_UNAVAILABLE(watchos);",
            @"desc": @"如果有指定的bundle，则在指定的bundle里的asset获取颜色，默认是在mainBundle里的asset获取颜色", 
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"modelClass": TestProjectUIColorModel.class,
                @"childItems": [self TestProjectColorNamedColors_colorNamed_inBundle_compatibleWithTraitCollection],
            }
        },
    };
}

- (void)createColorModel:(UIColor *)color text:(NSString *)text {
    TestProjectUIColorModel *colorModel = [[TestProjectUIColorModel alloc] init];
    colorModel.title = text;
    colorModel.backgroundColor = color;
    [colorModel calculDataViewHeight];
    [self.dataMutArr addObject:colorModel];
}

- (NSMutableArray *)TestProjectColorNamedColors_colorNamed_inBundle_compatibleWithTraitCollection {
    [self createColorModel:[UIColor colorNamed:@"Color_Red" inBundle:nil compatibleWithTraitCollection:nil] text:@"从asset根据名字获取颜色, 名字是：Color_Red"];
    return self.dataMutArr;
}

- (NSMutableArray *)TestProjectColorNamedColors_colorNamed {
    [self createColorModel:[UIColor colorNamed:@"Color_Red"] text:@"从asset根据名字获取颜色, 名字是：Color_Red"];
    return self.dataMutArr;
}

@end
