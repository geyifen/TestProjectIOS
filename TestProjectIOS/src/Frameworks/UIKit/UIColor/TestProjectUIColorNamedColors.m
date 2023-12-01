//
//  TestProjectUIColorNamedColors.m
//  TestProjectIOS
//
//  Created by 李文凡 on 2023/2/26.
//

#import "TestProjectUIColorNamedColors.h"

#import "TestProjectUIColorCell.h"

@implementation TestProjectUIColorNamedColors

- (Class)createTableModelClass:(TestProjectTableViewParams *)params {
    return TestProjectUIColorModel.class;
}

- (NSMutableArray *)TestProjectColorNamedColors_class_colorNamed_inBundle_compatibleWithTraitCollection:(TestProjectTableViewParams *)params {
    [self createModelWithParams:params
                         title:@"从asset根据名字获取颜色, 名字是：Color_Red"
                 modelKeyValue:@{@"backgroundColor": [UIColor colorNamed:@"Color_Red" inBundle:nil compatibleWithTraitCollection:nil]}
                         block:nil];
    return self.dataMutArr;
}

- (NSDictionary *)method_2:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"执行UIColor的class方法, 从asset根据名字获取颜色",
            @"title": @"+ (nullable UIColor *)colorNamed:(NSString *)name inBundle:(nullable NSBundle *)bundle compatibleWithTraitCollection:(nullable UITraitCollection *)traitCollection API_AVAILABLE(ios(11.0)) API_UNAVAILABLE(watchos);",
            @"desc": @"如果有指定的bundle，则在指定的bundle里的asset获取颜色，默认是在mainBundle里的asset获取颜色",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectColorNamedColors_class_colorNamed_inBundle_compatibleWithTraitCollection:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectColorNamedColors_class_colorNamed:(TestProjectTableViewParams *)params {
    [self createModelWithParams:params
                         title:@"从asset根据名字获取颜色, 名字是：Color_Red"
                 modelKeyValue:@{@"backgroundColor": [UIColor colorNamed:@"Color_Red"]}
                         block:nil];
    return self.dataMutArr;
}

- (NSDictionary *)method_1:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"执行UIColor的class方法, 从asset根据名字获取颜色",
            @"title": @"+ (nullable UIColor *)colorNamed:(NSString *)name API_AVAILABLE(ios(11.0));",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectColorNamedColors_class_colorNamed:params],
            }
        },
    };
}

@end
