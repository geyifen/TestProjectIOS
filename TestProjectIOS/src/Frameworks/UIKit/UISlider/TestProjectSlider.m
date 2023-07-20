//
//  TestProjectSlider.m
//  TestProjectIOS
//
//  Created by zjrcumac on 2023/7/4.
//

#import "TestProjectSlider.h"

@interface TestProjectChildSlider : UISlider

@end

@implementation TestProjectChildSlider

- (CGRect)minimumValueImageRectForBounds:(CGRect)bounds {
    CGRect resRect = [super minimumValueImageRectForBounds:bounds];
    NSLog(@"%@ bounds:%@ resRect:%@", NSStringFromSelector(_cmd), NSStringFromCGRect(bounds), NSStringFromCGRect(resRect));
    return resRect;
}

- (CGRect)maximumValueImageRectForBounds:(CGRect)bounds {
    CGRect resRect = [super maximumValueImageRectForBounds:bounds];
    NSLog(@"%@ bounds:%@ resRect:%@", NSStringFromSelector(_cmd), NSStringFromCGRect(bounds), NSStringFromCGRect(resRect));
    return resRect;
}

- (CGRect)trackRectForBounds:(CGRect)bounds {
    CGRect resRect = [super trackRectForBounds:bounds];
    NSLog(@"%@ bounds:%@ resRect:%@", NSStringFromSelector(_cmd), NSStringFromCGRect(bounds), NSStringFromCGRect(resRect));
    return resRect;
}

- (CGRect)thumbRectForBounds:(CGRect)bounds trackRect:(CGRect)rect value:(float)value {
    CGRect resRect = [super thumbRectForBounds:bounds trackRect:rect value:value];
    NSLog(@"%@ bounds:%@ trackRect:%@ value:%f resRect:%@", NSStringFromSelector(_cmd), NSStringFromCGRect(bounds), NSStringFromCGRect(rect), value, NSStringFromCGRect(resRect));
    return resRect;
}

@end

@interface TestProjectSlider ()

@property (nonatomic, strong) TestProjectChildSlider *childSlider;

@end

@implementation TestProjectSlider

- (instancetype)initCreate {
    if (self = [super initCreate]) {
        [self.tableView testproject_updateConstraints:^(TestProjectViewConstrainMake * _Nonnull make) {
            make.height.equal(self).offset(-100);
        }];
        self.childSlider.hidden = NO;
    }
    return self;
}

- (TestProjectChildSlider *)childSlider {
    if (!_childSlider) {
        _childSlider = [[TestProjectChildSlider alloc] init];
        [self addSubview:_childSlider];
        [_childSlider testproject_makeConstraints:^(TestProjectViewConstrainMake * _Nonnull make) {
            make.top.leading.equal(self);
            make.height.equal(@30);
            make.width.equal(@100);
        }];
    }
    return _childSlider;
}

- (id)setPropertyValueObject {
    return self.childSlider;
}

- (NSDictionary *)method_1:(NSInteger)index {
    return @{
        @"dataModel": @{
            @"abstract": @"设置获取UISlider的属性value",
            @"title": @"@property(nonatomic) float value;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectSlider_property_value:index],
            }
        },
    };
}

- (NSMutableArray *)TestProjectSlider_property_value:(NSInteger)index {
    return [self createModelSingleArrayWithIndex:index
                                        property:@"value"
                                           value:nil
                                       operation:TestProjectCreateModelGetBeforeClickGet
                                           block:nil];
}

- (NSDictionary *)method_2:(NSInteger)index {
    return @{
        @"dataModel": @{
            @"abstract": @"设置获取UISlider的属性minimumValue",
            @"title": @"@property(nonatomic) float minimumValue;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectSlider_property_minimumValue:index],
            }
        },
    };
}

- (NSMutableArray *)TestProjectSlider_property_minimumValue:(NSInteger)index {
    return [self createModelSingleArrayWithIndex:index
                                        property:@"minimumValue"
                                           value:@1
                                       operation:TestProjectCreateModelGetBeforeClickSet
                                           block:nil];
}

