//
//  TestProjectUIColor.m
//  TestProjectIOS
//
//  Created by liwenfan on 2023/2/22.
//

#import "TestProjectUIColor.h"

#import "TestProjectUIColorCell.h"
#import <CoreImage/CoreImage.h>

@implementation TestProjectUIColor

- (Class)createTableModelClass:(TestProjectTableViewParams *)params {
    return TestProjectUIColorModel.class;
}

- (NSMutableArray *)TestProjectColor_property_CIColor:(TestProjectTableViewParams *)params {
    id data = nil;
    @try {
        data = [UIColor yellowColor].CIColor;
    } @catch (NSException *exception) {
        data = exception;
    } @finally {
        
    }

    [self createModelWithParams:params
                         title:[NSString stringWithFormat:@"%@", data]
                 modelKeyValue:@{@"backgroundColor": [UIColor yellowColor]}
                         block:nil];

    return self.dataMutArr;
}

- (NSDictionary *)method_35:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"获取颜色的CIColor",
            @"title": @"@property(nonatomic,readonly) CIColor   *CIColor API_AVAILABLE(ios(5.0));",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectColor_property_CIColor:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectColor_property_CGColorRef:(TestProjectTableViewParams *)params {
    CGColorRef cgColorRef = [UIColor yellowColor].CGColor;
    [self createModelWithParams:params
                         title:[NSString stringWithFormat:@"%@", cgColorRef]
                 modelKeyValue:@{@"backgroundColor": [UIColor yellowColor]}
                         block:nil];

    return self.dataMutArr;
}

- (NSDictionary *)method_34:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"获取颜色的CGColor",
            @"title": @"@property(nonatomic,readonly) CGColorRef CGColor;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectColor_property_CGColorRef:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectColor_colorWithAlphaComponent:(TestProjectTableViewParams *)params {
    [self createModelWithParams:params
                         title:@"设置颜色的alpha"
                 modelKeyValue:@{@"backgroundColor": [[UIColor yellowColor] colorWithAlphaComponent:0.2]}
                         block:nil];

    return self.dataMutArr;
}

- (NSDictionary *)method_33:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"设置颜色的alpha",
            @"title": @"- (UIColor *)colorWithAlphaComponent:(CGFloat)alpha;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectColor_colorWithAlphaComponent:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectColor_getRed_green_blue_alpha:(TestProjectTableViewParams *)params {
    CGFloat red, green, blue, alpha;
    BOOL ret = [[UIColor yellowColor] getRed:&red green:&green blue:&blue alpha:&alpha];
    NSString *text = [NSString stringWithFormat:@"[[UIColor yellowColor:index] getRed:&red green:&green blue:&blue alpha:&alpha]: ret:%u red:%f green:%f blue:%f alpha:%f", ret, red, green, blue, alpha];
    [self createModelWithParams:params
                         title:text
                 modelKeyValue:@{@"backgroundColor": [UIColor whiteColor]}
                         block:nil];

    return self.dataMutArr;
}

- (NSDictionary *)method_32:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"得到UIColor的red、green、blue、alpha",
            @"title": @"- (BOOL)getRed:(nullable CGFloat *)red green:(nullable CGFloat *)green blue:(nullable CGFloat *)blue alpha:(nullable CGFloat *)alpha API_AVAILABLE(ios(5.0));",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectColor_getRed_green_blue_alpha:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectColor_getHue_saturation_brightness_alpha:(TestProjectTableViewParams *)params {
    CGFloat hue, saturation, brightness, alpha;
    BOOL ret = [[UIColor yellowColor] getHue:&hue saturation:&saturation brightness:&brightness alpha:&alpha];
    NSString *text = [NSString stringWithFormat:@"[[UIColor yellowColor:index] getHue:&hue saturation:&saturation brightness:&brightness alpha:&alpha]: ret:%u hue:%f saturation:%f brightness:%f alpha:%f", ret, hue, saturation, brightness, alpha];
    [self createModelWithParams:params
                         title:text
                 modelKeyValue:@{@"backgroundColor": [UIColor whiteColor]}
                         block:nil];

    return self.dataMutArr;
}

- (NSDictionary *)method_31:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"得到UIColor的hue、saturation、brightness、alpha",
            @"title": @"- (BOOL)getHue:(nullable CGFloat *)hue saturation:(nullable CGFloat *)saturation brightness:(nullable CGFloat *)brightness alpha:(nullable CGFloat *)alpha API_AVAILABLE(ios(5.0));",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectColor_getHue_saturation_brightness_alpha:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectColor_getWhite_alpha:(TestProjectTableViewParams *)params {
    CGFloat white, alpha;
    BOOL ret = [[UIColor yellowColor] getWhite:&white alpha:&alpha];
    NSString *text = [NSString stringWithFormat:@"[[UIColor yellowColor:index] getWhite:&white alpha:&alpha]: ret:%u white:%f alpha:%f", ret, white, alpha];
    [self createModelWithParams:params
                         title:text
                 modelKeyValue:@{@"backgroundColor": [UIColor yellowColor]}
                         block:nil];

    return self.dataMutArr;
}

- (NSDictionary *)method_30:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"得到UIColor的white和alpha",
            @"title": @"- (BOOL)getWhite:(nullable CGFloat *)white alpha:(nullable CGFloat *)alpha API_AVAILABLE(ios(5.0));",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectColor_getWhite_alpha:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectColor_class_property_clearColor:(TestProjectTableViewParams *)params {
    [self createModelWithParams:params
                         title:@"[UIColor clearColor]"
                 modelKeyValue:@{@"backgroundColor": [UIColor clearColor]}
                         block:nil];

    return self.dataMutArr;
}

- (NSDictionary *)method_29:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"执行UIColor的class属性, 通过[UIColor clearColor]绘制颜色, 0.0 white, 0.0",
            @"title": @"@property(class, nonatomic, readonly) UIColor *clearColor;      // 0.0 white, 0.0 alpha",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectColor_class_property_clearColor:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectColor_class_property_brownColor:(TestProjectTableViewParams *)params {
    [self createModelWithParams:params
                         title:@"[UIColor brownColor]"
                 modelKeyValue:@{@"backgroundColor": [UIColor brownColor]}
                         block:nil];

    return self.dataMutArr;
}

