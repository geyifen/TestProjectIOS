//
//  UIViewController+TestProject.m
//  TestProjectIOS
//
//  Created by zjrcumac on 2023/4/10.
//

#import "UIViewController+TestProject.h"

#import "NSObject+TestProject.h"

@implementation UIViewController (TestProject)

//+ (void)load {
//    [UIViewController exchangeInstanceClassMethod:@[@"touchesBegan:withEvent:"] exchangeInstanceClass:UIViewController.class replaceInstanceClass:UIViewController.class];
//}
//
//- (void)testProject_touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
//    if ([self isKindOfClass:[UIViewController class]]) {
//        [self.view endEditing:NO];
//    } else {
//        NSLog(@"%@", NSStringFromClass(self.class));
//    }
//    [self testProject_touchesBegan:touches withEvent:event];
//}

- (BOOL)canDrag {
    return NO;
}

@end
