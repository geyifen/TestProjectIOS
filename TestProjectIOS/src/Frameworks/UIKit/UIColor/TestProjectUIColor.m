//
//  TestProjectUIColor.m
//  TestProjectIOS
//
//  Created by zjrcumac on 2023/2/22.
//

#import "TestProjectUIColor.h"

#import "TestProjectUIColorCell.h"
#import <objc/message.h>
#import <CoreImage/CoreImage.h>

@interface TestProjectUIColor ()

@end

@implementation TestProjectUIColor

- (NSDictionary *)method_1 {
    return @{
        @"+ (UIColor *)colorWithWhite:(CGFloat)white alpha:(CGFloat)alpha;":@{
            @"method":@"TestProjectColor_colorWithWhite_alpha",
            @"desc":@"根据white和alpha获取颜色\n@param white:颜色1->0 从白色到黑色 \n@param alpha:颜色的透明度1->0 从显示到不显示"}
    };
}

- (NSDictionary *)method_2 {
    return @{
        @"+ (UIColor *)colorWithHue:(CGFloat)hue saturation:(CGFloat)saturation brightness:(CGFloat)brightness alpha:(CGFloat)alpha;":@{
            @"method":@"TestProjectColor_colorWithHue_saturation_brightness_alpha",
            @"desc":@"根据给定的 色调hue 饱和度saturation 亮度brightness来生成颜色\n@param hue色调:通常是指图像的整体明暗度.例如，如果图像亮部像素较多的话，则图像整体上看起来较为明快\n@param  saturation饱和度:又称彩度,是指颜色的强度或纯度,饱和度表示色相中灰色分量所占的比例，它使用从0%（灰色）至100%（完全饱和）的百分比来度量。 在标准色轮上，饱和度从中心到边缘递增\n@param brightness亮度:是颜色的相对明暗程度，通常使用从0%（黑色）至100%（白色）的百分比来度量"}
    };
}

- (NSDictionary *)method_3 {
    return @{
        @"+ (UIColor *)colorWithRed:(CGFloat)red green:(CGFloat)green blue:(CGFloat)blue alpha:(CGFloat)alpha;":@{
            @"method":@"TestProjectColor_colorWithRed_green_blue_alpha",
            @"desc":@"根据给定的rgb来生成颜色"}
    };
}

- (NSDictionary *)method_4 {
    return @{
        @"+ (UIColor *)colorWithDisplayP3Red:(CGFloat)displayP3Red green:(CGFloat)green blue:(CGFloat)blue alpha:(CGFloat)alpha API_AVAILABLE(ios(10.0));":@{
            @"method":@"TestProjectColor_colorWithDisplayP3Red_green_blue_alpha",
            @"desc":@"10以后才可以用，在模拟器的层级中可以看到渐变色，但是真机和模拟器却看不到，可以试试改一下颜色的展示方法"}
    };
}

- (NSDictionary *)method_5 {
    return @{
        @"+ (UIColor *)colorWithCGColor:(CGColorRef)cgColor;":@{
            @"method":@"TestProjectColor_colorWithCGColor",
            @"desc":@"通过CGColor绘制颜色"}
    };
}

- (NSDictionary *)method_6 {
    return @{
        @"+ (UIColor *)colorWithPatternImage:(UIImage *)image;":@{
            @"method":@"TestProjectColor_colorWithPatternImage",
            @"desc":@"通过UIImage绘制颜色"}
    };
}

- (NSDictionary *)method_7 {
    return @{
        @"+ (UIColor *)colorWithCIColor:(CIColor *)ciColor API_AVAILABLE(ios(5.0));":@{
            @"method":@"TestProjectColor_colorWithCIColor",
            @"desc":@"通过CIColor绘制颜色"}
    };
}

- (NSDictionary *)method_8 {
    return @{
        @"- (UIColor *)initWithWhite:(CGFloat)white alpha:(CGFloat)alpha;":@{
            @"method":@"TestProjectColor_initWithWhite_alpha",
            @"desc":@"通过initWithWhite创建颜色\n@param white:颜色1->0 从白色到黑色 \n@param alpha:颜色的透明度1->0 从显示到不显示"}
    };
}

- (NSDictionary *)method_9 {
    return @{
        @"- (UIColor *)initWithHue:(CGFloat)hue saturation:(CGFloat)saturation brightness:(CGFloat)brightness alpha:(CGFloat)alpha;":@{
            @"method":@"TestProjectColor_initWithHue_saturation_brightness_alpha",
            @"desc":@"init方法 根据给定的 色调hue 饱和度saturation 亮度brightness来生成颜色\n@param hue色调:通常是指图像的整体明暗度.例如，如果图像亮部像素较多的话，则图像整体上看起来较为明快\n@param  saturation饱和度:又称彩度,是指颜色的强度或纯度,饱和度表示色相中灰色分量所占的比例，它使用从0%（灰色）至100%（完全饱和）的百分比来度量。 在标准色轮上，饱和度从中心到边缘递增\n@param brightness亮度:是颜色的相对明暗程度，通常使用从0%（黑色）至100%（白色）的百分比来度量"}
    };
}

- (NSDictionary *)method_10 {
    return @{
        @"- (UIColor *)initWithRed:(CGFloat)red green:(CGFloat)green blue:(CGFloat)blue alpha:(CGFloat)alpha;":@{
            @"method":@"TestProjectColor_initWithRed_green_blue_alpha",
            @"desc":@"init方法 根据给定的rgb来生成颜色"}
    };
}

- (NSDictionary *)method_11 {
    return @{
        @"- (UIColor *)initWithDisplayP3Red:(CGFloat)displayP3Red green:(CGFloat)green blue:(CGFloat)blue alpha:(CGFloat)alpha API_AVAILABLE(ios(10.0));":@{
            @"method":@"TestProjectColor_initWithDisplayP3Red_green_blue_alpha",
            @"desc":@"10以后才可以用, init方法，在模拟器的层级中可以看到渐变色，但是真机和模拟器却看不到，可以试试改一下颜色的展示方法"}
    };
}

- (NSDictionary *)method_12 {
    return @{
        @"- (UIColor *)initWithCGColor:(CGColorRef)cgColor;":@{
            @"method":@"TestProjectColor_initWithCGColor",
            @"desc":@"通过init方法 CGColor绘制颜色"}
    };
}

- (NSDictionary *)method_13 {
    return @{
        @"- (UIColor *)initWithPatternImage:(UIImage*)image;":@{
            @"method":@"TestProjectColor_initWithPatternImage",
            @"desc":@"通过init方法 UIImage绘制颜色"}
    };
}

- (NSDictionary *)method_14 {
    return @{
        @"- (UIColor *)initWithCIColor:(CIColor *)ciColor API_AVAILABLE(ios(5.0));":@{
            @"method":@"TestProjectColor_initWithCIColor",
            @"desc":@"通过init方法 CIColor绘制颜色"}
    };
}

- (NSDictionary *)method_15 {
    return @{
        @"@property(class, nonatomic, readonly) UIColor *blackColor;      // 0.0 white":@{
            @"method":@"TestProjectColor_property_blackColor",
            @"desc":@"通过[UIColor blackColor]绘制颜色, 0.0 white"}
    };
}

- (NSDictionary *)method_16 {
    return @{
        @"@property(class, nonatomic, readonly) UIColor *darkGrayColor;   // 0.333 white":@{
            @"method":@"TestProjectColor_property_darkGrayColor",
            @"desc":@"通过[UIColor darkGrayColor]绘制颜色, 0.333 white"}
    };
}

- (NSDictionary *)method_17 {
    return @{
        @"@property(class, nonatomic, readonly) UIColor *lightGrayColor;  // 0.667 white":@{
            @"method":@"TestProjectColor_property_lightGrayColor",
            @"desc":@"通过[UIColor lightGrayColor]绘制颜色, 0.667 white"}
    };
}

