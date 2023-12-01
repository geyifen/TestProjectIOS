//
//  TestProjectNSTimeZone.m
//  TestProjectIOS
//
//  Created by liwenfan on 2023/6/13.
//

#import "TestProjectNSTimeZone.h"

@interface TestProjectNSTimeZone ()

@property (nonatomic, strong) NSTimeZone *childTimeZone;

@end

@implementation TestProjectNSTimeZone

- (id)setPropertyValueObject:(TestProjectTableViewParams *)params {
    return self.childTimeZone;
}

- (NSTimeZone *)childTimeZone {
    if (!_childTimeZone) {
        _childTimeZone = [NSCalendar currentCalendar].timeZone;
    }
    return _childTimeZone;
}

- (NSMutableArray *)TestProjectTimeZone_nextDaylightSavingTimeTransitionAfterDate:(TestProjectTableViewParams *)params {
    NSDate *date = [NSDate date];
    NSDate *result = [self.childTimeZone nextDaylightSavingTimeTransitionAfterDate:date];
    return [self createModelSingleArrayWithParams:params title:[NSString stringWithFormat:@"date:%@ result:%@", date, result] block:nil];
}

- (NSDictionary *)method_7:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"执行NSTimeZone的方法nextDaylightSavingTimeTransitionAfterDate",
            @"title": @"- (nullable NSDate *)nextDaylightSavingTimeTransitionAfterDate:(NSDate *)aDate API_AVAILABLE(macos(10.5), ios(2.0), watchos(2.0), tvos(9.0));",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectTimeZone_nextDaylightSavingTimeTransitionAfterDate:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectTimeZone_daylightSavingTimeOffsetForDate:(TestProjectTableViewParams *)params {
    NSDate *date = [NSDate date];
    NSTimeInterval result = [self.childTimeZone daylightSavingTimeOffsetForDate:date];
    return [self createModelSingleArrayWithParams:params title:[NSString stringWithFormat:@"date:%@ result:%f", date, result] block:nil];
}

- (NSDictionary *)method_6:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"执行NSTimeZone的方法daylightSavingTimeOffsetForDate",
            @"title": @"- (NSTimeInterval)daylightSavingTimeOffsetForDate:(NSDate *)aDate API_AVAILABLE(macos(10.5), ios(2.0), watchos(2.0), tvos(9.0));",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectTimeZone_daylightSavingTimeOffsetForDate:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectTimeZone_isDaylightSavingTimeForDate:(TestProjectTableViewParams *)params {
    NSDate *date = [NSDate date];
    BOOL result = [self.childTimeZone isDaylightSavingTimeForDate:date];
    return [self createModelSingleArrayWithParams:params title:[NSString stringWithFormat:@"date:%@ result:%u", date, result] block:nil];
}

- (NSDictionary *)method_5:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"执行NSTimeZone的方法isDaylightSavingTimeForDate",
            @"title": @"- (BOOL)isDaylightSavingTimeForDate:(NSDate *)aDate;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectTimeZone_isDaylightSavingTimeForDate:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectTimeZone_abbreviationForDate:(TestProjectTableViewParams *)params {
    NSDate *date = [NSDate date];
    NSString *result = [self.childTimeZone abbreviationForDate:date];
    return [self createModelSingleArrayWithParams:params title:[NSString stringWithFormat:@"date:%@ result:%@", date, result] block:nil];
}

- (NSDictionary *)method_4:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"执行NSTimeZone的方法abbreviationForDate",
            @"title": @"- (nullable NSString *)abbreviationForDate:(NSDate *)aDate;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectTimeZone_abbreviationForDate:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectTimeZone_secondsFromGMTForDate:(TestProjectTableViewParams *)params {
    NSDate *date = [NSDate date];
    NSInteger result = [self.childTimeZone secondsFromGMTForDate:date];
    return [self createModelSingleArrayWithParams:params title:[NSString stringWithFormat:@"date:%@ result:%ld", date, result] block:nil];
}

- (NSDictionary *)method_3:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"执行NSTimeZone的方法secondsFromGMTForDate",
            @"title": @"- (NSInteger)secondsFromGMTForDate:(NSDate *)aDate;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectTimeZone_secondsFromGMTForDate:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectTimeZone_property_data:(TestProjectTableViewParams *)params {
    return [self createModelSingleArrayWithParams:params
                                         property:@"data"
                                            value:nil
                                        operation:TestProjectCreateModelGetBeforeClickGet
                                            block:nil];
}

- (NSDictionary *)method_2:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"获取NSTimeZone的属性data",
            @"title": @"@property (readonly, copy) NSData *data;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectTimeZone_property_data:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectTimeZone_property_name:(TestProjectTableViewParams *)params {
    return [self createModelSingleArrayWithParams:params
                                         property:@"name"
                                            value:nil
                                        operation:TestProjectCreateModelGetBeforeClickGet
                                            block:nil];
}

- (NSDictionary *)method_1:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"获取NSTimeZone的属性name",
            @"title": @"@property (readonly, copy) NSString *name;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectTimeZone_property_name:params],
            }
        },
    };
}

@end
