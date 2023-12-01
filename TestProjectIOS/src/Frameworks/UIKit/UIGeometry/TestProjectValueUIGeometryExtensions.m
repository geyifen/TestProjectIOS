//
//  TestProjectValueUIGeometryExtensions.m
//  TestProjectIOS
//
//  Created by liwenfan on 2023/6/27.
//

#import "TestProjectValueUIGeometryExtensions.h"

@implementation TestProjectValueUIGeometryExtensions

- (NSMutableArray *)TestProjectValueUIGeometryExtensions_property_UIOffsetValue:(TestProjectTableViewParams *)params {
    NSValue *value = [NSValue valueWithUIOffset:UIOffsetMake(11, 11)];
    return [self createModelSingleArrayWithParams:params title:[NSString stringWithFormat:@"%@", NSStringFromUIOffset(value.UIOffsetValue)] block:nil];
}

- (NSDictionary *)method_16:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"从NSValue获取UIOffsetValue",
            @"title": @"@property(nonatomic, readonly) UIOffset UIOffsetValue API_AVAILABLE(ios(5.0));",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectValueUIGeometryExtensions_property_UIOffsetValue:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectValueUIGeometryExtensions_property_directionalEdgeInsetsValue:(TestProjectTableViewParams *)params {
    NSValue *value = [NSValue valueWithDirectionalEdgeInsets:NSDirectionalEdgeInsetsMake(11, 12, 12, 11)];
    return [self createModelSingleArrayWithParams:params title:[NSString stringWithFormat:@"%@", NSStringFromDirectionalEdgeInsets(value.directionalEdgeInsetsValue)] block:nil];
}

- (NSDictionary *)method_15:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"从NSValue获取directionalEdgeInsetsValue",
            @"title": @"@property(nonatomic, readonly) NSDirectionalEdgeInsets directionalEdgeInsetsValue API_AVAILABLE(ios(11.0),tvos(11.0),watchos(4.0));",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectValueUIGeometryExtensions_property_directionalEdgeInsetsValue:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectValueUIGeometryExtensions_property_UIEdgeInsetsValue:(TestProjectTableViewParams *)params {
    NSValue *value = [NSValue valueWithUIEdgeInsets:UIEdgeInsetsMake(11, 11, 12, 12)];
    return [self createModelSingleArrayWithParams:params title:[NSString stringWithFormat:@"%@", NSStringFromUIEdgeInsets(value.UIEdgeInsetsValue)] block:nil];
}

- (NSDictionary *)method_14:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"从NSValue获取UIEdgeInsetsValue",
            @"title": @"@property(nonatomic, readonly) UIEdgeInsets UIEdgeInsetsValue;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectValueUIGeometryExtensions_property_UIEdgeInsetsValue:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectValueUIGeometryExtensions_property_CGAffineTransformValue:(TestProjectTableViewParams *)params {
    NSValue *value = [NSValue valueWithCGAffineTransform:CGAffineTransformMake(1, 0, 0, 1, 32, 32)];
    return [self createModelSingleArrayWithParams:params title:[NSString stringWithFormat:@"%@", NSStringFromCGAffineTransform(value.CGAffineTransformValue)] block:nil];
}

- (NSDictionary *)method_13:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"从NSValue获取CGAffineTransformValue",
            @"title": @"@property(nonatomic, readonly) CGAffineTransform CGAffineTransformValue;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectValueUIGeometryExtensions_property_CGAffineTransformValue:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectValueUIGeometryExtensions_property_CGRectValue:(TestProjectTableViewParams *)params {
    NSValue *value = [NSValue valueWithCGRect:CGRectMake(11, 11, 101, 101)];
    return [self createModelSingleArrayWithParams:params title:[NSString stringWithFormat:@"%@", NSStringFromCGRect(value.CGRectValue)] block:nil];
}

- (NSDictionary *)method_12:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"从NSValue获取CGRectValue",
            @"title": @"@property(nonatomic, readonly) CGRect CGRectValue;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectValueUIGeometryExtensions_property_CGRectValue:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectValueUIGeometryExtensions_property_CGSizeValue:(TestProjectTableViewParams *)params {
    NSValue *value = [NSValue valueWithCGSize:CGSizeMake(11, 11)];
    return [self createModelSingleArrayWithParams:params title:[NSString stringWithFormat:@"%@", NSStringFromCGSize(value.CGSizeValue)] block:nil];
}

- (NSDictionary *)method_11:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"从NSValue获取CGSizeValue",
            @"title": @"@property(nonatomic, readonly) CGSize CGSizeValue;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectValueUIGeometryExtensions_property_CGSizeValue:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectValueUIGeometryExtensions_property_CGVectorValue:(TestProjectTableViewParams *)params {
    NSValue *value = [NSValue valueWithCGVector:CGVectorMake(11, 11)];
    return [self createModelSingleArrayWithParams:params title:[NSString stringWithFormat:@"%@", NSStringFromCGVector(value.CGVectorValue)] block:nil];
}

- (NSDictionary *)method_10:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"从NSValue获取CGVectorValue",
            @"title": @"@property(nonatomic, readonly) CGVector CGVectorValue;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectValueUIGeometryExtensions_property_CGVectorValue:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectValueUIGeometryExtensions_property_CGPointValue:(TestProjectTableViewParams *)params {
    NSValue *value = [NSValue valueWithCGPoint:CGPointMake(11, 11)];
    return [self createModelSingleArrayWithParams:params title:[NSString stringWithFormat:@"%@", NSStringFromCGPoint(value.CGPointValue)] block:nil];
}

