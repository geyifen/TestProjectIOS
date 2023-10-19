//
//  UIView+TestProject.m
//  TestProjectIOS
//
//  Created by liwenfan on 2023/7/10.
//

#import "UIView+TestProject.h"

#import "NSObject+TestProject.h"

@implementation UIView (TestProject)

+ (void)load {
    [UIView exchangeInstanceClassMethod:@[@"hitTest:withEvent:"]
                  exchangeInstanceClass:UIView.class
                   replaceInstanceClass:UIView.class];
}

- (UIView *)testProject_hitTest:(CGPoint)point withEvent:(UIEvent *)event {
//    [self endEditing:NO];
    return [self testProject_hitTest:point withEvent:event];
}

@end