- (NSDictionary *)method_28:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"执行UIColor的class属性, 通过[UIColor brownColor]绘制颜色, 0.6, 0.4, 0.2 RGB",
            @"title": @"@property(class, nonatomic, readonly) UIColor *brownColor;      // 0.6, 0.4, 0.2 RGB",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectColor_class_property_brownColor:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectColor_class_property_purpleColor:(TestProjectTableViewParams *)params {
    [self createModelWithParams:params
                         title:@"[UIColor purpleColor]"
                 modelKeyValue:@{@"backgroundColor": [UIColor purpleColor]}
                         block:nil];

    return self.dataMutArr;
}

- (NSDictionary *)method_27:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"执行UIColor的class属性, 通过[UIColor purpleColor]绘制颜色, 0.5, 0.0, 0.5 RGB",
            @"title": @"@property(class, nonatomic, readonly) UIColor *purpleColor;     // 0.5, 0.0, 0.5 RGB",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectColor_class_property_purpleColor:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectColor_class_property_orangeColor:(TestProjectTableViewParams *)params {
    [self createModelWithParams:params
                         title:@"[UIColor orangeColor]"
                 modelKeyValue:@{@"backgroundColor": [UIColor orangeColor]}
                         block:nil];

    return self.dataMutArr;
}

- (NSDictionary *)method_26:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"执行UIColor的class属性, 通过[UIColor orangeColor]绘制颜色, 1.0, 0.5, 0.0 RGB",
            @"title": @"@property(class, nonatomic, readonly) UIColor *orangeColor;     // 1.0, 0.5, 0.0 RGB",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectColor_class_property_orangeColor:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectColor_class_property_magentaColor:(TestProjectTableViewParams *)params {
    [self createModelWithParams:params
                         title:@"[UIColor magentaColor]"
                 modelKeyValue:@{@"backgroundColor": [UIColor magentaColor]}
                         block:nil];

    return self.dataMutArr;
}

- (NSDictionary *)method_25:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"执行UIColor的class属性, 通过[UIColor magentaColor]绘制颜色, 1.0, 0.0, 1.0 RGB",
            @"title": @"@property(class, nonatomic, readonly) UIColor *magentaColor;    // 1.0, 0.0, 1.0 RGB",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectColor_class_property_magentaColor:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectColor_class_property_yellowColor:(TestProjectTableViewParams *)params {
    [self createModelWithParams:params
                         title:@"[UIColor yellowColor]"
                 modelKeyValue:@{@"backgroundColor": [UIColor yellowColor]}
                         block:nil];

    return self.dataMutArr;
}

- (NSDictionary *)method_24:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"执行UIColor的class属性, 通过[UIColor yellowColor]绘制颜色, 1.0, 0.0, 1.0 RGB",
            @"title": @"@property(class, nonatomic, readonly) UIColor *yellowColor;     // 1.0, 1.0, 0.0 RGB",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectColor_class_property_yellowColor:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectColor_class_property_cyanColor:(TestProjectTableViewParams *)params {
    [self createModelWithParams:params
                         title:@"[UIColor cyanColor]"
                 modelKeyValue:@{@"backgroundColor": [UIColor cyanColor]}
                         block:nil];

    return self.dataMutArr;
}

- (NSDictionary *)method_23:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"执行UIColor的class属性, 通过[UIColor cyanColor]绘制颜色, 0.0, 1.0, 1.0 RGB",
            @"title": @"@property(class, nonatomic, readonly) UIColor *cyanColor;       // 0.0, 1.0, 1.0 RGB",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectColor_class_property_cyanColor:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectColor_class_property_blueColor:(TestProjectTableViewParams *)params {
    [self createModelWithParams:params
                         title:@"[UIColor blueColor]"
                 modelKeyValue:@{@"backgroundColor": [UIColor blueColor]}
                         block:nil];
    return self.dataMutArr;
}

- (NSDictionary *)method_22:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"执行UIColor的class属性, 通过[UIColor blueColor]绘制颜色, 0.0, 0.0, 1.0 RGB",
            @"title": @"@property(class, nonatomic, readonly) UIColor *blueColor;       // 0.0, 0.0, 1.0 RGB",
            @"desc": @"@param white:颜色1->0 从白色到黑色 \n@param alpha:颜色的透明度1->0 从显示到不显示",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectColor_class_property_blueColor:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectColor_class_property_greenColor:(TestProjectTableViewParams *)params {
    [self createModelWithParams:params
                         title:@"[UIColor greenColor]"
                 modelKeyValue:@{@"backgroundColor": [UIColor greenColor]}
                         block:nil];

    return self.dataMutArr;
}

- (NSDictionary *)method_21:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"执行UIColor的class属性, 通过[UIColor greenColor]绘制颜色, 0.0, 1.0, 0.0 RGB",
            @"title": @"@property(class, nonatomic, readonly) UIColor *greenColor;      // 0.0, 1.0, 0.0 RGB",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectColor_class_property_greenColor:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectColor_class_property_redColor:(TestProjectTableViewParams *)params {
    [self createModelWithParams:params
                         title:@"[UIColor redColor]"
                 modelKeyValue:@{@"backgroundColor": [UIColor redColor]}
                         block:nil];

    return self.dataMutArr;
}

- (NSDictionary *)method_20:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"执行UIColor的class属性, 通过[UIColor redColor]绘制颜色, 1.0, 0.0, 0.0 RGB",
            @"title": @"@property(class, nonatomic, readonly) UIColor *redColor;        // 1.0, 0.0, 0.0 RGB",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectColor_class_property_redColor:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectColor_class_property_grayColor:(TestProjectTableViewParams *)params {
    [self createModelWithParams:params
                         title:@"[UIColor grayColor]"
                 modelKeyValue:@{@"backgroundColor": [UIColor grayColor]}
                         block:nil];

    return self.dataMutArr;
}

- (NSDictionary *)method_19:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"执行UIColor的class属性, 通过[UIColor GrayColor]绘制颜色, 0.5 white",
            @"title": @"@property(class, nonatomic, readonly) UIColor *grayColor;       // 0.5 white",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectColor_class_property_grayColor:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectColor_class_property_whiteColor:(TestProjectTableViewParams *)params {
    [self createModelWithParams:params
                         title:@"[UIColor whiteColor]"
                 modelKeyValue:@{@"backgroundColor": [UIColor whiteColor]}
                         block:nil];

    return self.dataMutArr;
}

