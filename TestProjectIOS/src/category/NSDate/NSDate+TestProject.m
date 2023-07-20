//
//  NSDate+TestProject.m
//  TestProjectIOS
//
//  Created by zjrcumac on 2023/6/16.
//

#import "NSDate+TestProject.h"

@implementation NSDate (TestProject)

- (NSString *)stringFromDateFormatter:(NSString *)formatter {
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    [dateFormatter setDateFormat:formatter];
    return [dateFormatter stringFromDate:self];
}

+ (NSString *)stringFromDate:(NSDate *)date formatter:(NSString *)formatter {
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    [dateFormatter setDateFormat:formatter];
    return [dateFormatter stringFromDate:date];
}

+ (NSDate *)dateFromString:(NSString *)string formatter:(NSString *)formatter {
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    [dateFormatter setDateFormat:formatter];
    return [dateFormatter dateFromString:string];
}

@end
