//
//  NSDate+TestProject.h
//  TestProjectIOS
//
//  Created by liwenfan on 2023/6/16.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSDate (TestProject)

- (NSString *)stringFromDateFormatter:(NSString *)formatter;

+ (NSString *)stringFromDate:(NSDate *)date formatter:(NSString *)formatter;

+ (NSDate *)dateFromString:(NSString *)string formatter:(NSString *)formatter;

@end

NS_ASSUME_NONNULL_END
