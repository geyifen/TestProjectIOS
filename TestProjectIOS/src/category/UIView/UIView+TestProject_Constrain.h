//
//  UIView+TestProject_Constrain.h
//  TestProjectIOS
//
//  Created by zjrcumac on 2023/1/30.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface TestProjectViewConstrainProperty : NSObject

- (TestProjectViewConstrainProperty *)leading;
- (TestProjectViewConstrainProperty *)trainling;
- (TestProjectViewConstrainProperty *)top;
- (TestProjectViewConstrainProperty *)bottom;
- (TestProjectViewConstrainProperty *)width;
- (TestProjectViewConstrainProperty *)height;
- (TestProjectViewConstrainProperty *)centerX;
- (TestProjectViewConstrainProperty *)centerY;
- (TestProjectViewConstrainProperty *(^)(CGFloat))offset;
- (TestProjectViewConstrainProperty *(^)(id))equal;
- (void)uninstall;

@end

@interface TestProjectViewConstrainMake : NSObject

- (TestProjectViewConstrainProperty *)leading;
- (TestProjectViewConstrainProperty *)trainling;
- (TestProjectViewConstrainProperty *)top;
- (TestProjectViewConstrainProperty *)bottom;
- (TestProjectViewConstrainProperty *)width;
- (TestProjectViewConstrainProperty *)height;
- (TestProjectViewConstrainProperty *)centerX;
- (TestProjectViewConstrainProperty *)centerY;

@end


@interface UIView (TestProject_Constrain)

- (void)mas_makeConstraints:(void (^)(TestProjectViewConstrainMake *make))block;
- (void)mas_updateConstraints:(void (^)(TestProjectViewConstrainMake *make))block;

- (TestProjectViewConstrainProperty *)leading;
- (TestProjectViewConstrainProperty *)trainling;
- (TestProjectViewConstrainProperty *)top;
- (TestProjectViewConstrainProperty *)bottom;
- (TestProjectViewConstrainProperty *)width;
- (TestProjectViewConstrainProperty *)height;
- (TestProjectViewConstrainProperty *)centerX;
- (TestProjectViewConstrainProperty *)centerY;

@end

NS_ASSUME_NONNULL_END