- (NSDictionary *)method_18:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"执行UIColor的class属性, 通过[UIColor whiteColor]绘制颜色, 1.0 white",
            @"title": @"@property(class, nonatomic, readonly) UIColor *whiteColor;      // 1.0 white",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectColor_class_property_whiteColor:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectColor_class_property_lightGrayColor:(TestProjectTableViewParams *)params {
    [self createModelWithParams:params
                         title:@"[UIColor lightGrayColor]"
                 modelKeyValue:@{@"backgroundColor": [UIColor lightGrayColor]}
                         block:nil];

    return self.dataMutArr;
}

- (NSDictionary *)method_17:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"执行UIColor的class属性, 通过[UIColor lightGrayColor]绘制颜色, 0.667 white",
            @"title": @"@property(class, nonatomic, readonly) UIColor *lightGrayColor;  // 0.667 white",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectColor_class_property_lightGrayColor:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectColor_class_property_darkGrayColor:(TestProjectTableViewParams *)params {
    [self createModelWithParams:params
                         title:@"[UIColor darkGrayColor]"
                 modelKeyValue:@{@"backgroundColor": [UIColor darkGrayColor]}
                         block:nil];

    return self.dataMutArr;
}

- (NSDictionary *)method_16:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"执行UIColor的class属性, 通过[UIColor darkGrayColor]绘制颜色, 0.333 white",
            @"title": @"@property(class, nonatomic, readonly) UIColor *darkGrayColor;   // 0.333 white",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectColor_class_property_darkGrayColor:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectColor_class_property_blackColor:(TestProjectTableViewParams *)params {
    [self createModelWithParams:params
                         title:@"[UIColor blackColor]"
                 modelKeyValue:@{@"backgroundColor": [UIColor blackColor]}
                         block:nil];

    return self.dataMutArr;
}

- (NSDictionary *)method_15:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"执行UIColor的class属性, 通过[UIColor blackColor]绘制颜色, 0.0 white",
            @"title": @"@property(class, nonatomic, readonly) UIColor *blackColor;      // 0.0 white",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectColor_class_property_blackColor:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectColor_alloc_initWithCIColor:(TestProjectTableViewParams *)params {
    CIColor *ciColor = [CIColor colorWithRed:0.5 green:0.5 blue:0.5];
    [self createModelWithParams:params
                         title:@"ciColor red:0.5 green:0.5 blue:0.5 alpha:1.0"
                 modelKeyValue:@{@"backgroundColor": [[UIColor alloc] initWithCIColor:ciColor]}
                         block:nil];

    return self.dataMutArr;
}

- (NSDictionary *)method_14:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"通过init方法 CIColor绘制颜色",
            @"title": @"- (UIColor *)initWithCIColor:(CIColor *)ciColor API_AVAILABLE(ios(5.0));",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectColor_alloc_initWithCIColor:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectColor_alloc_initWithPatternImage:(TestProjectTableViewParams *)params {
    UIImage *image = [UIImage imageNamed:@"lyf_1"];
    [self createModelWithParams:params
                         title:@"imageNamed:@\"lyf_1\""
                 modelKeyValue:@{@"backgroundColor": [[UIColor alloc] initWithPatternImage:image]}
                         block:nil];
    return self.dataMutArr;
}

- (NSDictionary *)method_13:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"通过init方法 UIImage绘制颜色",
            @"title": @"- (UIColor *)initWithPatternImage:(UIImage*)image;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectColor_alloc_initWithPatternImage:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectColor_alloc_initWithCGColor:(TestProjectTableViewParams *)params {
    CGColorRef colorRef = CGColorCreateSRGB(0.5, 0.5, 0.5, 0.5);
    [self createModelWithParams:params
                         title:@"colorRef red:0.5 green:0.5 blue:0.5 alpha:1.0"
                 modelKeyValue:@{@"backgroundColor": [[UIColor alloc] initWithCGColor:colorRef]}
                         block:nil];
    return self.dataMutArr;
}

- (NSDictionary *)method_12:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"通过init方法 CGColor绘制颜色",
            @"title": @"- (UIColor *)initWithCGColor:(CGColorRef)cgColor;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectColor_alloc_initWithCGColor:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectColor_alloc_initWithDisplayP3Red_green_blue_alpha:(TestProjectTableViewParams *)params {
    NSArray *arr = @[
        @{
            @"title": @"displayP3Red的比较、green(1.0)相同、blue(1.0)相同、alpha(1.0)相同--->",
            @"itemChilds": @[
                @{
                    @"displayP3Red": @"1.0",
                    @"green": @"1.0",
                    @"blue": @"1.0",
                    @"alpha": @"1.0",
                },
                @{
                    @"displayP3Red": @"0.5",
                    @"green": @"1.0",
                    @"blue": @"1.0",
                    @"alpha": @"1.0",
                },
                @{
                    @"displayP3Red": @"0.0",
                    @"green": @"1.0",
                    @"blue": @"1.0",
                    @"alpha": @"1.0",
                },
            ],
        },
        @{
            @"title": @"displayP3Red(1.0)相同、green的比较、blue(1.0)相同、alpha(1.0)相同--->",
            @"itemChilds": @[
                @{
                    @"displayP3Red": @"1.0",
                    @"green": @"1.0",
                    @"blue": @"1.0",
                    @"alpha": @"1.0",
                },
                @{
                    @"displayP3Red": @"1.0",
                    @"green": @"0.5",
                    @"blue": @"1.0",
                    @"alpha": @"1.0",
                },
                @{
                    @"displayP3Red": @"1.0",
                    @"green": @"0.0",
                    @"blue": @"1.0",
                    @"alpha": @"1.0",
                },
            ],
        },
        @{
            @"title": @"displayP3Red(1.0)相同、green(1.0)相同、blue的比较、alpha(1.0)相同--->",
            @"itemChilds": @[
                @{
                    @"displayP3Red": @"1.0",
                    @"green": @"1.0",
                    @"blue": @"1.0",
                    @"alpha": @"1.0",
                },
                @{
                    @"displayP3Red": @"1.0",
                    @"green": @"1.0",
                    @"blue": @"0.5",
                    @"alpha": @"1.0",
                },
                @{
                    @"displayP3Red": @"1.0",
                    @"green": @"1.0",
                    @"blue": @"0",
                    @"alpha": @"1.0",
                },
            ],
        },
        @{
            @"title": @"displayP3Red(1.0)相同、green(1.0)相同、blue(1.0)相同、alpha的比较--->",
            @"itemChilds": @[
                @{
                    @"displayP3Red": @"1.0",
                    @"green": @"1.0",
                    @"blue": @"1.0",
                    @"alpha": @"1.0",
                },
                @{
                    @"displayP3Red": @"1.0",
                    @"green": @"1.0",
                    @"blue": @"1.0",
                    @"alpha": @"0.5",
                },
                @{
                    @"displayP3Red": @"1.0",
                    @"green": @"1.0",
                    @"blue": @"1.0",
                    @"alpha": @"0",
                },
            ],
        },
    ];
    for (NSDictionary *dic in arr) {
        [self createModelWithParams:params
                              title:dic[@"title"]
                     modelKeyValue:@{@"backgroundColor": [UIColor whiteColor]}
                              block:nil];
        NSArray *itemChilds = dic[@"itemChilds"];
        for (NSDictionary *subDic in itemChilds) {
            NSString *displayP3Red = subDic[@"displayP3Red"];
            NSString *green = subDic[@"green"];
            NSString *blue = subDic[@"blue"];
            NSString *alpha = subDic[@"alpha"];
            UIColor *color = [[UIColor alloc] initWithDisplayP3Red:[displayP3Red floatValue] green:[green floatValue] blue:[blue floatValue] alpha:[alpha floatValue]];
            NSString *text = [NSString stringWithFormat:@"displayP3Red:%@ green:%@ blue:%@ alpha:%@", displayP3Red, green, blue, alpha];
            [self createModelWithParams:params
                                  title:text
                         modelKeyValue:@{@"backgroundColor": color}
                                  block:nil];
        }
    }
    return self.dataMutArr;
}

