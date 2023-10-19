//
//  UIView+TestProject_Constrain.h
//  TestProjectIOS
//
//  Created by liwenfan on 2023/1/30.
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
- (TestProjectViewConstrainProperty *(^)(id))greaterThanOrEqual;
- (TestProjectViewConstrainProperty *(^)(id))lessThanOrEqual;
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

- (void)testproject_makeConstraints:(void (^)(TestProjectViewConstrainMake *make))block;
- (void)testproject_updateConstraints:(void (^)(TestProjectViewConstrainMake *make))block;

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
