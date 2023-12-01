//
//  TestProjectUIViewRendering.m
//  TestProjectIOS
//
//  Created by liwenfan on 2023/5/24.
//

#import "TestProjectUIViewRendering.h"

@implementation TestProjectUIViewRendering

//typedef NS_ENUM(NSInteger, UIViewTintAdjustmentMode) {
//    UIViewTintAdjustmentModeAutomatic,
//
//    UIViewTintAdjustmentModeNormal,
//    UIViewTintAdjustmentModeDimmed,
//} API_AVAILABLE(ios(7.0));

- (NSMutableArray *)TestProjectViewViewRendering_property_tintAdjustmentMode:(TestProjectTableViewParams *)params {
    NSArray *arr = @[
        @{
            @"title": [NSString stringWithFormat:@"设置的是UIViewTintAdjustmentModeAutomatic(%ld)", UIViewTintAdjustmentModeAutomatic],
            @"value": @(UIViewTintAdjustmentModeAutomatic),
        },
        @{
            @"title": [NSString stringWithFormat:@"设置的是UIViewTintAdjustmentModeNormal(%ld)", UIViewTintAdjustmentModeNormal],
            @"value": @(UIViewTintAdjustmentModeNormal),
        },
        @{
            @"title": [NSString stringWithFormat:@"设置的是UIViewTintAdjustmentModeDimmed(%ld)", UIViewTintAdjustmentModeDimmed],
            @"value": @(UIViewTintAdjustmentModeDimmed),
        },
    ];
    for (NSDictionary *dic in arr) {
        NSString *title = dic[@"title"];
        NSNumber *value = dic[@"value"];
        [self createModelWithParams:params
                              title:title
                           property:@"tintAdjustmentMode"
                              value:value
                          operation:TestProjectCreateModelGetBeforeClickSet
                              block:nil];
    }
    return self.dataMutArr;
}

- (NSDictionary *)method_12:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"设置获取UIView的属性tintAdjustmentMode",
            @"title": @"@property(nonatomic) UIViewTintAdjustmentMode tintAdjustmentMode API_AVAILABLE(ios(7.0));",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectViewViewRendering_property_tintAdjustmentMode:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectViewViewRendering_property_tintColor:(TestProjectTableViewParams *)params {
    return [self createModelSingleArrayWithParams:params
                                         property:@"tintColor"
                                            value:[UIColor yellowColor]
                                        operation:TestProjectCreateModelGetBeforeClickSet
                                            block:nil];
}

- (NSDictionary *)method_11:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"设置获取UIView的属性tintColor",
            @"title": @"@property(null_resettable, nonatomic, strong) UIColor *tintColor API_AVAILABLE(ios(7.0));",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectViewViewRendering_property_tintColor:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectViewViewRendering_property_maskView:(TestProjectTableViewParams *)params {
    UIView *view = [[UIView alloc] initWithFrame:CGRectMake(0, 0, self.frame.size.width, 30)];
    view.backgroundColor = [UIColor greenColor];
    return [self createModelSingleArrayWithParams:params
                                         property:@"maskView"
                                            value:view
                                        operation:TestProjectCreateModelGetBeforeClickSet
                                            block:nil];
}

- (NSDictionary *)method_10:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"设置获取UIView的属性maskView",
            @"title": @"@property(nullable, nonatomic,strong)          UIView           *maskView API_AVAILABLE(ios(8.0));",
            @"isDataModelExpand": @(YES),
            @"desc": @"要对maskView的layer层进行渲染才有效",
            @"dataModel": @{
                @"childItems": [self TestProjectViewViewRendering_property_maskView:params],
            }
        },
    };
}

//typedef NS_ENUM(NSInteger, UIViewContentMode) {
//    UIViewContentModeScaleToFill,
//    UIViewContentModeScaleAspectFit,      // contents scaled to fit with fixed aspect. remainder is transparent
//    UIViewContentModeScaleAspectFill,     // contents scaled to fill with fixed aspect. some portion of content may be clipped.
//    UIViewContentModeRedraw,              // redraw on bounds change (calls -setNeedsDisplay)
//    UIViewContentModeCenter,              // contents remain same size. positioned adjusted.
//    UIViewContentModeTop,
//    UIViewContentModeBottom,
//    UIViewContentModeLeft,
//    UIViewContentModeRight,
//    UIViewContentModeTopLeft,
//    UIViewContentModeTopRight,
//    UIViewContentModeBottomLeft,
//    UIViewContentModeBottomRight,
//};

