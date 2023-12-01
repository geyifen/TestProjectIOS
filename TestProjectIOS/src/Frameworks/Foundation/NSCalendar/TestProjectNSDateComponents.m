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

- (id)setPropertyValueObject:(TestProjectTableViewParams *)params {
    return self.dateComponents;
}

- (NSMutableArray *)TestProjectDateComponents_property_date:(TestProjectTableViewParams *)params {
    return [self createModelSingleArrayWithParams:params
                                         property:@"date"
                                            value:nil
                                        operation:TestProjectCreateModelGetBeforeClickGet
                                            block:nil];
}

- (NSDictionary *)method_18:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"获取NSDateComponents的属性date",
            @"title": @"@property (nullable, readonly, copy) NSDate *date API_AVAILABLE(macos(10.7), ios(4.0), watchos(2.0), tvos(9.0));",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectDateComponents_property_date:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectDateComponents_property_leapMonth:(TestProjectTableViewParams *)params {
    return [self createModelSingleArrayWithParams:params
                                         property:@"leapMonth"
                                            value:nil
                                        operation:TestProjectCreateModelGetBeforeClickGet
                                            block:nil];
}

- (NSDictionary *)method_17:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"获取NSDateComponents的属性leapMonth",
            @"title": @"@property (getter=isLeapMonth) BOOL leapMonth API_AVAILABLE(macos(10.8), ios(6.0), watchos(2.0), tvos(9.0));",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectDateComponents_property_leapMonth:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectDateComponents_property_yearForWeekOfYear:(TestProjectTableViewParams *)params {
    return [self createModelSingleArrayWithParams:params
                                         property:@"yearForWeekOfYear"
                                            value:nil
                                        operation:TestProjectCreateModelGetBeforeClickGet
                                            block:nil];
}

- (NSDictionary *)method_16:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"获取NSDateComponents的属性yearForWeekOfYear",
            @"title": @"@property NSInteger yearForWeekOfYear API_AVAILABLE(macos(10.7), ios(5.0), watchos(2.0), tvos(9.0));",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectDateComponents_property_yearForWeekOfYear:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectDateComponents_property_weekOfYear:(TestProjectTableViewParams *)params {
    return [self createModelSingleArrayWithParams:params
                                         property:@"weekOfYear"
                                            value:nil
                                        operation:TestProjectCreateModelGetBeforeClickGet
                                            block:nil];
}

- (NSDictionary *)method_15:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"获取NSDateComponents的属性weekOfYear",
            @"title": @"@property NSInteger weekOfYear API_AVAILABLE(macos(10.7), ios(5.0), watchos(2.0), tvos(9.0));",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectDateComponents_property_weekOfYear:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectDateComponents_property_weekOfMonth:(TestProjectTableViewParams *)params {
    return [self createModelSingleArrayWithParams:params
                                         property:@"weekOfMonth"
                                            value:nil
                                        operation:TestProjectCreateModelGetBeforeClickGet
                                            block:nil];
}

- (NSDictionary *)method_14:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"获取NSDateComponents的属性weekOfMonth",
            @"title": @"@property NSInteger weekOfMonth API_AVAILABLE(macos(10.7), ios(5.0), watchos(2.0), tvos(9.0));",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectDateComponents_property_weekOfMonth:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectDateComponents_property_quarter:(TestProjectTableViewParams *)params {
    return [self createModelSingleArrayWithParams:params
                                         property:@"quarter"
                                            value:nil
                                        operation:TestProjectCreateModelGetBeforeClickGet
                                            block:nil];
}

- (NSDictionary *)method_13:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"获取NSDateComponents的属性quarter",
            @"title": @"@property NSInteger quarter API_AVAILABLE(macos(10.6), ios(4.0), watchos(2.0), tvos(9.0));",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectDateComponents_property_quarter:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectDateComponents_property_weekdayOrdinal:(TestProjectTableViewParams *)params {
    return [self createModelSingleArrayWithParams:params
                                         property:@"weekdayOrdinal"
                                            value:nil
                                        operation:TestProjectCreateModelGetBeforeClickGet
                                            block:nil];
}

- (NSDictionary *)method_12:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"获取NSDateComponents的属性weekdayOrdinal",
            @"title": @"@property NSInteger weekdayOrdinal;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectDateComponents_property_weekdayOrdinal:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectDateComponents_property_weekday:(TestProjectTableViewParams *)params {
    return [self createModelSingleArrayWithParams:params
                                         property:@"weekday"
                                            value:nil
                                        operation:TestProjectCreateModelGetBeforeClickGet
                                            block:nil];
}