- (NSDictionary *)method_18 {
    return @{
        @"@property(class, nonatomic, readonly) UIColor *whiteColor;      // 1.0 white":@{
            @"method":@"TestProjectColor_property_whiteColor",
            @"desc":@"通过[UIColor whiteColor]绘制颜色, 1.0 white"}
    };
}

- (NSDictionary *)method_19 {
    return @{
        @"@property(class, nonatomic, readonly) UIColor *grayColor;       // 0.5 white":@{
            @"method":@"TestProjectColor_property_grayColor",
            @"desc":@"通过[UIColor grayColor]绘制颜色, 0.5 white"}
    };
}

- (NSDictionary *)method_20 {
    return @{
        @"@property(class, nonatomic, readonly) UIColor *redColor;        // 1.0, 0.0, 0.0 RGB":@{
            @"method":@"TestProjectColor_property_redColor",
            @"desc":@"通过[UIColor redColor]绘制颜色, 1.0, 0.0, 0.0 RGB"}
    };
}

- (NSDictionary *)method_21 {
    return @{
        @"@property(class, nonatomic, readonly) UIColor *greenColor;      // 0.0, 1.0, 0.0 RGB":@{
            @"method":@"TestProjectColor_property_greenColor",
            @"desc":@"通过[UIColor greenColor]绘制颜色, 0.0, 1.0, 0.0 RGB"}
    };
}

- (NSDictionary *)method_22 {
    return @{
        @"@property(class, nonatomic, readonly) UIColor *blueColor;       // 0.0, 0.0, 1.0 RGB":@{
            @"method":@"TestProjectColor_property_blueColor",
            @"desc":@"通过[UIColor blueColor]绘制颜色, 0.0, 0.0, 1.0 RGB"}
    };
}

- (NSDictionary *)method_23 {
    return @{
        @"@property(class, nonatomic, readonly) UIColor *cyanColor;       // 0.0, 1.0, 1.0 RGB":@{
            @"method":@"TestProjectColor_property_cyanColor",
            @"desc":@"通过[UIColor cyanColor]绘制颜色, 0.0, 1.0, 1.0 RGB"}
    };
}

- (NSDictionary *)method_24 {
    return @{
        @"@property(class, nonatomic, readonly) UIColor *magentaColor;    // 1.0, 0.0, 1.0 RGB":@{
            @"method":@"TestProjectColor_property_magentaColor",
            @"desc":@"通过[UIColor magentaColor]绘制颜色, 1.0, 0.0, 1.0 RGB"}
    };
}

- (NSDictionary *)method_25 {
    return @{
        @"@property(class, nonatomic, readonly) UIColor *orangeColor;     // 1.0, 0.5, 0.0 RGB":@{
            @"method":@"TestProjectColor_property_orangeColor",
            @"desc":@"通过[UIColor orangeColor]绘制颜色, 1.0, 0.5, 0.0 RGB"}
    };
}

- (NSDictionary *)method_26 {
    return @{
        @"@property(class, nonatomic, readonly) UIColor *purpleColor;     // 0.5, 0.0, 0.5 RGB":@{
            @"method":@"TestProjectColor_property_purpleColor",
            @"desc":@"通过[UIColor purpleColor]绘制颜色, 0.5, 0.0, 0.5 RGB"}
    };
}

- (NSDictionary *)method_27 {
    return @{
        @"@property(class, nonatomic, readonly) UIColor *brownColor;      // 0.6, 0.4, 0.2 RGB":@{
            @"method":@"TestProjectColor_property_brownColor",
            @"desc":@"通过[UIColor brownColor]绘制颜色, 0.6, 0.4, 0.2 RGB"}
    };
}

- (NSDictionary *)method_28 {
    return @{
        @"@property(class, nonatomic, readonly) UIColor *clearColor;      // 0.0 white, 0.0 alpha":@{
            @"method":@"TestProjectColor_property_clearColor",
            @"desc":@"通过[UIColor clearColor]绘制颜色, 0.0 white, 0.0"}
    };
}

- (NSDictionary *)method_29 {
    return @{
        @"- (BOOL)getWhite:(nullable CGFloat *)white alpha:(nullable CGFloat *)alpha API_AVAILABLE(ios(5.0));":@{
            @"method":@"TestProjectColor_getWhite_alpha",
            @"desc":@"得到UIColor的white和alpha"}
    };
}

- (NSDictionary *)method_30 {
    return @{
        @"- (BOOL)getHue:(nullable CGFloat *)hue saturation:(nullable CGFloat *)saturation brightness:(nullable CGFloat *)brightness alpha:(nullable CGFloat *)alpha API_AVAILABLE(ios(5.0));":@{
            @"method":@"TestProjectColor_getHue_saturation_brightness_alpha",
            @"desc":@"得到UIColor的hue、saturation、brightness、alpha"}
    };
}

- (NSDictionary *)method_31 {
    return @{
        @"- (BOOL)getRed:(nullable CGFloat *)red green:(nullable CGFloat *)green blue:(nullable CGFloat *)blue alpha:(nullable CGFloat *)alpha API_AVAILABLE(ios(5.0));":@{
            @"method":@"TestProjectColor_getRed_green_blue_alpha",
            @"desc":@"得到UIColor的red、green、blue、alpha"}
    };
}

- (NSDictionary *)method_32 {
    return @{
        @"- (UIColor *)colorWithAlphaComponent:(CGFloat)alpha;":@{
            @"method":@"TestProjectColor_colorWithAlphaComponent",
            @"desc":@"设置颜色的alpha"}
    };
}

- (NSDictionary *)method_33 {
    return @{
        @"@property(nonatomic,readonly) CGColorRef CGColor;":@{
            @"method":@"TestProjectColor_property_CGColorRef",
            @"desc":@"设置颜色的alpha"}
    };
}

- (NSDictionary *)method_34 {
    return @{
        @"@property(nonatomic,readonly) CIColor   *CIColor API_AVAILABLE(ios(5.0));":@{
            @"method":@"TestProjectColor_property_CIColor",
            @"desc":@"设置颜色的alpha"}
    };
}

- (TestProjectUIColorModel *)createColorModel:(UIColor *)color text:(NSString *)text {
    TestProjectUIColorModel *colorModel = [[TestProjectUIColorModel alloc] init];
    colorModel.title = text;
    colorModel.backgroundColor = color;
    [colorModel calculDataViewHeight];
    return colorModel;
}

- (void)TestProjectColor_property_CIColor {
    NSMutableArray *mutDataArr = [NSMutableArray array];
    id data = nil;
    @try {
        data = [UIColor yellowColor].CIColor;
    } @catch (NSException *exception) {
        data = exception;
    } @finally {
        
    }
    TestProjectUIColorModel *m1 = [self createColorModel:[UIColor yellowColor] text:[NSString stringWithFormat:@"%@", data]];
    [mutDataArr addObject:m1];
    self.tableView.dataSourceArray = mutDataArr;
}

- (void)TestProjectColor_property_CGColorRef {
    NSMutableArray *mutDataArr = [NSMutableArray array];
    CGColorRef cgColorRef = [UIColor yellowColor].CGColor;
    TestProjectUIColorModel *m1 = [self createColorModel:[UIColor yellowColor] text:[NSString stringWithFormat:@"%@", cgColorRef]];
    [mutDataArr addObject:m1];
    self.tableView.dataSourceArray = mutDataArr;
}

- (void)TestProjectColor_colorWithAlphaComponent {
    NSMutableArray *mutDataArr = [NSMutableArray array];
    TestProjectUIColorModel *m1 = [self createColorModel:[[UIColor yellowColor] colorWithAlphaComponent:0.2] text:@"设置颜色的alpha"];
    [mutDataArr addObject:m1];
    self.tableView.dataSourceArray = mutDataArr;
}

