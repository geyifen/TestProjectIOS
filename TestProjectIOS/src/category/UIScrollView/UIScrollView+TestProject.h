//
//  UIScrollView+TestProject.h
//  TestProjectIOS
//
//  Created by liwenfan on 2023/7/20.
//

#import <UIKit/UIKit.h>

#import "TestProjectRefreshView.h"
NS_ASSUME_NONNULL_BEGIN

@interface UIScrollView (TestProject)

@property (nonatomic, strong) TestProjectRefreshHeader *testProject_header;
@property (nonatomic, strong) TestProjectRefreshFooter *testProject_footer;

@property (nonatomic, assign) CGFloat viewOffsetY;
@property (nonatomic, assign) CGFloat viewOffsetX;
@property (nonatomic, assign) CGFloat viewContentSizeWidth;
@property (nonatomic, assign) CGFloat viewContentSizeHeight;
@property (nonatomic, assign) UIEdgeInsets viewInset;
@property (nonatomic, assign) CGFloat viewInsetTop;
@property (nonatomic, assign) CGFloat viewInsetBottom;
@property (nonatomic, assign) CGFloat viewInsetLeft;
@property (nonatomic, assign) CGFloat viewInsetRight;

@end

NS_ASSUME_NONNULL_END
