//
//  TestProjectUIColor.m
//  TestProjectIOS
//
//  Created by zjrcumac on 2023/2/22.
//

#import "TestProjectUIColor.h"

#import "TestProjectUIColorCell.h"
#import <CoreImage/CoreImage.h>

@implementation TestProjectUIColor

- (NSDictionary *)method_1 {
    return @{
        @"dataModel": @{
            @"abstract": @"根据white和alpha获取颜色",
            @"title": @"+ (UIColor *)colorWithWhite:(CGFloat)white alpha:(CGFloat)alpha;",
            @"desc": @"@param white:颜色1->0 从白色到黑色 \n@param alpha:颜色的透明度1->0 从显示到不显示",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"modelClass": TestProjectUIColorModel.class,
                @"childItems": [self TestProjectColor_colorWithWhite_alpha],
            }
        },
    };
}

- (NSDictionary *)method_2 {
    return @{
        @"dataModel": @{
            @"abstract": @"根据给定的 色调hue 饱和度saturation 亮度brightness来生成颜色",
            @"title": @"+ (UIColor *)colorWithHue:(CGFloat)hue saturation:(CGFloat)saturation brightness:(CGFloat)brightness alpha:(CGFloat)alpha;",
            @"desc": @"@param hue色调:通常是指图像的整体明暗度.例如，如果图像亮部像素较多的话，则图像整体上看起来较为明快\n@param  saturation饱和度:又称彩度,是指颜色的强度或纯度,饱和度表示色相中灰色分量所占的比例，它使用从0%（灰色）至100%（完全饱和）的百分比来度量。 在标准色轮上，饱和度从中心到边缘递增\n@param brightness亮度:是颜色的相对明暗程度，通常使用从0%（黑色）至100%（白色）的百分比来度量",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"modelClass": TestProjectUIColorModel.class,
                @"childItems": [self TestProjectColor_colorWithHue_saturation_brightness_alpha],
            }
        },
    };
}

- (NSDictionary *)method_3 {
    return @{
        @"dataModel": @{
            @"abstract": @"根据给定的rgb来生成颜色",
            @"title": @"+ (UIColor *)colorWithRed:(CGFloat)red green:(CGFloat)green blue:(CGFloat)blue alpha:(CGFloat)alpha;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"modelClass": TestProjectUIColorModel.class,
                @"childItems": [self TestProjectColor_colorWithRed_green_blue_alpha],
            }
        },
    };
}

- (NSDictionary *)method_4 {
    return @{
        @"dataModel": @{
            @"abstract": @"10以后才可以用，在模拟器的层级中可以看到渐变色，但是真机和模拟器却看不到，可以试试改一下颜色的展示方法",
            @"title": @"+ (UIColor *)colorWithDisplayP3Red:(CGFloat)displayP3Red green:(CGFloat)green blue:(CGFloat)blue alpha:(CGFloat)alpha API_AVAILABLE(ios(10.0));",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"modelClass": TestProjectUIColorModel.class,
                @"childItems": [self TestProjectColor_colorWithDisplayP3Red_green_blue_alpha],
            }
        },
    };
}

- (NSDictionary *)method_5 {
    return @{
        @"dataModel": @{
            @"abstract": @"通过CGColor绘制颜色",
            @"title": @"+ (UIColor *)colorWithCGColor:(CGColorRef)cgColor;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"modelClass": TestProjectUIColorModel.class,
                @"childItems": [self TestProjectColor_colorWithCGColor],
            }
        },
    };
}

- (NSDictionary *)method_6 {
    return @{
        @"dataModel": @{
            @"abstract": @"通过UIImage绘制颜色",
            @"title": @"+ (UIColor *)colorWithPatternImage:(UIImage *)image;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"modelClass": TestProjectUIColorModel.class,
                @"childItems": [self TestProjectColor_colorWithPatternImage],
            }
        },
    };
}