- (void)TestProjectColor_getRed_green_blue_alpha {
    NSMutableArray *mutDataArr = [NSMutableArray array];
    CGFloat red, green, blue, alpha;
    BOOL ret = [[UIColor yellowColor] getRed:&red green:&green blue:&blue alpha:&alpha];
    TestProjectUIColorModel *m1 = [self createColorModel:[UIColor whiteColor] text:[NSString stringWithFormat:@"[[UIColor yellowColor] getRed:&red green:&green blue:&blue alpha:&alpha]: ret:%u red:%f green:%f blue:%f alpha:%f", ret, red, green, blue, alpha]];
    [mutDataArr addObject:m1];
    self.tableView.dataSourceArray = mutDataArr;
}

- (void)TestProjectColor_getHue_saturation_brightness_alpha {
    NSMutableArray *mutDataArr = [NSMutableArray array];
    CGFloat hue, saturation, brightness, alpha;
    BOOL ret = [[UIColor yellowColor] getHue:&hue saturation:&saturation brightness:&brightness alpha:&alpha];
    TestProjectUIColorModel *m1 = [self createColorModel:[UIColor whiteColor] text:[NSString stringWithFormat:@"[[UIColor yellowColor] getHue:&hue saturation:&saturation brightness:&brightness alpha:&alpha]: ret:%u hue:%f saturation:%f brightness:%f alpha:%f", ret, hue, saturation, brightness, alpha]];
    [mutDataArr addObject:m1];
    self.tableView.dataSourceArray = mutDataArr;
}

- (void)TestProjectColor_getWhite_alpha {
    NSMutableArray *mutDataArr = [NSMutableArray array];
    CGFloat white, alpha;
    BOOL ret = [[UIColor yellowColor] getWhite:&white alpha:&alpha];
    TestProjectUIColorModel *m1 = [self createColorModel:[UIColor whiteColor] text:[NSString stringWithFormat:@"[[UIColor yellowColor] getWhite:&white alpha:&alpha]: ret:%u white:%f alpha:%f", ret, white, alpha]];
    [mutDataArr addObject:m1];
    self.tableView.dataSourceArray = mutDataArr;
}

- (void)TestProjectColor_property_clearColor {
    NSMutableArray *mutDataArr = [NSMutableArray array];
    TestProjectUIColorModel *m1 = [self createColorModel:[UIColor clearColor] text:@"[UIColor clearColor]"];
    [mutDataArr addObject:m1];
    self.tableView.dataSourceArray = mutDataArr;
}

- (void)TestProjectColor_property_brownColor {
    NSMutableArray *mutDataArr = [NSMutableArray array];
    TestProjectUIColorModel *m1 = [self createColorModel:[UIColor brownColor] text:@"[UIColor brownColor]"];
    [mutDataArr addObject:m1];
    self.tableView.dataSourceArray = mutDataArr;
}

- (void)TestProjectColor_property_purpleColor {
    NSMutableArray *mutDataArr = [NSMutableArray array];
    TestProjectUIColorModel *m1 = [self createColorModel:[UIColor purpleColor] text:@"[UIColor purpleColor]"];
    [mutDataArr addObject:m1];
    self.tableView.dataSourceArray = mutDataArr;
}

- (void)TestProjectColor_property_orangeColor {
    NSMutableArray *mutDataArr = [NSMutableArray array];
    TestProjectUIColorModel *m1 = [self createColorModel:[UIColor orangeColor] text:@"[UIColor orangeColor]"];
    [mutDataArr addObject:m1];
    self.tableView.dataSourceArray = mutDataArr;
}

- (void)TestProjectColor_property_magentaColor {
    NSMutableArray *mutDataArr = [NSMutableArray array];
    TestProjectUIColorModel *m1 = [self createColorModel:[UIColor magentaColor] text:@"[UIColor magentaColor]"];
    [mutDataArr addObject:m1];
    self.tableView.dataSourceArray = mutDataArr;
}

- (void)TestProjectColor_property_yellowColor {
    NSMutableArray *mutDataArr = [NSMutableArray array];
    TestProjectUIColorModel *m1 = [self createColorModel:[UIColor yellowColor] text:@"[UIColor yellowColor]"];
    [mutDataArr addObject:m1];
    self.tableView.dataSourceArray = mutDataArr;
}

- (void)TestProjectColor_property_cyanColor {
    NSMutableArray *mutDataArr = [NSMutableArray array];
    TestProjectUIColorModel *m1 = [self createColorModel:[UIColor cyanColor] text:@"[UIColor cyanColor]"];
    [mutDataArr addObject:m1];
    self.tableView.dataSourceArray = mutDataArr;
}

- (void)TestProjectColor_property_blueColor {
    NSMutableArray *mutDataArr = [NSMutableArray array];
    TestProjectUIColorModel *m1 = [self createColorModel:[UIColor blueColor] text:@"[UIColor blueColor]"];
    m1.textColor = [UIColor redColor];
    [mutDataArr addObject:m1];
    self.tableView.dataSourceArray = mutDataArr;
}

- (void)TestProjectColor_property_greenColor {
    NSMutableArray *mutDataArr = [NSMutableArray array];
    TestProjectUIColorModel *m1 = [self createColorModel:[UIColor greenColor] text:@"[UIColor greenColor]"];
    [mutDataArr addObject:m1];
    self.tableView.dataSourceArray = mutDataArr;
}

- (void)TestProjectColor_property_redColor {
    NSMutableArray *mutDataArr = [NSMutableArray array];
    TestProjectUIColorModel *m1 = [self createColorModel:[UIColor redColor] text:@"[UIColor redColor]"];
    [mutDataArr addObject:m1];
    self.tableView.dataSourceArray = mutDataArr;
}

- (void)TestProjectColor_property_grayColor {
    NSMutableArray *mutDataArr = [NSMutableArray array];
    TestProjectUIColorModel *m1 = [self createColorModel:[UIColor grayColor] text:@"[UIColor grayColor]"];
    [mutDataArr addObject:m1];
    self.tableView.dataSourceArray = mutDataArr;
}

- (void)TestProjectColor_property_whiteColor {
    NSMutableArray *mutDataArr = [NSMutableArray array];
    TestProjectUIColorModel *m1 = [self createColorModel:[UIColor whiteColor] text:@"[UIColor whiteColor]"];
    [mutDataArr addObject:m1];
    self.tableView.dataSourceArray = mutDataArr;
}

- (void)TestProjectColor_property_lightGrayColor {
    NSMutableArray *mutDataArr = [NSMutableArray array];
    TestProjectUIColorModel *m1 = [self createColorModel:[UIColor lightGrayColor] text:@"[UIColor lightGrayColor]"];
    [mutDataArr addObject:m1];
    self.tableView.dataSourceArray = mutDataArr;
}

- (void)TestProjectColor_property_darkGrayColor {
    NSMutableArray *mutDataArr = [NSMutableArray array];
    TestProjectUIColorModel *m1 = [self createColorModel:[UIColor darkGrayColor] text:@"[UIColor darkGrayColor]"];
    [mutDataArr addObject:m1];
    self.tableView.dataSourceArray = mutDataArr;
}

- (void)TestProjectColor_property_blackColor {
    NSMutableArray *mutDataArr = [NSMutableArray array];
    TestProjectUIColorModel *m1 = [self createColorModel:[UIColor blackColor] text:@"[UIColor blackColor]"];
    [mutDataArr addObject:m1];
    self.tableView.dataSourceArray = mutDataArr;
}

