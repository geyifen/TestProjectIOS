//
//  TestProjectGeometry.m
//  TestProjectIOS
//
//  Created by liwenfan on 2023/6/26.
//

#import "TestProjectGeometry.h"

@implementation TestProjectGeometry

- (NSDictionary *)method_1:(NSInteger)index {
    return @{
        @"dataModel": @{
            @"abstract": @"从CGPoint变成NSString类型",
            @"title": @"UIKIT_EXTERN NSString *NSStringFromCGPoint(CGPoint point);",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectGeometry_UIKIT_EXTERN_NSStringFromCGPoint:index],
            }
        },
    };
}

- (NSDictionary *)method_2:(NSInteger)index {
    return @{
        @"dataModel": @{
            @"abstract": @"从CGVector变成NSString类型",
            @"title": @"UIKIT_EXTERN NSString *NSStringFromCGVector(CGVector vector);",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectGeometry_UIKIT_EXTERN_NSStringFromCGVector:index],
            }
        },
    };
}

- (NSDictionary *)method_3:(NSInteger)index {
    return @{
        @"dataModel": @{
            @"abstract": @"从CGSize变成NSString类型",
            @"title": @"UIKIT_EXTERN NSString *NSStringFromCGSize(CGSize size);",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectGeometry_UIKIT_EXTERN_NSStringFromCGSize:index],
            }
        },
    };
}

- (NSDictionary *)method_4:(NSInteger)index {
    return @{
        @"dataModel": @{
            @"abstract": @"从CGRect变成NSString类型",
            @"title": @"UIKIT_EXTERN NSString *NSStringFromCGRect(CGRect rect);",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectGeometry_UIKIT_EXTERN_NSStringFromCGRect:index],
            }
        },
    };
}

- (NSDictionary *)method_5:(NSInteger)index {
    return @{
        @"dataModel": @{
            @"abstract": @"从CGAffineTransform变成NSString类型",
            @"title": @"UIKIT_EXTERN NSString *NSStringFromCGAffineTransform(CGAffineTransform transform);",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectGeometry_UIKIT_EXTERN_NSStringFromCGAffineTransform:index],
            }
        },
    };
}

- (NSDictionary *)method_6:(NSInteger)index {
    return @{
        @"dataModel": @{
            @"abstract": @"从UIEdgeInsets变成NSString类型",
            @"title": @"UIKIT_EXTERN NSString *NSStringFromUIEdgeInsets(UIEdgeInsets insets);",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectGeometry_UIKIT_EXTERN_NSStringFromUIEdgeInsets:index],
            }
        },
    };
}

- (NSDictionary *)method_7:(NSInteger)index {
    return @{
        @"dataModel": @{
            @"abstract": @"从NSDirectionalEdgeInsets变成NSString类型",
            @"title": @"UIKIT_EXTERN NSString *NSStringFromDirectionalEdgeInsets(NSDirectionalEdgeInsets insets) API_AVAILABLE(ios(11.0),tvos(11.0),watchos(4.0));",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectGeometry_UIKIT_EXTERN_NSStringFromDirectionalEdgeInsets:index],
            }
        },
    };
}

- (NSDictionary *)method_8:(NSInteger)index {
    return @{
        @"dataModel": @{
            @"abstract": @"从UIOffset变成NSString类型",
            @"title": @"UIKIT_EXTERN NSString *NSStringFromUIOffset(UIOffset offset);",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectGeometry_UIKIT_EXTERN_NSStringFromUIOffset:index],
            }
        },
    };
}

- (NSDictionary *)method_9:(NSInteger)index {
    return @{
        @"dataModel": @{
            @"abstract": @"从NSString类型变成CGPoint",
            @"title": @"UIKIT_EXTERN CGPoint CGPointFromString(NSString *string);",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectGeometry_UIKIT_EXTERN_CGPointFromString:index],
            }
        },
    };
}

- (NSDictionary *)method_10:(NSInteger)index {
    return @{
        @"dataModel": @{
            @"abstract": @"从NSString类型变成CGVector",
            @"title": @"UIKIT_EXTERN CGVector CGVectorFromString(NSString *string);",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectGeometry_UIKIT_EXTERN_CGVectorFromString:index],
            }
        },
    };
}

