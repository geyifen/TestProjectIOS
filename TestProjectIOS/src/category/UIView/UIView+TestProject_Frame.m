//
//  UIView+TestProject_Frame.m
//  TestProjectIOS
//
//  Created by zjrcumac on 2023/2/6.
//

#import "UIView+TestProject_Frame.h"

@implementation UIView (TestProject_Frame)

- (CGFloat)viewWidth {
    return self.frame.size.width;
}

- (CGFloat)viewHeight {
    return self.frame.size.height;
}

- (CGFloat)viewX {
    return self.frame.origin.x;
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