- (void)TestProjectColor_initWithCIColor {
    NSMutableArray *mutDataArr = [NSMutableArray array];
    CIColor *ciColor = [CIColor colorWithRed:0.5 green:0.5 blue:0.5];
    TestProjectUIColorModel *m1 = [self createColorModel:[[UIColor alloc] initWithCIColor:ciColor] text:@"ciColor red:0.5 green:0.5 blue:0.5 alpha:1.0"];
    [mutDataArr addObject:m1];
    self.tableView.dataSourceArray = mutDataArr;
}

- (void)TestProjectColor_initWithPatternImage {
    UIImage *image = [UIImage imageNamed:@"lyf_1"];
    NSMutableArray *mutDataArr = [NSMutableArray array];
    TestProjectUIColorModel *m1 = [self createColorModel:[[UIColor alloc] initWithPatternImage:image] text:@"imageNamed:@\"lyf_1\""];
    [mutDataArr addObject:m1];
    self.tableView.dataSourceArray = mutDataArr;
}

- (void)TestProjectColor_initWithCGColor {
    NSMutableArray *mutDataArr = [NSMutableArray array];
    CGColorRef colorRef = CGColorCreateSRGB(0.5, 0.5, 0.5, 0.5);
    TestProjectUIColorModel *m1 = [self createColorModel:[[UIColor alloc] initWithCGColor:colorRef] text:@"colorRef red:0.5 green:0.5 blue:0.5 alpha:1.0"];
    [mutDataArr addObject:m1];
    self.tableView.dataSourceArray = mutDataArr;
}

- (void)TestProjectColor_initWithDisplayP3Red_green_blue_alpha {
    NSMutableArray *mutDataArr = [NSMutableArray array];
    TestProjectUIColorModel *m1 = [self createColorModel:[[UIColor alloc] initWithDisplayP3Red:1.0 green:1.0 blue:1.0 alpha:1.0] text:@"displayP3Red:1.0 green:1.0 blue:1.0 alpha:1.0"];
    [mutDataArr addObject:m1];
    
    TestProjectUIColorModel *m2 = [self createColorModel:[[UIColor alloc] initWithDisplayP3Red:1.0 green:1.0 blue:0.5 alpha:1.0] text:@"displayP3Red:1.0 green:1.0 blue:0.5 alpha:1.0"];
    [mutDataArr addObject:m2];
    
    TestProjectUIColorModel *m3 = [self createColorModel:[[UIColor alloc] initWithDisplayP3Red:1.0 green:1.0 blue:0.0 alpha:1.0] text:@"displayP3Red:1.0 green:1.0 blue:0.0 alpha:1.0"];
    [mutDataArr addObject:m3];
    
    TestProjectUIColorModel *m4 = [self createColorModel:[[UIColor alloc] initWithDisplayP3Red:1.0 green:0.5 blue:1.0 alpha:1.0] text:@"displayP3Red:1.0 green:0.5 blue:1.0 alpha:1.0"];
    [mutDataArr addObject:m4];
    
    TestProjectUIColorModel *m5 = [self createColorModel:[[UIColor alloc] initWithDisplayP3Red:1.0 green:0.0 blue:1.0 alpha:1.0] text:@"displayP3Red:1.0 green:0.0 blue:1.0 alpha:1.0"];
    [mutDataArr addObject:m5];
    
    TestProjectUIColorModel *m6 = [self createColorModel:[[UIColor alloc] initWithDisplayP3Red:0.5 green:1.0 blue:1.0 alpha:1.0] text:@"displayP3Red:0.5 green:1.0 blue:1.0 alpha:1.0"];
    [mutDataArr addObject:m6];
        
    TestProjectUIColorModel *m7 = [self createColorModel:[[UIColor alloc] initWithDisplayP3Red:0.0 green:1.0 blue:1.0 alpha:1.0] text:@"displayP3Red:0.0 green:1.0 blue:1.0 alpha:1.0"];
    [mutDataArr addObject:m7];
    
    TestProjectUIColorModel *m8 = [self createColorModel:[[UIColor alloc] initWithDisplayP3Red:1.0 green:1.0 blue:1.0 alpha:0.5] text:@"displayP3Red:1.0 green:1.0 blue:1.0 alpha:0.5"];
    [mutDataArr addObject:m8];
    
    TestProjectUIColorModel *m9 = [self createColorModel:[[UIColor alloc] initWithDisplayP3Red:1.0 green:1.0 blue:1.0 alpha:0.0] text:@"displayP3Red:1.0 green:1.0 blue:1.0 alpha:0.0"];
    [mutDataArr addObject:m9];

    TestProjectUIColorModel *m10 = [self createColorModel:[[UIColor alloc] initWithDisplayP3Red:0.0 green:0.0 blue:0.0 alpha:1.0] text:@"displayP3Red:0.0 green:0.0 blue:0.0 alpha:1.0"];
    [mutDataArr addObject:m10];

    TestProjectUIColorModel *m11 = [self createColorModel:[[UIColor alloc] initWithDisplayP3Red:0.5 green:0.0 blue:0.0 alpha:1.0] text:@"displayP3Red:0.5 green:0.0 blue:0.0 alpha:1.0"];
    [mutDataArr addObject:m11];

    TestProjectUIColorModel *m12 = [self createColorModel:[[UIColor alloc] initWithDisplayP3Red:1.0 green:0.0 blue:0.0 alpha:1.0] text:@"displayP3Red:1.0 green:0.0 blue:0.0 alpha:1.0"];
    [mutDataArr addObject:m12];

    TestProjectUIColorModel *m13 = [self createColorModel:[[UIColor alloc] initWithDisplayP3Red:0.0 green:0.5 blue:0.0 alpha:1.0] text:@"displayP3Red:0.0 green:0.5 blue:0.0 alpha:1.0"];
    [mutDataArr addObject:m13];

    TestProjectUIColorModel *m14 = [self createColorModel:[[UIColor alloc] initWithDisplayP3Red:0.0 green:1.0 blue:0.0 alpha:1.0] text:@"displayP3Red:0.0 green:1.0 blue:0.0 alpha:1.0"];
    [mutDataArr addObject:m14];

    TestProjectUIColorModel *m15 = [self createColorModel:[[UIColor alloc] initWithDisplayP3Red:0.0 green:0.0 blue:0.5 alpha:1.0] text:@"displayP3Red:0.0 green:0.0 blue:0.5 alpha:1.0"];
    [mutDataArr addObject:m15];

    TestProjectUIColorModel *m16 = [self createColorModel:[[UIColor alloc] initWithDisplayP3Red:0.0 green:0.0 blue:1.0 alpha:1.0] text:@"displayP3Red:0.0 green:0.0 blue:1.0 alpha:1.0"];
    [mutDataArr addObject:m16];

    TestProjectUIColorModel *m17 = [self createColorModel:[[UIColor alloc] initWithDisplayP3Red:0.5 green:0.5 blue:0.5 alpha:1.0] text:@"displayP3Red:0.5 green:0.5 blue:0.5 alpha:1.0"];
    [mutDataArr addObject:m17];

    self.tableView.dataSourceArray = mutDataArr;

}