- (NSDictionary *)method_11:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"10以后才可以用, init方法，在模拟器的层级中可以看到渐变色，但是真机和模拟器却看不到，可以试试改一下颜色的展示方法",
            @"title": @"- (UIColor *)initWithDisplayP3Red:(CGFloat)displayP3Red green:(CGFloat)green blue:(CGFloat)blue alpha:(CGFloat)alpha API_AVAILABLE(ios(10.0));",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectColor_alloc_initWithDisplayP3Red_green_blue_alpha:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectColor_alloc_initWithRed_green_blue_alpha:(TestProjectTableViewParams *)params {
    NSArray *arr = @[
        @{
            @"title": @"red的比较、green(1.0)相同、blue(1.0)相同、alpha(1.0)相同--->",
            @"itemChilds": @[
                @{
                    @"red": @"1.0",
                    @"green": @"1.0",
                    @"blue": @"1.0",
                    @"alpha": @"1.0",
                },
                @{
                    @"red": @"0.5",
                    @"green": @"1.0",
                    @"blue": @"1.0",
                    @"alpha": @"1.0",
                },
                @{
                    @"red": @"0.0",
                    @"green": @"1.0",
                    @"blue": @"1.0",
                    @"alpha": @"1.0",
                },
            ],
        },
        @{
            @"title": @"red(1.0)相同、green的比较、blue(1.0)相同、alpha(1.0)相同--->",
            @"itemChilds": @[
                @{
                    @"red": @"1.0",
                    @"green": @"1.0",
                    @"blue": @"1.0",
                    @"alpha": @"1.0",
                },
                @{
                    @"red": @"1.0",
                    @"green": @"0.5",
                    @"blue": @"1.0",
                    @"alpha": @"1.0",
                },
                @{
                    @"red": @"1.0",
                    @"green": @"0.0",
                    @"blue": @"1.0",
                    @"alpha": @"1.0",
                },
            ],
        },
        @{
            @"title": @"red(1.0)相同、green(1.0)相同、blue的比较、alpha(1.0)相同--->",
            @"itemChilds": @[
                @{
                    @"red": @"1.0",
                    @"green": @"1.0",
                    @"blue": @"1.0",
                    @"alpha": @"1.0",
                },
                @{
                    @"red": @"1.0",
                    @"green": @"1.0",
                    @"blue": @"0.5",
                    @"alpha": @"1.0",
                },
                @{
                    @"red": @"1.0",
                    @"green": @"1.0",
                    @"blue": @"0",
                    @"alpha": @"1.0",
                },
            ],
        },
        @{
            @"title": @"red(1.0)相同、green(1.0)相同、blue(1.0)相同、alpha的比较--->",
            @"itemChilds": @[
                @{
                    @"red": @"1.0",
                    @"green": @"1.0",
                    @"blue": @"1.0",
                    @"alpha": @"1.0",
                },
                @{
                    @"red": @"1.0",
                    @"green": @"1.0",
                    @"blue": @"1.0",
                    @"alpha": @"0.5",
                },
                @{
                    @"red": @"1.0",
                    @"green": @"1.0",
                    @"blue": @"1.0",
                    @"alpha": @"0",
                },
            ],
        },
    ];
    for (NSDictionary *dic in arr) {
        [self createModelWithParams:params
                              title:dic[@"title"]
                     modelKeyValue:@{@"backgroundColor": [UIColor whiteColor]}
                              block:nil];
        NSArray *itemChilds = dic[@"itemChilds"];
        for (NSDictionary *subDic in itemChilds) {
            NSString *red = subDic[@"red"];
            NSString *green = subDic[@"green"];
            NSString *blue = subDic[@"blue"];
            NSString *alpha = subDic[@"alpha"];
            UIColor *color = [[UIColor alloc] initWithRed:[red floatValue] green:[green floatValue] blue:[blue floatValue] alpha:[alpha floatValue]];
            NSString *text = [NSString stringWithFormat:@"initWithRed:%@ green:%@ blue:%@ alpha:%@", red, green, blue, alpha];
            [self createModelWithParams:params
                                  title:text
                         modelKeyValue:@{@"backgroundColor": color}
                                  block:nil];
        }
    }
    return self.dataMutArr;
}