- (NSMutableArray *)TestProjectViewViewRendering_property_contentMode:(TestProjectTableViewParams *)params {
    NSArray *arr = @[
        @{
            @"title": [NSString stringWithFormat:@"设置的是UIViewContentModeScaleToFill(%ld)", UIViewContentModeScaleToFill],
            @"value": @(UIViewContentModeScaleToFill),
        },
        @{
            @"title": [NSString stringWithFormat:@"设置的是UIViewContentModeScaleAspectFit(%ld)", UIViewContentModeScaleAspectFit],
            @"value": @(UIViewContentModeScaleAspectFit),
        },
        @{
            @"title": [NSString stringWithFormat:@"设置的是UIViewContentModeScaleAspectFill(%ld)", UIViewContentModeScaleAspectFill],
            @"value": @(UIViewContentModeScaleAspectFill),
        },
        @{
            @"title": [NSString stringWithFormat:@"设置的是UIViewContentModeRedraw(%ld)", UIViewContentModeRedraw],
            @"value": @(UIViewContentModeRedraw),
        },
        @{
            @"title": [NSString stringWithFormat:@"设置的是UIViewContentModeCenter(%ld)", UIViewContentModeCenter],
            @"value": @(UIViewContentModeCenter),
        },
        @{
            @"title": [NSString stringWithFormat:@"设置的是UIViewContentModeTop(%ld)", UIViewContentModeTop],
            @"value": @(UIViewContentModeTop),
        },
        @{
            @"title": [NSString stringWithFormat:@"设置的是UIViewContentModeBottom(%ld)", UIViewContentModeBottom],
            @"value": @(UIViewContentModeBottom),
        },
        @{
            @"title": [NSString stringWithFormat:@"设置的是UIViewContentModeLeft(%ld)", UIViewContentModeLeft],
            @"value": @(UIViewContentModeLeft),
        },
        @{
            @"title": [NSString stringWithFormat:@"设置的是UIViewContentModeRight(%ld)", UIViewContentModeRight],
            @"value": @(UIViewContentModeRight),
        },
        @{
            @"title": [NSString stringWithFormat:@"设置的是UIViewContentModeTopLeft(%ld)", UIViewContentModeTopLeft],
            @"value": @(UIViewContentModeTopLeft),
        },
        @{
            @"title": [NSString stringWithFormat:@"设置的是UIViewContentModeTopRight(%ld)", UIViewContentModeTopRight],
            @"value": @(UIViewContentModeTopRight),
        },
        @{
            @"title": [NSString stringWithFormat:@"设置的是UIViewContentModeBottomLeft(%ld)", UIViewContentModeBottomLeft],
            @"value": @(UIViewContentModeBottomLeft),
        },
        @{
            @"title": [NSString stringWithFormat:@"设置的是UIViewContentModeBottomRight(%ld)", UIViewContentModeBottomRight],
            @"value": @(UIViewContentModeBottomRight),
        },
    ];
    for (NSDictionary *dic in arr) {
        NSString *title = dic[@"title"];
        NSNumber *value = dic[@"value"];
        [self createModelWithParams:params
                              title:title
                           property:@"contentMode"
                              value:value
                          operation:TestProjectCreateModelGetBeforeClickSet
                              block:nil];
    }
    return self.dataMutArr;
}

- (NSDictionary *)method_9:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"设置获取UIView的属性contentMode, 一般使用于图片",
            @"title": @"@property(nonatomic)                 UIViewContentMode contentMode;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectViewViewRendering_property_contentMode:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectViewViewRendering_property_hidden:(TestProjectTableViewParams *)params {
    NSArray *arr = @[@(YES), @(NO)];
    for (NSNumber *value in arr) {
        [self createModelWithParams:params
                           property:@"hidden"
                              value:value
                          operation:TestProjectCreateModelGetBeforeClickSet
                              block:nil];
    }
    return self.dataMutArr;
}

- (NSDictionary *)method_8:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"设置获取UIView的属性hidden",
            @"title": @"@property(nonatomic,getter=isHidden) BOOL              hidden;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectViewViewRendering_property_hidden:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectViewViewRendering_property_clearsContextBeforeDrawing:(TestProjectTableViewParams *)params {
    NSArray *arr = @[@(YES), @(NO)];
    for (NSNumber *value in arr) {
        [self createModelWithParams:params
                           property:@"clearsContextBeforeDrawing"
                              value:value
                          operation:TestProjectCreateModelGetBeforeClickSet
                              block:nil];
    }
    return self.dataMutArr;
}

