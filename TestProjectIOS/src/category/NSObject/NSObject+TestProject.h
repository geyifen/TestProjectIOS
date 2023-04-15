//
//  NSObject+TestProject.h
//  TestProjectIOS
//
//  Created by zjrcumac on 2022/9/15.
//

#import <Foundation/Foundation.h>

#import <objc/runtime.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSObject (TestProject)

- (void)set_propertSetXXXMethod:(NSString *)propertXXX value:(NSString *)value;
- (NSString *)set_propertGetXXXMethod:(NSString *)propertXXX;

//可以针对某个页面关闭日志 是否开启log日志，默认YES
- (BOOL)enableLog;

+ (void)exchangeSameClassMethod:(NSString *)methodName;

@end

NS_ASSUME_NONNULL_END