- (NSDictionary *)method_3:(NSInteger)index {
    return @{
        @"dataModel": @{
            @"abstract": @"设置获取UISlider的属性maximumValue",
            @"title": @"@property(nonatomic) float maximumValue;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectSlider_property_maximumValue:index],
            }
        },
    };
}

- (NSMutableArray *)TestProjectSlider_property_maximumValue:(NSInteger)index {
    return [self createModelSingleArrayWithIndex:index
                                        property:@"maximumValue"
                                           value:@11
                                       operation:TestProjectCreateModelGetBeforeClickSet
                                           block:nil];
}

- (NSDictionary *)method_4:(NSInteger)index {
    return @{
        @"dataModel": @{
            @"abstract": @"设置获取UISlider的属性minimumValueImage",
            @"title": @"@property(nullable, nonatomic,strong) UIImage *minimumValueImage;",
            @"isDataModelExpand": @(YES),
            @"desc": @"优先级比minimumTrackTintColor高，设置后会覆盖minimumTrackTintColor",
            @"dataModel": @{
                @"childItems": [self TestProjectSlider_property_minimumValueImage:index],
            }
        },
    };
}

- (NSMutableArray *)TestProjectSlider_property_minimumValueImage:(NSInteger)index {
    return [self createModelSingleArrayWithIndex:index
                                        property:@"minimumValueImage"
                                           value:[UIImage imageNamed:@"lyf_2"]
                                       operation:TestProjectCreateModelGetBeforeClickSet
                                           block:nil];
}

- (NSDictionary *)method_5:(NSInteger)index {
    return @{
        @"dataModel": @{
            @"abstract": @"设置获取UISlider的属性maximumValueImage",
            @"title": @"@property(nullable, nonatomic,strong) UIImage *maximumValueImage;",
            @"isDataModelExpand": @(YES),
            @"desc": @"优先级比maximumTrackTintColor高，设置后会覆盖maximumTrackTintColor",
            @"dataModel": @{
                @"childItems": [self TestProjectSlider_property_maximumValueImage:index],
            }
        },
    };
}

- (NSMutableArray *)TestProjectSlider_property_maximumValueImage:(NSInteger)index {
    return [self createModelSingleArrayWithIndex:index
                                        property:@"maximumValueImage"
                                           value:[UIImage imageNamed:@"lyf_2"]
                                       operation:TestProjectCreateModelGetBeforeClickSet
                                           block:nil];
}

- (NSDictionary *)method_6:(NSInteger)index {
    return @{
        @"dataModel": @{
            @"abstract": @"设置获取UISlider的属性continuous",
            @"title": @"@property(nonatomic,getter=isContinuous) BOOL continuous;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectSlider_property_continuous:index],
            }
        },
    };
}

- (NSMutableArray *)TestProjectSlider_property_continuous:(NSInteger)index {
    NSArray *arr = @[@(YES), @(NO)];
    for (NSNumber *num in arr) {
        [self createModelWithIndex:index
                          property:@"continuous"
                             value:num
                         operation:TestProjectCreateModelGetBeforeClickSet
                             block:nil];
    }
    return self.dataMutArr;
}

- (NSDictionary *)method_7:(NSInteger)index {
    return @{
        @"dataModel": @{
            @"abstract": @"设置获取UISlider的属性minimumTrackTintColor",
            @"title": @"@property(nullable, nonatomic,strong) UIColor *minimumTrackTintColor API_AVAILABLE(ios(5.0)) UI_APPEARANCE_SELECTOR;",
            @"isDataModelExpand": @(YES),
            @"desc": @"优先级比minimumValueImage低，设置minimumValueImage后会被覆盖",
            @"dataModel": @{
                @"childItems": [self TestProjectSlider_property_minimumTrackTintColor:index],
            }
        },
    };
}

- (NSMutableArray *)TestProjectSlider_property_minimumTrackTintColor:(NSInteger)index {
    return [self createModelSingleArrayWithIndex:index
                                        property:@"minimumTrackTintColor"
                                           value:[UIColor purpleColor]
                                       operation:TestProjectCreateModelGetBeforeClickSet
                                           block:nil];
}