- (NSDictionary *)method_7:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"设置获取UIView的属性clearsContextBeforeDrawing",
            @"title": @"@property(nonatomic)                 BOOL              clearsContextBeforeDrawing;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectViewViewRendering_property_clearsContextBeforeDrawing:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectViewViewRendering_property_opaque:(TestProjectTableViewParams *)params {
    NSArray *arr = @[@(YES), @(NO)];
    for (NSNumber *value in arr) {
        [self createModelWithParams:params
                           property:@"opaque"
                              value:value
                          operation:TestProjectCreateModelGetBeforeClickSet
                              block:nil];
    }
    return self.dataMutArr;
}

- (NSDictionary *)method_6:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"设置获取UIView的属性opaque",
            @"title": @"@property(nonatomic,getter=isOpaque) BOOL              opaque;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectViewViewRendering_property_opaque:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectViewViewRendering_property_alpha:(TestProjectTableViewParams *)params {
    NSArray *arr = @[@0, @0.3, @0.5, @0.7, @1.0];
    for (NSNumber *value in arr) {
        [self createModelWithParams:params
                           property:@"alpha"
                              value:value
                          operation:TestProjectCreateModelGetBeforeClickSet
                              block:nil];
    }
    return self.dataMutArr;
}

- (NSDictionary *)method_5:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"设置获取UIView的属性alpha",
            @"title": @"@property(nonatomic)                 CGFloat           alpha;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectViewViewRendering_property_alpha:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectViewViewRendering_property_backgroundColor:(TestProjectTableViewParams *)params {
    return [self createModelSingleArrayWithParams:params
                                         property:@"backgroundColor"
                                            value:[UIColor purpleColor]
                                        operation:TestProjectCreateModelGetBeforeClickSet
                                            block:nil];
}

- (NSDictionary *)method_4:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"设置获取UIView的属性backgroundColor",
            @"title": @"@property(nullable, nonatomic,copy)            UIColor          *backgroundColor UI_APPEARANCE_SELECTOR;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectViewViewRendering_property_backgroundColor:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectViewViewRendering_property_clipsToBounds:(TestProjectTableViewParams *)params {
    NSArray *arr = @[@(YES), @(NO)];
    for (NSNumber *num in arr) {
        WS(wSelf);
        [self createModelWithParams:params
                              title:[NSString stringWithFormat:@"是否clipsToBounds:%u", [num boolValue]]
                           property:@"clipsToBounds"
                              value:num
                          operation:TestProjectCreateModelGetBeforeClickSet
                              block:^{
            wSelf.childView.layer.cornerRadius = 15;
        }];
    }
    return self.dataMutArr;
}

- (NSDictionary *)method_3:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"设置获取UIView的属性clipsToBounds",
            @"title": @"@property(nonatomic)                 BOOL              clipsToBounds;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectViewViewRendering_property_clipsToBounds:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectViewViewRendering_setNeedsDisplayInRect:(TestProjectTableViewParams *)params {
    WS(wSelf);
    return [self createModelSingleArrayWithParams:params title:@"setNeedsDisplayInRect" block:^{
        [wSelf.childView setNeedsDisplayInRect:CGRectMake(0, 0, 30, 40)];
    }];
}

- (NSDictionary *)method_2:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"执行UIView的方法，需要重新绘制部分范围",
            @"title": @"- (void)setNeedsDisplayInRect:(CGRect)rect;",
            @"isDataModelExpand": @(YES),
            @"desc": @"调用此方法会重新调用drawRect:方法",
            @"dataModel": @{
                @"childItems": [self TestProjectViewViewRendering_setNeedsDisplayInRect:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectViewViewRendering_setNeedsDisplay:(TestProjectTableViewParams *)params {
    WS(wSelf);
    return [self createModelSingleArrayWithParams:params title:@"setNeedsDisplay" block:^{
        [wSelf.childView setNeedsDisplay];
    }];
}

- (NSDictionary *)method_1:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"执行UIView的方法，需要重新绘制",
            @"title": @"- (void)setNeedsDisplay",
            @"isDataModelExpand": @(YES),
            @"desc": @"调用此方法会重新调用drawRect:方法",
            @"dataModel": @{
                @"childItems": [self TestProjectViewViewRendering_setNeedsDisplay:params],
            }
        },
    };
}

@end