- (NSDictionary *)method_10:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"init方法 根据给定的rgb来生成颜色",
            @"title": @"- (UIColor *)initWithRed:(CGFloat)red green:(CGFloat)green blue:(CGFloat)blue alpha:(CGFloat)alpha;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectColor_alloc_initWithRed_green_blue_alpha:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectColor_alloc_initWithHue_saturation_brightness_alpha:(TestProjectTableViewParams *)params {
    NSArray *arr = @[
        @{
            @"title": @"hue的比较、saturation(1.0)相同、brightness(1.0)相同、alpha(1.0)相同--->",
            @"itemChilds": @[
                @{
                    @"hue": @"1.0",
                    @"saturation": @"1.0",
                    @"brightness": @"1.0",
                    @"alpha": @"1.0",
                },
                @{
                    @"hue": @"0.5",
                    @"saturation": @"1.0",
                    @"brightness": @"1.0",
                    @"alpha": @"1.0",
                },
                @{
                    @"hue": @"0.0",
                    @"saturation": @"1.0",
                    @"brightness": @"1.0",
                    @"alpha": @"1.0",
                },
            ],
        },
        @{
            @"title": @"hue(1.0)相同、saturation的比较、brightness(1.0)相同、alpha(1.0)相同--->",
            @"itemChilds": @[
                @{
                    @"hue": @"1.0",
                    @"saturation": @"1.0",
                    @"brightness": @"1.0",
                    @"alpha": @"1.0",
                },
                @{
                    @"hue": @"1.0",
                    @"saturation": @"0.5",
                    @"brightness": @"1.0",
                    @"alpha": @"1.0",
                },
                @{
                    @"hue": @"1.0",
                    @"saturation": @"0.0",
                    @"brightness": @"1.0",
                    @"alpha": @"1.0",
                },
            ],
        },
        @{
            @"title": @"hue(1.0)相同、saturation(1.0)相同、brightness的比较、alpha(1.0)相同--->",
            @"itemChilds": @[
                @{
                    @"hue": @"1.0",
                    @"saturation": @"1.0",
                    @"brightness": @"1.0",
                    @"alpha": @"1.0",
                },
                @{
                    @"hue": @"1.0",
                    @"saturation": @"1.0",
                    @"brightness": @"0.5",
                    @"alpha": @"1.0",
                },
                @{
                    @"hue": @"1.0",
                    @"saturation": @"1.0",
                    @"brightness": @"0",
                    @"alpha": @"1.0",
                },
            ],
        },
        @{
            @"title": @"hue(1.0)相同、saturation(1.0)相同、brightness(1.0)相同、alpha的比较--->",
            @"itemChilds": @[
                @{
                    @"hue": @"1.0",
                    @"saturation": @"1.0",
                    @"brightness": @"1.0",
                    @"alpha": @"1.0",
                },
                @{
                    @"hue": @"1.0",
                    @"saturation": @"1.0",
                    @"brightness": @"1.0",
                    @"alpha": @"0.5",
                },
                @{
                    @"hue": @"1.0",
                    @"saturation": @"1.0",
                    @"brightness": @"1.0",
                    @"alpha": @"0",
                },
            ],
        },
    ];
    for (NSDictionary *dic in arr) {
        [self createModelWithParams:params
                              title:dic[@"title"]
                     modelKeyValue:@{@"backgroundColor": [UIColor whiteColor]}
                              block:nil];

        NSArray *itemChilds = dic[@"itemChilds"];
        for (NSDictionary *subDic in itemChilds) {
            NSString *hue = subDic[@"hue"];
            NSString *saturation = subDic[@"saturation"];
            NSString *brightness = subDic[@"brightness"];
            NSString *alpha = subDic[@"alpha"];
            UIColor *color = [[UIColor alloc] initWithHue:[hue floatValue] saturation:[saturation floatValue] brightness:[brightness floatValue] alpha:[alpha floatValue]];
            NSString *text = [NSString stringWithFormat:@"initWithHue:%@ saturation:%@ brightness:%@ alpha:%@", hue, saturation, brightness, alpha];
            [self createModelWithParams:params
                                  title:text
                         modelKeyValue:@{@"backgroundColor": color}
                                  block:nil];
        }
    }
    return self.dataMutArr;
}

- (NSDictionary *)method_9:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"init方法 根据给定的 色调hue 饱和度saturation 亮度brightness来生成颜色",
            @"title": @"- (UIColor *)initWithHue:(CGFloat)hue saturation:(CGFloat)saturation brightness:(CGFloat)brightness alpha:(CGFloat)alpha;",
            @"desc": @"@param hue色调:通常是指图像的整体明暗度.例如，如果图像亮部像素较多的话，则图像整体上看起来较为明快\n@param  saturation饱和度:又称彩度,是指颜色的强度或纯度,饱和度表示色相中灰色分量所占的比例，它使用从0%（灰色）至100%（完全饱和）的百分比来度量。 在标准色轮上，饱和度从中心到边缘递增\n@param brightness亮度:是颜色的相对明暗程度，通常使用从0%（黑色）至100%（白色）的百分比来度量",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectColor_alloc_initWithHue_saturation_brightness_alpha:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectColor_alloc_initWithWhite_alpha:(TestProjectTableViewParams *)params {
    NSArray *arr = @[
        @{
            @"title": @"alpha(1.0)相同 white的比较=====>",
            @"itemChild": @[
                @{
                    @"white": @"0.0",
                    @"alpha": @"1.0"
                },
                @{
                    @"white": @"0.5",
                    @"alpha": @"1.0"
                },
                @{
                    @"white": @"1.0",
                    @"alpha": @"1.0"
                },
            ],
        },
        @{
            @"title": @"white(0.5)相同 alpha的比较=====>",
            @"itemChild": @[
                @{
                    @"white": @"0.5",
                    @"alpha": @"0.0"
                },
                @{
                    @"white": @"0.5",
                    @"alpha": @"0.5"
                },
                @{
                    @"white": @"0.5",
                    @"alpha": @"1.0"
                },
            ],
        },
        @{
            @"title": @"white(1.0)相同 alpha的比较=====>",
            @"itemChild": @[
                @{
                    @"white": @"1.0",
                    @"alpha": @"0.0"
                },
                @{
                    @"white": @"1.0",
                    @"alpha": @"0.5"
                },
                @{
                    @"white": @"1.0",
                    @"alpha": @"1.0"
                },
            ],
        }
    ];
    for (NSInteger i = 0; i < arr.count; i++) {
        NSDictionary *dic = arr[i];
        [self createModelWithParams:params
                              title:dic[@"title"]
                     modelKeyValue:@{@"backgroundColor": [UIColor whiteColor]}
                              block:nil];

        NSArray *itemChilds = dic[@"itemChild"];
        for (NSDictionary *childDic in itemChilds) {
            NSString *white = childDic[@"white"];
            NSString *alpha = childDic[@"alpha"];
            UIColor *color = [[UIColor alloc] initWithWhite:[white floatValue] alpha:[alpha floatValue]];
            NSString *title = [NSString stringWithFormat:@"initWithWhite:%@ alpha:%@", white, alpha];
            [self createModelWithParams:params
                                  title:title
                         modelKeyValue:@{@"backgroundColor": color}
                                  block:nil];
        }
    }
    return self.dataMutArr;
}