- (void)TestProjectColor_initWithRed_green_blue_alpha {
    NSMutableArray *mutDataArr = [NSMutableArray array];
    TestProjectUIColorModel *m1 = [self createColorModel:[[UIColor alloc] initWithRed:1.0 green:1.0 blue:1.0 alpha:1.0] text:@"red:1.0 green:1.0 blue:1.0 alpha:1.0"];
    [mutDataArr addObject:m1];
    
    TestProjectUIColorModel *m2 = [self createColorModel:[[UIColor alloc] initWithRed:1.0 green:1.0 blue:0.5 alpha:1.0] text:@"red:1.0 green:1.0 blue:0.5 alpha:1.0"];
    [mutDataArr addObject:m2];
    
    TestProjectUIColorModel *m3 = [self createColorModel:[[UIColor alloc] initWithRed:1.0 green:1.0 blue:0.0 alpha:1.0] text:@"red:1.0 green:1.0 blue:0.0 alpha:1.0"];
    [mutDataArr addObject:m3];
    
    TestProjectUIColorModel *m4 = [self createColorModel:[[UIColor alloc] initWithRed:1.0 green:0.5 blue:1.0 alpha:1.0] text:@"red:1.0 green:0.5 blue:1.0 alpha:1.0"];
    [mutDataArr addObject:m4];
    
    TestProjectUIColorModel *m5 = [self createColorModel:[[UIColor alloc] initWithRed:1.0 green:0.0 blue:1.0 alpha:1.0] text:@"red:1.0 green:0.0 blue:1.0 alpha:1.0"];
    [mutDataArr addObject:m5];
    
    TestProjectUIColorModel *m6 = [self createColorModel:[[UIColor alloc] initWithRed:0.5 green:1.0 blue:1.0 alpha:1.0] text:@"red:0.5 green:1.0 blue:1.0 alpha:1.0"];
    [mutDataArr addObject:m6];
        
    TestProjectUIColorModel *m7 = [self createColorModel:[[UIColor alloc] initWithRed:0.0 green:1.0 blue:1.0 alpha:1.0] text:@"red:0.0 green:1.0 blue:1.0 alpha:1.0"];
    [mutDataArr addObject:m7];
    
    TestProjectUIColorModel *m8 = [self createColorModel:[[UIColor alloc] initWithRed:1.0 green:1.0 blue:1.0 alpha:0.5] text:@"red:1.0 green:1.0 blue:1.0 alpha:0.5"];
    [mutDataArr addObject:m8];
    
    TestProjectUIColorModel *m9 = [self createColorModel:[[UIColor alloc] initWithRed:1.0 green:1.0 blue:1.0 alpha:0.0] text:@"red:1.0 green:1.0 blue:1.0 alpha:0.0"];
    [mutDataArr addObject:m9];

    TestProjectUIColorModel *m10 = [self createColorModel:[[UIColor alloc] initWithRed:0.0 green:0.0 blue:0.0 alpha:1.0] text:@"red:0.0 green:0.0 blue:0.0 alpha:1.0"];
    [mutDataArr addObject:m10];

    TestProjectUIColorModel *m11 = [self createColorModel:[[UIColor alloc] initWithRed:0.5 green:0.0 blue:0.0 alpha:1.0] text:@"red:0.5 green:0.0 blue:0.0 alpha:1.0"];
    [mutDataArr addObject:m11];

    TestProjectUIColorModel *m12 = [self createColorModel:[[UIColor alloc] initWithRed:1.0 green:0.0 blue:0.0 alpha:1.0] text:@"red:1.0 green:0.0 blue:0.0 alpha:1.0"];
    [mutDataArr addObject:m12];

    TestProjectUIColorModel *m13 = [self createColorModel:[[UIColor alloc] initWithRed:0.0 green:0.5 blue:0.0 alpha:1.0] text:@"red:0.0 green:0.5 blue:0.0 alpha:1.0"];
    [mutDataArr addObject:m13];

    TestProjectUIColorModel *m14 = [self createColorModel:[[UIColor alloc] initWithRed:0.0 green:1.0 blue:0.0 alpha:1.0] text:@"red:0.0 green:1.0 blue:0.0 alpha:1.0"];
    [mutDataArr addObject:m14];

    TestProjectUIColorModel *m15 = [self createColorModel:[[UIColor alloc] initWithRed:0.0 green:0.0 blue:0.5 alpha:1.0] text:@"red:0.0 green:0.0 blue:0.5 alpha:1.0"];
    [mutDataArr addObject:m15];

    TestProjectUIColorModel *m16 = [self createColorModel:[[UIColor alloc] initWithRed:0.0 green:0.0 blue:1.0 alpha:1.0] text:@"red:0.0 green:0.0 blue:1.0 alpha:1.0"];
    [mutDataArr addObject:m16];

    self.tableView.dataSourceArray = mutDataArr;
}

- (void)TestProjectColor_initWithHue_saturation_brightness_alpha {
    NSMutableArray *mutDataArr = [NSMutableArray array];
    TestProjectUIColorModel *m1 = [self createColorModel:[[UIColor alloc] initWithHue:1 saturation:1 brightness:1 alpha:1.0] text:@"hue:1.0 saturation:1.0 brightness:1.0 alpha:1.0"];
    [mutDataArr addObject:m1];
    
    TestProjectUIColorModel *m2 = [self createColorModel:[[UIColor alloc] initWithHue:1 saturation:1 brightness:0.5 alpha:1.0] text:@"hue:1.0 saturation:1.0 brightness:0.5 alpha:1.0"];
    [mutDataArr addObject:m2];
    
    TestProjectUIColorModel *m3 = [self createColorModel:[[UIColor alloc] initWithHue:1 saturation:1 brightness:0.0 alpha:1.0] text:@"hue:1.0 saturation:1.0 brightness:0.0 alpha:1.0"];
    [mutDataArr addObject:m3];
    
    TestProjectUIColorModel *m4 = [self createColorModel:[[UIColor alloc] initWithHue:1 saturation:0.5 brightness:1 alpha:1.0] text:@"hue:1.0 saturation:0.5 brightness:1.0 alpha:1.0"];
    [mutDataArr addObject:m4];
    
    TestProjectUIColorModel *m5 = [self createColorModel:[[UIColor alloc] initWithHue:1 saturation:0 brightness:1 alpha:1.0] text:@"hue:1.0 saturation:0.0 brightness:1.0 alpha:1.0"];
    [mutDataArr addObject:m5];
    
    TestProjectUIColorModel *m6 = [self createColorModel:[[UIColor alloc] initWithHue:0.5 saturation:1 brightness:1 alpha:1.0] text:@"hue:0.5 saturation:1.0 brightness:1.0 alpha:1.0"];
    [mutDataArr addObject:m6];
        
    TestProjectUIColorModel *m7 = [self createColorModel:[[UIColor alloc] initWithHue:0 saturation:1 brightness:1 alpha:1.0] text:@"hue:0.0 saturation:1.0 brightness:1.0 alpha:1.0"];
    [mutDataArr addObject:m7];
    
    TestProjectUIColorModel *m8 = [self createColorModel:[[UIColor alloc] initWithHue:1 saturation:1 brightness:1 alpha:0.5] text:@"hue:1.0 saturation:1.0 brightness:1.0 alpha:0.5"];
    [mutDataArr addObject:m8];
    
    TestProjectUIColorModel *m9 = [self createColorModel:[[UIColor alloc] initWithHue:1 saturation:1 brightness:1 alpha:0] text:@"hue:1.0 saturation:1.0 brightness:1.0 alpha:0.0"];
    [mutDataArr addObject:m9];

    TestProjectUIColorModel *m10 = [self createColorModel:[[UIColor alloc] initWithHue:0 saturation:0 brightness:0 alpha:1.0] text:@"hue:0.0 saturation:0.0 brightness:0.0 alpha:1.0"];
    [mutDataArr addObject:m10];

    TestProjectUIColorModel *m11 = [self createColorModel:[[UIColor alloc] initWithHue:1.0 saturation:0 brightness:0 alpha:1.0] text:@"hue:1.0 saturation:0.0 brightness:0.0 alpha:1.0"];
    [mutDataArr addObject:m11];

    TestProjectUIColorModel *m12 = [self createColorModel:[[UIColor alloc] initWithHue:0.5 saturation:0 brightness:0 alpha:1.0] text:@"hue:0.5 saturation:0.0 brightness:0.0 alpha:1.0"];
    [mutDataArr addObject:m12];

    TestProjectUIColorModel *m13 = [self createColorModel:[[UIColor alloc] initWithHue:0 saturation:1.0 brightness:0 alpha:1.0] text:@"hue:0.0 saturation:1.0 brightness:0.0 alpha:1.0"];
    [mutDataArr addObject:m13];

    TestProjectUIColorModel *m14 = [self createColorModel:[[UIColor alloc] initWithHue:0 saturation:0.5 brightness:0 alpha:1.0] text:@"hue:0.0 saturation:0.5 brightness:0.0 alpha:1.0"];
    [mutDataArr addObject:m14];

    TestProjectUIColorModel *m15 = [self createColorModel:[[UIColor alloc] initWithHue:0 saturation:0 brightness:1.0 alpha:1.0] text:@"hue:0.0 saturation:0.0 brightness:1.0 alpha:1.0"];
    [mutDataArr addObject:m15];

    TestProjectUIColorModel *m16 = [self createColorModel:[[UIColor alloc] initWithHue:0 saturation:0 brightness:0.5 alpha:1.0] text:@"hue:0.0 saturation:0.0 brightness:0.5 alpha:1.0"];
    [mutDataArr addObject:m16];

    self.tableView.dataSourceArray = mutDataArr;

}

