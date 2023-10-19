//
//  UIGeometry+TestProject.m
//  TestProjectIOS
//
//  Created by liwenfan on 2023/8/11.
//

#import "UIGeometry+TestProject.h"

@implementation TestProjectGemetry

+ (CGFloat)rectBottom:(CGRect)rect {
    return rect.origin.y + rect.size.height;
}

+ (CGFloat)rectRight:(CGRect)rect {
    return rect.origin.x + rect.size.width;
}

+ (CGFloat)rectOriginX:(CGRect)rect {
    return rect.origin.x;
}

+ (CGFloat)rectOriginY:(CGRect)rect {
    return rect.origin.y;
}

@end