- (NSDictionary *)method_8:(NSInteger)index {
    return @{
        @"dataModel": @{
            @"abstract": @"设置获取UISlider的属性maximumTrackTintColor",
            @"title": @"@property(nullable, nonatomic,strong) UIColor *maximumTrackTintColor API_AVAILABLE(ios(5.0)) UI_APPEARANCE_SELECTOR;",
            @"isDataModelExpand": @(YES),
            @"desc": @"优先级比maximumValueImage低，设置maximumValueImage后会被覆盖",
            @"dataModel": @{
                @"childItems": [self TestProjectSlider_property_maximumTrackTintColor:index],
            }
        },
    };
}

- (NSMutableArray *)TestProjectSlider_property_maximumTrackTintColor:(NSInteger)index {
    return [self createModelSingleArrayWithIndex:index
                                        property:@"maximumTrackTintColor"
                                           value:[UIColor yellowColor]
                                       operation:TestProjectCreateModelGetBeforeClickSet
                                           block:nil];
}

- (NSDictionary *)method_9:(NSInteger)index {
    return @{
        @"dataModel": @{
            @"abstract": @"设置获取UISlider的属性thumbTintColor",
            @"title": @"@property(nullable, nonatomic,strong) UIColor *thumbTintColor API_AVAILABLE(ios(5.0)) UI_APPEARANCE_SELECTOR;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectSlider_property_thumbTintColor:index],
            }
        },
    };
}

- (NSMutableArray *)TestProjectSlider_property_thumbTintColor:(NSInteger)index {
    return [self createModelSingleArrayWithIndex:index
                                        property:@"thumbTintColor"
                                           value:[UIColor redColor]
                                       operation:TestProjectCreateModelGetBeforeClickSet
                                           block:nil];
}

- (NSDictionary *)method_10:(NSInteger)index {
    return @{
        @"dataModel": @{
            @"abstract": @"执行UISlider的方法setValue:animated:",
            @"title": @"- (void)setValue:(float)value animated:(BOOL)animated;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectSlider_setValue_animated:index],
            }
        },
    };
}

- (NSMutableArray *)TestProjectSlider_setValue_animated:(NSInteger)index {
    WS(wSelf);
    NSArray *arr = @[@0, @0.25, @0.5, @0.75, @1];
    for (NSNumber *num in arr) {
        CGFloat value = [num floatValue];
        [self createModelWithIndex:index
                             title:[NSString stringWithFormat:@"设置的属性值是:%f", value]
                             block:^{
            [wSelf.childSlider setValue:value animated:YES];
        }];
    }
    return self.dataMutArr;
}

- (NSArray *)getControlStateList {
    NSArray *arr = @[
        @{
            @"title": [NSString stringWithFormat:@"设置的属性值是UIControlStateNormal(%ld)，这个是默认正常状态", UIControlStateNormal],
            @"value": @(UIControlStateNormal),
        },
        @{
            @"title": [NSString stringWithFormat:@"设置的属性值是UIControlStateHighlighted(%ld)，这个是高光状态", UIControlStateHighlighted],
            @"value": @(UIControlStateHighlighted),
        },
        @{
            @"title": [NSString stringWithFormat:@"设置的属性值是UIControlStateDisabled(%ld)，这个是被禁用的状态状态", UIControlStateDisabled],
            @"value": @(UIControlStateDisabled),
        },
        @{
            @"title": [NSString stringWithFormat:@"设置的属性值是UIControlStateSelected(%ld)，这个是选择的状态状态", UIControlStateSelected],
            @"value": @(UIControlStateSelected),
        },
        @{
            @"title": [NSString stringWithFormat:@"设置的属性值是UIControlStateFocused(%ld)，暂时不知道什么状态", UIControlStateFocused],
            @"value": @(UIControlStateFocused),
        },
        @{
            @"title": [NSString stringWithFormat:@"设置的属性值是UIControlStateApplication(%ld)，暂时不知道什么状态", UIControlStateApplication],
            @"value": @(UIControlStateApplication),
        },
        @{
            @"title": [NSString stringWithFormat:@"设置的属性值是UIControlStateApplication(%ld)，暂时不知道什么状态", UIControlStateApplication],
            @"value": @(UIControlStateApplication),
        },
    ];
    return arr;
}

