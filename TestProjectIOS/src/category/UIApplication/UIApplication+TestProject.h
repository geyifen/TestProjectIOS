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

@end

NS_ASSUME_NONNULL_END
