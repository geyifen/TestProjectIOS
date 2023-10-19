//
//  TestProjectValueUIGeometryExtensions.m
//  TestProjectIOS
//
//  Created by liwenfan on 2023/6/27.
//

#import "TestProjectValueUIGeometryExtensions.h"

@implementation TestProjectValueUIGeometryExtensions

- (NSDictionary *)method_1:(NSInteger)index {
    return @{
        @"dataModel": @{
            @"abstract": @"执行NSValue的class的方法valueWithCGPoint:",
            @"title": @"+ (NSValue *)valueWithCGPoint:(CGPoint)point;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectValueUIGeometryExtensions_class_valueWithCGPoint:index],
            }
        },
    };
}

- (NSDictionary *)method_2:(NSInteger)index {
    return @{
        @"dataModel": @{
            @"abstract": @"执行NSValue的class的方法valueWithCGVector:",
            @"title": @"+ (NSValue *)valueWithCGVector:(CGVector)vector;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectValueUIGeometryExtensions_class_valueWithCGVector:index],
            }
        },
    };
}

- (NSDictionary *)method_3:(NSInteger)index {
    return @{
        @"dataModel": @{
            @"abstract": @"执行NSValue的class的方法valueWithCGSize:",
            @"title": @"+ (NSValue *)valueWithCGSize:(CGSize)size;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectValueUIGeometryExtensions_class_valueWithCGSize:index],
            }
        },
    };
}

- (NSDictionary *)method_4:(NSInteger)index {
    return @{
        @"dataModel": @{
            @"abstract": @"执行NSValue的class的方法valueWithCGRect:",
            @"title": @"+ (NSValue *)valueWithCGRect:(CGRect)rect;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectValueUIGeometryExtensions_class_valueWithCGRect:index],
            }
        },
    };
}

- (NSDictionary *)method_5:(NSInteger)index {
    return @{
        @"dataModel": @{
            @"abstract": @"执行NSValue的class的方法valueWithCGAffineTransform:",
            @"title": @"+ (NSValue *)valueWithCGAffineTransform:(CGAffineTransform)transform;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectValueUIGeometryExtensions_class_valueWithCGAffineTransform:index],
            }
        },
    };
}

- (NSDictionary *)method_6:(NSInteger)index {
    return @{
        @"dataModel": @{
            @"abstract": @"执行NSValue的class的方法valueWithUIEdgeInsets:",
            @"title": @"+ (NSValue *)valueWithUIEdgeInsets:(UIEdgeInsets)insets;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectValueUIGeometryExtensions_class_valueWithUIEdgeInsets:index],
            }
        },
    };
}

- (NSDictionary *)method_7:(NSInteger)index {
    return @{
        @"dataModel": @{
            @"abstract": @"执行NSValue的class的方法valueWithDirectionalEdgeInsets:",
            @"title": @"+ (NSValue *)valueWithDirectionalEdgeInsets:(NSDirectionalEdgeInsets)insets API_AVAILABLE(ios(11.0),tvos(11.0),watchos(4.0));",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectValueUIGeometryExtensions_class_valueWithDirectionalEdgeInsets:index],
            }
        },
    };
}

- (NSDictionary *)method_8:(NSInteger)index {
    return @{
        @"dataModel": @{
            @"abstract": @"执行NSValue的class的方法valueWithUIOffset:",
            @"title": @"+ (NSValue *)valueWithUIOffset:(UIOffset)insets API_AVAILABLE(ios(5.0));",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectValueUIGeometryExtensions_class_valueWithUIOffset:index],
            }
        },
    };
}

- (NSDictionary *)method_9:(NSInteger)index {
    return @{
        @"dataModel": @{
            @"abstract": @"从NSValue获取CGPointValue",
            @"title": @"@property(nonatomic, readonly) CGPoint CGPointValue;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectValueUIGeometryExtensions_property_CGPointValue:index],
            }
        },
    };
}

- (NSDictionary *)method_10:(NSInteger)index {
    return @{
        @"dataModel": @{
            @"abstract": @"从NSValue获取CGVectorValue",
            @"title": @"@property(nonatomic, readonly) CGVector CGVectorValue;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectValueUIGeometryExtensions_property_CGVectorValue:index],
            }
        },
    };
}