- (NSDictionary *)method_11:(NSInteger)index {
    return @{
        @"dataModel": @{
            @"abstract": @"执行UISlider的方法setThumbImage:forState:",
            @"title": @"- (void)setThumbImage:(nullable UIImage *)image forState:(UIControlState)state;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectSlider_setThumbImage_forState:index],
            }
        },
    };
}

- (NSMutableArray *)TestProjectSlider_setThumbImage_forState:(NSInteger)index {
    WS(wSelf);
    NSArray *arr = [self getControlStateList];
    for (NSDictionary *dic in arr) {
        NSString *title = dic[@"title"];
        UIControlState state = [dic[@"value"] integerValue];
        [self createModelWithIndex:index
                             title:title
                             block:^{
            [wSelf.childSlider setThumbImage:[UIImage imageNamed:@"lyf_2"] forState:state];
        }];
    }
    return self.dataMutArr;
}

- (NSDictionary *)method_12:(NSInteger)index {
    return @{
        @"dataModel": @{
            @"abstract": @"执行UISlider的方法setMinimumTrackImage:forState:",
            @"title": @"- (void)setMinimumTrackImage:(nullable UIImage *)image forState:(UIControlState)state;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectSlider_setMinimumTrackImage_forState:index],
            }
        },
    };
}

- (NSMutableArray *)TestProjectSlider_setMinimumTrackImage_forState:(NSInteger)index {
    WS(wSelf);
    NSArray *arr = [self getControlStateList];
    for (NSDictionary *dic in arr) {
        NSString *title = dic[@"title"];
        UIControlState state = [dic[@"value"] integerValue];
        [self createModelWithIndex:index
                             title:title
                             block:^{
            [wSelf.childSlider setMinimumTrackImage:[UIImage imageNamed:@"lyf_2"] forState:state];
        }];
    }
    return self.dataMutArr;
}

- (NSDictionary *)method_13:(NSInteger)index {
    return @{
        @"dataModel": @{
            @"abstract": @"执行UISlider的方法setMaximumTrackImage:forState:",
            @"title": @"- (void)setMaximumTrackImage:(nullable UIImage *)image forState:(UIControlState)state;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectSlider_setMaximumTrackImage_forState:index],
            }
        },
    };
}

- (NSMutableArray *)TestProjectSlider_setMaximumTrackImage_forState:(NSInteger)index {
    WS(wSelf);
    NSArray *arr = [self getControlStateList];
    for (NSDictionary *dic in arr) {
        NSString *title = dic[@"title"];
        UIControlState state = [dic[@"value"] integerValue];
        [self createModelWithIndex:index
                             title:title
                             block:^{
            [wSelf.childSlider setMaximumTrackImage:[UIImage imageNamed:@"lyf_2"] forState:state];
        }];
    }
    return self.dataMutArr;
}

- (NSDictionary *)method_14:(NSInteger)index {
    return @{
        @"dataModel": @{
            @"abstract": @"执行UISlider的方法thumbImageForState:",
            @"title": @"- (nullable UIImage *)thumbImageForState:(UIControlState)state;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectSlider_thumbImageForState:index],
            }
        },
    };
}

- (NSMutableArray *)TestProjectSlider_thumbImageForState:(NSInteger)index {
    WS(wSelf);
    NSArray *arr = [self getControlStateList];
    for (NSDictionary *dic in arr) {
        NSString *title = dic[@"title"];
        UIControlState state = [dic[@"value"] integerValue];
        [self createModelWithIndex:index title:title methodBlock:^NSString * _Nonnull{
            UIImage *image = [wSelf.childSlider thumbImageForState:state];
            return [NSString stringWithFormat:@"%@", image];
        }];
    }
    return self.dataMutArr;
}