- (NSDictionary *)method_7 {
    return @{
        @"dataModel": @{
            @"abstract": @"通过CIColor绘制颜色",
            @"title": @"+ (UIColor *)colorWithCIColor:(CIColor *)ciColor API_AVAILABLE(ios(5.0));",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"modelClass": TestProjectUIColorModel.class,
                @"childItems": [self TestProjectColor_colorWithCIColor],
            }
        },
    };
}

- (NSDictionary *)method_8 {
    return @{
        @"dataModel": @{
            @"abstract": @"通过initWithWhite创建颜色",
            @"title": @"- (UIColor *)initWithWhite:(CGFloat)white alpha:(CGFloat)alpha;",
            @"desc": @"@param white:颜色1->0 从白色到黑色 \n@param alpha:颜色的透明度1->0 从显示到不显示",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"modelClass": TestProjectUIColorModel.class,
                @"childItems": [self TestProjectColor_initWithWhite_alpha],
            }
        },
    };
}

- (NSDictionary *)method_9 {
    return @{
        @"dataModel": @{
            @"abstract": @"init方法 根据给定的 色调hue 饱和度saturation 亮度brightness来生成颜色",
            @"title": @"- (UIColor *)initWithHue:(CGFloat)hue saturation:(CGFloat)saturation brightness:(CGFloat)brightness alpha:(CGFloat)alpha;",
            @"desc": @"@param hue色调:通常是指图像的整体明暗度.例如，如果图像亮部像素较多的话，则图像整体上看起来较为明快\n@param  saturation饱和度:又称彩度,是指颜色的强度或纯度,饱和度表示色相中灰色分量所占的比例，它使用从0%（灰色）至100%（完全饱和）的百分比来度量。 在标准色轮上，饱和度从中心到边缘递增\n@param brightness亮度:是颜色的相对明暗程度，通常使用从0%（黑色）至100%（白色）的百分比来度量",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"modelClass": TestProjectUIColorModel.class,
                @"childItems": [self TestProjectColor_initWithHue_saturation_brightness_alpha],
            }
        },
    };
}

- (NSDictionary *)method_10 {
    return @{
        @"dataModel": @{
            @"abstract": @"init方法 根据给定的rgb来生成颜色",
            @"title": @"- (UIColor *)initWithRed:(CGFloat)red green:(CGFloat)green blue:(CGFloat)blue alpha:(CGFloat)alpha;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"modelClass": TestProjectUIColorModel.class,
                @"childItems": [self TestProjectColor_initWithRed_green_blue_alpha],
            }
        },
    };
}

- (NSDictionary *)method_11 {
    return @{
        @"dataModel": @{
            @"abstract": @"10以后才可以用, init方法，在模拟器的层级中可以看到渐变色，但是真机和模拟器却看不到，可以试试改一下颜色的展示方法",
            @"title": @"- (UIColor *)initWithDisplayP3Red:(CGFloat)displayP3Red green:(CGFloat)green blue:(CGFloat)blue alpha:(CGFloat)alpha API_AVAILABLE(ios(10.0));",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"modelClass": TestProjectUIColorModel.class,
                @"childItems": [self TestProjectColor_initWithDisplayP3Red_green_blue_alpha],
            }
        },
    };
}

- (NSDictionary *)method_12 {
    return @{
        @"dataModel": @{
            @"abstract": @"通过init方法 CGColor绘制颜色",
            @"title": @"- (UIColor *)initWithCGColor:(CGColorRef)cgColor;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"modelClass": TestProjectUIColorModel.class,
                @"childItems": [self TestProjectColor_initWithCGColor],
            }
        },
    };
}

- (NSDictionary *)method_13 {
    return @{
        @"dataModel": @{
            @"abstract": @"通过init方法 UIImage绘制颜色",
            @"title": @"- (UIColor *)initWithPatternImage:(UIImage*)image;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"modelClass": TestProjectUIColorModel.class,
                @"childItems": [self TestProjectColor_initWithPatternImage],
            }
        },
    };
}

- (NSDictionary *)method_14 {
    return @{
        @"dataModel": @{
            @"abstract": @"通过init方法 CIColor绘制颜色",
            @"title": @"- (UIColor *)initWithCIColor:(CIColor *)ciColor API_AVAILABLE(ios(5.0));",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"modelClass": TestProjectUIColorModel.class,
                @"childItems": [self TestProjectColor_initWithCIColor],
            }
        },
    };
}