- (NSDictionary *)method_11:(NSInteger)index {
    return @{
        @"dataModel": @{
            @"abstract": @"从NSValue获取CGSizeValue",
            @"title": @"@property(nonatomic, readonly) CGSize CGSizeValue;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectValueUIGeometryExtensions_property_CGSizeValue:index],
            }
        },
    };
}

- (NSDictionary *)method_12:(NSInteger)index {
    return @{
        @"dataModel": @{
            @"abstract": @"从NSValue获取CGRectValue",
            @"title": @"@property(nonatomic, readonly) CGRect CGRectValue;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectValueUIGeometryExtensions_property_CGRectValue:index],
            }
        },
    };
}

- (NSDictionary *)method_13:(NSInteger)index {
    return @{
        @"dataModel": @{
            @"abstract": @"从NSValue获取CGAffineTransformValue",
            @"title": @"@property(nonatomic, readonly) CGAffineTransform CGAffineTransformValue;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectValueUIGeometryExtensions_property_CGAffineTransformValue:index],
            }
        },
    };
}

- (NSDictionary *)method_14:(NSInteger)index {
    return @{
        @"dataModel": @{
            @"abstract": @"从NSValue获取UIEdgeInsetsValue",
            @"title": @"@property(nonatomic, readonly) UIEdgeInsets UIEdgeInsetsValue;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectValueUIGeometryExtensions_property_UIEdgeInsetsValue:index],
            }
        },
    };
}

- (NSDictionary *)method_15:(NSInteger)index {
    return @{
        @"dataModel": @{
            @"abstract": @"从NSValue获取directionalEdgeInsetsValue",
            @"title": @"@property(nonatomic, readonly) NSDirectionalEdgeInsets directionalEdgeInsetsValue API_AVAILABLE(ios(11.0),tvos(11.0),watchos(4.0));",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectValueUIGeometryExtensions_property_directionalEdgeInsetsValue:index],
            }
        },
    };
}

- (NSDictionary *)method_16:(NSInteger)index {
    return @{
        @"dataModel": @{
            @"abstract": @"从NSValue获取UIOffsetValue",
            @"title": @"@property(nonatomic, readonly) UIOffset UIOffsetValue API_AVAILABLE(ios(5.0));",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectValueUIGeometryExtensions_property_UIOffsetValue:index],
            }
        },
    };
}

- (NSMutableArray *)TestProjectValueUIGeometryExtensions_property_UIOffsetValue:(NSInteger)index {
    NSValue *value = [NSValue valueWithUIOffset:UIOffsetMake(11, 11)];
    return [self createTableModelSingleArrayWithTitle:[NSString stringWithFormat:@"%@", NSStringFromUIOffset(value.UIOffsetValue)] block:nil];
}

- (NSMutableArray *)TestProjectValueUIGeometryExtensions_property_directionalEdgeInsetsValue:(NSInteger)index {
    NSValue *value = [NSValue valueWithDirectionalEdgeInsets:NSDirectionalEdgeInsetsMake(11, 12, 12, 11)];
    return [self createTableModelSingleArrayWithTitle:[NSString stringWithFormat:@"%@", NSStringFromDirectionalEdgeInsets(value.directionalEdgeInsetsValue)] block:nil];
}

- (NSMutableArray *)TestProjectValueUIGeometryExtensions_property_UIEdgeInsetsValue:(NSInteger)index {
    NSValue *value = [NSValue valueWithUIEdgeInsets:UIEdgeInsetsMake(11, 11, 12, 12)];
    return [self createTableModelSingleArrayWithTitle:[NSString stringWithFormat:@"%@", NSStringFromUIEdgeInsets(value.UIEdgeInsetsValue)] block:nil];
}

- (NSMutableArray *)TestProjectValueUIGeometryExtensions_property_CGAffineTransformValue:(NSInteger)index {
    NSValue *value = [NSValue valueWithCGAffineTransform:CGAffineTransformMake(1, 0, 0, 1, 32, 32)];
    return [self createTableModelSingleArrayWithTitle:[NSString stringWithFormat:@"%@", NSStringFromCGAffineTransform(value.CGAffineTransformValue)] block:nil];
}

