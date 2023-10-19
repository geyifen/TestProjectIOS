//
//  TestProjectTimeZone.m
//  TestProjectIOS
//
//  Created by liwenfan on 2023/6/13.
//

#import "TestProjectTimeZone.h"

@interface TestProjectTimeZone ()

@property (nonatomic, strong) NSTimeZone *childTimeZone;

@end

@implementation TestProjectTimeZone

- (id)setPropertyValueObject {
    return self.childTimeZone;
}

- (NSTimeZone *)childTimeZone {
    if (!_childTimeZone) {
        _childTimeZone = [NSCalendar currentCalendar].timeZone;
    }
    return _childTimeZone;
}

- (NSDictionary *)method_1 {
    return @{
        @"dataModel": @{
            @"abstract": @"获取NSTimeZone的属性name",
            @"title": @"@property (readonly, copy) NSString *name;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectTimeZone_property_name],
            }
        },
    };
}

- (NSDictionary *)method_2 {
    return @{
        @"dataModel": @{
            @"abstract": @"获取NSTimeZone的属性data",
            @"title": @"@property (readonly, copy) NSData *data;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectTimeZone_property_data],
            }
        },
    };
}

- (NSDictionary *)method_3 {
    return @{
        @"dataModel": @{
            @"abstract": @"执行NSTimeZone的方法secondsFromGMTForDate",
            @"title": @"- (NSInteger)secondsFromGMTForDate:(NSDate *)aDate;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectTimeZone_secondsFromGMTForDate],
            }
        },
    };
}

- (NSDictionary *)method_4 {
    return @{
        @"dataModel": @{
            @"abstract": @"执行NSTimeZone的方法abbreviationForDate",
            @"title": @"- (nullable NSString *)abbreviationForDate:(NSDate *)aDate;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectTimeZone_abbreviationForDate],
            }
        },
    };
}

- (NSDictionary *)method_5 {
    return @{
        @"dataModel": @{
            @"abstract": @"执行NSTimeZone的方法isDaylightSavingTimeForDate",
            @"title": @"- (BOOL)isDaylightSavingTimeForDate:(NSDate *)aDate;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectTimeZone_isDaylightSavingTimeForDate],
            }
        },
    };
}

- (NSDictionary *)method_6 {
    return @{
        @"dataModel": @{
            @"abstract": @"执行NSTimeZone的方法daylightSavingTimeOffsetForDate",
            @"title": @"- (NSTimeInterval)daylightSavingTimeOffsetForDate:(NSDate *)aDate API_AVAILABLE(macos(10.5), ios(2.0), watchos(2.0), tvos(9.0));",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectTimeZone_daylightSavingTimeOffsetForDate],
            }
        },
    };
}

- (NSDictionary *)method_7 {
    return @{
        @"dataModel": @{
            @"abstract": @"执行NSTimeZone的方法nextDaylightSavingTimeTransitionAfterDate",
            @"title": @"- (nullable NSDate *)nextDaylightSavingTimeTransitionAfterDate:(NSDate *)aDate API_AVAILABLE(macos(10.5), ios(2.0), watchos(2.0), tvos(9.0));",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectTimeZone_nextDaylightSavingTimeTransitionAfterDate],
            }
        },
    };
}

- (NSMutableArray *)TestProjectTimeZone_nextDaylightSavingTimeTransitionAfterDate {
    NSDate *date = [NSDate date];
    NSDate *result = [self.childTimeZone nextDaylightSavingTimeTransitionAfterDate:date];
    return [self createTableModelSingleArrayWithTitle:[NSString stringWithFormat:@"date:%@ result:%@", date, result] block:nil];
}

- (NSMutableArray *)TestProjectTimeZone_daylightSavingTimeOffsetForDate {
    NSDate *date = [NSDate date];
    NSTimeInterval result = [self.childTimeZone daylightSavingTimeOffsetForDate:date];
    return [self createTableModelSingleArrayWithTitle:[NSString stringWithFormat:@"date:%@ result:%f", date, result] block:nil];
}

- (NSMutableArray *)TestProjectTimeZone_isDaylightSavingTimeForDate {
    NSDate *date = [NSDate date];
    BOOL result = [self.childTimeZone isDaylightSavingTimeForDate:date];
    return [self createTableModelSingleArrayWithTitle:[NSString stringWithFormat:@"date:%@ result:%u", date, result] block:nil];
}

- (NSMutableArray *)TestProjectTimeZone_abbreviationForDate {
    NSDate *date = [NSDate date];
    NSString *result = [self.childTimeZone abbreviationForDate:date];
    return [self createTableModelSingleArrayWithTitle:[NSString stringWithFormat:@"date:%@ result:%@", date, result] block:nil];
}

- (NSMutableArray *)TestProjectTimeZone_secondsFromGMTForDate {
    NSDate *date = [NSDate date];
    NSInteger result = [self.childTimeZone secondsFromGMTForDate:date];
    return [self createTableModelSingleArrayWithTitle:[NSString stringWithFormat:@"date:%@ result:%ld", date, result] block:nil];
}

- (NSMutableArray *)TestProjectTimeZone_property_data {
    return [self createTableModelSingleArrayWithProperty:@"data" value:nil];
}

- (NSMutableArray *)TestProjectTimeZone_property_name {
    return [self createTableModelSingleArrayWithProperty:@"name" value:nil];
}

@end
