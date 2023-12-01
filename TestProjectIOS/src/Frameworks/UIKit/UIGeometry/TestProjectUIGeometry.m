//
//  TestProjectUIGeometry.m
//  TestProjectIOS
//
//  Created by liwenfan on 2023/6/26.
//

#import "TestProjectUIGeometry.h"

@implementation TestProjectUIGeometry

- (NSMutableArray *)TestProjectGeometry_UIKIT_EXTERN_UIOffsetFromString:(TestProjectTableViewParams *)params {
    UIOffset offset = UIOffsetFromString(@"{10, 10}");
    return [self createModelSingleArrayWithParams:params
                                            title:[NSString stringWithFormat:@"%@", [NSValue valueWithUIOffset:offset]]
                                            block:nil];
}

- (NSDictionary *)method_16:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"从NSString类型变成UIOffset",
            @"title": @"UIKIT_EXTERN UIOffset UIOffsetFromString(NSString *string);",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectGeometry_UIKIT_EXTERN_UIOffsetFromString:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectGeometry_UIKIT_EXTERN_NSDirectionalEdgeInsetsFromString:(TestProjectTableViewParams *)params {
    NSDirectionalEdgeInsets edge = NSDirectionalEdgeInsetsFromString(@"{10, 10, 100, 100}");
    return [self createModelSingleArrayWithParams:params
                                            title:[NSString stringWithFormat:@"%@", [NSValue valueWithDirectionalEdgeInsets:edge]]
                                            block:nil];
}

- (NSDictionary *)method_15:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"从NSString类型变成NSDirectionalEdgeInsets",
            @"title": @"UIKIT_EXTERN NSDirectionalEdgeInsets NSDirectionalEdgeInsetsFromString(NSString *string) API_AVAILABLE(ios(11.0),tvos(11.0),watchos(4.0));",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectGeometry_UIKIT_EXTERN_NSDirectionalEdgeInsetsFromString:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectGeometry_UIKIT_EXTERN_UIEdgeInsetsFromString:(TestProjectTableViewParams *)params {
    UIEdgeInsets edge = UIEdgeInsetsFromString(@"{100, 10, 10, 30}");
    return [self createModelSingleArrayWithParams:params
                                            title:[NSString stringWithFormat:@"%@", [NSValue valueWithUIEdgeInsets:edge]]
                                            block:nil];
}

- (NSDictionary *)method_14:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"从NSString类型变成UIEdgeInsets",
            @"title": @"UIKIT_EXTERN UIEdgeInsets UIEdgeInsetsFromString(NSString *string);",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectGeometry_UIKIT_EXTERN_UIEdgeInsetsFromString:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectGeometry_UIKIT_EXTERN_CGAffineTransformFromString:(TestProjectTableViewParams *)params {
    CGAffineTransform transform = CGAffineTransformFromString(@"[1, 0, 0, 1, 200, 30]");
    return [self createModelSingleArrayWithParams:params
                                            title:[NSString stringWithFormat:@"%@", [NSValue valueWithCGAffineTransform:transform]]
                                            block:nil];
}

- (NSDictionary *)method_13:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"从NSString类型变成CGAffineTransform",
            @"title": @"UIKIT_EXTERN CGAffineTransform CGAffineTransformFromString(NSString *string);",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectGeometry_UIKIT_EXTERN_CGAffineTransformFromString:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectGeometry_UIKIT_EXTERN_CGRectFromString:(TestProjectTableViewParams *)params {
    CGRect rect = CGRectFromString(@"{{10, 10}, {100, 100}}");
    return [self createModelSingleArrayWithParams:params
                                            title:[NSString stringWithFormat:@"%@", [NSValue valueWithCGRect:rect]]
                                            block:nil];
}

- (NSDictionary *)method_12:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"从NSString类型变成CGRect",
            @"title": @"UIKIT_EXTERN CGRect CGRectFromString(NSString *string);",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectGeometry_UIKIT_EXTERN_CGRectFromString:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectGeometry_UIKIT_EXTERN_CGSizeFromString:(TestProjectTableViewParams *)params {
    CGSize size = CGSizeFromString(@"{10, 10}");
    return [self createModelSingleArrayWithParams:params
                                            title:[NSString stringWithFormat:@"%@", [NSValue valueWithCGSize:size]]
                                            block:nil];
}

- (NSDictionary *)method_11:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"从NSString类型变成CGSize",
            @"title": @"UIKIT_EXTERN CGSize CGSizeFromString(NSString *string);",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectGeometry_UIKIT_EXTERN_CGSizeFromString:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectGeometry_UIKIT_EXTERN_CGVectorFromString:(TestProjectTableViewParams *)params {
    CGVector vector = CGVectorFromString(@"{10, 20}");
    NSString *title = [NSString stringWithFormat:@"CGVector: %@", NSStringFromCGVector(vector)];
    [self createModelWithParams:params title:title block:nil];
    return [self createModelSingleArrayWithParams:params
                                            title:[NSString stringWithFormat:@"%@", [NSValue valueWithCGVector:vector]]
                                            block:nil];
}

- (NSDictionary *)method_10:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"从NSString类型变成CGVector",
            @"title": @"UIKIT_EXTERN CGVector CGVectorFromString(NSString *string);",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectGeometry_UIKIT_EXTERN_CGVectorFromString:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectGeometry_UIKIT_EXTERN_CGPointFromString:(TestProjectTableViewParams *)params {
    CGPoint point = CGPointFromString(@"{10, 10}");
    return [self createModelSingleArrayWithParams:params
                                            title:[NSString stringWithFormat:@"%@", [NSValue valueWithCGPoint:point]]
                                            block:nil];
}