- (void)TestProjectColor_initWithWhite_alpha {
    NSMutableArray *mutDataArr = [NSMutableArray array];
    TestProjectUIColorModel *section1 = [self createColorModel:[UIColor whiteColor] text:@"initWithWhite alpha为1.0的比较=====>"];
    section1.isSection = YES;
    [mutDataArr addObject:section1];
    
    TestProjectUIColorModel *m1 = [self createColorModel:[[UIColor alloc] initWithWhite:0 alpha:1.0] text:@"initWithWhite:0 alpha:1.0"];
    [mutDataArr addObject:m1];
    
    TestProjectUIColorModel *m2 = [self createColorModel:[[UIColor alloc] initWithWhite:0.5 alpha:1.0] text:@"initWithWhite:0.5 alpha:1.0"];
    [mutDataArr addObject:m2];
    
    TestProjectUIColorModel *m3 = [self createColorModel:[[UIColor alloc] initWithWhite:1.0 alpha:1.0] text:@"initWithWhite:1.0 alpha:1.0"];
    [mutDataArr addObject:m3];
    
    TestProjectUIColorModel *section2 = [self createColorModel:[UIColor whiteColor] text:@"white为0.5的比较=====>"];
    section2.isSection = YES;
    [mutDataArr addObject:section2];

    TestProjectUIColorModel *m4 = [self createColorModel:[[UIColor alloc] initWithWhite:0.5 alpha:0] text:@"initWithWhite:0.5 alpha:0"];
    [mutDataArr addObject:m4];
    
    TestProjectUIColorModel *m5 = [self createColorModel:[[UIColor alloc] initWithWhite:0.5 alpha:0.5] text:@"initWithWhite:0.5 alpha:0.5"];
    [mutDataArr addObject:m5];
    
    TestProjectUIColorModel *m6 = [self createColorModel:[[UIColor alloc] initWithWhite:0.5 alpha:1.0] text:@"initWithWhite:0.5 alpha:1.0"];
    [mutDataArr addObject:m6];
    
    TestProjectUIColorModel *section3 = [self createColorModel:[UIColor whiteColor] text:@"initWithWhite为1.0的比较=====>"];
    section3.isSection = YES;
    [mutDataArr addObject:section3];
    
    TestProjectUIColorModel *m7 = [self createColorModel:[[UIColor alloc] initWithWhite:1.0 alpha:0] text:@"initWithWhite:1.0 alpha:0"];
    [mutDataArr addObject:m7];
    
    TestProjectUIColorModel *m8 = [self createColorModel:[[UIColor alloc] initWithWhite:1.0 alpha:0.5] text:@"initWithWhite:1.0 alpha:0.5"];
    [mutDataArr addObject:m8];
    
    TestProjectUIColorModel *m9 = [self createColorModel:[[UIColor alloc] initWithWhite:1.0 alpha:1.0] text:@"initWithWhite:1.0 alpha:1.0"];
    [mutDataArr addObject:m9];

    self.tableView.dataSourceArray = mutDataArr;
}

- (void)TestProjectColor_colorWithCIColor {
    NSMutableArray *mutDataArr = [NSMutableArray array];
    CIColor *ciColor = [CIColor colorWithRed:0.5 green:0.5 blue:0.5];
    TestProjectUIColorModel *m1 = [self createColorModel:[UIColor colorWithCIColor:ciColor] text:@"ciColor red:0.5 green:0.5 blue:0.5 alpha:1.0"];
    [mutDataArr addObject:m1];
    self.tableView.dataSourceArray = mutDataArr;
}

- (void)TestProjectColor_colorWithPatternImage {
    UIImage *image = [UIImage imageNamed:@"lyf_1"];
    NSMutableArray *mutDataArr = [NSMutableArray array];
    TestProjectUIColorModel *m1 = [self createColorModel:[UIColor colorWithPatternImage:image] text:@"imageNamed:@\"lyf_1\""];
    [mutDataArr addObject:m1];
    self.tableView.dataSourceArray = mutDataArr;
}

- (void)TestProjectColor_colorWithCGColor {
    NSMutableArray *mutDataArr = [NSMutableArray array];
    CGColorRef colorRef = CGColorCreateSRGB(0.5, 0.5, 0.5, 0.5);
    TestProjectUIColorModel *m1 = [self createColorModel:[UIColor colorWithCGColor:colorRef] text:@"colorRef red:0.5 green:0.5 blue:0.5 alpha:1.0"];
    [mutDataArr addObject:m1];
    self.tableView.dataSourceArray = mutDataArr;
}