- (NSDictionary *)method_15:(NSInteger)index {
    return @{
        @"dataModel": @{
            @"abstract": @"执行UISlider的方法minimumTrackImageForState:",
            @"title": @"- (nullable UIImage *)minimumTrackImageForState:(UIControlState)state;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectSlider_minimumTrackImageForState:index],
            }
        },
    };
}

- (NSMutableArray *)TestProjectSlider_minimumTrackImageForState:(NSInteger)index {
    WS(wSelf);
    NSArray *arr = [self getControlStateList];
    for (NSDictionary *dic in arr) {
        NSString *title = dic[@"title"];
        UIControlState state = [dic[@"value"] integerValue];
        [self createModelWithIndex:index title:title methodBlock:^NSString * _Nonnull{
            UIImage *image = [wSelf.childSlider minimumTrackImageForState:state];
            return [NSString stringWithFormat:@"%@", image];
        }];
    }
    return self.dataMutArr;
}

- (NSDictionary *)method_16:(NSInteger)index {
    return @{
        @"dataModel": @{
            @"abstract": @"执行UISlider的方法maximumTrackImageForState:",
            @"title": @"- (nullable UIImage *)maximumTrackImageForState:(UIControlState)state;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectSlider_maximumTrackImageForState:index],
            }
        },
    };
}

- (NSMutableArray *)TestProjectSlider_maximumTrackImageForState:(NSInteger)index {
    WS(wSelf);
    NSArray *arr = [self getControlStateList];
    for (NSDictionary *dic in arr) {
        NSString *title = dic[@"title"];
        UIControlState state = [dic[@"value"] integerValue];
        [self createModelWithIndex:index title:title methodBlock:^NSString * _Nonnull{
            UIImage *image = [wSelf.childSlider maximumTrackImageForState:state];
            return [NSString stringWithFormat:@"%@", image];
        }];
    }
    return self.dataMutArr;
}

- (NSDictionary *)method_17:(NSInteger)index {
    return @{
        @"dataModel": @{
            @"abstract": @"获取UISlider的属性currentThumbImage",
            @"title": @"@property(nullable,nonatomic,readonly) UIImage *currentThumbImage;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectSlider_property_currentThumbImage:index],
            }
        },
    };
}

- (NSMutableArray *)TestProjectSlider_property_currentThumbImage:(NSInteger)index {
    return [self createModelSingleArrayWithIndex:index
                                        property:@"currentThumbImage"
                                           value:nil
                                       operation:TestProjectCreateModelGetBeforeClickGet
                                           block:nil];
}

- (NSDictionary *)method_18:(NSInteger)index {
    return @{
        @"dataModel": @{
            @"abstract": @"获取UISlider的属性currentMinimumTrackImage",
            @"title": @"@property(nullable,nonatomic,readonly) UIImage *currentMinimumTrackImage;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectSlider_property_currentMinimumTrackImage:index],
            }
        },
    };
}

- (NSMutableArray *)TestProjectSlider_property_currentMinimumTrackImage:(NSInteger)index {
    return [self createModelSingleArrayWithIndex:index
                                        property:@"currentMinimumTrackImage"
                                           value:nil
                                       operation:TestProjectCreateModelGetBeforeClickGet
                                           block:nil];
}

- (NSDictionary *)method_19:(NSInteger)index {
    return @{
        @"dataModel": @{
            @"abstract": @"获取UISlider的属性currentMaximumTrackImage",
            @"title": @"@property(nullable,nonatomic,readonly) UIImage *currentMaximumTrackImage;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectSlider_property_currentMaximumTrackImage:index],
            }
        },
    };
}

- (NSMutableArray *)TestProjectSlider_property_currentMaximumTrackImage:(NSInteger)index {
    return [self createModelSingleArrayWithIndex:index
                                        property:@"currentMaximumTrackImage"
                                           value:nil
                                       operation:TestProjectCreateModelGetBeforeClickGet
                                           block:nil];
}

@end
