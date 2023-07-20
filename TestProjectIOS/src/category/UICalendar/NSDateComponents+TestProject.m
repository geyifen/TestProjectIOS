//
//  NSDateComponents+TestProject.m
//  TestProjectIOS
//
//  Created by zjrcumac on 2023/6/13.
//

#import "NSDateComponents+TestProject.h"

#import "NSObject+TestProject.h"

@implementation NSDateComponents (TestProject)

+ (void)initialize {
    //不能交换这个方法，在【UICalendarView】初始化的时候会崩溃
//    [NSDateComponents exchangeInstanceClassMethod:@[@"weekday"] exchangeInstanceClass:NSDateComponents.class replaceInstanceClass:NSDateComponents.class];
}

- (NSInteger)chineseWeekDay {
    if (self.weekday == 1) {
        //系统默认周日是1
        return 7;
    }
    return self.weekday - 1;
}

@end
