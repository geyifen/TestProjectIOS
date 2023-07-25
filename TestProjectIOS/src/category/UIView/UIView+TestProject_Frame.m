//
//  UIView+TestProject_Frame.m
//  TestProjectIOS
//
//  Created by zjrcumac on 2023/2/6.
//

#import "UIView+TestProject_Frame.h"

@implementation UIView (TestProject_Frame)

- (void)setViewWidth:(CGFloat)viewWidth {
    CGRect rect = self.frame;
    rect.size.width = viewWidth;
    self.frame = rect;
}

- (CGFloat)viewWidth {
    return self.frame.size.width;
}

- (void)setViewHeight:(CGFloat)viewHeight {
    CGRect rect = self.frame;
    rect.size.height = viewHeight;
    self.frame = rect;
}

- (CGFloat)viewHeight {
    return self.frame.size.height;
}

- (void)setViewX:(CGFloat)viewX {
    CGRect rect = self.frame;
    rect.origin.x = viewX;
    self.frame = rect;
}

- (CGFloat)viewX {
    return self.frame.origin.x;
}

- (void)setViewY:(CGFloat)viewY {
    CGRect rect = self.frame;
    rect.origin.y = viewY;
    self.frame = rect;
}

- (CGFloat)viewY {
    return self.frame.origin.y;
}

- (CGFloat)viewRightX {
    return self.viewX + self.viewWidth;
}

- (CGFloat)viewBottomY {
    return self.viewY + self.viewHeight;
}

- (CGFloat)viewCenterX {
    return self.viewX + self.viewWidth / 2.0;
}

- (CGFloat)viewCenterY {
    return self.viewY + self.viewHeight / 2.0;
}

@end