- (NSDictionary *)method_15 {
    return @{
        @"dataModel": @{
            @"abstract": @"通过[UIColor blackColor]绘制颜色, 0.0 white",
            @"title": @"@property(class, nonatomic, readonly) UIColor *blackColor;      // 0.0 white",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"modelClass": TestProjectUIColorModel.class,
                @"childItems": [self TestProjectColor_property_blackColor],
            }
        },
    };
}

- (NSDictionary *)method_16 {
    return @{
        @"dataModel": @{
            @"abstract": @"通过[UIColor darkGrayColor]绘制颜色, 0.333 white",
            @"title": @"@property(class, nonatomic, readonly) UIColor *darkGrayColor;   // 0.333 white",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"modelClass": TestProjectUIColorModel.class,
                @"childItems": [self TestProjectColor_property_darkGrayColor],
            }
        },
    };
}

- (NSDictionary *)method_17 {
    return @{
        @"dataModel": @{
            @"abstract": @"通过[UIColor lightGrayColor]绘制颜色, 0.667 white",
            @"title": @"@property(class, nonatomic, readonly) UIColor *lightGrayColor;  // 0.667 white",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"modelClass": TestProjectUIColorModel.class,
                @"childItems": [self TestProjectColor_property_lightGrayColor],
            }
        },
    };
}

- (NSDictionary *)method_18 {
    return @{
        @"dataModel": @{
            @"abstract": @"通过[UIColor whiteColor]绘制颜色, 1.0 white",
            @"title": @"@property(class, nonatomic, readonly) UIColor *whiteColor;      // 1.0 white",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"modelClass": TestProjectUIColorModel.class,
                @"childItems": [self TestProjectColor_property_whiteColor],
            }
        },
    };
}

- (NSDictionary *)method_19 {
    return @{
        @"dataModel": @{
            @"abstract": @"通过[UIColor grayColor]绘制颜色, 0.5 white",
            @"title": @"@property(class, nonatomic, readonly) UIColor *grayColor;       // 0.5 white",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"modelClass": TestProjectUIColorModel.class,
                @"childItems": [self TestProjectColor_property_grayColor],
            }
        },
    };
}

- (NSDictionary *)method_20 {
    return @{
        @"dataModel": @{
            @"abstract": @"通过[UIColor redColor]绘制颜色, 1.0, 0.0, 0.0 RGB",
            @"title": @"@property(class, nonatomic, readonly) UIColor *redColor;        // 1.0, 0.0, 0.0 RGB",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"modelClass": TestProjectUIColorModel.class,
                @"childItems": [self TestProjectColor_property_redColor],
            }
        },
    };
}

- (NSDictionary *)method_21 {
    return @{
        @"dataModel": @{
            @"abstract": @"通过[UIColor greenColor]绘制颜色, 0.0, 1.0, 0.0 RGB",
            @"title": @"@property(class, nonatomic, readonly) UIColor *greenColor;      // 0.0, 1.0, 0.0 RGB",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"modelClass": TestProjectUIColorModel.class,
                @"childItems": [self TestProjectColor_property_greenColor],
            }
        },
    };
}

- (NSDictionary *)method_22 {
    return @{
        @"dataModel": @{
            @"abstract": @"通过[UIColor blueColor]绘制颜色, 0.0, 0.0, 1.0 RGB",
            @"title": @"@property(class, nonatomic, readonly) UIColor *blueColor;       // 0.0, 0.0, 1.0 RGB",
            @"desc": @"@param white:颜色1->0 从白色到黑色 \n@param alpha:颜色的透明度1->0 从显示到不显示",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"modelClass": TestProjectUIColorModel.class,
                @"childItems": [self TestProjectColor_property_blueColor],
            }
        },
    };
}