- (NSDictionary *)method_9:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"从NSString类型变成CGPoint",
            @"title": @"UIKIT_EXTERN CGPoint CGPointFromString(NSString *string);",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectGeometry_UIKIT_EXTERN_CGPointFromString:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectGeometry_UIKIT_EXTERN_NSStringFromUIOffset:(TestProjectTableViewParams *)params {
    NSString *title = NSStringFromUIOffset(UIOffsetMake(10, 10));
    return [self createModelSingleArrayWithParams:params
                                            title:title
                                            block:nil];
}

- (NSDictionary *)method_8:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"从UIOffset变成NSString类型",
            @"title": @"UIKIT_EXTERN NSString *NSStringFromUIOffset(UIOffset offset);",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectGeometry_UIKIT_EXTERN_NSStringFromUIOffset:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectGeometry_UIKIT_EXTERN_NSStringFromDirectionalEdgeInsets:(TestProjectTableViewParams *)params {
    NSString *title = NSStringFromDirectionalEdgeInsets(NSDirectionalEdgeInsetsMake(10, 10, 10, 10));
    return [self createModelSingleArrayWithParams:params
                                            title:title
                                            block:nil];
}

- (NSDictionary *)method_7:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"从NSDirectionalEdgeInsets变成NSString类型",
            @"title": @"UIKIT_EXTERN NSString *NSStringFromDirectionalEdgeInsets(NSDirectionalEdgeInsets insets) API_AVAILABLE(ios(11.0),tvos(11.0),watchos(4.0));",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectGeometry_UIKIT_EXTERN_NSStringFromDirectionalEdgeInsets:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectGeometry_UIKIT_EXTERN_NSStringFromUIEdgeInsets:(TestProjectTableViewParams *)params {
    NSString *title = NSStringFromUIEdgeInsets(UIEdgeInsetsMake(10, 10, 10, 10));
    return [self createModelSingleArrayWithParams:params
                                            title:title
                                            block:nil];
}

- (NSDictionary *)method_6:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"从UIEdgeInsets变成NSString类型",
            @"title": @"UIKIT_EXTERN NSString *NSStringFromUIEdgeInsets(UIEdgeInsets insets);",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectGeometry_UIKIT_EXTERN_NSStringFromUIEdgeInsets:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectGeometry_UIKIT_EXTERN_NSStringFromCGAffineTransform:(TestProjectTableViewParams *)params {
    NSString *title = NSStringFromCGAffineTransform(CGAffineTransformMake(1, 0, 0, 1, 10, 10));
    return [self createModelSingleArrayWithParams:params
                                            title:title
                                            block:nil];
}

- (NSDictionary *)method_5:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"从CGAffineTransform变成NSString类型",
            @"title": @"UIKIT_EXTERN NSString *NSStringFromCGAffineTransform(CGAffineTransform transform);",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectGeometry_UIKIT_EXTERN_NSStringFromCGAffineTransform:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectGeometry_UIKIT_EXTERN_NSStringFromCGRect:(TestProjectTableViewParams *)params {
    NSString *title = NSStringFromCGRect(CGRectMake(10, 10, 10, 10));
    return [self createModelSingleArrayWithParams:params
                                            title:title
                                            block:nil];
}

- (NSDictionary *)method_4:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"从CGRect变成NSString类型",
            @"title": @"UIKIT_EXTERN NSString *NSStringFromCGRect(CGRect rect);",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectGeometry_UIKIT_EXTERN_NSStringFromCGRect:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectGeometry_UIKIT_EXTERN_NSStringFromCGSize:(TestProjectTableViewParams *)params {
    NSString *title = NSStringFromCGSize(CGSizeMake(10, 10));
    return [self createModelSingleArrayWithParams:params
                                            title:title
                                            block:nil];
}

- (NSDictionary *)method_3:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"从CGSize变成NSString类型",
            @"title": @"UIKIT_EXTERN NSString *NSStringFromCGSize(CGSize size);",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectGeometry_UIKIT_EXTERN_NSStringFromCGSize:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectGeometry_UIKIT_EXTERN_NSStringFromCGVector:(TestProjectTableViewParams *)params {
    NSString *title = NSStringFromCGVector(CGVectorMake(10, 10));
    return [self createModelSingleArrayWithParams:params
                                            title:title
                                            block:nil];
}

- (NSDictionary *)method_2:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"从CGVector变成NSString类型",
            @"title": @"UIKIT_EXTERN NSString *NSStringFromCGVector(CGVector vector);",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectGeometry_UIKIT_EXTERN_NSStringFromCGVector:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectGeometry_UIKIT_EXTERN_NSStringFromCGPoint:(TestProjectTableViewParams *)params {
    NSString *title = NSStringFromCGPoint(CGPointMake(10, 10));
    return [self createModelSingleArrayWithParams:params
                                            title:title
                                            block:nil];
}

- (NSDictionary *)method_1:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"从CGPoint变成NSString类型",
            @"title": @"UIKIT_EXTERN NSString *NSStringFromCGPoint(CGPoint point);",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectGeometry_UIKIT_EXTERN_NSStringFromCGPoint:params],
            }
        },
    };
}

@end
