//
//  TestProjectDispatchOnce.h
//  TestProjectIOS
//
//  Created by zjrcumac on 2022/5/6.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface TestProjectDispatchOnce : NSObject

+ (instancetype)sharedInstanced;

- (void)setNilForSharedInstanced;

@end



NS_ASSUME_NONNULL_END