- (NSDictionary *)method_23 {
    return @{
        @"dataModel": @{
            @"abstract": @"通过[UIColor cyanColor]绘制颜色, 0.0, 1.0, 1.0 RGB",
            @"title": @"@property(class, nonatomic, readonly) UIColor *cyanColor;       // 0.0, 1.0, 1.0 RGB",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"modelClass": TestProjectUIColorModel.class,
                @"childItems": [self TestProjectColor_property_cyanColor],
            }
        },
    };
}

- (NSDictionary *)method_24 {
    return @{
        @"dataModel": @{
            @"abstract": @"通过[UIColor magentaColor]绘制颜色, 1.0, 0.0, 1.0 RGB",
            @"title": @"@property(class, nonatomic, readonly) UIColor *magentaColor;    // 1.0, 0.0, 1.0 RGB",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"modelClass": TestProjectUIColorModel.class,
                @"childItems": [self TestProjectColor_property_magentaColor],
            }
        },
    };
}

- (NSDictionary *)method_25 {
    return @{
        @"dataModel": @{
            @"abstract": @"通过[UIColor orangeColor]绘制颜色, 1.0, 0.5, 0.0 RGB",
            @"title": @"@property(class, nonatomic, readonly) UIColor *orangeColor;     // 1.0, 0.5, 0.0 RGB",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"modelClass": TestProjectUIColorModel.class,
                @"childItems": [self TestProjectColor_property_orangeColor],
            }
        },
    };
}

- (NSDictionary *)method_26 {
    return @{
        @"dataModel": @{
            @"abstract": @"通过[UIColor purpleColor]绘制颜色, 0.5, 0.0, 0.5 RGB",
            @"title": @"@property(class, nonatomic, readonly) UIColor *purpleColor;     // 0.5, 0.0, 0.5 RGB",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"modelClass": TestProjectUIColorModel.class,
                @"childItems": [self TestProjectColor_property_purpleColor],
            }
        },
    };
}

- (NSDictionary *)method_27 {
    return @{
        @"dataModel": @{
            @"abstract": @"通过[UIColor brownColor]绘制颜色, 0.6, 0.4, 0.2 RGB",
            @"title": @"@property(class, nonatomic, readonly) UIColor *brownColor;      // 0.6, 0.4, 0.2 RGB",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"modelClass": TestProjectUIColorModel.class,
                @"childItems": [self TestProjectColor_property_brownColor],
            }
        },
    };
}

- (NSDictionary *)method_28 {
    return @{
        @"dataModel": @{
            @"abstract": @"通过[UIColor clearColor]绘制颜色, 0.0 white, 0.0",
            @"title": @"@property(class, nonatomic, readonly) UIColor *clearColor;      // 0.0 white, 0.0 alpha",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"modelClass": TestProjectUIColorModel.class,
                @"childItems": [self TestProjectColor_property_clearColor],
            }
        },
    };
}

- (NSDictionary *)method_29 {
    return @{
        @"dataModel": @{
            @"abstract": @"得到UIColor的white和alpha",
            @"title": @"- (BOOL)getWhite:(nullable CGFloat *)white alpha:(nullable CGFloat *)alpha API_AVAILABLE(ios(5.0));",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"modelClass": TestProjectUIColorModel.class,
                @"childItems": [self TestProjectColor_getWhite_alpha],
            }
        },
    };
}

- (NSDictionary *)method_30 {
    return @{
        @"dataModel": @{
            @"abstract": @"得到UIColor的hue、saturation、brightness、alpha",
            @"title": @"- (BOOL)getHue:(nullable CGFloat *)hue saturation:(nullable CGFloat *)saturation brightness:(nullable CGFloat *)brightness alpha:(nullable CGFloat *)alpha API_AVAILABLE(ios(5.0));",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"modelClass": TestProjectUIColorModel.class,
                @"childItems": [self TestProjectColor_getHue_saturation_brightness_alpha],
            }
        },
    };
}

- (NSDictionary *)method_31 {
    return @{
        @"dataModel": @{
            @"abstract": @"得到UIColor的red、green、blue、alpha",
            @"title": @"- (BOOL)getRed:(nullable CGFloat *)red green:(nullable CGFloat *)green blue:(nullable CGFloat *)blue alpha:(nullable CGFloat *)alpha API_AVAILABLE(ios(5.0));",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"modelClass": TestProjectUIColorModel.class,
                @"childItems": [self TestProjectColor_getRed_green_blue_alpha],
            }
        },
    };
}

