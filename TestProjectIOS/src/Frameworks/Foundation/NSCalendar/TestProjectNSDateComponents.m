//
//  TestProjectNSDateComponents.m
//  TestProjectIOS
//
//  Created by liwenfan on 2023/6/13.
//

#import "TestProjectNSDateComponents.h"

@interface TestProjectNSDateComponents ()

@property (nonatomic, strong) NSCalendar *calendar;
@property (nonatomic, strong) NSDateComponents *dateComponents;

@end

@implementation TestProjectNSDateComponents

- (NSDateComponents *)dateComponents {
    if (!_dateComponents) {
        NSCalendarUnit unit = NSCalendarUnitEra | NSCalendarUnitYear |NSCalendarUnitMonth | NSCalendarUnitDay | NSCalendarUnitHour | NSCalendarUnitMinute | NSCalendarUnitSecond | NSCalendarUnitWeekday | NSCalendarUnitWeekdayOrdinal | NSCalendarUnitQuarter | NSCalendarUnitWeekOfMonth | NSCalendarUnitWeekOfYear | NSCalendarUnitYearForWeekOfYear | NSCalendarUnitNanosecond | NSCalendarUnitCalendar | NSCalendarUnitTimeZone;
        _dateComponents = [self.calendar components:unit fromDate:[NSDate date]];
    }
    return _dateComponents;
}

- (NSCalendar *)calendar {
    if (!_calendar) {
        _calendar = [NSCalendar currentCalendar];
        _calendar.firstWeekday = 1;
    }
    return _calendar;
}

- (id)setPropertyValueObject {
    return self.dateComponents;
}

- (NSDictionary *)method_1 {
    return @{
        @"dataModel": @{
            @"abstract": @"获取NSDateComponents的属性calendar",
            @"title": @"@property (nullable, copy) NSCalendar *calendar API_AVAILABLE(macos(10.7), ios(4.0), watchos(2.0), tvos(9.0));",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectDateComponents_property_calendar],
            }
        },
    };
}

- (NSDictionary *)method_2 {
    return @{
        @"dataModel": @{
            @"abstract": @"获取NSDateComponents的属性timeZone",
            @"title": @"@property (nullable, copy) NSTimeZone *timeZone API_AVAILABLE(macos(10.7), ios(4.0), watchos(2.0), tvos(9.0));",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectDateComponents_property_timeZone],
            }
        },
    };
}

- (NSDictionary *)method_3 {
    return @{
        @"dataModel": @{
            @"abstract": @"获取NSDateComponents的属性era",
            @"title": @"@property NSInteger era;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectDateComponents_property_era],
            }
        },
    };
}

- (NSDictionary *)method_4 {
    return @{
        @"dataModel": @{
            @"abstract": @"获取NSDateComponents的属性year",
            @"title": @"@property NSInteger year;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectDateComponents_property_year],
            }
        },
    };
}

- (NSDictionary *)method_5 {
    return @{
        @"dataModel": @{
            @"abstract": @"获取NSDateComponents的属性month",
            @"title": @"@property NSInteger month;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectDateComponents_property_month],
            }
        },
    };
}

- (NSDictionary *)method_6 {
    return @{
        @"dataModel": @{
            @"abstract": @"获取NSDateComponents的属性day",
            @"title": @"@property NSInteger day;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectDateComponents_property_day],
            }
        },
    };
}

- (NSDictionary *)method_7 {
    return @{
        @"dataModel": @{
            @"abstract": @"获取NSDateComponents的属性hour",
            @"title": @"@property NSInteger hour;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectDateComponents_property_hour],
            }
        },
    };
}

- (NSDictionary *)method_8 {
    return @{
        @"dataModel": @{
            @"abstract": @"获取NSDateComponents的属性minute",
            @"title": @"@property (nullable, copy) NSTimeZone *minute API_AVAILABLE(macos(10.7), ios(4.0), watchos(2.0), tvos(9.0));",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectDateComponents_property_minute],
            }
        },
    };
}

- (NSDictionary *)method_9 {
    return @{
        @"dataModel": @{
            @"abstract": @"获取NSDateComponents的属性second",
            @"title": @"@property NSInteger second;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectDateComponents_property_second],
            }
        },
    };
}

- (NSDictionary *)method_10 {
    return @{
        @"dataModel": @{
            @"abstract": @"获取NSDateComponents的属性nanosecond",
            @"title": @"@property NSInteger nanosecond API_AVAILABLE(macos(10.7), ios(5.0), watchos(2.0), tvos(9.0));",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectDateComponents_property_nanosecond],
            }
        },
    };
}

- (NSDictionary *)method_11 {
    return @{
        @"dataModel": @{
            @"abstract": @"获取NSDateComponents的属性weekday",
            @"title": @"@property NSInteger weekday;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectDateComponents_property_weekday],
            }
        },
    };
}

- (NSDictionary *)method_12 {
    return @{
        @"dataModel": @{
            @"abstract": @"获取NSDateComponents的属性weekdayOrdinal",
            @"title": @"@property NSInteger weekdayOrdinal;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectDateComponents_property_weekdayOrdinal],
            }
        },
    };
}