- (NSDictionary *)method_8:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"通过initWithWhite创建颜色",
            @"title": @"- (UIColor *)initWithWhite:(CGFloat)white alpha:(CGFloat)alpha;",
            @"desc": @"@param white:颜色1->0 从白色到黑色 \n@param alpha:颜色的透明度1->0 从显示到不显示",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectColor_alloc_initWithWhite_alpha:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectColor_class_colorWithCIColor:(TestProjectTableViewParams *)params {
    CIColor *ciColor = [CIColor colorWithRed:0.5 green:0.5 blue:0.5];
    [self createModelWithParams:params
                         title:@"ciColor red:0.5 green:0.5 blue:0.5 alpha:1.0"
                 modelKeyValue:@{@"backgroundColor": [UIColor colorWithCIColor:ciColor]}
                         block:nil];

    return self.dataMutArr;
}

- (NSDictionary *)method_7:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"执行UIColor的class方法, 通过CIColor绘制颜色",
            @"title": @"+ (UIColor *)colorWithCIColor:(CIColor *)ciColor API_AVAILABLE(ios(5.0));",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectColor_class_colorWithCIColor:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectColor_class_colorWithPatternImage:(TestProjectTableViewParams *)params {
    UIImage *image = [UIImage imageNamed:@"lyf_1"];
    [self createModelWithParams:params
                         title:@"imageNamed:@\"lyf_1\""
                 modelKeyValue:@{@"backgroundColor": [UIColor colorWithPatternImage:image]}
                         block:nil];

    return self.dataMutArr;
}

- (NSDictionary *)method_6:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"执行UIColor的class方法, 通过UIImage绘制颜色",
            @"title": @"+ (UIColor *)colorWithPatternImage:(UIImage *)image;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectColor_class_colorWithPatternImage:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectColor_class_colorWithCGColor:(TestProjectTableViewParams *)params {
    CGColorRef colorRef = CGColorCreateSRGB(0.5, 0.5, 0.5, 0.5);
    [self createModelWithParams:params
                         title:@"colorRef red:0.5 green:0.5 blue:0.5 alpha:1.0"
                 modelKeyValue:@{@"backgroundColor": [UIColor colorWithCGColor:colorRef]}
                         block:nil];
    return self.dataMutArr;
}

- (NSDictionary *)method_5:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"执行UIColor的class方法, 通过CGColor绘制颜色",
            @"title": @"+ (UIColor *)colorWithCGColor:(CGColorRef)cgColor;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectColor_class_colorWithCGColor:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectColor_class_colorWithDisplayP3Red_green_blue_alpha:(TestProjectTableViewParams *)params {
    NSArray *arr = @[
        @{
            @"title": @"displayP3Red的比较、green(1.0)相同、blue(1.0)相同、alpha(1.0)相同--->",
            @"itemChilds": @[
                @{
                    @"displayP3Red": @"1.0",
                    @"green": @"1.0",
                    @"blue": @"1.0",
                    @"alpha": @"1.0",
                },
                @{
                    @"displayP3Red": @"0.5",
                    @"green": @"1.0",
                    @"blue": @"1.0",
                    @"alpha": @"1.0",
                },
                @{
                    @"displayP3Red": @"0.0",
                    @"green": @"1.0",
                    @"blue": @"1.0",
                    @"alpha": @"1.0",
                },
            ],
        },
        @{
            @"title": @"displayP3Red(1.0)相同、green的比较、blue(1.0)相同、alpha(1.0)相同--->",
            @"itemChilds": @[
                @{
                    @"displayP3Red": @"1.0",
                    @"green": @"1.0",
                    @"blue": @"1.0",
                    @"alpha": @"1.0",
                },
                @{
                    @"displayP3Red": @"1.0",
                    @"green": @"0.5",
                    @"blue": @"1.0",
                    @"alpha": @"1.0",
                },
                @{
                    @"displayP3Red": @"1.0",
                    @"green": @"0.0",
                    @"blue": @"1.0",
                    @"alpha": @"1.0",
                },
            ],
        },
        @{
            @"title": @"displayP3Red(1.0)相同、green(1.0)相同、blue的比较、alpha(1.0)相同--->",
            @"itemChilds": @[
                @{
                    @"displayP3Red": @"1.0",
                    @"green": @"1.0",
                    @"blue": @"1.0",
                    @"alpha": @"1.0",
                },
                @{
                    @"displayP3Red": @"1.0",
                    @"green": @"1.0",
                    @"blue": @"0.5",
                    @"alpha": @"1.0",
                },
                @{
                    @"displayP3Red": @"1.0",
                    @"green": @"1.0",
                    @"blue": @"0",
                    @"alpha": @"1.0",
                },
            ],
        },
        @{
            @"title": @"displayP3Red(1.0)相同、green(1.0)相同、blue(1.0)相同、alpha的比较--->",
            @"itemChilds": @[
                @{
                    @"displayP3Red": @"1.0",
                    @"green": @"1.0",
                    @"blue": @"1.0",
                    @"alpha": @"1.0",
                },
                @{
                    @"displayP3Red": @"1.0",
                    @"green": @"1.0",
                    @"blue": @"1.0",
                    @"alpha": @"0.5",
                },
                @{
                    @"displayP3Red": @"1.0",
                    @"green": @"1.0",
                    @"blue": @"1.0",
                    @"alpha": @"0",
                },
            ],
        },
    ];
    for (NSDictionary *dic in arr) {
        [self createModelWithParams:params
                              title:dic[@"title"]
                     modelKeyValue:@{@"backgroundColor": [UIColor whiteColor]}
                              block:nil];
        NSArray *itemChilds = dic[@"itemChilds"];
        for (NSDictionary *subDic in itemChilds) {
            NSString *displayP3Red = subDic[@"displayP3Red"];
            NSString *green = subDic[@"green"];
            NSString *blue = subDic[@"blue"];
            NSString *alpha = subDic[@"alpha"];
            UIColor *color = [UIColor colorWithDisplayP3Red:[displayP3Red floatValue] green:[green floatValue] blue:[blue floatValue] alpha:[alpha floatValue]];
            NSString *text = [NSString stringWithFormat:@"displayP3Red:%@ green:%@ blue:%@ alpha:%@", displayP3Red, green, blue, alpha];
            [self createModelWithParams:params
                                  title:text
                         modelKeyValue:@{@"backgroundColor": color}
                                  block:nil];
        }
    }
    return self.dataMutArr;
}