- (NSDictionary *)method_32 {
    return @{
        @"dataModel": @{
            @"abstract": @"设置颜色的alpha",
            @"title": @"- (UIColor *)colorWithAlphaComponent:(CGFloat)alpha;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"modelClass": TestProjectUIColorModel.class,
                @"childItems": [self TestProjectColor_colorWithAlphaComponent],
            }
        },
    };
}

- (NSDictionary *)method_33 {
    return @{
        @"dataModel": @{
            @"abstract": @"获取颜色的CGColor",
            @"title": @"@property(nonatomic,readonly) CGColorRef CGColor;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"modelClass": TestProjectUIColorModel.class,
                @"childItems": [self TestProjectColor_property_CGColorRef],
            }
        },
    };
}

- (NSDictionary *)method_34 {
    return @{
        @"dataModel": @{
            @"abstract": @"获取颜色的CIColor",
            @"title": @"@property(nonatomic,readonly) CIColor   *CIColor API_AVAILABLE(ios(5.0));",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"modelClass": TestProjectUIColorModel.class,
                @"childItems": [self TestProjectColor_property_CIColor],
            }
        },
    };
}

- (void)createColorModel:(UIColor *)color text:(NSString *)text {
    TestProjectUIColorModel *colorModel = [[TestProjectUIColorModel alloc] init];
    colorModel.title = text;
    colorModel.backgroundColor = color;
    [self.dataMutArr addObject:colorModel];
}

- (NSMutableArray *)TestProjectColor_property_CIColor {
    id data = nil;
    @try {
        data = [UIColor yellowColor].CIColor;
    } @catch (NSException *exception) {
        data = exception;
    } @finally {
        
    }

    [self createColorModel:[UIColor yellowColor] text:[NSString stringWithFormat:@"%@", data]];
    return self.dataMutArr;
}

- (NSMutableArray *)TestProjectColor_property_CGColorRef {
    CGColorRef cgColorRef = [UIColor yellowColor].CGColor;
    [self createColorModel:[UIColor yellowColor] text:[NSString stringWithFormat:@"%@", cgColorRef]];
    return self.dataMutArr;
}

- (NSMutableArray *)TestProjectColor_colorWithAlphaComponent {
    [self createColorModel:[[UIColor yellowColor] colorWithAlphaComponent:0.2] text:@"设置颜色的alpha"];
    return self.dataMutArr;
}

- (NSMutableArray *)TestProjectColor_getRed_green_blue_alpha {
    CGFloat red, green, blue, alpha;
    BOOL ret = [[UIColor yellowColor] getRed:&red green:&green blue:&blue alpha:&alpha];
    [self createColorModel:[UIColor whiteColor] text:[NSString stringWithFormat:@"[[UIColor yellowColor] getRed:&red green:&green blue:&blue alpha:&alpha]: ret:%u red:%f green:%f blue:%f alpha:%f", ret, red, green, blue, alpha]];
    return self.dataMutArr;
}

- (NSMutableArray *)TestProjectColor_getHue_saturation_brightness_alpha {
    CGFloat hue, saturation, brightness, alpha;
    BOOL ret = [[UIColor yellowColor] getHue:&hue saturation:&saturation brightness:&brightness alpha:&alpha];
    [self createColorModel:[UIColor whiteColor] text:[NSString stringWithFormat:@"[[UIColor yellowColor] getHue:&hue saturation:&saturation brightness:&brightness alpha:&alpha]: ret:%u hue:%f saturation:%f brightness:%f alpha:%f", ret, hue, saturation, brightness, alpha]];
    return self.dataMutArr;
}

- (NSMutableArray *)TestProjectColor_getWhite_alpha {
    CGFloat white, alpha;
    BOOL ret = [[UIColor yellowColor] getWhite:&white alpha:&alpha];
    [self createColorModel:[UIColor whiteColor] text:[NSString stringWithFormat:@"[[UIColor yellowColor] getWhite:&white alpha:&alpha]: ret:%u white:%f alpha:%f", ret, white, alpha]];
    return self.dataMutArr;
}

