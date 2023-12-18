//
//  TestProjectNSShadow.m
//  TestProjectIOS
//
//  Created by liwenfan on 2023/3/27.
//

#import "TestProjectNSShadow.h"

@implementation TestProjectNSShadow

- (void)createAttrStrModelWithShadowProperty:(NSString *)key value:(id)value params:(TestProjectTableViewParams *)params {
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
    
    TestProjectTableViewModel *m = [self createAttrStrModelWithAttributes:@{NSShadowAttributeName: shadow}];
    m.isTitleExpand = YES;
    m.desc = [NSString stringWithFormat:@"设置的阴影值为:(%@-%@)，得到的attrText:\n%@", key, value, m.titleMutAttrStr];
    [m calculDataViewHeight:params];
}

- (NSMutableArray *)TestProjectShadow_property_shadowColor:(TestProjectTableViewParams *)params {
    [self createAttrStrModelWithShadowProperty:@"shadowColor" value:[UIColor redColor] params:params];
    return self.dataMutArr;
}

- (NSDictionary *)method_3:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"设置或者获取NSShadow的属性shadowColor(阴影颜色) UIColor",
            @"title": @"@property (nullable, nonatomic, strong) id shadowColor;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectShadow_property_shadowColor:params],
                @"compareViewModel": self.compareViewModel,
            }
        },
    };
}

- (NSMutableArray *)TestProjectShadow_property_shadowBlurRadius:(TestProjectTableViewParams *)params {
    NSArray *arr = @[@5, @-5];
    for (NSNumber *num in arr) {
        [self createAttrStrModelWithShadowProperty:@"shadowBlurRadius" value:num params:params];
    }
    return self.dataMutArr;
}

- (NSDictionary *)method_2:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"设置或者获取NSShadow的属性shadowBlurRadius(阴影扩散度) CGFloat \n 设置负数无效",
            @"title": @"@property (nonatomic, assign) CGFloat shadowBlurRadius;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectShadow_property_shadowBlurRadius:params],
                @"compareViewModel": self.compareViewModel,
            }
        },
    };
}

- (NSMutableArray *)TestProjectShadow_property_shadowOffset:(TestProjectTableViewParams *)params {
    NSArray *arr = @[[NSValue valueWithCGSize:CGSizeMake(0, 5)], [NSValue valueWithCGSize:CGSizeMake(0, -5)]];
    for (NSValue *value in arr) {
        [self createAttrStrModelWithShadowProperty:@"shadowOffset" value:value params:params];
    }
    return self.dataMutArr;
}

- (NSDictionary *)method_1:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"设置或者获取NSShadow的属性shadowOffset(阴影偏移量) CGSize",
            @"title": @"@property (nonatomic, assign) CGSize shadowOffset;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectShadow_property_shadowOffset:params],
                @"compareViewModel": self.compareViewModel,
            }
        },
    };
}

@end