- (NSDictionary *)method_11:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"获取NSDateComponents的属性weekday",
            @"title": @"@property NSInteger weekday;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectDateComponents_property_weekday:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectDateComponents_property_nanosecond:(TestProjectTableViewParams *)params {
    return [self createModelSingleArrayWithParams:params
                                         property:@"nanosecond"
                                            value:nil
                                        operation:TestProjectCreateModelGetBeforeClickGet
                                            block:nil];
}

- (NSDictionary *)method_10:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"获取NSDateComponents的属性nanosecond",
            @"title": @"@property NSInteger nanosecond API_AVAILABLE(macos(10.7), ios(5.0), watchos(2.0), tvos(9.0));",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectDateComponents_property_nanosecond:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectDateComponents_property_second:(TestProjectTableViewParams *)params {
    return [self createModelSingleArrayWithParams:params
                                         property:@"second"
                                            value:nil
                                        operation:TestProjectCreateModelGetBeforeClickGet
                                            block:nil];
}

- (NSDictionary *)method_9:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"获取NSDateComponents的属性second",
            @"title": @"@property NSInteger second;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectDateComponents_property_second:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectDateComponents_property_minute:(TestProjectTableViewParams *)params {
    return [self createModelSingleArrayWithParams:params
                                         property:@"minute"
                                            value:nil
                                        operation:TestProjectCreateModelGetBeforeClickGet
                                            block:nil];
}

- (NSDictionary *)method_8:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"获取NSDateComponents的属性minute",
            @"title": @"@property (nullable, copy) NSTimeZone *minute API_AVAILABLE(macos(10.7), ios(4.0), watchos(2.0), tvos(9.0));",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectDateComponents_property_minute:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectDateComponents_property_hour:(TestProjectTableViewParams *)params {
    return [self createModelSingleArrayWithParams:params
                                         property:@"hour"
                                            value:nil
                                        operation:TestProjectCreateModelGetBeforeClickGet
                                            block:nil];
}

- (NSDictionary *)method_7:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"获取NSDateComponents的属性hour",
            @"title": @"@property NSInteger hour;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectDateComponents_property_hour:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectDateComponents_property_day:(TestProjectTableViewParams *)params {
    return [self createModelSingleArrayWithParams:params
                                         property:@"day"
                                            value:nil
                                        operation:TestProjectCreateModelGetBeforeClickGet
                                            block:nil];
}

- (NSDictionary *)method_6:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"获取NSDateComponents的属性day",
            @"title": @"@property NSInteger day;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectDateComponents_property_day:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectDateComponents_property_month:(TestProjectTableViewParams *)params {
    return [self createModelSingleArrayWithParams:params
                                         property:@"month"
                                            value:nil
                                        operation:TestProjectCreateModelGetBeforeClickGet
                                            block:nil];
}

- (NSDictionary *)method_5:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"获取NSDateComponents的属性month",
            @"title": @"@property NSInteger month;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectDateComponents_property_month:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectDateComponents_property_year:(TestProjectTableViewParams *)params {
    return [self createModelSingleArrayWithParams:params
                                         property:@"year"
                                            value:nil
                                        operation:TestProjectCreateModelGetBeforeClickGet
                                            block:nil];
}

- (NSDictionary *)method_4:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"获取NSDateComponents的属性year",
            @"title": @"@property NSInteger year;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectDateComponents_property_year:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectDateComponents_property_era:(TestProjectTableViewParams *)params {
    return [self createModelSingleArrayWithParams:params
                                         property:@"era"
                                            value:nil
                                        operation:TestProjectCreateModelGetBeforeClickGet
                                            block:nil];
}

- (NSDictionary *)method_3:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"获取NSDateComponents的属性era",
            @"title": @"@property NSInteger era;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectDateComponents_property_era:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectDateComponents_property_timeZone:(TestProjectTableViewParams *)params {
    return [self createModelSingleArrayWithParams:params
                                         property:@"timeZone"
                                            value:nil
                                        operation:TestProjectCreateModelGetBeforeClickGet
                                            block:nil];
}

- (NSDictionary *)method_2:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"获取NSDateComponents的属性timeZone",
            @"title": @"@property (nullable, copy) NSTimeZone *timeZone API_AVAILABLE(macos(10.7), ios(4.0), watchos(2.0), tvos(9.0));",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectDateComponents_property_timeZone:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectDateComponents_property_calendar:(TestProjectTableViewParams *)params {
    return [self createModelSingleArrayWithParams:params
                                         property:@"calendar"
                                            value:nil
                                        operation:TestProjectCreateModelGetBeforeClickGet
                                            block:nil];
}

- (NSDictionary *)method_1:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"获取NSDateComponents的属性calendar",
            @"title": @"@property (nullable, copy) NSCalendar *calendar API_AVAILABLE(macos(10.7), ios(4.0), watchos(2.0), tvos(9.0));",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectDateComponents_property_calendar:params],
            }
        },
    };
}

@end
