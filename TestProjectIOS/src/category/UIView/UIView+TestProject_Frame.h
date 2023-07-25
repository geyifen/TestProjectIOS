//
//  UIView+TestProject_Frame.h
//  TestProjectIOS
//
//  Created by zjrcumac on 2023/2/6.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIView (TestProject_Frame)

@property (nonatomic, assign) CGFloat viewWidth;
@property (nonatomic, assign) CGFloat viewHeight;
@property (nonatomic, assign) CGFloat viewX;
@property (nonatomic, assign) CGFloat viewY;

- (CGFloat)viewRightX;
- (CGFloat)viewBottomY;
- (CGFloat)viewCenterX;
- (CGFloat)viewCenterY;

@end

NS_ASSUME_NONNULL_END