- (NSMutableArray *)TestProjectColor_property_clearColor {
    [self createColorModel:[UIColor clearColor] text:@"[UIColor clearColor]"];
    return self.dataMutArr;
}

- (NSMutableArray *)TestProjectColor_property_brownColor {
    [self createColorModel:[UIColor brownColor] text:@"[UIColor brownColor]"];
    return self.dataMutArr;
}

- (NSMutableArray *)TestProjectColor_property_purpleColor {
    [self createColorModel:[UIColor purpleColor] text:@"[UIColor purpleColor]"];
    return self.dataMutArr;
}

- (NSMutableArray *)TestProjectColor_property_orangeColor {
    [self createColorModel:[UIColor orangeColor] text:@"[UIColor orangeColor]"];
    return self.dataMutArr;
}

- (NSMutableArray *)TestProjectColor_property_magentaColor {
    [self createColorModel:[UIColor magentaColor] text:@"[UIColor magentaColor]"];
    return self.dataMutArr;
}

- (NSMutableArray *)TestProjectColor_property_yellowColor {
    [self createColorModel:[UIColor yellowColor] text:@"[UIColor yellowColor]"];
    return self.dataMutArr;
}

- (NSMutableArray *)TestProjectColor_property_cyanColor {
    [self createColorModel:[UIColor cyanColor] text:@"[UIColor cyanColor]"];
    return self.dataMutArr;
}

- (NSMutableArray *)TestProjectColor_property_blueColor {
    [self createColorModel:[UIColor blueColor] text:@"[UIColor blueColor]"];
    return self.dataMutArr;
}

- (NSMutableArray *)TestProjectColor_property_greenColor {
    [self createColorModel:[UIColor greenColor] text:@"[UIColor greenColor]"];
    return self.dataMutArr;
}

- (NSMutableArray *)TestProjectColor_property_redColor {
    [self createColorModel:[UIColor redColor] text:@"[UIColor redColor]"];
    return self.dataMutArr;
}

- (NSMutableArray *)TestProjectColor_property_grayColor {
    [self createColorModel:[UIColor grayColor] text:@"[UIColor grayColor]"];
    return self.dataMutArr;
}

- (NSMutableArray *)TestProjectColor_property_whiteColor {
    [self createColorModel:[UIColor whiteColor] text:@"[UIColor whiteColor]"];
    return self.dataMutArr;
}

- (NSMutableArray *)TestProjectColor_property_lightGrayColor {
    [self createColorModel:[UIColor lightGrayColor] text:@"[UIColor lightGrayColor]"];
    return self.dataMutArr;
}

- (NSMutableArray *)TestProjectColor_property_darkGrayColor {
    [self createColorModel:[UIColor darkGrayColor] text:@"[UIColor darkGrayColor]"];
    return self.dataMutArr;
}

- (NSMutableArray *)TestProjectColor_property_blackColor {
    [self createColorModel:[UIColor blackColor] text:@"[UIColor blackColor]"];
    return self.dataMutArr;
}

- (NSMutableArray *)TestProjectColor_initWithCIColor {
    CIColor *ciColor = [CIColor colorWithRed:0.5 green:0.5 blue:0.5];
    [self createColorModel:[[UIColor alloc] initWithCIColor:ciColor] text:@"ciColor red:0.5 green:0.5 blue:0.5 alpha:1.0"];
    return self.dataMutArr;
}

- (NSMutableArray *)TestProjectColor_initWithPatternImage {
    UIImage *image = [UIImage imageNamed:@"lyf_1"];
    [self createColorModel:[[UIColor alloc] initWithPatternImage:image] text:@"imageNamed:@\"lyf_1\""];
    return self.dataMutArr;
}