- (NSDictionary *)method_4:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"执行UIColor的class方法, 10以后才可以用，在模拟器的层级中可以看到渐变色，但是真机和模拟器却看不到，可以试试改一下颜色的展示方法",
            @"title": @"+ (UIColor *)colorWithDisplayP3Red:(CGFloat)displayP3Red green:(CGFloat)green blue:(CGFloat)blue alpha:(CGFloat)alpha API_AVAILABLE(ios(10.0));",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectColor_class_colorWithDisplayP3Red_green_blue_alpha:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectColor_class_colorWithRed_green_blue_alpha:(TestProjectTableViewParams *)params {
    NSArray *arr = @[
        @{
            @"title": @"red的比较、green(1.0)相同、blue(1.0)相同、alpha(1.0)相同--->",
            @"itemChilds": @[
                @{
                    @"red": @"1.0",
                    @"green": @"1.0",
                    @"blue": @"1.0",
                    @"alpha": @"1.0",
                },
                @{
                    @"red": @"0.5",
                    @"green": @"1.0",
                    @"blue": @"1.0",
                    @"alpha": @"1.0",
                },
                @{
                    @"red": @"0.0",
                    @"green": @"1.0",
                    @"blue": @"1.0",
                    @"alpha": @"1.0",
                },
            ],
        },
        @{
            @"title": @"red(1.0)相同、green的比较、blue(1.0)相同、alpha(1.0)相同--->",
            @"itemChilds": @[
                @{
                    @"red": @"1.0",
                    @"green": @"1.0",
                    @"blue": @"1.0",
                    @"alpha": @"1.0",
                },
                @{
                    @"red": @"1.0",
                    @"green": @"0.5",
                    @"blue": @"1.0",
                    @"alpha": @"1.0",
                },
                @{
                    @"red": @"1.0",
                    @"green": @"0.0",
                    @"blue": @"1.0",
                    @"alpha": @"1.0",
                },
            ],
        },
        @{
            @"title": @"red(1.0)相同、green(1.0)相同、blue的比较、alpha(1.0)相同--->",
            @"itemChilds": @[
                @{
                    @"red": @"1.0",
                    @"green": @"1.0",
                    @"blue": @"1.0",
                    @"alpha": @"1.0",
                },
                @{
                    @"red": @"1.0",
                    @"green": @"1.0",
                    @"blue": @"0.5",
                    @"alpha": @"1.0",
                },
                @{
                    @"red": @"1.0",
                    @"green": @"1.0",
                    @"blue": @"0",
                    @"alpha": @"1.0",
                },
            ],
        },
        @{
            @"title": @"red(1.0)相同、green(1.0)相同、blue(1.0)相同、alpha的比较--->",
            @"itemChilds": @[
                @{
                    @"red": @"1.0",
                    @"green": @"1.0",
                    @"blue": @"1.0",
                    @"alpha": @"1.0",
                },
                @{
                    @"red": @"1.0",
                    @"green": @"1.0",
                    @"blue": @"1.0",
                    @"alpha": @"0.5",
                },
                @{
                    @"red": @"1.0",
                    @"green": @"1.0",
                    @"blue": @"1.0",
                    @"alpha": @"0",
                },
            ],
        },
    ];
    for (NSDictionary *dic in arr) {
        [self createModelWithParams:params
                              title:dic[@"title"]
                     modelKeyValue:@{@"backgroundColor": [UIColor whiteColor]}
                              block:nil];
        NSArray *itemChilds = dic[@"itemChilds"];
        for (NSDictionary *subDic in itemChilds) {
            NSString *red = subDic[@"red"];
            NSString *green = subDic[@"green"];
            NSString *blue = subDic[@"blue"];
            NSString *alpha = subDic[@"alpha"];
            UIColor *color = [UIColor colorWithRed:[red floatValue] green:[green floatValue] blue:[blue floatValue] alpha:[alpha floatValue]];
            NSString *text = [NSString stringWithFormat:@"red:%@ green:%@ blue:%@ alpha:%@", red, green, blue, alpha];
            [self createModelWithParams:params
                                  title:text
                         modelKeyValue:@{@"backgroundColor": color}
                                  block:nil];
        }
    }
    return self.dataMutArr;
}

