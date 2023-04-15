//
//  UIApplication+TestProject.h
//  TestProjectIOS
//
//  Created by zjrcumac on 2023/2/22.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIApplication (TestProject)

+ (UIWindow *)mainKeyWindon;

+ (UINavigationController *)rootNavController;

+ (UIViewController *)rootCurrentController;

+ (CGFloat)safe_top;

+ (CGFloat)safe_bottom;

+ (CGFloat)safe_left;

+ (CGFloat)safe_right;

@end

NS_ASSUME_NONNULL_END
