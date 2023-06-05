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
/**里面可以存的对象都是weak的，当weak对象被销毁了，则里面的对象会被清理掉**/
@property (nonatomic, strong) NSPointerArray *presentedVCList;

@end

@implementation UIApplication (TestProject)

- (void)setMainWindon:(UIWindow *)mainWindon {
    objc_setAssociatedObject(self, "mainWindon", mainWindon, OBJC_ASSOCIATION_RETAIN);
}

- (UIWindow *)mainWindon {
    return objc_getAssociatedObject(self, "mainWindon");
}

- (void)setPresentedVCList:(NSPointerArray *)presentedVCList {
    objc_setAssociatedObject(self, "presentedVCList", presentedVCList, OBJC_ASSOCIATION_RETAIN);
}

- (NSPointerArray *)presentedVCList {
    NSPointerArray *mutArr = objc_getAssociatedObject(self, "presentedVCList");
    if (!mutArr) {
        mutArr = [NSPointerArray weakObjectsPointerArray];
        self.presentedVCList = mutArr;
    }
    return mutArr;
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

- (UIViewController *)currentPresentedViewControllerWithNavPresentedVC:(UIViewController *)presentedVC {
    NSPointerArray *presentedVCList = self.presentedVCList;
    NSArray *arr = presentedVCList.allObjects;
    NSInteger count = arr.count;

    UIViewController *controller;
    if (count > 0) {
        [self getValidPresentedVC:arr index:count presentVC:presentedVC controller:&controller];
    } else {
        controller = presentedVC;
    }
    while (controller.presentedViewController) {
        controller = controller.presentedViewController;
        [presentedVCList addPointer:(__bridge void *)controller];
    }
    return controller;
}
/**防止有的presentedVC手动dismiss，但是被其它vc strong强制拥有导致不能present了**/
- (void)getValidPresentedVC:(NSArray *)arr
                      index:(NSInteger)index
                  presentVC:(UIViewController *)presentVC
                 controller:(UIViewController **)controller {
    NSInteger currentIndex = index - 1;
    *controller = [arr objectAtIndex:currentIndex];
    if (index > 1) {
        NSInteger preIndex = currentIndex - 1;
        UIViewController *preVC = [arr objectAtIndex:preIndex];
        if (preVC.presentedViewController != *controller) {
            [self.presentedVCList removePointerAtIndex:currentIndex];
            [self getValidPresentedVC:arr index:currentIndex presentVC:presentVC controller:controller];
        }
    } else {
        if (presentVC.presentedViewController != *controller) {
            [self.presentedVCList removePointerAtIndex:0];
            *controller = presentVC;
        }
    }
}

+ (UIWindow *)mainKeyWindon {
    return [[UIApplication sharedApplication] getMainKeyWindon];
}

+ (UINavigationController *)rootNavController {
    return (UINavigationController *)[self mainKeyWindon].rootViewController;
}

+ (UIViewController *)rootCurrentController {
    UINavigationController *nav = [self rootNavController];
    UIViewController *controller = nil;
    if (nav.presentedViewController) {
        controller = [[UIApplication sharedApplication] currentPresentedViewControllerWithNavPresentedVC:nav.presentedViewController];
    } else {
        controller = nav.childViewControllers.lastObject;
    }
    return controller;
}

+ (CGFloat)safe_top {
    return self.mainKeyWindon.safeAreaInsets.top;
}

+ (CGFloat)safe_bottom {
    return self.mainKeyWindon.safeAreaInsets.bottom;
}

+ (CGFloat)safe_left {
    return self.mainKeyWindon.safeAreaInsets.left;
}

+ (CGFloat)safe_right {
    return self.mainKeyWindon.safeAreaInsets.right;
}

@end