- (NSMutableArray *)TestProjectColor_initWithCGColor {
    CGColorRef colorRef = CGColorCreateSRGB(0.5, 0.5, 0.5, 0.5);
    [self createColorModel:[[UIColor alloc] initWithCGColor:colorRef] text:@"colorRef red:0.5 green:0.5 blue:0.5 alpha:1.0"];
    return self.dataMutArr;
}

- (NSMutableArray *)TestProjectColor_initWithDisplayP3Red_green_blue_alpha {
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
        [self createColorModel:[UIColor whiteColor] text:dic[@"title"]];
        NSArray *itemChilds = dic[@"itemChilds"];
        for (NSDictionary *subDic in itemChilds) {
            NSString *displayP3Red = subDic[@"displayP3Red"];
            NSString *green = subDic[@"green"];
            NSString *blue = subDic[@"blue"];
            NSString *alpha = subDic[@"alpha"];
            UIColor *color = [[UIColor alloc] initWithDisplayP3Red:[displayP3Red floatValue] green:[green floatValue] blue:[blue floatValue] alpha:[alpha floatValue]];
            NSString *text = [NSString stringWithFormat:@"displayP3Red:%@ green:%@ blue:%@ alpha:%@", displayP3Red, green, blue, alpha];
            [self createColorModel:color text:text];
        }
    }
    return self.dataMutArr;
}

- (NSMutableArray *)TestProjectColor_initWithRed_green_blue_alpha {
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
        [self createColorModel:[UIColor whiteColor] text:dic[@"title"]];
        NSArray *itemChilds = dic[@"itemChilds"];
        for (NSDictionary *subDic in itemChilds) {
            NSString *red = subDic[@"red"];
            NSString *green = subDic[@"green"];
            NSString *blue = subDic[@"blue"];
            NSString *alpha = subDic[@"alpha"];
            UIColor *color = [[UIColor alloc] initWithRed:[red floatValue] green:[green floatValue] blue:[blue floatValue] alpha:[alpha floatValue]];
            NSString *text = [NSString stringWithFormat:@"initWithRed:%@ green:%@ blue:%@ alpha:%@", red, green, blue, alpha];
            [self createColorModel:color text:text];
        }
    }
    return self.dataMutArr;
}

- (NSMutableArray *)TestProjectColor_initWithHue_saturation_brightness_alpha {
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
        [self createColorModel:[UIColor whiteColor] text:dic[@"title"]];
        NSArray *itemChilds = dic[@"itemChilds"];
        for (NSDictionary *subDic in itemChilds) {
            NSString *hue = subDic[@"hue"];
            NSString *saturation = subDic[@"saturation"];
            NSString *brightness = subDic[@"brightness"];
            NSString *alpha = subDic[@"alpha"];
            UIColor *color = [[UIColor alloc] initWithHue:[hue floatValue] saturation:[saturation floatValue] brightness:[brightness floatValue] alpha:[alpha floatValue]];
            NSString *text = [NSString stringWithFormat:@"initWithHue:%@ saturation:%@ brightness:%@ alpha:%@", hue, saturation, brightness, alpha];
            [self createColorModel:color text:text];
        }
    }
    return self.dataMutArr;
}

- (NSMutableArray *)TestProjectColor_initWithWhite_alpha {
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
        [self createColorModel:[UIColor whiteColor] text:dic[@"title"]];
        NSArray *itemChilds = dic[@"itemChild"];
        for (NSDictionary *childDic in itemChilds) {
            NSString *white = childDic[@"white"];
            NSString *alpha = childDic[@"alpha"];
            UIColor *color = [[UIColor alloc] initWithWhite:[white floatValue] alpha:[alpha floatValue]];
            [self createColorModel:color text:[NSString stringWithFormat:@"initWithWhite:%@ alpha:%@", white, alpha]];
        }
    }
    return self.dataMutArr;
}

- (NSMutableArray *)TestProjectColor_colorWithCIColor {
    CIColor *ciColor = [CIColor colorWithRed:0.5 green:0.5 blue:0.5];
    [self createColorModel:[UIColor colorWithCIColor:ciColor] text:@"ciColor red:0.5 green:0.5 blue:0.5 alpha:1.0"];
    return self.dataMutArr;
}

