//
//  TestProjectColor.m
//  TestProjectIOS
//
//  Created by zjrcumac on 2023/2/22.
//

#import "TestProjectColor.h"

@interface TestProjectColor ()

@end

@implementation TestProjectColor


- (NSArray *)viewDataArray {
    return @[@{
        @"+ (UIColor *)colorWithWhite:(CGFloat)white alpha:(CGFloat)alpha;":@{
            @"method":@"TestProjectColor_colorWithWhite_alpha",
            @"desc":@"根据white和alpha获取颜色\n@param white:颜色1->0 从白色到黑色 alpha:颜色的透明度1->0 从显示到不显示"
        }}
    ];
}

- (UILabel *)createViewWithColor:(UIColor *)color text:(NSString *)text {
    UILabel *label = [[UILabel alloc] init];
    label.font = [UIFont systemFontOfSize:22];
    label.textColor = [UIColor redColor];
    label.text = text;
    label.backgroundColor = color;
    label.textAlignment = NSTextAlignmentCenter;
    [self addSubview:label];
    return label;
}

- (void)initialViewData {
    
    NSArray *titleArr = @[
        @"+ (UIColor *)colorWithWhite:(CGFloat)white alpha:(CGFloat)alpha;",
        @"+ (UIColor *)colorWithHue:(CGFloat)hue saturation:(CGFloat)saturation brightness:(CGFloat)brightness alpha:(CGFloat)alpha;",
        @"+ (UIColor *)colorWithRed:(CGFloat)red green:(CGFloat)green blue:(CGFloat)blue alpha:(CGFloat)alpha;",
        @"+ (UIColor *)colorWithDisplayP3Red:(CGFloat)displayP3Red green:(CGFloat)green blue:(CGFloat)blue alpha:(CGFloat)alpha API_AVAILABLE(ios(10.0));",
        @"+ (UIColor *)colorWithCGColor:(CGColorRef)cgColor;",
        @"+ (UIColor *)colorWithPatternImage:(UIImage *)image;",
        @"+ (UIColor *)colorWithCIColor:(CIColor *)ciColor API_AVAILABLE(ios(5.0));",
        @"- (UIColor *)initWithWhite:(CGFloat)white alpha:(CGFloat)alpha;",
        @"- (UIColor *)initWithHue:(CGFloat)hue saturation:(CGFloat)saturation brightness:(CGFloat)brightness alpha:(CGFloat)alpha;",
        @"- (UIColor *)initWithRed:(CGFloat)red green:(CGFloat)green blue:(CGFloat)blue alpha:(CGFloat)alpha;",
        @"- (UIColor *)initWithDisplayP3Red:(CGFloat)displayP3Red green:(CGFloat)green blue:(CGFloat)blue alpha:(CGFloat)alpha API_AVAILABLE(ios(10.0));",
        @"- (UIColor *)initWithCGColor:(CGColorRef)cgColor;",
        @"- (UIColor *)initWithPatternImage:(UIImage*)image;",
        @"- (UIColor *)initWithCIColor:(CIColor *)ciColor API_AVAILABLE(ios(5.0));",
        @"- (void)set;",
        @"- (void)setFill;",
        @"- (void)setStroke;",
        @"- (BOOL)getWhite:(nullable CGFloat *)white alpha:(nullable CGFloat *)alpha API_AVAILABLE(ios(5.0));",
        @"- (BOOL)getHue:(nullable CGFloat *)hue saturation:(nullable CGFloat *)saturation brightness:(nullable CGFloat *)brightness alpha:(nullable CGFloat *)alpha API_AVAILABLE(ios(5.0));",
        @"- (BOOL)getRed:(nullable CGFloat *)red green:(nullable CGFloat *)green blue:(nullable CGFloat *)blue alpha:(nullable CGFloat *)alpha API_AVAILABLE(ios(5.0));",
        @"- (UIColor *)colorWithAlphaComponent:(CGFloat)alpha;",
        @"+ (nullable UIColor *)colorNamed:(NSString *)name API_AVAILABLE(ios(11.0));",
        @"+ (nullable UIColor *)colorNamed:(NSString *)name inBundle:(nullable NSBundle *)bundle compatibleWithTraitCollection:(nullable UITraitCollection *)traitCollection API_AVAILABLE(ios(11.0)) API_UNAVAILABLE(watchos);",
        @"+ (UIColor *)colorWithDynamicProvider:(UIColor * (^)(UITraitCollection *traitCollection))dynamicProvider API_AVAILABLE(ios(13.0), tvos(13.0)) API_UNAVAILABLE(watchos);",
        @"- (UIColor *)initWithDynamicProvider:(UIColor * (^)(UITraitCollection *traitCollection))dynamicProvider API_AVAILABLE(ios(13.0), tvos(13.0)) API_UNAVAILABLE(watchos);",
        @"- (UIColor *)resolvedColorWithTraitCollection:(UITraitCollection *)traitCollection API_AVAILABLE(ios(13.0), tvos(13.0)) API_UNAVAILABLE(watchos);",
        @"@property(class, nonatomic, readonly) UIColor *blackColor;      // 0.0 white",
        @"@property(class, nonatomic, readonly) UIColor *darkGrayColor;   // 0.333 white",
        @"@property(class, nonatomic, readonly) UIColor *lightGrayColor;  // 0.667 white",
        @"@property(class, nonatomic, readonly) UIColor *whiteColor;      // 1.0 white",
        @"@property(class, nonatomic, readonly) UIColor *grayColor;       // 0.5 white",
        @"@property(class, nonatomic, readonly) UIColor *redColor;        // 1.0, 0.0, 0.0 RGB",
        @"@property(class, nonatomic, readonly) UIColor *greenColor;      // 0.0, 1.0, 0.0 RGB",
        @"@property(class, nonatomic, readonly) UIColor *blueColor;       // 0.0, 0.0, 1.0 RGB",
        @"@property(class, nonatomic, readonly) UIColor *cyanColor;       // 0.0, 1.0, 1.0 RGB",
        @"@property(class, nonatomic, readonly) UIColor *yellowColor;     // 1.0, 1.0, 0.0 RGB",
        @"@property(class, nonatomic, readonly) UIColor *magentaColor;    // 1.0, 0.0, 1.0 RGB",
        @"@property(class, nonatomic, readonly) UIColor *orangeColor;     // 1.0, 0.5, 0.0 RGB",
        @"@property(class, nonatomic, readonly) UIColor *purpleColor;     // 0.5, 0.0, 0.5 RGB",
        @"@property(class, nonatomic, readonly) UIColor *brownColor;      // 0.6, 0.4, 0.2 RGB",
        @"@property(class, nonatomic, readonly) UIColor *clearColor;      // 0.0 white, 0.0 alpha",
    ];
}

