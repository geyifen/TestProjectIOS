//
//  TestProjectTestTableVC.h
//  TestProjectIOS
//
//  Created by liwenfan on 2023/10/19.
//

#import "TestProjectBaseVC.h"

NS_ASSUME_NONNULL_BEGIN

#define TestProjectChildScrollViewOffsetResetNotification @"TestProjectChildScrollViewOffsetResetNotification"

@interface TestProjectTestTableVC : TestProjectBaseVC

@property (nonatomic, copy) void(^contentSizeChange)(CGSize changeSize);

- (UIScrollView *)getScrollView;

@end

NS_ASSUME_NONNULL_END