- (NSDictionary *)method_9:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"从NSValue获取CGPointValue",
            @"title": @"@property(nonatomic, readonly) CGPoint CGPointValue;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectValueUIGeometryExtensions_property_CGPointValue:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectValueUIGeometryExtensions_class_valueWithUIOffset:(TestProjectTableViewParams *)params {
    NSValue *value = [NSValue valueWithUIOffset:UIOffsetMake(11, 11)];
    return [self createModelSingleArrayWithParams:params title:[NSString stringWithFormat:@"%@", value] block:nil];;
}

- (NSDictionary *)method_8:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"执行NSValue的class的方法valueWithUIOffset:",
            @"title": @"+ (NSValue *)valueWithUIOffset:(UIOffset)insets API_AVAILABLE(ios(5.0));",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectValueUIGeometryExtensions_class_valueWithUIOffset:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectValueUIGeometryExtensions_class_valueWithDirectionalEdgeInsets:(TestProjectTableViewParams *)params {
    NSValue *value = [NSValue valueWithDirectionalEdgeInsets:NSDirectionalEdgeInsetsMake(11, 12, 12, 11)];
    return [self createModelSingleArrayWithParams:params title:[NSString stringWithFormat:@"%@", value] block:nil];;
}

- (NSDictionary *)method_7:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"执行NSValue的class的方法valueWithDirectionalEdgeInsets:",
            @"title": @"+ (NSValue *)valueWithDirectionalEdgeInsets:(NSDirectionalEdgeInsets)insets API_AVAILABLE(ios(11.0),tvos(11.0),watchos(4.0));",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectValueUIGeometryExtensions_class_valueWithDirectionalEdgeInsets:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectValueUIGeometryExtensions_class_valueWithUIEdgeInsets:(TestProjectTableViewParams *)params {
    NSValue *value = [NSValue valueWithUIEdgeInsets:UIEdgeInsetsMake(11, 11, 12, 12)];
    return [self createModelSingleArrayWithParams:params title:[NSString stringWithFormat:@"%@", value] block:nil];;
}

- (NSDictionary *)method_6:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"执行NSValue的class的方法valueWithUIEdgeInsets:",
            @"title": @"+ (NSValue *)valueWithUIEdgeInsets:(UIEdgeInsets)insets;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectValueUIGeometryExtensions_class_valueWithUIEdgeInsets:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectValueUIGeometryExtensions_class_valueWithCGAffineTransform:(TestProjectTableViewParams *)params {
    NSValue *value = [NSValue valueWithCGAffineTransform:CGAffineTransformMake(1, 0, 0, 1, 32, 32)];
    return [self createModelSingleArrayWithParams:params title:[NSString stringWithFormat:@"%@", value] block:nil];;
}

- (NSDictionary *)method_5:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"执行NSValue的class的方法valueWithCGAffineTransform:",
            @"title": @"+ (NSValue *)valueWithCGAffineTransform:(CGAffineTransform)transform;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectValueUIGeometryExtensions_class_valueWithCGAffineTransform:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectValueUIGeometryExtensions_class_valueWithCGRect:(TestProjectTableViewParams *)params {
    NSValue *value = [NSValue valueWithCGRect:CGRectMake(11, 11, 101, 101)];
    return [self createModelSingleArrayWithParams:params title:[NSString stringWithFormat:@"%@", value] block:nil];;
}

- (NSDictionary *)method_4:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"执行NSValue的class的方法valueWithCGRect:",
            @"title": @"+ (NSValue *)valueWithCGRect:(CGRect)rect;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectValueUIGeometryExtensions_class_valueWithCGRect:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectValueUIGeometryExtensions_class_valueWithCGSize:(TestProjectTableViewParams *)params {
    NSValue *value = [NSValue valueWithCGSize:CGSizeMake(11, 11)];
    return [self createModelSingleArrayWithParams:params title:[NSString stringWithFormat:@"%@", value] block:nil];;
}

- (NSDictionary *)method_3:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"执行NSValue的class的方法valueWithCGSize:",
            @"title": @"+ (NSValue *)valueWithCGSize:(CGSize)size;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectValueUIGeometryExtensions_class_valueWithCGSize:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectValueUIGeometryExtensions_class_valueWithCGVector:(TestProjectTableViewParams *)params {
    NSValue *value = [NSValue valueWithCGVector:CGVectorMake(11, 11)];
    return [self createModelSingleArrayWithParams:params title:[NSString stringWithFormat:@"%@", value] block:nil];;
}

- (NSDictionary *)method_2:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"执行NSValue的class的方法valueWithCGVector:",
            @"title": @"+ (NSValue *)valueWithCGVector:(CGVector)vector;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectValueUIGeometryExtensions_class_valueWithCGVector:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectValueUIGeometryExtensions_class_valueWithCGPoint:(TestProjectTableViewParams *)params {
    NSValue *value = [NSValue valueWithCGPoint:CGPointMake(11, 11)];
    return [self createModelSingleArrayWithParams:params title:[NSString stringWithFormat:@"%@", value] block:nil];;
}

- (NSDictionary *)method_1:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"执行NSValue的class的方法valueWithCGPoint:",
            @"title": @"+ (NSValue *)valueWithCGPoint:(CGPoint)point;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectValueUIGeometryExtensions_class_valueWithCGPoint:params],
            }
        },
    };
}

@end
