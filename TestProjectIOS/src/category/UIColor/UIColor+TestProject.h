//
//  UIColor+TestProject.h
//  TestProjectIOS
//
//  Created by liwenfan on 2023/3/2.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIColor (TestProject)

//根据#AARRGGBB,#RRGGBB,#ARGB,#RGB获得UIColor
+ (UIColor *)colorFromString:(NSString *)string;

//根据数值获取颜色，alpha默认为1
+ (UIColor*)colorWithHex:(long)hexColor;

//根据数值获取颜色
+ (UIColor *)colorWithHex:(long)hexColor alpha:(float)opacity;

//根据颜色获取字符串
- (NSString *)colorString;

@end

NS_ASSUME_NONNULL_END
