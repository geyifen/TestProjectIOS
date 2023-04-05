//
//  UIApplication+TestProject.m
//  TestProjectIOS
//
//  Created by zjrcumac on 2023/2/22.
//

#import "UIApplication+TestProject.h"

#import "TestProjectIgnoreWarningDefmacro.h"

#import <objc/runtime.h>

@interface UIApplication (TestProject)

@property (nonatomic, strong) UIWindow *mainWindon;

@end

@implementation UIApplication (TestProject)

- (void)setMainWindon:(UIWindow *)mainWindon {
    objc_setAssociatedObject(self, "mainWindon", mainWindon, OBJC_ASSOCIATION_RETAIN);
}

- (UIWindow *)mainWindon {
    return objc_getAssociatedObject(self, "mainWindon");
}

- (UIWindow *)getMainKeyWindon {
    if (self.mainWindon) {
        return self.mainWindon;
    }
    UIWindow *_mainWindon = nil;
    if (@available(iOS 13.0, *)) {
        for (UIWindowScene *windonScene in self.connectedScenes) {
            if (windonScene.activationState == UISceneActivationStateForegroundActive) {
                for (UIWindow *window in windonScene.windows) {
                    if (window.isKeyWindow) {
                        _mainWindon = window;
                    }
                }
            }
        }
    } else {
        CancelDeprecated(_mainWindon = self.keyWindow;);
    }
    self.mainWindon = _mainWindon;
    return _mainWindon;
}

+ (UIWindow *)mainKeyWindon {
    return [[UIApplication sharedApplication] getMainKeyWindon];
}

+ (UINavigationController *)rootNavController {
    return (UINavigationController *)[self mainKeyWindon].rootViewController;
}

+ (UIViewController *)rootCurrentController {
    UINavigationController *nav = [self rootNavController];
    if (nav.presentedViewController) {
        return nav.presentedViewController;
    }
    UIViewController *controller = nav.childViewControllers.lastObject;
    return controller;
}

@end
