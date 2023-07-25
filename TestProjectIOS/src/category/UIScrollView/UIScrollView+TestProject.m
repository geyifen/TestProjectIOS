//
//  UIScrollView+TestProject.m
//  TestProjectIOS
//
//  Created by zjrcumac on 2023/7/20.
//

#import "UIScrollView+TestProject.h"

#import <objc/runtime.h>

@implementation UIScrollView (TestProject)

- (void)setTestProject_header:(TestProjectRefreshHeader *)testProject_header {
    TestProjectRefreshHeader *header = self.testProject_header;
    if (header == testProject_header) {
        return;
    }
    [header removeFromSuperview];
    [self insertSubview:testProject_header atIndex:0];
    objc_setAssociatedObject(self, "testProject_header", testProject_header, OBJC_ASSOCIATION_RETAIN);
}

- (TestProjectRefreshHeader *)testProject_header {
    return objc_getAssociatedObject(self, "testProject_header");
}

- (void)setTestProject_footer:(TestProjectRefreshFooter *)testProject_footer {
    TestProjectRefreshFooter *footer = self.testProject_footer;
    if (footer == testProject_footer) {
        return;
    }
    [footer removeFromSuperview];
    [self insertSubview:testProject_footer atIndex:0];
    objc_setAssociatedObject(self, "testProject_footer", testProject_footer, OBJC_ASSOCIATION_ASSIGN);
}

- (TestProjectRefreshFooter *)testProject_footer {
    return objc_getAssociatedObject(self, "testProject_footer");
}

- (void)setViewOffsetX:(CGFloat)viewOffsetX {
    CGPoint offset = self.contentOffset;
    offset.x = viewOffsetX;
    self.contentOffset = offset;
}

- (CGFloat)viewOffsetX {
    return self.contentOffset.x;
}

- (void)setViewOffsetY:(CGFloat)viewOffsetY {
    CGPoint offset = self.contentOffset;
    offset.y = viewOffsetY;
    self.contentOffset = offset;
}

- (CGFloat)viewOffsetY {
    return self.contentOffset.y;
}

- (void)setViewContentSizeWidth:(CGFloat)viewContentSizeWidth {
    CGSize size = self.contentSize;
    size.width = viewContentSizeWidth;
    self.contentSize = size;
}

- (CGFloat)viewContentSizeWidth {
    return self.contentSize.width;
}

- (void)setViewContentSizeHeight:(CGFloat)viewContentSizeHeight {
    CGSize size = self.contentSize;
    size.width = viewContentSizeHeight;
    self.contentSize = size;
}

- (CGFloat)viewContentSizeHeight {
    return self.contentSize.height;
}

- (void)setViewInset:(UIEdgeInsets)viewInset {
    self.contentInset = viewInset;
}

- (UIEdgeInsets)viewInset {
    return self.contentInset;
}

- (void)setViewInsetTop:(CGFloat)viewInsetTop {
    UIEdgeInsets inset = self.contentInset;
    inset.top = viewInsetTop;
    self.contentInset = inset;
}

- (CGFloat)viewInsetTop {
    return self.viewInset.top;
}

- (void)setViewInsetBottom:(CGFloat)viewInsetBottom {
    UIEdgeInsets inset = self.contentInset;
    inset.bottom = viewInsetBottom;
    self.contentInset = inset;
}

- (CGFloat)viewInsetBottom {
    return self.viewInset.bottom;
}

- (void)setViewInsetLeft:(CGFloat)viewInsetLeft {
    UIEdgeInsets inset = self.contentInset;
    inset.left = viewInsetLeft;
    self.contentInset = inset;
}

- (CGFloat)viewInsetLeft {
    return self.viewInset.left;
}

- (void)setViewInsetRight:(CGFloat)viewInsetRight {
    UIEdgeInsets inset = self.contentInset;
    inset.right = viewInsetRight;
    self.contentInset = inset;
}

- (CGFloat)viewInsetRight {
    return self.viewInset.right;
}

@end