- (NSMutableArray *)TestProjectValueUIGeometryExtensions_property_CGRectValue:(NSInteger)index {
    NSValue *value = [NSValue valueWithCGRect:CGRectMake(11, 11, 101, 101)];
    return [self createTableModelSingleArrayWithTitle:[NSString stringWithFormat:@"%@", NSStringFromCGRect(value.CGRectValue)] block:nil];
}

- (NSMutableArray *)TestProjectValueUIGeometryExtensions_property_CGSizeValue:(NSInteger)index {
    NSValue *value = [NSValue valueWithCGSize:CGSizeMake(11, 11)];
    return [self createTableModelSingleArrayWithTitle:[NSString stringWithFormat:@"%@", NSStringFromCGSize(value.CGSizeValue)] block:nil];
}

- (NSMutableArray *)TestProjectValueUIGeometryExtensions_property_CGVectorValue:(NSInteger)index {
    NSValue *value = [NSValue valueWithCGVector:CGVectorMake(11, 11)];
    return [self createTableModelSingleArrayWithTitle:[NSString stringWithFormat:@"%@", NSStringFromCGVector(value.CGVectorValue)] block:nil];
}

- (NSMutableArray *)TestProjectValueUIGeometryExtensions_property_CGPointValue:(NSInteger)index {
    NSValue *value = [NSValue valueWithCGPoint:CGPointMake(11, 11)];
    return [self createTableModelSingleArrayWithTitle:[NSString stringWithFormat:@"%@", NSStringFromCGPoint(value.CGPointValue)] block:nil];
}

- (NSMutableArray *)TestProjectValueUIGeometryExtensions_class_valueWithUIOffset:(NSInteger)index {
    NSValue *value = [NSValue valueWithUIOffset:UIOffsetMake(11, 11)];
    return [self createTableModelSingleArrayWithTitle:[NSString stringWithFormat:@"%@", value] block:nil];;
}

- (NSMutableArray *)TestProjectValueUIGeometryExtensions_class_valueWithDirectionalEdgeInsets:(NSInteger)index {
    NSValue *value = [NSValue valueWithDirectionalEdgeInsets:NSDirectionalEdgeInsetsMake(11, 12, 12, 11)];
    return [self createTableModelSingleArrayWithTitle:[NSString stringWithFormat:@"%@", value] block:nil];;
}

- (NSMutableArray *)TestProjectValueUIGeometryExtensions_class_valueWithUIEdgeInsets:(NSInteger)index {
    NSValue *value = [NSValue valueWithUIEdgeInsets:UIEdgeInsetsMake(11, 11, 12, 12)];
    return [self createTableModelSingleArrayWithTitle:[NSString stringWithFormat:@"%@", value] block:nil];;
}

- (NSMutableArray *)TestProjectValueUIGeometryExtensions_class_valueWithCGAffineTransform:(NSInteger)index {
    NSValue *value = [NSValue valueWithCGAffineTransform:CGAffineTransformMake(1, 0, 0, 1, 32, 32)];
    return [self createTableModelSingleArrayWithTitle:[NSString stringWithFormat:@"%@", value] block:nil];;
}

- (NSMutableArray *)TestProjectValueUIGeometryExtensions_class_valueWithCGRect:(NSInteger)index {
    NSValue *value = [NSValue valueWithCGRect:CGRectMake(11, 11, 101, 101)];
    return [self createTableModelSingleArrayWithTitle:[NSString stringWithFormat:@"%@", value] block:nil];;
}

- (NSMutableArray *)TestProjectValueUIGeometryExtensions_class_valueWithCGSize:(NSInteger)index {
    NSValue *value = [NSValue valueWithCGSize:CGSizeMake(11, 11)];
    return [self createTableModelSingleArrayWithTitle:[NSString stringWithFormat:@"%@", value] block:nil];;
}

- (NSMutableArray *)TestProjectValueUIGeometryExtensions_class_valueWithCGVector:(NSInteger)index {
    NSValue *value = [NSValue valueWithCGVector:CGVectorMake(11, 11)];
    return [self createTableModelSingleArrayWithTitle:[NSString stringWithFormat:@"%@", value] block:nil];;
}

- (NSMutableArray *)TestProjectValueUIGeometryExtensions_class_valueWithCGPoint:(NSInteger)index {
    NSValue *value = [NSValue valueWithCGPoint:CGPointMake(11, 11)];
    return [self createTableModelSingleArrayWithTitle:[NSString stringWithFormat:@"%@", value] block:nil];;
}

@end