- (NSDictionary *)method_3:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"执行UIColor的class方法, 根据给定的rgb来生成颜色",
            @"title": @"+ (UIColor *)colorWithRed:(CGFloat)red green:(CGFloat)green blue:(CGFloat)blue alpha:(CGFloat)alpha;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectColor_class_colorWithRed_green_blue_alpha:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectColor_class_colorWithHue_saturation_brightness_alpha:(TestProjectTableViewParams *)params {
    NSArray *arr = @[
        @{
            @"title": @"hue的比较、saturation(1.0)相同、brightness(1.0)相同、alpha(1.0)相同--->",
            @"itemChilds": @[
                @{
                    @"hue": @"1.0",
                    @"saturation": @"1.0",
                    @"brightness": @"1.0",
                    @"alpha": @"1.0",
                },
                @{
                    @"hue": @"0.5",
                    @"saturation": @"1.0",
                    @"brightness": @"1.0",
                    @"alpha": @"1.0",
                },
                @{
                    @"hue": @"0.0",
                    @"saturation": @"1.0",
                    @"brightness": @"1.0",
                    @"alpha": @"1.0",
                },
            ],
        },
        @{
            @"title": @"hue(1.0)相同、saturation的比较、brightness(1.0)相同、alpha(1.0)相同--->",
            @"itemChilds": @[
                @{
                    @"hue": @"1.0",
                    @"saturation": @"1.0",
                    @"brightness": @"1.0",
                    @"alpha": @"1.0",
                },
                @{
                    @"hue": @"1.0",
                    @"saturation": @"0.5",
                    @"brightness": @"1.0",
                    @"alpha": @"1.0",
                },
                @{
                    @"hue": @"1.0",
                    @"saturation": @"0.0",
                    @"brightness": @"1.0",
                    @"alpha": @"1.0",
                },
            ],
        },
        @{
            @"title": @"hue(1.0)相同、saturation(1.0)相同、brightness的比较、alpha(1.0)相同--->",
            @"itemChilds": @[
                @{
                    @"hue": @"1.0",
                    @"saturation": @"1.0",
                    @"brightness": @"1.0",
                    @"alpha": @"1.0",
                },
                @{
                    @"hue": @"1.0",
                    @"saturation": @"1.0",
                    @"brightness": @"0.5",
                    @"alpha": @"1.0",
                },
                @{
                    @"hue": @"1.0",
                    @"saturation": @"1.0",
                    @"brightness": @"0",
                    @"alpha": @"1.0",
                },
            ],
        },
        @{
            @"title": @"hue(1.0)相同、saturation(1.0)相同、brightness(1.0)相同、alpha的比较--->",
            @"itemChilds": @[
                @{
                    @"hue": @"1.0",
                    @"saturation": @"1.0",
                    @"brightness": @"1.0",
                    @"alpha": @"1.0",
                },
                @{
                    @"hue": @"1.0",
                    @"saturation": @"1.0",
                    @"brightness": @"1.0",
                    @"alpha": @"0.5",
                },
                @{
                    @"hue": @"1.0",
                    @"saturation": @"1.0",
                    @"brightness": @"1.0",
                    @"alpha": @"0",
                },
            ],
        },
    ];
    for (NSDictionary *dic in arr) {
        [self createModelWithParams:params
                              title:dic[@"title"]
                     modelKeyValue:@{@"backgroundColor": [UIColor whiteColor]}
                              block:nil];
        NSArray *itemChilds = dic[@"itemChilds"];
        for (NSDictionary *subDic in itemChilds) {
            NSString *hue = subDic[@"hue"];
            NSString *saturation = subDic[@"saturation"];
            NSString *brightness = subDic[@"brightness"];
            NSString *alpha = subDic[@"alpha"];
            UIColor *color = [UIColor colorWithHue:[hue floatValue] saturation:[saturation floatValue] brightness:[brightness floatValue] alpha:[alpha floatValue]];
            NSString *text = [NSString stringWithFormat:@"hue:%@ saturation:%@ brightness:%@ alpha:%@", hue, saturation, brightness, alpha];
            [self createModelWithParams:params
                                  title:text
                         modelKeyValue:@{@"backgroundColor": color}
                                  block:nil];
        }
    }
    return self.dataMutArr;
}

- (NSDictionary *)method_2:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"执行UIColor的class方法, 根据给定的 色调hue 饱和度saturation 亮度brightness来生成颜色",
            @"title": @"+ (UIColor *)colorWithHue:(CGFloat)hue saturation:(CGFloat)saturation brightness:(CGFloat)brightness alpha:(CGFloat)alpha;",
            @"desc": @"@param hue色调:通常是指图像的整体明暗度.例如，如果图像亮部像素较多的话，则图像整体上看起来较为明快\n@param  saturation饱和度:又称彩度,是指颜色的强度或纯度,饱和度表示色相中灰色分量所占的比例，它使用从0%（灰色）至100%（完全饱和）的百分比来度量。 在标准色轮上，饱和度从中心到边缘递增\n@param brightness亮度:是颜色的相对明暗程度，通常使用从0%（黑色）至100%（白色）的百分比来度量",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectColor_class_colorWithHue_saturation_brightness_alpha:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectColor_class_colorWithWhite_alpha:(TestProjectTableViewParams *)params {
    NSArray *arr = @[
        @{
            @"title": @"alpha(1.0)相同 white的比较=====>",
            @"itemChild": @[
                @{
                    @"white": @"0.0",
                    @"alpha": @"1.0"
                },
                @{
                    @"white": @"0.5",
                    @"alpha": @"1.0"
                },
                @{
                    @"white": @"1.0",
                    @"alpha": @"1.0"
                },
            ],
        },
        @{
            @"title": @"white(0.5)相同 alpha的比较=====>",
            @"itemChild": @[
                @{
                    @"white": @"0.5",
                    @"alpha": @"0.0"
                },
                @{
                    @"white": @"0.5",
                    @"alpha": @"0.5"
                },
                @{
                    @"white": @"0.5",
                    @"alpha": @"1.0"
                },
            ],
        },
        @{
            @"title": @"white(1.0)相同 alpha的比较=====>",
            @"itemChild": @[
                @{
                    @"white": @"1.0",
                    @"alpha": @"0.0"
                },
                @{
                    @"white": @"1.0",
                    @"alpha": @"0.5"
                },
                @{
                    @"white": @"1.0",
                    @"alpha": @"1.0"
                },
            ],
        }
    ];
    for (NSInteger i = 0; i < arr.count; i++) {
        NSDictionary *dic = arr[i];
        [self createModelWithParams:params
                              title:dic[@"title"]
                     modelKeyValue:@{@"backgroundColor": [UIColor whiteColor]}
                              block:nil];

        NSArray *itemChilds = dic[@"itemChild"];
        for (NSDictionary *childDic in itemChilds) {
            NSString *white = childDic[@"white"];
            NSString *alpha = childDic[@"alpha"];
            UIColor *color = [UIColor colorWithWhite:[white floatValue] alpha:[alpha floatValue]];
            [self createModelWithParams:params
                                  title:[NSString stringWithFormat:@"white:%@ alpha:%@", white, alpha]
                         modelKeyValue:@{@"backgroundColor": color}
                                  block:nil];
        }
    }
    return self.dataMutArr;
}

- (NSDictionary *)method_1:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"执行UIColor的class方法colorWithWhite:alpha:, 根据white和alpha获取颜色",
            @"title": @"+ (UIColor *)colorWithWhite:(CGFloat)white alpha:(CGFloat)alpha;",
            @"desc": @"@param white:颜色1->0 从白色到黑色 \n@param alpha:颜色的透明度1->0 从显示到不显示",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectColor_class_colorWithWhite_alpha:params],
            }
        },
    };
}

@end