- (void)TestProjectColor_colorWithDisplayP3Red_green_blue_alpha {
    NSMutableArray *mutDataArr = [NSMutableArray array];
    TestProjectUIColorModel *m1 = [self createColorModel:[UIColor colorWithDisplayP3Red:1.0 green:1.0 blue:1.0 alpha:1.0] text:@"displayP3Red:1.0 green:1.0 blue:1.0 alpha:1.0"];
    [mutDataArr addObject:m1];
    
    TestProjectUIColorModel *m2 = [self createColorModel:[UIColor colorWithDisplayP3Red:1.0 green:1.0 blue:0.5 alpha:1.0] text:@"displayP3Red:1.0 green:1.0 blue:0.5 alpha:1.0"];
    [mutDataArr addObject:m2];
    
    TestProjectUIColorModel *m3 = [self createColorModel:[UIColor colorWithDisplayP3Red:1.0 green:1.0 blue:0.0 alpha:1.0] text:@"displayP3Red:1.0 green:1.0 blue:0.0 alpha:1.0"];
    [mutDataArr addObject:m3];
    
    TestProjectUIColorModel *m4 = [self createColorModel:[UIColor colorWithDisplayP3Red:1.0 green:0.5 blue:1.0 alpha:1.0] text:@"displayP3Red:1.0 green:0.5 blue:1.0 alpha:1.0"];
    [mutDataArr addObject:m4];
    
    TestProjectUIColorModel *m5 = [self createColorModel:[UIColor colorWithDisplayP3Red:1.0 green:0.0 blue:1.0 alpha:1.0] text:@"displayP3Red:1.0 green:0.0 blue:1.0 alpha:1.0"];
    [mutDataArr addObject:m5];
    
    TestProjectUIColorModel *m6 = [self createColorModel:[UIColor colorWithDisplayP3Red:0.5 green:1.0 blue:1.0 alpha:1.0] text:@"displayP3Red:0.5 green:1.0 blue:1.0 alpha:1.0"];
    [mutDataArr addObject:m6];
        
    TestProjectUIColorModel *m7 = [self createColorModel:[UIColor colorWithDisplayP3Red:0.0 green:1.0 blue:1.0 alpha:1.0] text:@"displayP3Red:0.0 green:1.0 blue:1.0 alpha:1.0"];
    [mutDataArr addObject:m7];
    
    TestProjectUIColorModel *m8 = [self createColorModel:[UIColor colorWithDisplayP3Red:1.0 green:1.0 blue:1.0 alpha:0.5] text:@"displayP3Red:1.0 green:1.0 blue:1.0 alpha:0.5"];
    [mutDataArr addObject:m8];
    
    TestProjectUIColorModel *m9 = [self createColorModel:[UIColor colorWithDisplayP3Red:1.0 green:1.0 blue:1.0 alpha:0.0] text:@"displayP3Red:1.0 green:1.0 blue:1.0 alpha:0.0"];
    [mutDataArr addObject:m9];

    TestProjectUIColorModel *m10 = [self createColorModel:[UIColor colorWithDisplayP3Red:0.0 green:0.0 blue:0.0 alpha:1.0] text:@"displayP3Red:0.0 green:0.0 blue:0.0 alpha:1.0"];
    [mutDataArr addObject:m10];

    TestProjectUIColorModel *m11 = [self createColorModel:[UIColor colorWithDisplayP3Red:0.5 green:0.0 blue:0.0 alpha:1.0] text:@"displayP3Red:0.5 green:0.0 blue:0.0 alpha:1.0"];
    [mutDataArr addObject:m11];

    TestProjectUIColorModel *m12 = [self createColorModel:[UIColor colorWithDisplayP3Red:1.0 green:0.0 blue:0.0 alpha:1.0] text:@"displayP3Red:1.0 green:0.0 blue:0.0 alpha:1.0"];
    [mutDataArr addObject:m12];

    TestProjectUIColorModel *m13 = [self createColorModel:[UIColor colorWithDisplayP3Red:0.0 green:0.5 blue:0.0 alpha:1.0] text:@"displayP3Red:0.0 green:0.5 blue:0.0 alpha:1.0"];
    [mutDataArr addObject:m13];

    TestProjectUIColorModel *m14 = [self createColorModel:[UIColor colorWithDisplayP3Red:0.0 green:1.0 blue:0.0 alpha:1.0] text:@"displayP3Red:0.0 green:1.0 blue:0.0 alpha:1.0"];
    [mutDataArr addObject:m14];

    TestProjectUIColorModel *m15 = [self createColorModel:[UIColor colorWithDisplayP3Red:0.0 green:0.0 blue:0.5 alpha:1.0] text:@"displayP3Red:0.0 green:0.0 blue:0.5 alpha:1.0"];
    [mutDataArr addObject:m15];

    TestProjectUIColorModel *m16 = [self createColorModel:[UIColor colorWithDisplayP3Red:0.0 green:0.0 blue:1.0 alpha:1.0] text:@"displayP3Red:0.0 green:0.0 blue:1.0 alpha:1.0"];
    [mutDataArr addObject:m16];

    TestProjectUIColorModel *m17 = [self createColorModel:[UIColor colorWithDisplayP3Red:0.5 green:0.5 blue:0.5 alpha:1.0] text:@"displayP3Red:0.5 green:0.5 blue:0.5 alpha:1.0"];
    [mutDataArr addObject:m17];

    self.tableView.dataSourceArray = mutDataArr;
}

- (void)TestProjectColor_colorWithRed_green_blue_alpha {
    NSMutableArray *mutDataArr = [NSMutableArray array];
    TestProjectUIColorModel *m1 = [self createColorModel:[UIColor colorWithRed:1.0 green:1.0 blue:1.0 alpha:1.0] text:@"red:1.0 green:1.0 blue:1.0 alpha:1.0"];
    [mutDataArr addObject:m1];
    
    TestProjectUIColorModel *m2 = [self createColorModel:[UIColor colorWithRed:1.0 green:1.0 blue:0.5 alpha:1.0] text:@"red:1.0 green:1.0 blue:0.5 alpha:1.0"];
    [mutDataArr addObject:m2];
    
    TestProjectUIColorModel *m3 = [self createColorModel:[UIColor colorWithRed:1.0 green:1.0 blue:0.0 alpha:1.0] text:@"red:1.0 green:1.0 blue:0.0 alpha:1.0"];
    [mutDataArr addObject:m3];
    
    TestProjectUIColorModel *m4 = [self createColorModel:[UIColor colorWithRed:1.0 green:0.5 blue:1.0 alpha:1.0] text:@"red:1.0 green:0.5 blue:1.0 alpha:1.0"];
    [mutDataArr addObject:m4];
    
    TestProjectUIColorModel *m5 = [self createColorModel:[UIColor colorWithRed:1.0 green:0.0 blue:1.0 alpha:1.0] text:@"red:1.0 green:0.0 blue:1.0 alpha:1.0"];
    [mutDataArr addObject:m5];
    
    TestProjectUIColorModel *m6 = [self createColorModel:[UIColor colorWithRed:0.5 green:1.0 blue:1.0 alpha:1.0] text:@"red:0.5 green:1.0 blue:1.0 alpha:1.0"];
    [mutDataArr addObject:m6];
        
    TestProjectUIColorModel *m7 = [self createColorModel:[UIColor colorWithRed:0.0 green:1.0 blue:1.0 alpha:1.0] text:@"red:0.0 green:1.0 blue:1.0 alpha:1.0"];
    [mutDataArr addObject:m7];
    
    TestProjectUIColorModel *m8 = [self createColorModel:[UIColor colorWithRed:1.0 green:1.0 blue:1.0 alpha:0.5] text:@"red:1.0 green:1.0 blue:1.0 alpha:0.5"];
    [mutDataArr addObject:m8];
    
    TestProjectUIColorModel *m9 = [self createColorModel:[UIColor colorWithRed:1.0 green:1.0 blue:1.0 alpha:0.0] text:@"red:1.0 green:1.0 blue:1.0 alpha:0.0"];
    [mutDataArr addObject:m9];

    TestProjectUIColorModel *m10 = [self createColorModel:[UIColor colorWithRed:0.0 green:0.0 blue:0.0 alpha:1.0] text:@"red:0.0 green:0.0 blue:0.0 alpha:1.0"];
    [mutDataArr addObject:m10];

    TestProjectUIColorModel *m11 = [self createColorModel:[UIColor colorWithRed:0.5 green:0.0 blue:0.0 alpha:1.0] text:@"red:0.5 green:0.0 blue:0.0 alpha:1.0"];
    [mutDataArr addObject:m11];

    TestProjectUIColorModel *m12 = [self createColorModel:[UIColor colorWithRed:1.0 green:0.0 blue:0.0 alpha:1.0] text:@"red:1.0 green:0.0 blue:0.0 alpha:1.0"];
    [mutDataArr addObject:m12];

    TestProjectUIColorModel *m13 = [self createColorModel:[UIColor colorWithRed:0.0 green:0.5 blue:0.0 alpha:1.0] text:@"red:0.0 green:0.5 blue:0.0 alpha:1.0"];
    [mutDataArr addObject:m13];

    TestProjectUIColorModel *m14 = [self createColorModel:[UIColor colorWithRed:0.0 green:1.0 blue:0.0 alpha:1.0] text:@"red:0.0 green:1.0 blue:0.0 alpha:1.0"];
    [mutDataArr addObject:m14];

    TestProjectUIColorModel *m15 = [self createColorModel:[UIColor colorWithRed:0.0 green:0.0 blue:0.5 alpha:1.0] text:@"red:0.0 green:0.0 blue:0.5 alpha:1.0"];
    [mutDataArr addObject:m15];

    TestProjectUIColorModel *m16 = [self createColorModel:[UIColor colorWithRed:0.0 green:0.0 blue:1.0 alpha:1.0] text:@"red:0.0 green:0.0 blue:1.0 alpha:1.0"];
    [mutDataArr addObject:m16];

    self.tableView.dataSourceArray = mutDataArr;
}

