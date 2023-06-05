//
//  TestProjectShadow.m
//  TestProjectIOS
//
//  Created by zjrcumac on 2023/3/27.
//

#import "TestProjectShadow.h"

@implementation TestProjectShadow

- (NSDictionary *)method_1 {
    return @{
        @"dataModel": @{
            @"abstract": @"设置或者获取NSShadow的属性shadowOffset(阴影偏移量) CGSize",
            @"title": @"@property (nonatomic, assign) CGSize shadowOffset;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"modelClass": TestProjectAttributeStringFoundationModel.class,
                @"childItems": [self TestProjectShadow_property_shadowOffset],
                @"compareViewModel": self.compareViewModel,
            }
        },
    };
}

- (NSDictionary *)method_2 {
    return @{
        @"dataModel": @{
            @"abstract": @"设置或者获取NSShadow的属性shadowBlurRadius(阴影扩散度) CGFloat \n 设置负数无效",
            @"title": @"@property (nonatomic, assign) CGFloat shadowBlurRadius;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"modelClass": TestProjectAttributeStringFoundationModel.class,
                @"childItems": [self TestProjectShadow_property_shadowBlurRadius],
                @"compareViewModel": self.compareViewModel,
            }
        },
    };
}

- (NSDictionary *)method_3 {
    return @{
        @"dataModel": @{
            @"abstract": @"设置或者获取NSShadow的属性shadowColor(阴影颜色) UIColor",
            @"title": @"@property (nullable, nonatomic, strong) id shadowColor;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"modelClass": TestProjectAttributeStringFoundationModel.class,
                @"childItems": [self TestProjectShadow_property_shadowColor],
                @"compareViewModel": self.compareViewModel,
            }
        },
    };
}

- (void)createAttrStrModelWithShadowProperty:(NSString *)key value:(id)value {
    NSShadow *shadow = [[NSShadow alloc] init];
    if (key && value) {
        [shadow setValue:value forKey:key];
    }
    if ([key isEqualToString:@"shadowColor"]) {
        shadow.shadowOffset = CGSizeMake(0, 5);
        shadow.shadowBlurRadius = 5;
    } else {
        shadow.shadowColor = [UIColor redColor];
    }
    
    TestProjectAttributeStringFoundationModel *m = [self createAttrStrModelWithAttributes:@{NSShadowAttributeName: shadow}];
    m.isTitleExpand = YES;
    m.desc = [NSString stringWithFormat:@"设置的阴影值为:(%@-%@)，得到的attrText:\n%@", key, value, m.titleMutAttrStr];
    [m calculDataViewHeight];
}

- (NSMutableArray *)TestProjectShadow_property_shadowColor {
    [self createAttrStrModelWithShadowProperty:@"shadowColor" value:[UIColor redColor]];
    return self.dataMutArr;
}

- (NSMutableArray *)TestProjectShadow_property_shadowBlurRadius {
    NSArray *arr = @[@5, @-5];
    for (NSNumber *num in arr) {
        [self createAttrStrModelWithShadowProperty:@"shadowBlurRadius" value:num];
    }
    return self.dataMutArr;
}

- (NSMutableArray *)TestProjectShadow_property_shadowOffset {
    NSArray *arr = @[[NSValue valueWithCGSize:CGSizeMake(0, 5)], [NSValue valueWithCGSize:CGSizeMake(0, -5)]];
    for (NSValue *value in arr) {
        [self createAttrStrModelWithShadowProperty:@"shadowOffset" value:value];
    }
    return self.dataMutArr;
}


@end