- (NSMutableArray *)TestProjectColor_colorWithPatternImage {
    UIImage *image = [UIImage imageNamed:@"lyf_1"];
    [self createColorModel:[UIColor colorWithPatternImage:image] text:@"imageNamed:@\"lyf_1\""];
    return self.dataMutArr;
}

- (NSMutableArray *)TestProjectColor_colorWithCGColor {
    CGColorRef colorRef = CGColorCreateSRGB(0.5, 0.5, 0.5, 0.5);
    [self createColorModel:[UIColor colorWithCGColor:colorRef] text:@"colorRef red:0.5 green:0.5 blue:0.5 alpha:1.0"];
    return self.dataMutArr;
}

- (NSMutableArray *)TestProjectColor_colorWithDisplayP3Red_green_blue_alpha {
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
        [self createColorModel:[UIColor whiteColor] text:dic[@"title"]];
        NSArray *itemChilds = dic[@"itemChilds"];
        for (NSDictionary *subDic in itemChilds) {
            NSString *displayP3Red = subDic[@"displayP3Red"];
            NSString *green = subDic[@"green"];
            NSString *blue = subDic[@"blue"];
            NSString *alpha = subDic[@"alpha"];
            UIColor *color = [UIColor colorWithDisplayP3Red:[displayP3Red floatValue] green:[green floatValue] blue:[blue floatValue] alpha:[alpha floatValue]];
            NSString *text = [NSString stringWithFormat:@"displayP3Red:%@ green:%@ blue:%@ alpha:%@", displayP3Red, green, blue, alpha];
            [self createColorModel:color text:text];
        }
    }
    return self.dataMutArr;
}

- (NSMutableArray *)TestProjectColor_colorWithRed_green_blue_alpha {
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
        [self createColorModel:[UIColor whiteColor] text:dic[@"title"]];
        NSArray *itemChilds = dic[@"itemChilds"];
        for (NSDictionary *subDic in itemChilds) {
            NSString *red = subDic[@"red"];
            NSString *green = subDic[@"green"];
            NSString *blue = subDic[@"blue"];
            NSString *alpha = subDic[@"alpha"];
            UIColor *color = [UIColor colorWithRed:[red floatValue] green:[green floatValue] blue:[blue floatValue] alpha:[alpha floatValue]];
            NSString *text = [NSString stringWithFormat:@"red:%@ green:%@ blue:%@ alpha:%@", red, green, blue, alpha];
            [self createColorModel:color text:text];
        }
    }
    return self.dataMutArr;
}

- (NSMutableArray *)TestProjectColor_colorWithHue_saturation_brightness_alpha {
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
        [self createColorModel:[UIColor whiteColor] text:dic[@"title"]];
        NSArray *itemChilds = dic[@"itemChilds"];
        for (NSDictionary *subDic in itemChilds) {
            NSString *hue = subDic[@"hue"];
            NSString *saturation = subDic[@"saturation"];
            NSString *brightness = subDic[@"brightness"];
            NSString *alpha = subDic[@"alpha"];
            UIColor *color = [UIColor colorWithHue:[hue floatValue] saturation:[saturation floatValue] brightness:[brightness floatValue] alpha:[alpha floatValue]];
            NSString *text = [NSString stringWithFormat:@"hue:%@ saturation:%@ brightness:%@ alpha:%@", hue, saturation, brightness, alpha];
            [self createColorModel:color text:text];
        }
    }
    return self.dataMutArr;
}

- (NSMutableArray *)TestProjectColor_colorWithWhite_alpha {
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
        [self createColorModel:[UIColor whiteColor] text:dic[@"title"]];
        NSArray *itemChilds = dic[@"itemChild"];
        for (NSDictionary *childDic in itemChilds) {
            NSString *white = childDic[@"white"];
            NSString *alpha = childDic[@"alpha"];
            UIColor *color = [UIColor colorWithWhite:[white floatValue] alpha:[alpha floatValue]];
            [self createColorModel:color text:[NSString stringWithFormat:@"white:%@ alpha:%@", white, alpha]];
        }
    }
    return self.dataMutArr;
}

@end