- (void)TestProjectColor_colorWithHue_saturation_brightness_alpha {
    NSMutableArray *mutDataArr = [NSMutableArray array];
    TestProjectUIColorModel *m1 = [self createColorModel:[UIColor colorWithHue:1 saturation:1 brightness:1 alpha:1.0] text:@"hue:1.0 saturation:1.0 brightness:1.0 alpha:1.0"];
    [mutDataArr addObject:m1];
    
    TestProjectUIColorModel *m2 = [self createColorModel:[UIColor colorWithHue:1 saturation:1 brightness:0.5 alpha:1.0] text:@"hue:1.0 saturation:1.0 brightness:0.5 alpha:1.0"];
    [mutDataArr addObject:m2];
    
    TestProjectUIColorModel *m3 = [self createColorModel:[UIColor colorWithHue:1 saturation:1 brightness:0.0 alpha:1.0] text:@"hue:1.0 saturation:1.0 brightness:0.0 alpha:1.0"];
    [mutDataArr addObject:m3];
    
    TestProjectUIColorModel *m4 = [self createColorModel:[UIColor colorWithHue:1 saturation:0.5 brightness:1 alpha:1.0] text:@"hue:1.0 saturation:0.5 brightness:1.0 alpha:1.0"];
    [mutDataArr addObject:m4];
    
    TestProjectUIColorModel *m5 = [self createColorModel:[UIColor colorWithHue:1 saturation:0 brightness:1 alpha:1.0] text:@"hue:1.0 saturation:0.0 brightness:1.0 alpha:1.0"];
    [mutDataArr addObject:m5];
    
    TestProjectUIColorModel *m6 = [self createColorModel:[UIColor colorWithHue:0.5 saturation:1 brightness:1 alpha:1.0] text:@"hue:0.5 saturation:1.0 brightness:1.0 alpha:1.0"];
    [mutDataArr addObject:m6];
        
    TestProjectUIColorModel *m7 = [self createColorModel:[UIColor colorWithHue:0 saturation:1 brightness:1 alpha:1.0] text:@"hue:0.0 saturation:1.0 brightness:1.0 alpha:1.0"];
    [mutDataArr addObject:m7];
    
    TestProjectUIColorModel *m8 = [self createColorModel:[UIColor colorWithHue:1 saturation:1 brightness:1 alpha:0.5] text:@"hue:1.0 saturation:1.0 brightness:1.0 alpha:0.5"];
    [mutDataArr addObject:m8];
    
    TestProjectUIColorModel *m9 = [self createColorModel:[UIColor colorWithHue:1 saturation:1 brightness:1 alpha:0] text:@"hue:1.0 saturation:1.0 brightness:1.0 alpha:0.0"];
    [mutDataArr addObject:m9];

    TestProjectUIColorModel *m10 = [self createColorModel:[UIColor colorWithHue:0 saturation:0 brightness:0 alpha:1.0] text:@"hue:0.0 saturation:0.0 brightness:0.0 alpha:1.0"];
    [mutDataArr addObject:m10];

    TestProjectUIColorModel *m11 = [self createColorModel:[UIColor colorWithHue:1.0 saturation:0 brightness:0 alpha:1.0] text:@"hue:1.0 saturation:0.0 brightness:0.0 alpha:1.0"];
    [mutDataArr addObject:m11];

    TestProjectUIColorModel *m12 = [self createColorModel:[UIColor colorWithHue:0.5 saturation:0 brightness:0 alpha:1.0] text:@"hue:0.5 saturation:0.0 brightness:0.0 alpha:1.0"];
    [mutDataArr addObject:m12];

    TestProjectUIColorModel *m13 = [self createColorModel:[UIColor colorWithHue:0 saturation:1.0 brightness:0 alpha:1.0] text:@"hue:0.0 saturation:1.0 brightness:0.0 alpha:1.0"];
    [mutDataArr addObject:m13];

    TestProjectUIColorModel *m14 = [self createColorModel:[UIColor colorWithHue:0 saturation:0.5 brightness:0 alpha:1.0] text:@"hue:0.0 saturation:0.5 brightness:0.0 alpha:1.0"];
    [mutDataArr addObject:m14];

    TestProjectUIColorModel *m15 = [self createColorModel:[UIColor colorWithHue:0 saturation:0 brightness:1.0 alpha:1.0] text:@"hue:0.0 saturation:0.0 brightness:1.0 alpha:1.0"];
    [mutDataArr addObject:m15];

    TestProjectUIColorModel *m16 = [self createColorModel:[UIColor colorWithHue:0 saturation:0 brightness:0.5 alpha:1.0] text:@"hue:0.0 saturation:0.0 brightness:0.5 alpha:1.0"];
    [mutDataArr addObject:m16];

    self.tableView.dataSourceArray = mutDataArr;
}

- (void)TestProjectColor_colorWithWhite_alpha {
    NSMutableArray *mutDataArr = [NSMutableArray array];
    TestProjectUIColorModel *section1 = [self createColorModel:[UIColor whiteColor] text:@"alpha为1.0的比较=====>"];
    section1.isSection = YES;
    [mutDataArr addObject:section1];
    
    TestProjectUIColorModel *m1 = [self createColorModel:[UIColor colorWithWhite:0 alpha:1.0] text:@"white:0 alpha:1.0"];
    [mutDataArr addObject:m1];
    
    TestProjectUIColorModel *m2 = [self createColorModel:[UIColor colorWithWhite:0.5 alpha:1.0] text:@"white:0.5 alpha:1.0"];
    [mutDataArr addObject:m2];
    
    TestProjectUIColorModel *m3 = [self createColorModel:[UIColor colorWithWhite:1.0 alpha:1.0] text:@"white:1.0 alpha:1.0"];
    [mutDataArr addObject:m3];
    
    TestProjectUIColorModel *section2 = [self createColorModel:[UIColor whiteColor] text:@"white为0.5的比较=====>"];
    section2.isSection = YES;
    [mutDataArr addObject:section2];

    TestProjectUIColorModel *m4 = [self createColorModel:[UIColor colorWithWhite:0.5 alpha:0] text:@"white:0.5 alpha:0"];
    [mutDataArr addObject:m4];
    
    TestProjectUIColorModel *m5 = [self createColorModel:[UIColor colorWithWhite:0.5 alpha:0.5] text:@"white:0.5 alpha:0.5"];
    [mutDataArr addObject:m5];
    
    TestProjectUIColorModel *m6 = [self createColorModel:[UIColor colorWithWhite:0.5 alpha:1.0] text:@"white:0.5 alpha:1.0"];
    [mutDataArr addObject:m6];
    
    TestProjectUIColorModel *section3 = [self createColorModel:[UIColor whiteColor] text:@"white为1.0的比较=====>"];
    section3.isSection = YES;
    [mutDataArr addObject:section3];
    
    TestProjectUIColorModel *m7 = [self createColorModel:[UIColor colorWithWhite:1.0 alpha:0] text:@"white:1.0 alpha:0"];
    [mutDataArr addObject:m7];
    
    TestProjectUIColorModel *m8 = [self createColorModel:[UIColor colorWithWhite:1.0 alpha:0.5] text:@"white:1.0 alpha:0.5"];
    [mutDataArr addObject:m8];
    
    TestProjectUIColorModel *m9 = [self createColorModel:[UIColor colorWithWhite:1.0 alpha:1.0] text:@"white:1.0 alpha:1.0"];
    [mutDataArr addObject:m9];

    self.tableView.dataSourceArray = mutDataArr;
}

@end