- (NSDictionary *)method_13 {
    return @{
        @"dataModel": @{
            @"abstract": @"获取NSDateComponents的属性quarter",
            @"title": @"@property NSInteger quarter API_AVAILABLE(macos(10.6), ios(4.0), watchos(2.0), tvos(9.0));",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectDateComponents_property_quarter],
            }
        },
    };
}

- (NSDictionary *)method_14 {
    return @{
        @"dataModel": @{
            @"abstract": @"获取NSDateComponents的属性weekOfMonth",
            @"title": @"@property NSInteger weekOfMonth API_AVAILABLE(macos(10.7), ios(5.0), watchos(2.0), tvos(9.0));",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectDateComponents_property_weekOfMonth],
            }
        },
    };
}

- (NSDictionary *)method_15 {
    return @{
        @"dataModel": @{
            @"abstract": @"获取NSDateComponents的属性weekOfYear",
            @"title": @"@property NSInteger weekOfYear API_AVAILABLE(macos(10.7), ios(5.0), watchos(2.0), tvos(9.0));",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectDateComponents_property_weekOfYear],
            }
        },
    };
}

- (NSDictionary *)method_16 {
    return @{
        @"dataModel": @{
            @"abstract": @"获取NSDateComponents的属性yearForWeekOfYear",
            @"title": @"@property NSInteger yearForWeekOfYear API_AVAILABLE(macos(10.7), ios(5.0), watchos(2.0), tvos(9.0));",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectDateComponents_property_yearForWeekOfYear],
            }
        },
    };
}

- (NSDictionary *)method_17 {
    return @{
        @"dataModel": @{
            @"abstract": @"获取NSDateComponents的属性leapMonth",
            @"title": @"@property (getter=isLeapMonth) BOOL leapMonth API_AVAILABLE(macos(10.8), ios(6.0), watchos(2.0), tvos(9.0));",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectDateComponents_property_leapMonth],
            }
        },
    };
}

- (NSDictionary *)method_18 {
    return @{
        @"dataModel": @{
            @"abstract": @"获取NSDateComponents的属性date",
            @"title": @"@property (nullable, readonly, copy) NSDate *date API_AVAILABLE(macos(10.7), ios(4.0), watchos(2.0), tvos(9.0));",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectDateComponents_property_date],
            }
        },
    };
}

- (NSMutableArray *)TestProjectDateComponents_property_date {
    return [self createTableModelSingleArrayWithProperty:@"date" value:nil];
}

- (NSMutableArray *)TestProjectDateComponents_property_leapMonth {
    return [self createTableModelSingleArrayWithProperty:@"leapMonth" value:nil];
}

- (NSMutableArray *)TestProjectDateComponents_property_yearForWeekOfYear {
    return [self createTableModelSingleArrayWithProperty:@"yearForWeekOfYear" value:nil];
}

- (NSMutableArray *)TestProjectDateComponents_property_weekOfYear {
    return [self createTableModelSingleArrayWithProperty:@"weekOfYear" value:nil];
}

- (NSMutableArray *)TestProjectDateComponents_property_weekOfMonth {
    return [self createTableModelSingleArrayWithProperty:@"weekOfMonth" value:nil];
}

- (NSMutableArray *)TestProjectDateComponents_property_quarter {
    return [self createTableModelSingleArrayWithProperty:@"quarter" value:nil];
}

- (NSMutableArray *)TestProjectDateComponents_property_weekdayOrdinal {
    return [self createTableModelSingleArrayWithProperty:@"weekdayOrdinal" value:nil];
}

- (NSMutableArray *)TestProjectDateComponents_property_weekday {
    return [self createTableModelSingleArrayWithProperty:@"weekday" value:nil];
}

- (NSMutableArray *)TestProjectDateComponents_property_nanosecond {
    return [self createTableModelSingleArrayWithProperty:@"nanosecond" value:nil];
}

- (NSMutableArray *)TestProjectDateComponents_property_second {
    return [self createTableModelSingleArrayWithProperty:@"second" value:nil];
}

- (NSMutableArray *)TestProjectDateComponents_property_minute {
    return [self createTableModelSingleArrayWithProperty:@"minute" value:nil];
}

- (NSMutableArray *)TestProjectDateComponents_property_hour {
    return [self createTableModelSingleArrayWithProperty:@"hour" value:nil];
}

- (NSMutableArray *)TestProjectDateComponents_property_day {
    return [self createTableModelSingleArrayWithProperty:@"day" value:nil];
}

- (NSMutableArray *)TestProjectDateComponents_property_month {
    return [self createTableModelSingleArrayWithProperty:@"month" value:nil];
}

- (NSMutableArray *)TestProjectDateComponents_property_year {
    return [self createTableModelSingleArrayWithProperty:@"year" value:nil];
}

- (NSMutableArray *)TestProjectDateComponents_property_era {
    return [self createTableModelSingleArrayWithProperty:@"era" value:nil];
}

- (NSMutableArray *)TestProjectDateComponents_property_timeZone {
    return [self createTableModelSingleArrayWithProperty:@"timeZone" value:nil];
}

- (NSMutableArray *)TestProjectDateComponents_property_calendar {
    return [self createTableModelSingleArrayWithProperty:@"calendar" value:nil];
}

@end
