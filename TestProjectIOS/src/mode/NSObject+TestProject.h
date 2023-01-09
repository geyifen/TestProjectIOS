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

@end

NS_ASSUME_NONNULL_END