- (NSDictionary *)method_11:(NSInteger)index {
    return @{
        @"dataModel": @{
            @"abstract": @"从NSString类型变成CGSize",
            @"title": @"UIKIT_EXTERN CGSize CGSizeFromString(NSString *string);",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectGeometry_UIKIT_EXTERN_CGSizeFromString:index],
            }
        },
    };
}

- (NSDictionary *)method_12:(NSInteger)index {
    return @{
        @"dataModel": @{
            @"abstract": @"从NSString类型变成CGRect",
            @"title": @"UIKIT_EXTERN CGRect CGRectFromString(NSString *string);",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectGeometry_UIKIT_EXTERN_CGRectFromString:index],
            }
        },
    };
}

- (NSDictionary *)method_13:(NSInteger)index {
    return @{
        @"dataModel": @{
            @"abstract": @"从NSString类型变成CGAffineTransform",
            @"title": @"UIKIT_EXTERN CGAffineTransform CGAffineTransformFromString(NSString *string);",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectGeometry_UIKIT_EXTERN_CGAffineTransformFromString:index],
            }
        },
    };
}

- (NSDictionary *)method_14:(NSInteger)index {
    return @{
        @"dataModel": @{
            @"abstract": @"从NSString类型变成UIEdgeInsets",
            @"title": @"UIKIT_EXTERN UIEdgeInsets UIEdgeInsetsFromString(NSString *string);",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectGeometry_UIKIT_EXTERN_UIEdgeInsetsFromString:index],
            }
        },
    };
}

- (NSDictionary *)method_15:(NSInteger)index {
    return @{
        @"dataModel": @{
            @"abstract": @"从NSString类型变成NSDirectionalEdgeInsets",
            @"title": @"UIKIT_EXTERN NSDirectionalEdgeInsets NSDirectionalEdgeInsetsFromString(NSString *string) API_AVAILABLE(ios(11.0),tvos(11.0),watchos(4.0));",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectGeometry_UIKIT_EXTERN_NSDirectionalEdgeInsetsFromString:index],
            }
        },
    };
}

- (NSDictionary *)method_16:(NSInteger)index {
    return @{
        @"dataModel": @{
            @"abstract": @"从NSString类型变成UIOffset",
            @"title": @"UIKIT_EXTERN UIOffset UIOffsetFromString(NSString *string);",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectGeometry_UIKIT_EXTERN_UIOffsetFromString:index],
            }
        },
    };
}

- (NSMutableArray *)TestProjectGeometry_UIKIT_EXTERN_UIOffsetFromString:(NSInteger)index {
    UIOffset offset = UIOffsetFromString(@"{10, 10}");
    return [self createTableModelSingleArrayWithTitle:[NSString stringWithFormat:@"%@", [NSValue valueWithUIOffset:offset]] block:nil];
}

- (NSMutableArray *)TestProjectGeometry_UIKIT_EXTERN_NSDirectionalEdgeInsetsFromString:(NSInteger)index {
    NSDirectionalEdgeInsets edge = NSDirectionalEdgeInsetsFromString(@"{10, 10, 100, 100}");
    return [self createTableModelSingleArrayWithTitle:[NSString stringWithFormat:@"%@", [NSValue valueWithDirectionalEdgeInsets:edge]] block:nil];
}

- (NSMutableArray *)TestProjectGeometry_UIKIT_EXTERN_UIEdgeInsetsFromString:(NSInteger)index {
    UIEdgeInsets edge = UIEdgeInsetsFromString(@"{100, 10, 10, 30}");
    return [self createTableModelSingleArrayWithTitle:[NSString stringWithFormat:@"%@", [NSValue valueWithUIEdgeInsets:edge]] block:nil];
}

- (NSMutableArray *)TestProjectGeometry_UIKIT_EXTERN_CGAffineTransformFromString:(NSInteger)index {
    CGAffineTransform transform = CGAffineTransformFromString(@"[1, 0, 0, 1, 200, 30]");
    return [self createTableModelSingleArrayWithTitle:[NSString stringWithFormat:@"%@", [NSValue valueWithCGAffineTransform:transform]] block:nil];
}

