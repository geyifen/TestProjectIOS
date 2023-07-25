//
//  TestProjectSampleRefreshView.h
//  TestProjectIOS
//
//  Created by zjrcumac on 2023/7/24.
//

#import "TestProjectRefreshView.h"

NS_ASSUME_NONNULL_BEGIN

@interface TestProjectSampleRefreshHeader : TestProjectRefreshHeader

- (void)setTitle:(NSString *)title forState:(TestProjectRefreshState)state;

@end

@interface TestProjectSampleRefreshFooter : TestProjectRefreshFooter

- (void)setTitle:(NSString *)title forState:(TestProjectRefreshState)state;

@end

NS_ASSUME_NONNULL_END