- (void)TestProjectColor_colorWithWhite_alpha {
    CGFloat height = 50;
    UILabel *label_1 = [self createViewWithColor:[UIColor colorWithWhite:0 alpha:1.0] text:@"white:0 alpha:1.0"];
    [label_1 mas_makeConstraints:^(TestProjectViewConstrainMake * _Nonnull make) {
        make.height.equal(@(height));
        make.top.leading.equal(self);
    }];
    UILabel *label_2 = [self createViewWithColor:[UIColor colorWithWhite:0.5 alpha:1.0] text:@"white:0.5 alpha:1.0"];
    [label_2 mas_makeConstraints:^(TestProjectViewConstrainMake * _Nonnull make) {
        make.height.equal(@(height));
        make.width.equal(label_1);
        make.top.equal(label_1);
        make.trainling.equal(self);
        make.leading.equal(label_1.trainling).offset(10);
    }];
    UILabel *label_3 = [self createViewWithColor:[UIColor colorWithWhite:1.0 alpha:1.0] text:@"white:1.0 alpha:1.0"];
    [label_3 mas_makeConstraints:^(TestProjectViewConstrainMake * _Nonnull make) {
        make.height.equal(@(height));
        make.width.equal(label_1);
        make.top.equal(label_1.bottom);
        make.leading.equal(label_1);
    }];
    
    
    UILabel *label_1_1 = [self createViewWithColor:[UIColor colorWithWhite:1.0 alpha:0] text:@"white:1 alpha:0"];
    [label_1_1 mas_makeConstraints:^(TestProjectViewConstrainMake * _Nonnull make) {
        make.height.equal(@(height));
        make.width.equal(label_1);
        make.leading.equal(self);
        make.top.equal(label_3.bottom).offset(10);
    }];
    UILabel *label_1_2 = [self createViewWithColor:[UIColor colorWithWhite:1.0 alpha:0.5] text:@"white:1 alpha:0.5"];
    [label_1_2 mas_makeConstraints:^(TestProjectViewConstrainMake * _Nonnull make) {
        make.height.equal(@(height));
        make.width.equal(label_1);
        make.top.equal(label_1_1);
        make.leading.equal(label_1_1.trainling).offset(10);
    }];
    UILabel *label_1_3 = [self createViewWithColor:[UIColor colorWithWhite:1.0 alpha:1.0] text:@"white:1 alpha:1.0"];
    [label_1_3 mas_makeConstraints:^(TestProjectViewConstrainMake * _Nonnull make) {
        make.height.equal(@(height));
        make.width.equal(label_1);
        make.top.equal(label_1_1.bottom);
        make.leading.equal(label_1_1);
    }];
    
    
    UILabel *label_1_1_1 = [self createViewWithColor:[UIColor colorWithWhite:0.5 alpha:0] text:@"white:0.5 alpha:0"];
    [label_1_1_1 mas_makeConstraints:^(TestProjectViewConstrainMake * _Nonnull make) {
        make.height.equal(@(height));
        make.width.equal(label_1);
        make.leading.equal(self);
        make.top.equal(label_1_3.bottom).offset(10);
    }];
    UILabel *label_1_1_2 = [self createViewWithColor:[UIColor colorWithWhite:0.5 alpha:0.5] text:@"white:0.5 alpha:0.5"];
    [label_1_1_2 mas_makeConstraints:^(TestProjectViewConstrainMake * _Nonnull make) {
        make.height.equal(@(height));
        make.width.equal(label_1);
        make.top.equal(label_1_1_1);
        make.leading.equal(label_1_1.trainling).offset(10);
    }];
    UILabel *label_1_1_3 = [self createViewWithColor:[UIColor colorWithWhite:0.5 alpha:1.0] text:@"white:0.5 alpha:1.0"];
    [label_1_1_3 mas_makeConstraints:^(TestProjectViewConstrainMake * _Nonnull make) {
        make.height.equal(@(height));
        make.width.equal(label_1);
        make.top.equal(label_1_1_1.bottom);
        make.leading.equal(label_1_1_1);
    }];
}

@end