- (NSMutableArray *)TestProjectGeometry_UIKIT_EXTERN_CGRectFromString:(NSInteger)index {
    CGRect rect = CGRectFromString(@"{{10, 10}, {100, 100}}");
    return [self createTableModelSingleArrayWithTitle:[NSString stringWithFormat:@"%@", [NSValue valueWithCGRect:rect]] block:nil];
}

- (NSMutableArray *)TestProjectGeometry_UIKIT_EXTERN_CGSizeFromString:(NSInteger)index {
    CGSize size = CGSizeFromString(@"{10, 10}");
    return [self createTableModelSingleArrayWithTitle:[NSString stringWithFormat:@"%@", [NSValue valueWithCGSize:size]] block:nil];
}

- (NSMutableArray *)TestProjectGeometry_UIKIT_EXTERN_CGVectorFromString:(NSInteger)index {
    CGVector vector = CGVectorFromString(@"{10, 20}");
    NSString *title = [NSString stringWithFormat:@"CGVector: %@", NSStringFromCGVector(vector)];
    [self createTableModelWithTitle:title block:nil];
    return [self createTableModelSingleArrayWithTitle:[NSString stringWithFormat:@"%@", [NSValue valueWithCGVector:vector]] block:nil];
}

- (NSMutableArray *)TestProjectGeometry_UIKIT_EXTERN_CGPointFromString:(NSInteger)index {
    CGPoint point = CGPointFromString(@"{10, 10}");
    return [self createTableModelSingleArrayWithTitle:[NSString stringWithFormat:@"%@", [NSValue valueWithCGPoint:point]] block:nil];
}

- (NSMutableArray *)TestProjectGeometry_UIKIT_EXTERN_NSStringFromUIOffset:(NSInteger)index {
    NSString *title = NSStringFromUIOffset(UIOffsetMake(10, 10));
    return [self createTableModelSingleArrayWithTitle:title block:nil];
}

- (NSMutableArray *)TestProjectGeometry_UIKIT_EXTERN_NSStringFromDirectionalEdgeInsets:(NSInteger)index {
    NSString *title = NSStringFromDirectionalEdgeInsets(NSDirectionalEdgeInsetsMake(10, 10, 10, 10));
    return [self createTableModelSingleArrayWithTitle:title block:nil];
}

- (NSMutableArray *)TestProjectGeometry_UIKIT_EXTERN_NSStringFromUIEdgeInsets:(NSInteger)index {
    NSString *title = NSStringFromUIEdgeInsets(UIEdgeInsetsMake(10, 10, 10, 10));
    return [self createTableModelSingleArrayWithTitle:title block:nil];
}

- (NSMutableArray *)TestProjectGeometry_UIKIT_EXTERN_NSStringFromCGAffineTransform:(NSInteger)index {
    NSString *title = NSStringFromCGAffineTransform(CGAffineTransformMake(1, 0, 0, 1, 10, 10));
    return [self createTableModelSingleArrayWithTitle:title block:nil];
}

- (NSMutableArray *)TestProjectGeometry_UIKIT_EXTERN_NSStringFromCGRect:(NSInteger)index {
    NSString *title = NSStringFromCGRect(CGRectMake(10, 10, 10, 10));
    return [self createTableModelSingleArrayWithTitle:title block:nil];
}

- (NSMutableArray *)TestProjectGeometry_UIKIT_EXTERN_NSStringFromCGSize:(NSInteger)index {
    NSString *title = NSStringFromCGSize(CGSizeMake(10, 10));
    return [self createTableModelSingleArrayWithTitle:title block:nil];
}

- (NSMutableArray *)TestProjectGeometry_UIKIT_EXTERN_NSStringFromCGVector:(NSInteger)index {
    NSString *title = NSStringFromCGVector(CGVectorMake(10, 10));
    return [self createTableModelSingleArrayWithTitle:title block:nil];
}

- (NSMutableArray *)TestProjectGeometry_UIKIT_EXTERN_NSStringFromCGPoint:(NSInteger)index {
    NSString *title = NSStringFromCGPoint(CGPointMake(10, 10));
    return [self createTableModelSingleArrayWithTitle:title block:nil];
}

@end
