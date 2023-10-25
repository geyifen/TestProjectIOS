//
//  TestProjectCalendar.m
//  TestProjectIOS
//
//  Created by liwenfan on 2023/6/8.
//

#import "TestProjectCalendar.h"

@interface TestProjectCalendar ()

@property (nonatomic, strong) NSCalendar *childCalendar;
@property (nonatomic, strong) NSDateComponents *dateComponents;

@end

@implementation TestProjectCalendar

- (id)setPropertyValueObject {
    return self.childCalendar;
}

- (NSDateComponents *)dateComponents {
    if (!_dateComponents) {
        _dateComponents = [[NSDateComponents alloc] init];
        _dateComponents.year = 1993;
        _dateComponents.month = 11;
        _dateComponents.day = 12;
    }
    return _dateComponents;
}

- (NSCalendar *)childCalendar {
    if (!_childCalendar) {
        _childCalendar = [NSCalendar currentCalendar];
    }
    return _childCalendar;
}

- (NSDictionary *)method_1 {
    return @{
        @"dataModel": @{
            @"abstract": @"获取NSCalendar的class属性currentCalendar",
            @"title": @"@property (class, readonly, copy) NSCalendar *currentCalendar;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectCalendar_class_property_currentCalendar],
            }
        },
    };
}

- (NSDictionary *)method_2 {
    return @{
        @"dataModel": @{
            @"abstract": @"获取NSCalendar的class属性autoupdatingCurrentCalendar",
            @"title": @"@property (class, readonly, strong) NSCalendar *autoupdatingCurrentCalendar API_AVAILABLE(macos(10.5), ios(2.0), watchos(2.0), tvos(9.0));",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectCalendar_class_property_autoupdatingCurrentCalendar],
            }
        },
    };
}

- (NSDictionary *)method_3 {
    return @{
        @"dataModel": @{
            @"abstract": @"通过NSCalendarIdentifier获取NSCalendar的实例对象",
            @"title": @"+ (nullable NSCalendar *)calendarWithIdentifier:(NSCalendarIdentifier)calendarIdentifierConstant API_AVAILABLE(macos(10.9), ios(8.0), watchos(2.0), tvos(9.0));",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectCalendar_class_calendarWithIdentifier],
            }
        },
    };
}

- (NSDictionary *)method_4 {
    return @{
        @"dataModel": @{
            @"abstract": @"获取NSCalendar的属性autoupdatingCurrentCalendar",
            @"title": @"@property (readonly, copy) NSCalendarIdentifier calendarIdentifier;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectCalendar_property_calendarIdentifier],
            }
        },
    };
}

- (NSDictionary *)method_5 {
    return @{
        @"dataModel": @{
            @"abstract": @"获取NSCalendar的属性locale",
            @"title": @"@property (nullable, copy) NSLocale *locale;",
            @"isDataModelExpand": @(YES),
            @"desc": @"本地化信息",
            @"dataModel": @{
                @"childItems": [self TestProjectCalendar_property_locale],
            }
        },
    };
}


- (NSDictionary *)method_6 {
    return @{
        @"dataModel": @{
            @"abstract": @"获取NSCalendar的属性timeZone",
            @"title": @"@property (copy) NSTimeZone *timeZone;",
            @"isDataModelExpand": @(YES),
            @"desc": @"时区信息",
            @"dataModel": @{
                @"childItems": [self TestProjectCalendar_property_timeZone],
            }
        },
    };
}

- (NSDictionary *)method_7 {
    return @{
        @"dataModel": @{
            @"abstract": @"获取NSCalendar的属性firstWeekday",
            @"title": @"@property NSUInteger firstWeekday;",
            @"isDataModelExpand": @(YES),
            @"desc": @"在获取weekOfYear或者weekOfMonth的时候起作用\n系统默认的是周日是1，虽然不能改变数值，但我们在取的时候可以进行改变；而该属性就是在取的时候可以从周一进行取值",
            @"dataModel": @{
                @"childItems": [self TestProjectCalendar_property_firstWeekday],
            }
        },
    };
}

- (NSDictionary *)method_8 {
    return @{
        @"dataModel": @{
            @"abstract": @"获取NSCalendar的属性minimumDaysInFirstWeek",
            @"title": @"@property NSUInteger minimumDaysInFirstWeek;",
            @"isDataModelExpand": @(YES),
            @"desc": @"设置第一周最少包含多少天",
            @"dataModel": @{
                @"childItems": [self TestProjectCalendar_property_minimumDaysInFirstWeek],
            }
        },
    };
}

- (NSDictionary *)method_9 {
    return @{
        @"dataModel": @{
            @"abstract": @"获取NSCalendar的属性eraSymbols",
            @"title": @"@property (readonly, copy) NSArray<NSString *> *eraSymbols      API_AVAILABLE(macos(10.7), ios(5.0), watchos(2.0), tvos(9.0));",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectCalendar_property_eraSymbols],
            }
        },
    };
}

- (NSDictionary *)method_10 {
    return @{
        @"dataModel": @{
            @"abstract": @"获取NSCalendar的属性longEraSymbols",
            @"title": @"@property (readonly, copy) NSArray<NSString *> *longEraSymbols  API_AVAILABLE(macos(10.7), ios(5.0), watchos(2.0), tvos(9.0));",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectCalendar_property_longEraSymbols],
            }
        },
    };
}

- (NSDictionary *)method_11 {
    return @{
        @"dataModel": @{
            @"abstract": @"获取NSCalendar的属性monthSymbols，每个月的完整标识符号",
            @"title": @"@property (readonly, copy) NSArray<NSString *> *monthSymbols                    API_AVAILABLE(macos(10.7), ios(5.0), watchos(2.0), tvos(9.0));",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectCalendar_property_monthSymbols],
            }
        },
    };
}

- (NSDictionary *)method_12 {
    return @{
        @"dataModel": @{
            @"abstract": @"获取NSCalendar的属性shortMonthSymbols，每个月的简写标识符号",
            @"title": @"@property (readonly, copy) NSArray<NSString *> *shortMonthSymbols               API_AVAILABLE(macos(10.7), ios(5.0), watchos(2.0), tvos(9.0));",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectCalendar_property_shortMonthSymbols],
            }
        },
    };
}

- (NSDictionary *)method_13 {
    return @{
        @"dataModel": @{
            @"abstract": @"获取NSCalendar的属性veryShortMonthSymbols，每个月的英文首字母标识符号",
            @"title": @"@property (readonly, copy) NSArray<NSString *> *veryShortMonthSymbols           API_AVAILABLE(macos(10.7), ios(5.0), watchos(2.0), tvos(9.0));",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectCalendar_property_veryShortMonthSymbols],
            }
        },
    };
}

- (NSDictionary *)method_14 {
    return @{
        @"dataModel": @{
            @"abstract": @"获取NSCalendar的属性standaloneMonthSymbols，每个月的标准的完整标识符号",
            @"title": @"@property (readonly, copy) NSArray<NSString *> *standaloneMonthSymbols          API_AVAILABLE(macos(10.7), ios(5.0), watchos(2.0), tvos(9.0));",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectCalendar_property_standaloneMonthSymbols],
            }
        },
    };
}

- (NSDictionary *)method_15 {
    return @{
        @"dataModel": @{
            @"abstract": @"获取NSCalendar的属性shortStandaloneMonthSymbols，每个月标准的的简写标识符号",
            @"title": @"@property (readonly, copy) NSArray<NSString *> *shortStandaloneMonthSymbols     API_AVAILABLE(macos(10.7), ios(5.0), watchos(2.0), tvos(9.0));",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectCalendar_property_shortStandaloneMonthSymbols],
            }
        },
    };
}

- (NSDictionary *)method_16 {
    return @{
        @"dataModel": @{
            @"abstract": @"获取NSCalendar的属性veryShortStandaloneMonthSymbols，每个月标准的的英文首字母标识符号",
            @"title": @"@property (readonly, copy) NSArray<NSString *> *veryShortStandaloneMonthSymbols API_AVAILABLE(macos(10.7), ios(5.0), watchos(2.0), tvos(9.0));",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectCalendar_property_veryShortStandaloneMonthSymbols],
            }
        },
    };
}

- (NSDictionary *)method_17 {
    return @{
        @"dataModel": @{
            @"abstract": @"获取NSCalendar的属性weekdaySymbols，一周的每天英文标识符号",
            @"title": @"@property (readonly, copy) NSArray<NSString *> *weekdaySymbols                    API_AVAILABLE(macos(10.7), ios(5.0), watchos(2.0), tvos(9.0));",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectCalendar_property_weekdaySymbols],
            }
        },
    };
}

- (NSDictionary *)method_18 {
    return @{
        @"dataModel": @{
            @"abstract": @"获取NSCalendar的属性shortWeekdaySymbols，一周的每天简写英文标识符号",
            @"title": @"@property (readonly, copy) NSArray<NSString *> *shortWeekdaySymbols               API_AVAILABLE(macos(10.7), ios(5.0), watchos(2.0), tvos(9.0));",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectCalendar_property_shortWeekdaySymbols],
            }
        },
    };
}

- (NSDictionary *)method_19 {
    return @{
        @"dataModel": @{
            @"abstract": @"获取NSCalendar的属性veryShortWeekdaySymbols，一周的每天首字母英文标识符号",
            @"title": @"@property (readonly, copy) NSArray<NSString *> *veryShortWeekdaySymbols           API_AVAILABLE(macos(10.7), ios(5.0), watchos(2.0), tvos(9.0));",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectCalendar_property_veryShortWeekdaySymbols],
            }
        },
    };
}

- (NSDictionary *)method_20 {
    return @{
        @"dataModel": @{
            @"abstract": @"获取NSCalendar的属性standaloneWeekdaySymbols",
            @"title": @"@property (readonly, copy) NSArray<NSString *> *standaloneWeekdaySymbols          API_AVAILABLE(macos(10.7), ios(5.0), watchos(2.0), tvos(9.0));",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectCalendar_property_standaloneWeekdaySymbols],
            }
        },
    };
}

- (NSDictionary *)method_21 {
    return @{
        @"dataModel": @{
            @"abstract": @"获取NSCalendar的属性shortStandaloneWeekdaySymbols",
            @"title": @"@property (readonly, copy) NSArray<NSString *> *shortStandaloneWeekdaySymbols     API_AVAILABLE(macos(10.7), ios(5.0), watchos(2.0), tvos(9.0));",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectCalendar_property_shortStandaloneWeekdaySymbols],
            }
        },
    };
}

- (NSDictionary *)method_22 {
    return @{
        @"dataModel": @{
            @"abstract": @"获取NSCalendar的属性veryShortStandaloneWeekdaySymbols",
            @"title": @"@property (readonly, copy) NSArray<NSString *> *veryShortStandaloneWeekdaySymbols API_AVAILABLE(macos(10.7), ios(5.0), watchos(2.0), tvos(9.0));",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectCalendar_property_veryShortStandaloneWeekdaySymbols],
            }
        },
    };
}

- (NSDictionary *)method_23 {
    return @{
        @"dataModel": @{
            @"abstract": @"获取NSCalendar的属性quarterSymbols，一年的每个季度英文标识符号",
            @"title": @"@property (readonly, copy) NSArray<NSString *> *quarterSymbols                 API_AVAILABLE(macos(10.7), ios(5.0), watchos(2.0), tvos(9.0));",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectCalendar_property_quarterSymbols],
            }
        },
    };
}

- (NSDictionary *)method_24 {
    return @{
        @"dataModel": @{
            @"abstract": @"获取NSCalendar的属性shortQuarterSymbols",
            @"title": @"@property (readonly, copy) NSArray<NSString *> *shortQuarterSymbols            API_AVAILABLE(macos(10.7), ios(5.0), watchos(2.0), tvos(9.0));",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectCalendar_property_shortQuarterSymbols],
            }
        },
    };
}

- (NSDictionary *)method_25 {
    return @{
        @"dataModel": @{
            @"abstract": @"获取NSCalendar的属性standaloneQuarterSymbols",
            @"title": @"@property (readonly, copy) NSArray<NSString *> *standaloneQuarterSymbols       API_AVAILABLE(macos(10.7), ios(5.0), watchos(2.0), tvos(9.0));",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectCalendar_property_standaloneQuarterSymbols],
            }
        },
    };
}

- (NSDictionary *)method_26 {
    return @{
        @"dataModel": @{
            @"abstract": @"获取NSCalendar的属性shortStandaloneQuarterSymbols",
            @"title": @"@property (readonly, copy) NSArray<NSString *> *shortStandaloneQuarterSymbols  API_AVAILABLE(macos(10.7), ios(5.0), watchos(2.0), tvos(9.0));",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectCalendar_property_shortStandaloneQuarterSymbols],
            }
        },
    };
}

- (NSDictionary *)method_27 {
    return @{
        @"dataModel": @{
            @"abstract": @"获取NSCalendar的属性AMSymbol，上午英文标识符号",
            @"title": @"@property (readonly, copy) NSString *AMSymbol  API_AVAILABLE(macos(10.7), ios(5.0), watchos(2.0), tvos(9.0));",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectCalendar_property_AMSymbol],
            }
        },
    };
}

- (NSDictionary *)method_28 {
    return @{
        @"dataModel": @{
            @"abstract": @"获取NSCalendar的属性PMSymbol，下午英文标识符号",
            @"title": @"@property (readonly, copy) NSString *PMSymbol  API_AVAILABLE(macos(10.7), ios(5.0), watchos(2.0), tvos(9.0));",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectCalendar_property_PMSymbol],
            }
        },
    };
}

- (NSDictionary *)method_29 {
    return @{
        @"dataModel": @{
            @"abstract": @"执行NSCalendar的方法，获取每个限制里最小的取值范围",
            @"title": @"- (NSRange)minimumRangeOfUnit:(NSCalendarUnit)unit;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectCalendar_minimumRangeOfUnit],
            }
        },
    };
}

- (NSDictionary *)method_30 {
    return @{
        @"dataModel": @{
            @"abstract": @"执行NSCalendar的方法，获取每个限制里最大的取值范围",
            @"title": @"- (NSRange)maximumRangeOfUnit:(NSCalendarUnit)unit;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectCalendar_maximumRangeOfUnit],
            }
        },
    };
}

- (NSDictionary *)method_31 {
    return @{
        @"dataModel": @{
            @"abstract": @"执行NSCalendar的方法，一个小的时间刻度在一个大的时间刻度的取值范围，有的值在修改firstWeekday或者在修改minimumDaysInFirstWeek里面取的值不同",
            @"title": @"- (NSRange)rangeOfUnit:(NSCalendarUnit)smaller inUnit:(NSCalendarUnit)larger forDate:(NSDate *)date;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectCalendar_rangeOfUnit_inUnit_forDate],
            }
        },
    };
}

- (NSDictionary *)method_32 {
    return @{
        @"dataModel": @{
            @"abstract": @"执行NSCalendar的方法，一个小的时间刻度在一个大的时间刻度的序数，有的值在修改firstWeekday或者在修改minimumDaysInFirstWeek里面取的值不同",
            @"title": @"- (NSUInteger)ordinalityOfUnit:(NSCalendarUnit)smaller inUnit:(NSCalendarUnit)larger forDate:(NSDate *)date;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectCalendar_ordinalityOfUnit_inUnit_forDate],
            }
        },
    };
}

- (NSDictionary *)method_33 {
    return @{
        @"dataModel": @{
            @"abstract": @"根据传入的限制的值获取该时间的最近的一次值，有点像向下取整的",
            @"title": @"- (BOOL)rangeOfUnit:(NSCalendarUnit)unit startDate:(NSDate * _Nullable * _Nullable)datep interval:(nullable NSTimeInterval *)tip forDate:(NSDate *)date API_AVAILABLE(macos(10.5), ios(2.0), watchos(2.0), tvos(9.0));",
            @"isDataModelExpand": @(YES),
            @"desc": @"@params unit:传入的限制的值\n@params datep:得到的结果时间值\n@params tip:得到的时间值和给出的值的时间差\n@params date:传入的时间值\n假设传入的是NSCalendarUnitDay，这获取的是该时间的当天零点时间",
            @"dataModel": @{
                @"childItems": [self TestProjectCalendar_rangeOfUnit_startDate_interval_forDate],
            }
        },
    };
}

- (NSDictionary *)method_34 {
    return @{
        @"dataModel": @{
            @"abstract": @"根据传入的NSDateComponents获取时间值",
            @"title": @"- (nullable NSDate *)dateFromComponents:(NSDateComponents *)comps;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectCalendar_dateFromComponents],
            }
        },
    };
}

- (NSDictionary *)method_35 {
    return @{
        @"dataModel": @{
            @"abstract": @"根据需要传入的key值获取该时间对应的值",
            @"title": @"- (NSDateComponents *)components:(NSCalendarUnit)unitFlags fromDate:(NSDate *)date;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectCalendar_components_fromDate],
            }
        },
    };
}

- (NSDictionary *)method_36 {
    return @{
        @"dataModel": @{
            @"abstract": @"把NSDateComponents和传入的date相对应号的值进行相加获取新的NSDate",
            @"title": @"- (nullable NSDate *)dateByAddingComponents:(NSDateComponents *)comps toDate:(NSDate *)date options:(NSCalendarOptions)opts;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectCalendar_dateByAddingComponents_toDate_options],
            }
        },
    };
}

- (NSDictionary *)method_37 {
    return @{
        @"dataModel": @{
            @"abstract": @"把NSDateComponents和传入的date相对应号的值进行相加获取新的NSDate",
            @"title": @"- (NSDateComponents *)components:(NSCalendarUnit)unitFlags fromDate:(NSDate *)startingDate toDate:(NSDate *)resultDate options:(NSCalendarOptions)opts;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectCalendar_components_fromDate_toDate_options],
            }
        },
    };
}

- (NSDictionary *)method_38 {
    return @{
        @"dataModel": @{
            @"abstract": @"获取NSDate的era, year, month, day",
            @"title": @"- (void)getEra:(out nullable NSInteger *)eraValuePointer year:(out nullable NSInteger *)yearValuePointer month:(out nullable NSInteger *)monthValuePointer day:(out nullable NSInteger *)dayValuePointer fromDate:(NSDate *)date API_AVAILABLE(macos(10.9), ios(8.0), watchos(2.0), tvos(9.0));",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectCalendar_getEra_year_month_day_fromDate],
            }
        },
    };
}

- (NSDictionary *)method_39 {
    return @{
        @"dataModel": @{
            @"abstract": @"获取NSDate的era, yearForWeekOfYear, weekOfYear, weekday",
            @"title": @"- (void)getEra:(out nullable NSInteger *)eraValuePointer yearForWeekOfYear:(out nullable NSInteger *)yearValuePointer weekOfYear:(out nullable NSInteger *)weekValuePointer weekday:(out nullable NSInteger *)weekdayValuePointer fromDate:(NSDate *)date API_AVAILABLE(macos(10.9), ios(8.0), watchos(2.0), tvos(9.0));",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectCalendar_getEra_yearForWeekOfYear_weekOfYear_weekday_fromDate],
            }
        },
    };
}

- (NSDictionary *)method_40 {
    return @{
        @"dataModel": @{
            @"abstract": @"获取NSDate的hour, minute, second, nanosecond",
            @"title": @"- (void)getHour:(out nullable NSInteger *)hourValuePointer minute:(out nullable NSInteger *)minuteValuePointer second:(out nullable NSInteger *)secondValuePointer nanosecond:(out nullable NSInteger *)nanosecondValuePointer fromDate:(NSDate *)date API_AVAILABLE(macos(10.9), ios(8.0), watchos(2.0), tvos(9.0));",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectCalendar_getHour_minute_second_nanosecond_fromDate],
            }
        },
    };
}

- (NSDictionary *)method_41 {
    return @{
        @"dataModel": @{
            @"abstract": @"获取NSDate的单个key值的信息",
            @"title": @"- (NSInteger)component:(NSCalendarUnit)unit fromDate:(NSDate *)date API_AVAILABLE(macos(10.9), ios(8.0), watchos(2.0), tvos(9.0));",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectCalendar_component_fromDate],
            }
        },
    };
}

- (NSDictionary *)method_42 {
    return @{
        @"dataModel": @{
            @"abstract": @"跟据Era year month day hour minute second nanosecond获取NSDate",
            @"title": @"- (nullable NSDate *)dateWithEra:(NSInteger)eraValue year:(NSInteger)yearValue month:(NSInteger)monthValue day:(NSInteger)dayValue hour:(NSInteger)hourValue minute:(NSInteger)minuteValue second:(NSInteger)secondValue nanosecond:(NSInteger)nanosecondValue API_AVAILABLE(macos(10.9), ios(8.0), watchos(2.0), tvos(9.0));",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectCalendar_dateWithEra_year_month_day_hour_minute_second_nanosecond],
            }
        },
    };
}

- (NSDictionary *)method_43 {
    return @{
        @"dataModel": @{
            @"abstract": @"跟据Era yearForWeekOfYear weekOfYear weekday hour minute second nanosecond获取NSDate",
            @"title": @"- (nullable NSDate *)dateWithEra:(NSInteger)eraValue yearForWeekOfYear:(NSInteger)yearValue weekOfYear:(NSInteger)weekValue weekday:(NSInteger)weekdayValue hour:(NSInteger)hourValue minute:(NSInteger)minuteValue second:(NSInteger)secondValue nanosecond:(NSInteger)nanosecondValue API_AVAILABLE(macos(10.9), ios(8.0), watchos(2.0), tvos(9.0));",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectCalendar_dateWithEra_yearForWeekOfYear_weekOfYear_weekday_hour_minute_second_nanosecond],
            }
        },
    };
}

- (NSDictionary *)method_44 {
    return @{
        @"dataModel": @{
            @"abstract": @"获取该时间的零点日期",
            @"title": @"- (NSDate *)startOfDayForDate:(NSDate *)date API_AVAILABLE(macos(10.9), ios(8.0), watchos(2.0), tvos(9.0));",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectCalendar_startOfDayForDate],
            }
        },
    };
}

- (NSDictionary *)method_45 {
    return @{
        @"dataModel": @{
            @"abstract": @"根据时区和日期获取NSDateComponents",
            @"title": @"- (NSDateComponents *)componentsInTimeZone:(NSTimeZone *)timezone fromDate:(NSDate *)date API_AVAILABLE(macos(10.9), ios(8.0), watchos(2.0), tvos(9.0));",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectCalendar_componentsInTimeZone_fromDate],
            }
        },
    };
}

- (NSDictionary *)method_46 {
    return @{
        @"dataModel": @{
            @"abstract": @"取两个日期的等级比传入的NSCalendarUnit高和相等等级进行比较",
            @"title": @"- (NSComparisonResult)compareDate:(NSDate *)date1 toDate:(NSDate *)date2 toUnitGranularity:(NSCalendarUnit)unit API_AVAILABLE(macos(10.9), ios(8.0), watchos(2.0), tvos(9.0));",
            @"isDataModelExpand": @(YES),
            @"desc": @"如比较的是day，则会把year和month和day取出进行比较，从高到低优先级进行比较；如果有一个小，则返回-1；都相等则返回0；如果有一个大，则返回1",
            @"dataModel": @{
                @"childItems": [self TestProjectCalendar_compareDate_toDate_toUnitGranularity],
            }
        },
    };
}

- (NSDictionary *)method_47 {
    return @{
        @"dataModel": @{
            @"abstract": @"取两个日期的等级比传入的NSCalendarUnit高和相等等级进行比较，如果都相等，则返回YES，否则返回NO",
            @"title": @"- (BOOL)isDate:(NSDate *)date1 equalToDate:(NSDate *)date2 toUnitGranularity:(NSCalendarUnit)unit API_AVAILABLE(macos(10.9), ios(8.0), watchos(2.0), tvos(9.0));",
            @"isDataModelExpand": @(YES),
            @"desc": @"如比较的是day，则会把year和month和day取出进行比较，三者相等则相同，不等则不同",
            @"dataModel": @{
                @"childItems": [self TestProjectCalendar_isDate_equalToDate_toUnitGranularity],
            }
        },
    };
}

- (NSDictionary *)method_48 {
    return @{
        @"dataModel": @{
            @"abstract": @"取两个日期的day等级高和相等等级进行比较，如果都相等，则返回YES，否则返回NO",
            @"title": @"- (BOOL)isDate:(NSDate *)date1 inSameDayAsDate:(NSDate *)date2 API_AVAILABLE(macos(10.9), ios(8.0), watchos(2.0), tvos(9.0));",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectCalendar_isDate_inSameDayAsDate],
            }
        },
    };
}

- (NSDictionary *)method_49 {
    return @{
        @"dataModel": @{
            @"abstract": @"取传入的日期和系统默认的今天日期的day等级高和相等等级进行比较，如果都相等，则返回YES，否则返回NO",
            @"title": @"- (BOOL)isDateInToday:(NSDate *)date API_AVAILABLE(macos(10.9), ios(8.0), watchos(2.0), tvos(9.0));",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectCalendar_isDateInToday],
            }
        },
    };
}

- (NSDictionary *)method_50 {
    return @{
        @"dataModel": @{
            @"abstract": @"取传入的日期和系统默认的昨天日期的day等级高和相等等级进行比较，如果都相等，则返回YES，否则返回NO",
            @"title": @"- (BOOL)isDateInYesterday:(NSDate *)date API_AVAILABLE(macos(10.9), ios(8.0), watchos(2.0), tvos(9.0));",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectCalendar_isDateInYesterday],
            }
        },
    };
}

- (NSDictionary *)method_51 {
    return @{
        @"dataModel": @{
            @"abstract": @"取传入的日期和系统默认的明天日期的day等级高和相等等级进行比较，如果都相等，则返回YES，否则返回NO",
            @"title": @"- (BOOL)isDateInTomorrow:(NSDate *)date API_AVAILABLE(macos(10.9), ios(8.0), watchos(2.0), tvos(9.0));",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectCalendar_isDateInTomorrow],
            }
        },
    };
}

- (NSDictionary *)method_52 {
    return @{
        @"dataModel": @{
            @"abstract": @"取传入的日期，判断日期是否是weekend， 是则返回YES，否则返回NO",
            @"title": @"- (BOOL)isDateInWeekend:(NSDate *)date API_AVAILABLE(macos(10.9), ios(8.0), watchos(2.0), tvos(9.0));",
            @"isDataModelExpand": @(YES),
            @"desc": @"只有周六和周日返回YES，其它的返回NO",
            @"dataModel": @{
                @"childItems": [self TestProjectCalendar_isDateInWeekend],
            }
        },
    };
}

- (NSDictionary *)method_53 {
    return @{
        @"dataModel": @{
            @"abstract": @"取传入的日期，判断日期是否是weekend， 是则返回YES并返回weekend的startDate和startDate到endDate的日期的时间差；否则返回NO，startDate为null，时间差为0",
            @"title": @"- (BOOL)rangeOfWeekendStartDate:(out NSDate * _Nullable * _Nullable)datep interval:(out nullable NSTimeInterval *)tip containingDate:(NSDate *)date API_AVAILABLE(macos(10.9), ios(8.0), watchos(2.0), tvos(9.0));",
            @"isDataModelExpand": @(YES),
            @"desc": @"只有周六和周日返回YES，其它的返回NO",
            @"dataModel": @{
                @"childItems": [self TestProjectCalendar_rangeOfWeekendStartDate_interval_containingDate],
            }
        },
    };
}

- (NSDictionary *)method_54 {
    return @{
        @"dataModel": @{
            @"abstract": @"根据传入的时间返回下一个周末的开始时间",
            @"title": @"- (BOOL)nextWeekendStartDate:(out NSDate * _Nullable * _Nullable)datep interval:(out nullable NSTimeInterval *)tip options:(NSCalendarOptions)options afterDate:(NSDate *)date API_AVAILABLE(macos(10.9), ios(8.0), watchos(2.0), tvos(9.0));",
            @"isDataModelExpand": @(YES),
            @"desc": @"只有周六和周日计算的是下一个周末的开始时间，其它的时间计算的是当前周末的开始时间",
            @"dataModel": @{
                @"childItems": [self TestProjectCalendar_nextWeekendStartDate_interval_options],
            }
        },
    };
}

- (NSDictionary *)method_55 {
    return @{
        @"dataModel": @{
            @"abstract": @"比较两个NSDateComponents在某个NSCalendarUnit上的差值",
            @"title": @"- (NSDateComponents *)components:(NSCalendarUnit)unitFlags fromDateComponents:(NSDateComponents *)startingDateComp toDateComponents:(NSDateComponents *)resultDateComp options:(NSCalendarOptions)options API_AVAILABLE(macos(10.9), ios(8.0), watchos(2.0), tvos(9.0));",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectCalendar_components_fromDateComponents_toDateComponents_options],
            }
        },
    };
}

- (NSDictionary *)method_56 {
    return @{
        @"dataModel": @{
            @"abstract": @"在传入的日期下在NSCalendarUnit的key值下加上传入的value值，得到新的NSDate",
            @"title": @"- (nullable NSDate *)dateByAddingUnit:(NSCalendarUnit)unit value:(NSInteger)value toDate:(NSDate *)date options:(NSCalendarOptions)options API_AVAILABLE(macos(10.9), ios(8.0), watchos(2.0), tvos(9.0));",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectCalendar_dateByAddingUnit_value_toDate_options],
            }
        },
    };
}

- (NSDictionary *)method_57:(NSInteger)index {
    return @{
        @"dataModel": @{
            @"abstract": @"轮询查询下一次符合的NSDateComponents的日期",
            @"title": @"- (void)enumerateDatesStartingAfterDate:(NSDate *)start matchingComponents:(NSDateComponents *)comps options:(NSCalendarOptions)opts usingBlock:(void (NS_NOESCAPE ^)(NSDate * _Nullable date, BOOL exactMatch, BOOL *stop))block API_AVAILABLE(macos(10.9), ios(8.0), watchos(2.0), tvos(9.0));",
            @"isDataModelExpand": @(YES),
            @"desc": @"@param: opts 只能是NSCalendarMatchPreviousTimePreservingSmallerUnits、NSCalendarMatchNextTimePreservingSmallerUnits、NSCalendarMatchNextTime其它的会崩溃",
            @"dataModel": @{
                @"childItems": [self TestProjectCalendar_enumerateDatesStartingAfterDate_matchingComponents_options_usingBlock:index],
            }
        },
    };
}

- (NSDictionary *)method_58 {
    return @{
        @"dataModel": @{
            @"abstract": @"查询下一次符合的NSDateComponents的开始日期",
            @"title": @"- (nullable NSDate *)nextDateAfterDate:(NSDate *)date matchingComponents:(NSDateComponents *)comps options:(NSCalendarOptions)options API_AVAILABLE(macos(10.9), ios(8.0), watchos(2.0), tvos(9.0));",
            @"isDataModelExpand": @(YES),
            @"desc": @"@param: opts 只能是NSCalendarMatchPreviousTimePreservingSmallerUnits、NSCalendarMatchNextTimePreservingSmallerUnits、NSCalendarMatchNextTime其它的会崩溃",
            @"dataModel": @{
                @"childItems": [self TestProjectCalendar_nextDateAfterDate_matchingComponents_options],
            }
        },
    };
}

- (NSDictionary *)method_59 {
    return @{
        @"dataModel": @{
            @"abstract": @"查询下一次符合的NSCalendarUnit的日期",
            @"title": @"- (nullable NSDate *)nextDateAfterDate:(NSDate *)date matchingUnit:(NSCalendarUnit)unit value:(NSInteger)value options:(NSCalendarOptions)options API_AVAILABLE(macos(10.9), ios(8.0), watchos(2.0), tvos(9.0));",
            @"isDataModelExpand": @(YES),
            @"desc": @"@param: opts 只能是NSCalendarMatchPreviousTimePreservingSmallerUnits、NSCalendarMatchNextTimePreservingSmallerUnits、NSCalendarMatchNextTime其它的会崩溃",
            @"dataModel": @{
                @"childItems": [self TestProjectCalendar_nextDateAfterDate_matchingUnit_value_options],
            }
        },
    };
}

- (NSDictionary *)method_60 {
    return @{
        @"dataModel": @{
            @"abstract": @"查询下一次符合的hourValue minuteValue secondValue的日期",
            @"title": @"- (nullable NSDate *)nextDateAfterDate:(NSDate *)date matchingHour:(NSInteger)hourValue minute:(NSInteger)minuteValue second:(NSInteger)secondValue options:(NSCalendarOptions)options API_AVAILABLE(macos(10.9), ios(8.0), watchos(2.0), tvos(9.0));",
            @"isDataModelExpand": @(YES),
            @"desc": @"@param: opts 只能是NSCalendarMatchPreviousTimePreservingSmallerUnits、NSCalendarMatchNextTimePreservingSmallerUnits、NSCalendarMatchNextTime其它的会崩溃",
            @"dataModel": @{
                @"childItems": [self TestProjectCalendar_nextDateAfterDate_matchingComponents_matchingHour_minute_second_options],
            }
        },
    };
}

- (NSDictionary *)method_61 {
    return @{
        @"dataModel": @{
            @"abstract": @"查询下一次符合NSCalendarUnit的日期",
            @"title": @"- (nullable NSDate *)dateBySettingUnit:(NSCalendarUnit)unit value:(NSInteger)v ofDate:(NSDate *)date options:(NSCalendarOptions)opts API_AVAILABLE(macos(10.9), ios(8.0), watchos(2.0), tvos(9.0));",
            @"isDataModelExpand": @(YES),
            @"desc": @"@param: opts 只能是NSCalendarMatchPreviousTimePreservingSmallerUnits、NSCalendarMatchNextTimePreservingSmallerUnits、NSCalendarMatchNextTime其它的会崩溃",
            @"dataModel": @{
                @"childItems": [self TestProjectCalendar_dateBySettingUnit_value_ofDate_options],
            }
        },
    };
}

- (NSDictionary *)method_62 {
    return @{
        @"dataModel": @{
            @"abstract": @"查询下一次符合的hourValue minuteValue secondValue的日期",
            @"title": @"- (nullable NSDate *)dateBySettingHour:(NSInteger)h minute:(NSInteger)m second:(NSInteger)s ofDate:(NSDate *)date options:(NSCalendarOptions)opts API_AVAILABLE(macos(10.9), ios(8.0), watchos(2.0), tvos(9.0));",
            @"isDataModelExpand": @(YES),
            @"desc": @"@param: opts 只能是NSCalendarMatchPreviousTimePreservingSmallerUnits、NSCalendarMatchNextTimePreservingSmallerUnits、NSCalendarMatchNextTime其它的会崩溃",
            @"dataModel": @{
                @"childItems": [self TestProjectCalendar_dateBySettingHour_minute_second_ofDate_options],
            }
        },
    };
}

- (NSDictionary *)method_63 {
    return @{
        @"dataModel": @{
            @"abstract": @"查询下一次符合的NSDateComponents的日期",
            @"title": @"- (BOOL)date:(NSDate *)date matchesComponents:(NSDateComponents *)components API_AVAILABLE(macos(10.9), ios(8.0), watchos(2.0), tvos(9.0));",
            @"isDataModelExpand": @(YES),
            @"desc": @"@param: opts 只能是NSCalendarMatchPreviousTimePreservingSmallerUnits、NSCalendarMatchNextTimePreservingSmallerUnits、NSCalendarMatchNextTime其它的会崩溃",
            @"dataModel": @{
                @"childItems": [self TestProjectCalendar_date_matchesComponents],
            }
        },
    };
}

- (NSMutableArray *)TestProjectCalendar_date_matchesComponents {
    NSDate *date = [NSDate date];
    NSDateComponents *dateComponents = [self.childCalendar components:NSCalendarUnitDay | NSCalendarUnitMonth fromDate:date];
    BOOL result = [self.childCalendar date:date matchesComponents:dateComponents];
    [self createTableModelWithTitle:[NSString stringWithFormat:@"date:%@ dateComponents:%@ result:%u", date, dateComponents, result] block:nil];
    return self.dataMutArr;
}

- (NSMutableArray *)TestProjectCalendar_dateBySettingHour_minute_second_ofDate_options {
    NSDate *date = [NSDate date];
    NSDate *resultDate = [self.childCalendar dateBySettingHour:2 minute:2 second:2 ofDate:date options:NSCalendarMatchNextTime];
    [self createTableModelWithTitle:[NSString stringWithFormat:@"date:%@ resultDate:%@", date, resultDate] block:nil];
    return self.dataMutArr;
}

- (NSMutableArray *)TestProjectCalendar_dateBySettingUnit_value_ofDate_options {
    NSDate *date = [NSDate date];
    NSDate *resultDate = [self.childCalendar dateBySettingUnit:NSCalendarUnitDay value:2 ofDate:date options:NSCalendarMatchNextTime];
    [self createTableModelWithTitle:[NSString stringWithFormat:@"date:%@ resultDate:%@", date, resultDate] block:nil];
    return self.dataMutArr;
}

- (NSMutableArray *)TestProjectCalendar_nextDateAfterDate_matchingComponents_matchingHour_minute_second_options {
    NSDate *date = [NSDate date];
    NSDate *resultDate = [self.childCalendar nextDateAfterDate:date matchingHour:2 minute:2 second:2 options:NSCalendarMatchNextTimePreservingSmallerUnits];
    [self createTableModelWithTitle:[NSString stringWithFormat:@"date:%@ resultDate:%@", date, resultDate] block:nil];
    return self.dataMutArr;
}

- (NSMutableArray *)TestProjectCalendar_nextDateAfterDate_matchingUnit_value_options {
    NSDate *date = [NSDate date];
    NSDate *resultDate = [self.childCalendar nextDateAfterDate:date matchingUnit:NSCalendarUnitDay value:2 options:NSCalendarMatchNextTimePreservingSmallerUnits];
    [self createTableModelWithTitle:[NSString stringWithFormat:@"date:%@ resultDate:%@", date, resultDate] block:nil];
    return self.dataMutArr;
}

- (NSMutableArray *)TestProjectCalendar_nextDateAfterDate_matchingComponents_options {
    NSDate *date = [NSDate date];
    NSDateComponents *dateComponents = [self.childCalendar components:NSCalendarUnitDay | NSCalendarUnitMonth fromDate:date];
    NSDate *resultDate = [self.childCalendar nextDateAfterDate:date matchingComponents:dateComponents options:NSCalendarMatchNextTimePreservingSmallerUnits];
    [self createTableModelWithTitle:[NSString stringWithFormat:@"date:%@ dateComponents:%@ resultDate:%@", date, dateComponents, resultDate] block:nil];
    return self.dataMutArr;
}

- (NSMutableArray *)TestProjectCalendar_enumerateDatesStartingAfterDate_matchingComponents_options_usingBlock:(NSInteger)index {
    NSDate *date = [NSDate date];
    NSDateComponents *dateComponents = [self.childCalendar components:NSCalendarUnitDay | NSCalendarUnitMonth fromDate:date];
    __block TestProjectTableViewModel *m = nil;
    WS(wSelf);
    m = [self createTableModelWithMethodBlock:^NSString * _Nonnull{
        __block NSMutableString *mutStr = [NSMutableString string];
        [wSelf.childCalendar enumerateDatesStartingAfterDate:date matchingComponents:dateComponents options:NSCalendarMatchNextTimePreservingSmallerUnits usingBlock:^(NSDate * _Nullable date, BOOL exactMatch, BOOL * _Nonnull stop) {
            if (exactMatch) {
                *stop = YES;
            }
            [mutStr appendFormat:@"date:%@ exactMatch:%u stop:%u", date, exactMatch, *stop];
        }];
        return mutStr;
    } title:[NSString stringWithFormat:@"dateComponents:%@", dateComponents] index:index];
    return self.dataMutArr;
}

- (NSMutableArray *)TestProjectCalendar_dateByAddingUnit_value_toDate_options {
    NSDate *date = [NSDate date];
    NSDate *resultDate = [self.childCalendar dateByAddingUnit:NSCalendarUnitDay value:2 toDate:date options:NSCalendarSearchBackwards];
    [self createTableModelWithTitle:[NSString stringWithFormat:@"在日期上添加了2天\ndate:%@\nresultDate:%@", date, resultDate] block:nil];
    return self.dataMutArr;
}

- (NSMutableArray *)TestProjectCalendar_components_fromDateComponents_toDateComponents_options {
    NSDate *date = [NSDate date];
    NSDate *compareDate = [date dateByAddingTimeInterval:24 * 3600];
    NSDateComponents *dateComponents = [self.childCalendar components:NSCalendarUnitDay fromDate:date];
    NSDateComponents *compareDateComponents = [self.childCalendar components:NSCalendarUnitDay fromDate:compareDate];
    NSDateComponents *resultDateComponents = [self.childCalendar components:NSCalendarUnitHour | NSCalendarUnitDay fromDateComponents:compareDateComponents toDateComponents:dateComponents options:NSCalendarSearchBackwards];
    [self createTableModelWithTitle:[NSString stringWithFormat:@"compareDateComponents:%@ dateComponents:%@ resultDateComponents:%@", compareDateComponents, dateComponents, resultDateComponents] block:nil];
    return self.dataMutArr;
}

- (NSMutableArray *)TestProjectCalendar_nextWeekendStartDate_interval_options {
    NSDate *compareDate;
    NSTimeInterval interval = 0;
    NSDate *toDate = [NSDate date];
    NSArray *arr = [self getCalendarOptions];
    for (NSDictionary *dic in arr) {
        NSString *title = dic[@"title"];
        NSCalendarOptions options = [dic[@"value"] integerValue];
        if (options == NSCalendarMatchNextTimePreservingSmallerUnits || options == NSCalendarMatchPreviousTimePreservingSmallerUnits) {
            continue;
        }
        NSMutableString *str = [NSMutableString stringWithString:title];
        
        if (options == NSCalendarMatchStrictly) {
            [str appendString:@"\n不会返回startDate"];
        } else if (options == NSCalendarSearchBackwards) {
            [str appendString:@"\n返回的startDate是传入的NSDate的上个weekDay"];
        } else {
            [str appendString:@"\n返回的startDate是传入的NSDate的下个weekDay"];
        }
        for (NSInteger i = 0; i < 7; i++) {
            NSDate *date = [toDate dateByAddingTimeInterval:24 * 3600 * i];
            BOOL result = [self.childCalendar nextWeekendStartDate:&compareDate interval:&interval options:options afterDate:date];
            [self createTableModelWithTitle:[NSString stringWithFormat:@"%@\ncompareDate:%@ toDate:%@ interval:%f result:%u", str, compareDate, date, interval, result] block:nil];
        }
    }
    return self.dataMutArr;
}

- (NSMutableArray *)TestProjectCalendar_rangeOfWeekendStartDate_interval_containingDate {
    NSDate *compareDate;
    NSTimeInterval interval = 0;
    NSDate *toDate = [NSDate date];
    for (NSInteger i = 0; i < 7; i++) {
        NSDate *date = [toDate dateByAddingTimeInterval:24 * 3600 * i];
        BOOL result = [self.childCalendar rangeOfWeekendStartDate:&compareDate interval:&interval containingDate:date];
        [self createTableModelWithTitle:[NSString stringWithFormat:@"compareDate:%@ toDate:%@ interval:%f result:%u", compareDate, date, interval, result] block:nil];
    }
    return self.dataMutArr;
}

- (NSMutableArray *)TestProjectCalendar_isDateInWeekend {
    NSDate *date = [NSDate now];
    for (NSInteger i = 0; i < 7; i++) {
        NSDate *compareDate = [date dateByAddingTimeInterval:24 * 3600 * i];
        BOOL result = [self.childCalendar isDateInWeekend:compareDate];
        [self createTableModelWithTitle:[NSString stringWithFormat:@"compareDate:%@ toDate:%@ result:%u", compareDate, date, result] block:nil];
    }
    return self.dataMutArr;
}

- (NSMutableArray *)TestProjectCalendar_isDateInTomorrow {
    NSDate *date = [NSDate now];
    NSArray *arr = @[date, [date dateByAddingTimeInterval:24 + 24 * 3600] ,[date dateByAddingTimeInterval:24 * 3600 * 2]];
    for (NSDate *compareDate in arr) {
        BOOL result = [self.childCalendar isDateInTomorrow:compareDate];
        [self createTableModelWithTitle:[NSString stringWithFormat:@"compareDate:%@ toDate:%@ result:%u", compareDate, date, result] block:nil];
    }
    return self.dataMutArr;
}

- (NSMutableArray *)TestProjectCalendar_isDateInYesterday {
    NSDate *date = [NSDate now];
    NSArray *arr = @[date, [date dateByAddingTimeInterval:24 - 24 * 3600] ,[date dateByAddingTimeInterval:-24 * 3600 * 2]];
    for (NSDate *compareDate in arr) {
        BOOL result = [self.childCalendar isDateInYesterday:compareDate];
        [self createTableModelWithTitle:[NSString stringWithFormat:@"compareDate:%@ toDate:%@ result:%u", compareDate, date, result] block:nil];
    }
    return self.dataMutArr;
}

- (NSMutableArray *)TestProjectCalendar_isDateInToday {
    NSDate *date = [NSDate now];
    NSArray *arr = @[[date dateByAddingTimeInterval:24 * 3600], [date dateByAddingTimeInterval:24] ,[date dateByAddingTimeInterval:-24 * 3600]];
    for (NSDate *compareDate in arr) {
        BOOL result = [self.childCalendar isDateInToday:compareDate];
        [self createTableModelWithTitle:[NSString stringWithFormat:@"compareDate:%@ toDate:%@ result:%u", compareDate, date, result] block:nil];
    }
    return self.dataMutArr;
}

- (NSMutableArray *)TestProjectCalendar_isDate_inSameDayAsDate {
    NSDate *date = [NSDate now];
    NSArray *arr = @[[date dateByAddingTimeInterval:24 * 3600 * 30], [date dateByAddingTimeInterval:24] ,[date dateByAddingTimeInterval:-24 * 3600]];
    for (NSDate *compareDate in arr) {
        BOOL result = [self.childCalendar isDate:compareDate inSameDayAsDate:date];
        [self createTableModelWithTitle:[NSString stringWithFormat:@"compareDate:%@ toDate:%@ result:%u", compareDate, date, result] block:nil];
    }
    return self.dataMutArr;
}

- (NSMutableArray *)TestProjectCalendar_isDate_equalToDate_toUnitGranularity {
    NSDate *date = [NSDate now];
    NSDate *compareDate = [date dateByAddingTimeInterval:3600 * 24 * 365];
    BOOL result = [self.childCalendar isDate:compareDate equalToDate:date toUnitGranularity:NSCalendarUnitDay];
    return [self createTableModelSingleArrayWithTitle:[NSString stringWithFormat:@"compareDate:%@ toDate:%@ result:%u", compareDate, date, result] block:nil];
}

- (NSMutableArray *)TestProjectCalendar_compareDate_toDate_toUnitGranularity {
    NSDate *date = [NSDate now];
    NSArray *arr = @[[date dateByAddingTimeInterval:24 * 3600], [date dateByAddingTimeInterval:24] ,[date dateByAddingTimeInterval:-24 * 3600]];
    for (NSDate *compareDate in arr) {
        NSComparisonResult result = [self.childCalendar compareDate:compareDate toDate:date toUnitGranularity:NSCalendarUnitDay];
        [self createTableModelWithTitle:[NSString stringWithFormat:@"compareDate:%@ toDate:%@ result:%ld", compareDate, date, result] block:nil];
    }
    return self.dataMutArr;
}

- (NSMutableArray *)TestProjectCalendar_componentsInTimeZone_fromDate {
    NSTimeZone *tz = [[NSTimeZone alloc] init];
    NSDate *date = [NSDate now];
    NSDateComponents *dateComponents = [self.childCalendar componentsInTimeZone:tz fromDate:date];
    return [self createTableModelSingleArrayWithTitle:[NSString stringWithFormat:@"%@", dateComponents] block:nil];
}

- (NSMutableArray *)TestProjectCalendar_startOfDayForDate {
    NSDate *date = [NSDate now];
    NSDate *getDate = [self.childCalendar startOfDayForDate:date];
    return [self createTableModelSingleArrayWithTitle:[NSString stringWithFormat:@"%@", getDate] block:nil];
}

- (NSMutableArray *)TestProjectCalendar_dateWithEra_yearForWeekOfYear_weekOfYear_weekday_hour_minute_second_nanosecond {
    NSDate *getDate = [self.childCalendar dateWithEra:self.dateComponents.era yearForWeekOfYear:self.dateComponents.yearForWeekOfYear weekOfYear:self.dateComponents.weekOfYear weekday:self.dateComponents.weekday hour:self.dateComponents.hour minute:self.dateComponents.minute second:self.dateComponents.second nanosecond:self.dateComponents.nanosecond];
    return [self createTableModelSingleArrayWithTitle:[NSString stringWithFormat:@"%@", getDate] block:nil];
}

- (NSMutableArray *)TestProjectCalendar_dateWithEra_year_month_day_hour_minute_second_nanosecond {
    NSDate *getDate = [self.childCalendar dateWithEra:self.dateComponents.era year:self.dateComponents.year month:self.dateComponents.month day:self.dateComponents.day hour:self.dateComponents.hour minute:self.dateComponents.minute second:self.dateComponents.second nanosecond:self.dateComponents.nanosecond];
    return [self createTableModelSingleArrayWithTitle:[NSString stringWithFormat:@"%@", getDate] block:nil];
}

- (NSMutableArray *)TestProjectCalendar_component_fromDate {
    NSDate *date = [NSDate now];
    NSInteger index = [self.childCalendar component:NSCalendarUnitDay fromDate:date];
    return [self createTableModelSingleArrayWithTitle:[NSString stringWithFormat:@"获取的NSCalendarUnitDay：%ld", index] block:nil];
}

- (NSMutableArray *)TestProjectCalendar_getHour_minute_second_nanosecond_fromDate {
    NSInteger hour, minute, second, nanosecond;
    NSDate *date = [NSDate now];
    [self.childCalendar getHour:&hour minute:&minute second:&second nanosecond:&nanosecond fromDate:date];
    return [self createTableModelSingleArrayWithTitle:[NSString stringWithFormat:@"hour:%ld minute:%ld second:%ld nanosecond:%ld", hour, minute, second, nanosecond] block:nil];
}

- (NSMutableArray *)TestProjectCalendar_getEra_yearForWeekOfYear_weekOfYear_weekday_fromDate {
    NSInteger era, yearForWeekOfYear, weekOfYear, weekday;
    NSDate *date = [NSDate now];
    [self.childCalendar getEra:&era yearForWeekOfYear:&yearForWeekOfYear weekOfYear:&weekOfYear weekday:&weekday fromDate:date];
    return [self createTableModelSingleArrayWithTitle:[NSString stringWithFormat:@"era:%ld yearForWeekOfYear:%ld weekOfYear:%ld weekday:%ld", era, yearForWeekOfYear, weekOfYear, weekday] block:nil];
}

- (NSMutableArray *)TestProjectCalendar_getEra_year_month_day_fromDate {
    NSInteger era, year, month, day;
    NSDate *date = [NSDate now];
    [self.childCalendar getEra:&era year:&year month:&month day:&day fromDate:date];
    return [self createTableModelSingleArrayWithTitle:[NSString stringWithFormat:@"era:%ld year:%ld month:%ld day:%ld", era, year, month, day] block:nil];
}

- (NSMutableArray *)TestProjectCalendar_components_fromDate_toDate_options {
    NSDate *fromDate = [NSDate date];
    NSDate *toDate = [fromDate dateByAddingTimeInterval:-1000 * 24 * 3600];
    NSArray *arr = @[
        @{
            @"title": [NSString stringWithFormat:@"设置的属性值为NSCalendarUnitMonth | NSCalendarUnitDay | NSCalendarUnitHour(%ld)，如果超过自己等级容量并且有设置自己的上一级，则会拆分", NSCalendarUnitMonth | NSCalendarUnitDay | NSCalendarUnitHour],
            @"value": @(NSCalendarUnitMonth | NSCalendarUnitDay | NSCalendarUnitHour),
        },
        @{
            @"title": [NSString stringWithFormat:@"设置的属性值为NSCalendarUnitDay | NSCalendarUnitHour(%ld)，如果超过自己等级容量并且没有设置自己的上一级，则会在自己本级全部展示", NSCalendarUnitDay | NSCalendarUnitHour],
            @"value": @(NSCalendarUnitDay | NSCalendarUnitHour),
        },
    ];
    for (NSDictionary *dic in arr) {
        NSString *title = dic[@"title"];
        NSCalendarUnit unit = [dic[@"value"] integerValue];
        NSDateComponents *dateComponents = [self.childCalendar components:unit fromDate:fromDate toDate:toDate options:NSCalendarMatchFirst];
        [self createTableModelWithTitle:[NSString stringWithFormat:@"%@\n%@", title, dateComponents] block:nil];
    }
    return self.dataMutArr;
}

//typedef NS_OPTIONS(NSUInteger, NSCalendarOptions) {
//    NSCalendarWrapComponents = (1UL << 0), // option for arithmetic operations that do calendar addition
//
//    NSCalendarMatchStrictly    API_AVAILABLE(macos(10.9), ios(7.0), watchos(2.0), tvos(9.0)) = (1ULL << 1),
//    NSCalendarSearchBackwards  API_AVAILABLE(macos(10.9), ios(7.0), watchos(2.0), tvos(9.0)) = (1ULL << 2),
//
//    NSCalendarMatchPreviousTimePreservingSmallerUnits API_AVAILABLE(macos(10.9), ios(7.0), watchos(2.0), tvos(9.0)) = (1ULL << 8),
//    NSCalendarMatchNextTimePreservingSmallerUnits     API_AVAILABLE(macos(10.9), ios(7.0), watchos(2.0), tvos(9.0)) = (1ULL << 9),
//    NSCalendarMatchNextTime                           API_AVAILABLE(macos(10.9), ios(7.0), watchos(2.0), tvos(9.0)) = (1ULL << 10),
//
//    NSCalendarMatchFirst  API_AVAILABLE(macos(10.9), ios(7.0), watchos(2.0), tvos(9.0)) = (1ULL << 12),
//    NSCalendarMatchLast   API_AVAILABLE(macos(10.9), ios(7.0), watchos(2.0), tvos(9.0)) = (1ULL << 13)
//};

- (NSArray *)getCalendarOptions {
    return @[
        @{
            @"title": [NSString stringWithFormat:@"设置的属性值是NSCalendarWrapComponents(%ld)", NSCalendarWrapComponents],
            @"value": @(NSCalendarWrapComponents),
        },
        @{
            @"title": [NSString stringWithFormat:@"设置的属性值是NSCalendarMatchStrictly(%ld)", NSCalendarMatchStrictly],
            @"value": @(NSCalendarMatchStrictly),
        },
        @{
            @"title": [NSString stringWithFormat:@"设置的属性值是NSCalendarSearchBackwards(%ld)", NSCalendarSearchBackwards],
            @"value": @(NSCalendarSearchBackwards),
        },
        @{
            @"title": [NSString stringWithFormat:@"设置的属性值是NSCalendarMatchPreviousTimePreservingSmallerUnits(%ld)", NSCalendarMatchPreviousTimePreservingSmallerUnits],
            @"value": @(NSCalendarMatchPreviousTimePreservingSmallerUnits),
        },
        @{
            @"title": [NSString stringWithFormat:@"设置的属性值是NSCalendarMatchNextTimePreservingSmallerUnits(%ld)", NSCalendarMatchNextTimePreservingSmallerUnits],
            @"value": @(NSCalendarMatchNextTimePreservingSmallerUnits),
        },
        @{
            @"title": [NSString stringWithFormat:@"设置的属性值是NSCalendarMatchNextTime(%ld)", NSCalendarMatchNextTime],
            @"value": @(NSCalendarMatchNextTime),
        },
        @{
            @"title": [NSString stringWithFormat:@"设置的属性值是NSCalendarMatchFirst(%ld)", NSCalendarMatchFirst],
            @"value": @(NSCalendarMatchFirst),
        },
        @{
            @"title": [NSString stringWithFormat:@"设置的属性值是NSCalendarMatchLast(%ld)", NSCalendarMatchLast],
            @"value": @(NSCalendarMatchLast),
        },
    ];
}

- (NSMutableArray *)TestProjectCalendar_dateByAddingComponents_toDate_options {
    NSDate *date = [NSDate now];
    NSArray *arr = [self getCalendarOptions];
    for (NSDictionary *dic in arr) {
        NSString *title = dic[@"title"];
        NSCalendarOptions options = [dic[@"value"] integerValue];
        NSDate *getDate = [self.childCalendar dateByAddingComponents:self.dateComponents toDate:date options:options];
        [self createTableModelWithTitle:[NSString stringWithFormat:@"%@\n%@", title, getDate] block:nil];
    }
    return self.dataMutArr;
}

- (NSMutableArray *)TestProjectCalendar_components_fromDate {
    NSDate *date = [NSDate now];
    NSDateComponents *dateComponents = [self.childCalendar components:NSCalendarUnitDay | NSCalendarUnitHour fromDate:date];
    return [self createTableModelSingleArrayWithTitle:[NSString stringWithFormat:@"dateComponents%@\n未设置year:%ld", dateComponents, dateComponents.year] block:nil];
}

- (NSMutableArray *)TestProjectCalendar_dateFromComponents {
    NSDate *date = [self.childCalendar dateFromComponents:self.dateComponents];
    return [self createTableModelSingleArrayWithTitle:[NSString stringWithFormat:@"设置的year=1993,month=11,day=12\n%@", date] block:nil];
}

- (NSMutableArray *)TestProjectCalendar_rangeOfUnit_startDate_interval_forDate {
    NSArray *arr = [self getCalendarUnitArray];
    NSDate *date = [NSDate now];
    NSDate *startDate;
    for (NSDictionary *dic in arr) {
        NSString *title = dic[@"title"];
        NSCalendarUnit unit = [dic[@"value"] integerValue];
        NSTimeInterval tip;
        BOOL res = [self.childCalendar rangeOfUnit:unit startDate:&startDate interval:&tip forDate:date];
        NSString *dateStr = [NSString stringWithFormat:@"startDate:%@ forDate:%@", startDate, date];
        NSString *resStr = [NSString stringWithFormat:@"是否在范围内：%u 相差多少时间：%f", res, tip];
        [self createTableModelWithTitle:[NSString stringWithFormat:@"%@\n%@\n%@", title, dateStr, resStr] block:nil];
    }
    return self.dataMutArr;
}

- (NSArray *)getCalendarSmallInLarge:(BOOL)isRange {
    NSMutableArray *mutArr = [NSMutableArray array];
    NSArray *Era_Arr = @[
        @{
            @"title": @"NSCalendarUnitYear in range NSCalendarUnitEra",
            @"smallValue": @(NSCalendarUnitYear),
            @"largeValue": @(NSCalendarUnitEra),
        },
        @{
            @"title": @"NSCalendarUnitMonth in range NSCalendarUnitEra",
            @"smallValue": @(NSCalendarUnitMonth),
            @"largeValue": @(NSCalendarUnitEra),
        },
        @{
            @"title": @"NSCalendarUnitDay in range NSCalendarUnitEra",
            @"smallValue": @(NSCalendarUnitDay),
            @"largeValue": @(NSCalendarUnitEra),
        },
        @{
            @"title": @"NSCalendarUnitHour in range NSCalendarUnitEra",
            @"smallValue": @(NSCalendarUnitHour),
            @"largeValue": @(NSCalendarUnitEra),
        },
        @{
            @"title": @"NSCalendarUnitMinute in range NSCalendarUnitEra",
            @"smallValue": @(NSCalendarUnitMinute),
            @"largeValue": @(NSCalendarUnitEra),
        },
        @{
            @"title": @"NSCalendarUnitSecond in range NSCalendarUnitEra",
            @"smallValue": @(NSCalendarUnitSecond),
            @"largeValue": @(NSCalendarUnitEra),
        },
        @{
            @"title": @"NSCalendarUnitWeekday in range NSCalendarUnitEra",
            @"smallValue": @(NSCalendarUnitWeekday),
            @"largeValue": @(NSCalendarUnitEra),
        },
        @{
            @"title": @"NSCalendarUnitQuarter in range NSCalendarUnitEra",
            @"smallValue": @(NSCalendarUnitQuarter),
            @"largeValue": @(NSCalendarUnitEra),
        },
        @{
            @"title": @"NSCalendarUnitWeekOfMonth in range NSCalendarUnitEra",
            @"smallValue": @(NSCalendarUnitWeekOfMonth),
            @"largeValue": @(NSCalendarUnitEra),
        },
        @{
            @"title": @"NSCalendarUnitWeekOfYear in range NSCalendarUnitEra",
            @"smallValue": @(NSCalendarUnitWeekOfYear),
            @"largeValue": @(NSCalendarUnitEra),
        },
    ];

    [mutArr addObjectsFromArray:Era_Arr];
    if (isRange) {
        [mutArr addObject:@{
            @"title": @"NSCalendarUnitNanosecond in range NSCalendarUnitEra",
            @"smallValue": @(NSCalendarUnitNanosecond),
            @"largeValue": @(NSCalendarUnitEra),
        }];
    }
    NSArray *Year_Arr = @[
       @{
           @"title": @"NSCalendarUnitMonth in range NSCalendarUnitYear",
           @"smallValue": @(NSCalendarUnitMonth),
           @"largeValue": @(NSCalendarUnitYear),
       },
       @{
           @"title": @"NSCalendarUnitDay in range NSCalendarUnitYear",
           @"smallValue": @(NSCalendarUnitDay),
           @"largeValue": @(NSCalendarUnitYear),
       },
       @{
           @"title": @"NSCalendarUnitHour in range NSCalendarUnitYear",
           @"smallValue": @(NSCalendarUnitHour),
           @"largeValue": @(NSCalendarUnitYear),
       },
       @{
           @"title": @"NSCalendarUnitMinute in range NSCalendarUnitYear",
           @"smallValue": @(NSCalendarUnitMinute),
           @"largeValue": @(NSCalendarUnitYear),
       },
       @{
           @"title": @"NSCalendarUnitSecond in range NSCalendarUnitYear",
           @"smallValue": @(NSCalendarUnitSecond),
           @"largeValue": @(NSCalendarUnitYear),
       },
       @{
           @"title": @"NSCalendarUnitWeekday in range NSCalendarUnitYear",
           @"smallValue": @(NSCalendarUnitWeekday),
           @"largeValue": @(NSCalendarUnitYear),
       },
       @{
           @"title": @"NSCalendarUnitQuarter in range NSCalendarUnitYear",
           @"smallValue": @(NSCalendarUnitQuarter),
           @"largeValue": @(NSCalendarUnitYear),
       },
       @{
           @"title": @"NSCalendarUnitWeekOfYear in range NSCalendarUnitYear",
           @"smallValue": @(NSCalendarUnitWeekOfYear),
           @"largeValue": @(NSCalendarUnitYear),
       },
       @{
           @"title": @"NSCalendarUnitNanosecond in range NSCalendarUnitYear",
           @"smallValue": @(NSCalendarUnitNanosecond),
           @"largeValue": @(NSCalendarUnitYear),
       },
    ];
    [mutArr addObjectsFromArray:Year_Arr];
    if (isRange) {
        [mutArr addObject:@{
            @"title": @"NSCalendarUnitWeekOfMonth in range NSCalendarUnitYear",
            @"smallValue": @(NSCalendarUnitWeekOfMonth),
            @"largeValue": @(NSCalendarUnitYear),
        }];
    }
    
    NSArray *Month_Arr = @[
        @{
            @"title": @"NSCalendarUnitDay in range NSCalendarUnitMonth",
            @"smallValue": @(NSCalendarUnitDay),
            @"largeValue": @(NSCalendarUnitMonth),
        },
        @{
            @"title": @"NSCalendarUnitHour in range NSCalendarUnitMonth",
            @"smallValue": @(NSCalendarUnitHour),
            @"largeValue": @(NSCalendarUnitMonth),
        },
        @{
            @"title": @"NSCalendarUnitMinute in range NSCalendarUnitMonth",
            @"smallValue": @(NSCalendarUnitMinute),
            @"largeValue": @(NSCalendarUnitMonth),
        },
        @{
            @"title": @"NSCalendarUnitSecond in range NSCalendarUnitMonth",
            @"smallValue": @(NSCalendarUnitSecond),
            @"largeValue": @(NSCalendarUnitMonth),
        },
        @{
            @"title": @"NSCalendarUnitWeekday in range NSCalendarUnitMonth",
            @"smallValue": @(NSCalendarUnitWeekday),
            @"largeValue": @(NSCalendarUnitMonth),
        },
        @{
            @"title": @"NSCalendarUnitWeekOfMonth in range NSCalendarUnitMonth",
            @"smallValue": @(NSCalendarUnitWeekOfMonth),
            @"largeValue": @(NSCalendarUnitMonth),
        },
        @{
            @"title": @"NSCalendarUnitNanosecond in range NSCalendarUnitMonth",
            @"smallValue": @(NSCalendarUnitNanosecond),
            @"largeValue": @(NSCalendarUnitMonth),
        },
    ];
    [mutArr addObjectsFromArray:Month_Arr];
    if (isRange) {
        [mutArr addObject:@{
            @"title": @"NSCalendarUnitWeekOfYear in range NSCalendarUnitMonth",
            @"smallValue": @(NSCalendarUnitWeekOfYear),
            @"largeValue": @(NSCalendarUnitMonth),
        }];
    }
    NSArray *Day_Arr = @[
        @{
            @"title": @"NSCalendarUnitHour in range NSCalendarUnitDay",
            @"smallValue": @(NSCalendarUnitHour),
            @"largeValue": @(NSCalendarUnitDay),
        },
        @{
            @"title": @"NSCalendarUnitMinute in range NSCalendarUnitDay",
            @"smallValue": @(NSCalendarUnitMinute),
            @"largeValue": @(NSCalendarUnitDay),
        },
        @{
            @"title": @"NSCalendarUnitSecond in range NSCalendarUnitDay",
            @"smallValue": @(NSCalendarUnitSecond),
            @"largeValue": @(NSCalendarUnitDay),
        },
        @{
            @"title": @"NSCalendarUnitNanosecond in range NSCalendarUnitDay",
            @"smallValue": @(NSCalendarUnitNanosecond),
            @"largeValue": @(NSCalendarUnitDay),
        },
    ];
    [mutArr addObjectsFromArray:Day_Arr];
    NSArray *Hour_Arr = @[
       @{
           @"title": @"NSCalendarUnitMinute in range NSCalendarUnitHour",
           @"smallValue": @(NSCalendarUnitMinute),
           @"largeValue": @(NSCalendarUnitHour),
       },
       @{
           @"title": @"NSCalendarUnitSecond in range NSCalendarUnitHour",
           @"smallValue": @(NSCalendarUnitSecond),
           @"largeValue": @(NSCalendarUnitHour),
       },
       @{
           @"title": @"NSCalendarUnitNanosecond in range NSCalendarUnitHour",
           @"smallValue": @(NSCalendarUnitNanosecond),
           @"largeValue": @(NSCalendarUnitHour),
       },
    ];
    [mutArr addObjectsFromArray:Hour_Arr];

    NSArray *Minute_Arr = @[
        @{
            @"title": @"NSCalendarUnitSecond in range NSCalendarUnitMinute",
            @"smallValue": @(NSCalendarUnitSecond),
            @"largeValue": @(NSCalendarUnitMinute),
        },
        @{
            @"title": @"NSCalendarUnitNanosecond in range NSCalendarUnitMinute",
            @"smallValue": @(NSCalendarUnitNanosecond),
            @"largeValue": @(NSCalendarUnitMinute),
        },
    ];
    [mutArr addObjectsFromArray:Minute_Arr];
    
    NSArray *Second_arr = @[
        @{
            @"title": @"NSCalendarUnitNanosecond in range NSCalendarUnitSecond",
            @"smallValue": @(NSCalendarUnitNanosecond),
            @"largeValue": @(NSCalendarUnitSecond),
        },
    ];
    [mutArr addObjectsFromArray:Second_arr];

    NSArray *WeekDay_Arr = @[
        @{
            @"title": @"NSCalendarUnitHour in range NSCalendarUnitWeekday",
            @"smallValue": @(NSCalendarUnitHour),
            @"largeValue": @(NSCalendarUnitWeekday),
        },
        @{
            @"title": @"NSCalendarUnitMinute in range NSCalendarUnitWeekday",
            @"smallValue": @(NSCalendarUnitMinute),
            @"largeValue": @(NSCalendarUnitWeekday),
        },
        @{
            @"title": @"NSCalendarUnitSecond in range NSCalendarUnitWeekday",
            @"smallValue": @(NSCalendarUnitSecond),
            @"largeValue": @(NSCalendarUnitWeekday),
        },
        @{
            @"title": @"NSCalendarUnitNanosecond in range NSCalendarUnitWeekday",
            @"smallValue": @(NSCalendarUnitNanosecond),
            @"largeValue": @(NSCalendarUnitWeekday),
        },
    ];
    [mutArr addObjectsFromArray:WeekDay_Arr];

    NSArray *Quarter_Arr = @[
       @{
           @"title": @"NSCalendarUnitMonth in range NSCalendarUnitQuarter",
           @"smallValue": @(NSCalendarUnitMonth),
           @"largeValue": @(NSCalendarUnitQuarter),
       },
       @{
           @"title": @"NSCalendarUnitDay in range NSCalendarUnitQuarter",
           @"smallValue": @(NSCalendarUnitDay),
           @"largeValue": @(NSCalendarUnitQuarter),
       },
       @{
           @"title": @"NSCalendarUnitHour in range NSCalendarUnitQuarter",
           @"smallValue": @(NSCalendarUnitHour),
           @"largeValue": @(NSCalendarUnitQuarter),
       },
       @{
           @"title": @"NSCalendarUnitMinute in range NSCalendarUnitQuarter",
           @"smallValue": @(NSCalendarUnitMinute),
           @"largeValue": @(NSCalendarUnitQuarter),
       },
       @{
           @"title": @"NSCalendarUnitSecond in range NSCalendarUnitQuarter",
           @"smallValue": @(NSCalendarUnitSecond),
           @"largeValue": @(NSCalendarUnitQuarter),
       },
       @{
           @"title": @"NSCalendarUnitWeekday in range NSCalendarUnitQuarter",
           @"smallValue": @(NSCalendarUnitWeekday),
           @"largeValue": @(NSCalendarUnitQuarter),
       },
       @{
           @"title": @"NSCalendarUnitWeekOfYear in range NSCalendarUnitQuarter",
           @"smallValue": @(NSCalendarUnitWeekOfYear),
           @"largeValue": @(NSCalendarUnitQuarter),
       },
       @{
           @"title": @"NSCalendarUnitNanosecond in range NSCalendarUnitQuarter",
           @"smallValue": @(NSCalendarUnitNanosecond),
           @"largeValue": @(NSCalendarUnitQuarter),
       },
    ];
    [mutArr addObjectsFromArray:Quarter_Arr];

    NSArray *WeekOfMonth_Arr = @[
       @{
           @"title": @"NSCalendarUnitDay in range NSCalendarUnitWeekOfMonth",
           @"smallValue": @(NSCalendarUnitDay),
           @"largeValue": @(NSCalendarUnitWeekOfMonth),
       },
       @{
           @"title": @"NSCalendarUnitHour in range NSCalendarUnitWeekOfMonth",
           @"smallValue": @(NSCalendarUnitHour),
           @"largeValue": @(NSCalendarUnitWeekOfMonth),
       },
       @{
           @"title": @"NSCalendarUnitMinute in range NSCalendarUnitWeekOfMonth",
           @"smallValue": @(NSCalendarUnitMinute),
           @"largeValue": @(NSCalendarUnitWeekOfMonth),
       },
       @{
           @"title": @"NSCalendarUnitSecond in range NSCalendarUnitWeekOfMonth",
           @"smallValue": @(NSCalendarUnitSecond),
           @"largeValue": @(NSCalendarUnitWeekOfMonth),
       },
       @{
           @"title": @"NSCalendarUnitWeekday in range NSCalendarUnitWeekOfMonth",
           @"smallValue": @(NSCalendarUnitWeekday),
           @"largeValue": @(NSCalendarUnitWeekOfMonth),
       },
       @{
           @"title": @"NSCalendarUnitNanosecond in range NSCalendarUnitWeekOfMonth",
           @"smallValue": @(NSCalendarUnitNanosecond),
           @"largeValue": @(NSCalendarUnitWeekOfMonth),
       },
    ];
    [mutArr addObjectsFromArray:WeekOfMonth_Arr];

    if (!isRange) {
        [mutArr addObject:@{
            @"title": @"NSCalendarUnitDay in range NSCalendarUnitWeekOfYear",
            @"smallValue": @(NSCalendarUnitDay),
            @"largeValue": @(NSCalendarUnitWeekOfYear),
        }];
    }
    NSArray *WeekOfYear_Arr = @[
       @{
           @"title": @"NSCalendarUnitHour in range NSCalendarUnitWeekOfYear",
           @"smallValue": @(NSCalendarUnitHour),
           @"largeValue": @(NSCalendarUnitWeekOfYear),
       },
       @{
           @"title": @"NSCalendarUnitMinute in range NSCalendarUnitWeekOfYear",
           @"smallValue": @(NSCalendarUnitMinute),
           @"largeValue": @(NSCalendarUnitWeekOfYear),
       },
       @{
           @"title": @"NSCalendarUnitSecond in range NSCalendarUnitWeekOfYear",
           @"smallValue": @(NSCalendarUnitSecond),
           @"largeValue": @(NSCalendarUnitWeekOfYear),
       },
       @{
           @"title": @"NSCalendarUnitWeekday in range NSCalendarUnitWeekOfYear",
           @"smallValue": @(NSCalendarUnitWeekday),
           @"largeValue": @(NSCalendarUnitWeekOfYear),
       },
       @{
           @"title": @"NSCalendarUnitNanosecond in range NSCalendarUnitWeekOfYear",
           @"smallValue": @(NSCalendarUnitNanosecond),
           @"largeValue": @(NSCalendarUnitWeekOfYear),
       },
    ];
    [mutArr addObjectsFromArray:WeekOfYear_Arr];

    return [mutArr copy];
}

- (NSMutableArray *)TestProjectCalendar_ordinalityOfUnit_inUnit_forDate {
    NSArray *arr = [self getCalendarSmallInLarge:NO];
    NSDate *date = [NSDate now];
    for (NSDictionary *dic in arr) {
        NSString *title = dic[@"title"];
        NSCalendarUnit smallUnit = [dic[@"smallValue"] integerValue];
        NSCalendarUnit largeUnit = [dic[@"largeValue"] integerValue];
        NSInteger index = [self.childCalendar ordinalityOfUnit:smallUnit inUnit:largeUnit forDate:date];
        [self createTableModelWithTitle:[NSString stringWithFormat:@"%@\n%ld", title, index] block:nil];
    }
    return self.dataMutArr;
}

- (NSMutableArray *)TestProjectCalendar_rangeOfUnit_inUnit_forDate {
    NSArray *arr = [self getCalendarSmallInLarge:YES];
    NSDate *date = [NSDate now];
    for (NSDictionary *dic in arr) {
        NSString *title = dic[@"title"];
        NSCalendarUnit smallUnit = [dic[@"smallValue"] integerValue];
        NSCalendarUnit largeUnit = [dic[@"largeValue"] integerValue];
        NSRange range = [self.childCalendar rangeOfUnit:smallUnit inUnit:largeUnit forDate:date];
        [self createTableModelWithTitle:[NSString stringWithFormat:@"%@\n%@", title, NSStringFromRange(range)] block:nil];
    }
    return self.dataMutArr;
}

- (NSArray *)TestProjectCalendar_maximumRangeOfUnit {
    NSArray *arr = [self getCalendarUnitArray];
    for (NSDictionary *dic in arr) {
        NSString *title = dic[@"title"];
        NSCalendarUnit unit = [dic[@"value"] integerValue];
        NSRange range = [self.childCalendar maximumRangeOfUnit:unit];
        [self createTableModelWithTitle:[NSString stringWithFormat:@"%@\n%@", title, NSStringFromRange(range)] block:nil];
    }
    return self.dataMutArr;
}

- (NSArray *)TestProjectCalendar_minimumRangeOfUnit {
    NSArray *arr = [self getCalendarUnitArray];
    for (NSDictionary *dic in arr) {
        NSString *title = dic[@"title"];
        NSCalendarUnit unit = [dic[@"value"] integerValue];
        NSRange range = [self.childCalendar minimumRangeOfUnit:unit];
        [self createTableModelWithTitle:[NSString stringWithFormat:@"%@\n%@", title, NSStringFromRange(range)] block:nil];
    }
    return self.dataMutArr;
}

- (NSArray *)getCalendarUnitArray {
    return @[
        @{
            @"title": [NSString stringWithFormat:@"设置的属性是NSCalendarUnitEra(%ld)，纪元单位，目前只有两种：公元前(BC)、公元(AD)", NSCalendarUnitEra],
            @"value": @(NSCalendarUnitEra),
        },
        @{
            @"title": [NSString stringWithFormat:@"设置的属性是NSCalendarUnitYear(%ld)，年单位，值很大，相当于经历了多少年，未来有多少年", NSCalendarUnitYear],
            @"value": @(NSCalendarUnitYear),
        },
        @{
            @"title": [NSString stringWithFormat:@"设置的属性是NSCalendarUnitMonth(%ld)，月单位为(1~12)", NSCalendarUnitMonth],
            @"value": @(NSCalendarUnitMonth),
        },
        @{
            @"title": [NSString stringWithFormat:@"设置的属性是NSCalendarUnitDay(%ld)，天单位为(1~28-31)", NSCalendarUnitDay],
            @"value": @(NSCalendarUnitDay),
        },
        @{
            @"title": [NSString stringWithFormat:@"设置的属性是NSCalendarUnitHour(%ld)，小时单位为(0~24)", NSCalendarUnitHour],
            @"value": @(NSCalendarUnitHour),
        },
        @{
            @"title": [NSString stringWithFormat:@"设置的属性是NSCalendarUnitMinute(%ld)，分钟单位为(0~60)", NSCalendarUnitMinute],
            @"value": @(NSCalendarUnitMinute),
        },
        @{
            @"title": [NSString stringWithFormat:@"设置的属性是NSCalendarUnitSecond(%ld)，秒单位为(0~60)", NSCalendarUnitSecond],
            @"value": @(NSCalendarUnitSecond),
        },
        @{
            @"title": [NSString stringWithFormat:@"设置的属性是NSCalendarUnitWeekday(%ld)，每周单位为(1~7)", NSCalendarUnitWeekday],
            @"value": @(NSCalendarUnitWeekday),
        },
        @{
            @"title": [NSString stringWithFormat:@"设置的属性是NSCalendarUnitWeekdayOrdinal(%ld)，不清楚", NSCalendarUnitWeekdayOrdinal],
            @"value": @(NSCalendarUnitWeekdayOrdinal),
        },
        @{
            @"title": [NSString stringWithFormat:@"设置的属性是NSCalendarUnitQuarter(%ld)，一刻钟单位为(1~4)", NSCalendarUnitQuarter],
            @"value": @(NSCalendarUnitQuarter),
        },
        @{
            @"title": [NSString stringWithFormat:@"设置的属性是NSCalendarUnitWeekOfMonth(%ld)，一个月有多少周单位为(1~最多为4-6)", NSCalendarUnitWeekOfMonth],
            @"value": @(NSCalendarUnitWeekOfMonth),
        },
        @{
            @"title": [NSString stringWithFormat:@"设置的属性是NSCalendarUnitWeekOfYear(%ld)，一年有多少周单位为(1~最多为52-53)", NSCalendarUnitWeekOfYear],
            @"value": @(NSCalendarUnitWeekOfYear),
        },
        @{
            @"title": [NSString stringWithFormat:@"设置的属性是NSCalendarUnitYearForWeekOfYear(%ld)，不清楚", NSCalendarUnitYearForWeekOfYear],
            @"value": @(NSCalendarUnitYearForWeekOfYear),
        },
        @{
            @"title": [NSString stringWithFormat:@"设置的属性是NSCalendarUnitNanosecond(%ld)，纳秒单位", NSCalendarUnitNanosecond],
            @"value": @(NSCalendarUnitNanosecond),
        },
        @{
            @"title": [NSString stringWithFormat:@"设置的属性是NSCalendarUnitCalendar(%ld)，不清楚", NSCalendarUnitCalendar],
            @"value": @(NSCalendarUnitCalendar),
        },
        @{
            @"title": [NSString stringWithFormat:@"设置的属性是NSCalendarUnitTimeZone(%ld)，不清楚", NSCalendarUnitTimeZone],
            @"value": @(NSCalendarUnitTimeZone),
        },
    ];
}

//typedef NS_OPTIONS(NSUInteger, NSCalendarUnit) {
//        NSCalendarUnitEra                = kCFCalendarUnitEra,
//        NSCalendarUnitYear               = kCFCalendarUnitYear,
//        NSCalendarUnitMonth              = kCFCalendarUnitMonth,
//        NSCalendarUnitDay                = kCFCalendarUnitDay,
//        NSCalendarUnitHour               = kCFCalendarUnitHour,
//        NSCalendarUnitMinute             = kCFCalendarUnitMinute,
//        NSCalendarUnitSecond             = kCFCalendarUnitSecond,
//        NSCalendarUnitWeekday            = kCFCalendarUnitWeekday,
//        NSCalendarUnitWeekdayOrdinal     = kCFCalendarUnitWeekdayOrdinal,
//        NSCalendarUnitQuarter            API_AVAILABLE(macos(10.6), ios(4.0), watchos(2.0), tvos(9.0)) = kCFCalendarUnitQuarter,
//        NSCalendarUnitWeekOfMonth        API_AVAILABLE(macos(10.7), ios(5.0), watchos(2.0), tvos(9.0)) = kCFCalendarUnitWeekOfMonth,
//        NSCalendarUnitWeekOfYear         API_AVAILABLE(macos(10.7), ios(5.0), watchos(2.0), tvos(9.0)) = kCFCalendarUnitWeekOfYear,
//        NSCalendarUnitYearForWeekOfYear  API_AVAILABLE(macos(10.7), ios(5.0), watchos(2.0), tvos(9.0)) = kCFCalendarUnitYearForWeekOfYear,
//        NSCalendarUnitNanosecond         API_AVAILABLE(macos(10.7), ios(5.0), watchos(2.0), tvos(9.0)) = (1 << 15),
//        NSCalendarUnitCalendar           API_AVAILABLE(macos(10.7), ios(4.0), watchos(2.0), tvos(9.0)) = (1 << 20),
//        NSCalendarUnitTimeZone           API_AVAILABLE(macos(10.7), ios(4.0), watchos(2.0), tvos(9.0)) = (1 << 21),
//
//    NSEraCalendarUnit API_DEPRECATED_WITH_REPLACEMENT("NSCalendarUnitEra", macos(10.4, 10.10), ios(2.0, 8.0), watchos(2.0, 2.0), tvos(9.0, 9.0)) = NSCalendarUnitEra,
//    NSYearCalendarUnit API_DEPRECATED_WITH_REPLACEMENT("NSCalendarUnitYear", macos(10.4, 10.10), ios(2.0, 8.0), watchos(2.0, 2.0), tvos(9.0, 9.0)) = NSCalendarUnitYear,
//    NSMonthCalendarUnit API_DEPRECATED_WITH_REPLACEMENT("NSCalendarUnitMonth", macos(10.4, 10.10), ios(2.0, 8.0), watchos(2.0, 2.0), tvos(9.0, 9.0)) = NSCalendarUnitMonth,
//    NSDayCalendarUnit API_DEPRECATED_WITH_REPLACEMENT("NSCalendarUnitDay", macos(10.4, 10.10), ios(2.0, 8.0), watchos(2.0, 2.0), tvos(9.0, 9.0)) = NSCalendarUnitDay,
//    NSHourCalendarUnit API_DEPRECATED_WITH_REPLACEMENT("NSCalendarUnitHour", macos(10.4, 10.10), ios(2.0, 8.0), watchos(2.0, 2.0), tvos(9.0, 9.0)) = NSCalendarUnitHour,
//    NSMinuteCalendarUnit API_DEPRECATED_WITH_REPLACEMENT("NSCalendarUnitMinute", macos(10.4, 10.10), ios(2.0, 8.0), watchos(2.0, 2.0), tvos(9.0, 9.0)) = NSCalendarUnitMinute,
//    NSSecondCalendarUnit API_DEPRECATED_WITH_REPLACEMENT("NSCalendarUnitSecond", macos(10.4, 10.10), ios(2.0, 8.0), watchos(2.0, 2.0), tvos(9.0, 9.0)) = NSCalendarUnitSecond,
//    NSWeekCalendarUnit API_DEPRECATED("NSCalendarUnitWeekOfMonth or NSCalendarUnitWeekOfYear, depending on which you mean", macos(10.4, 10.10), ios(2.0, 8.0), watchos(2.0, 2.0), tvos(9.0, 9.0)) = kCFCalendarUnitWeek,
//    NSWeekdayCalendarUnit API_DEPRECATED_WITH_REPLACEMENT("NSCalendarUnitWeekday", macos(10.4, 10.10), ios(2.0, 8.0), watchos(2.0, 2.0), tvos(9.0, 9.0)) = NSCalendarUnitWeekday,
//    NSWeekdayOrdinalCalendarUnit API_DEPRECATED_WITH_REPLACEMENT("NSCalendarUnitWeekdayOrdinal", macos(10.4, 10.10), ios(2.0, 8.0), watchos(2.0, 2.0), tvos(9.0, 9.0)) = NSCalendarUnitWeekdayOrdinal,
//    NSQuarterCalendarUnit API_DEPRECATED_WITH_REPLACEMENT("NSCalendarUnitQuarter", macos(10.6, 10.10), ios(4.0, 8.0), watchos(2.0, 2.0), tvos(9.0, 9.0)) = NSCalendarUnitQuarter,
//    NSWeekOfMonthCalendarUnit API_DEPRECATED_WITH_REPLACEMENT("NSCalendarUnitWeekOfMonth", macos(10.7, 10.10), ios(5.0, 8.0), watchos(2.0, 2.0), tvos(9.0, 9.0)) = NSCalendarUnitWeekOfMonth,
//    NSWeekOfYearCalendarUnit API_DEPRECATED_WITH_REPLACEMENT("NSCalendarUnitWeekOfYear", macos(10.7, 10.10), ios(5.0, 8.0), watchos(2.0, 2.0), tvos(9.0, 9.0)) = NSCalendarUnitWeekOfYear,
//    NSYearForWeekOfYearCalendarUnit API_DEPRECATED_WITH_REPLACEMENT("NSCalendarUnitYearForWeekOfYear", macos(10.7, 10.10), ios(5.0, 8.0), watchos(2.0, 2.0), tvos(9.0, 9.0)) = NSCalendarUnitYearForWeekOfYear,
//    NSCalendarCalendarUnit API_DEPRECATED_WITH_REPLACEMENT("NSCalendarUnitCalendar", macos(10.7, 10.10), ios(4.0, 8.0), watchos(2.0, 2.0), tvos(9.0, 9.0)) = NSCalendarUnitCalendar,
//    NSTimeZoneCalendarUnit API_DEPRECATED_WITH_REPLACEMENT("NSCalendarUnitTimeZone", macos(10.7, 10.10), ios(4.0, 8.0), watchos(2.0, 2.0), tvos(9.0, 9.0)) = NSCalendarUnitTimeZone,
//};

- (NSMutableArray *)TestProjectCalendar_property_PMSymbol {
    return [self createTableModelSingleArrayWithProperty:@"PMSymbol" value:nil];;
}

- (NSMutableArray *)TestProjectCalendar_property_AMSymbol {
    return [self createTableModelSingleArrayWithProperty:@"AMSymbol" value:nil];;
}

- (NSMutableArray *)TestProjectCalendar_property_shortStandaloneQuarterSymbols {
    return [self createTableModelSingleArrayWithProperty:@"shortStandaloneQuarterSymbols" value:nil];;
}

- (NSMutableArray *)TestProjectCalendar_property_standaloneQuarterSymbols {
    return [self createTableModelSingleArrayWithProperty:@"standaloneQuarterSymbols" value:nil];;
}

- (NSMutableArray *)TestProjectCalendar_property_shortQuarterSymbols {
    return [self createTableModelSingleArrayWithProperty:@"shortQuarterSymbols" value:nil];;
}

- (NSMutableArray *)TestProjectCalendar_property_quarterSymbols {
    return [self createTableModelSingleArrayWithProperty:@"quarterSymbols" value:nil];;
}

- (NSMutableArray *)TestProjectCalendar_property_veryShortStandaloneWeekdaySymbols {
    return [self createTableModelSingleArrayWithProperty:@"veryShortStandaloneWeekdaySymbols" value:nil];;
}

- (NSMutableArray *)TestProjectCalendar_property_shortStandaloneWeekdaySymbols {
    return [self createTableModelSingleArrayWithProperty:@"shortStandaloneWeekdaySymbols" value:nil];;
}

- (NSMutableArray *)TestProjectCalendar_property_standaloneWeekdaySymbols {
    return [self createTableModelSingleArrayWithProperty:@"standaloneWeekdaySymbols" value:nil];;
}

- (NSMutableArray *)TestProjectCalendar_property_veryShortWeekdaySymbols {
    return [self createTableModelSingleArrayWithProperty:@"veryShortWeekdaySymbols" value:nil];;
}

- (NSMutableArray *)TestProjectCalendar_property_shortWeekdaySymbols {
    return [self createTableModelSingleArrayWithProperty:@"shortWeekdaySymbols" value:nil];;
}

- (NSMutableArray *)TestProjectCalendar_property_weekdaySymbols {
    return [self createTableModelSingleArrayWithProperty:@"weekdaySymbols" value:nil];;
}

- (NSMutableArray *)TestProjectCalendar_property_veryShortStandaloneMonthSymbols {
    return [self createTableModelSingleArrayWithProperty:@"veryShortStandaloneMonthSymbols" value:nil];;
}

- (NSMutableArray *)TestProjectCalendar_property_shortStandaloneMonthSymbols {
    return [self createTableModelSingleArrayWithProperty:@"shortStandaloneMonthSymbols" value:nil];;
}

- (NSMutableArray *)TestProjectCalendar_property_standaloneMonthSymbols {
    return [self createTableModelSingleArrayWithProperty:@"standaloneMonthSymbols" value:nil];;
}

- (NSMutableArray *)TestProjectCalendar_property_veryShortMonthSymbols {
    return [self createTableModelSingleArrayWithProperty:@"veryShortMonthSymbols" value:nil];;
}

- (NSMutableArray *)TestProjectCalendar_property_shortMonthSymbols {
    return [self createTableModelSingleArrayWithProperty:@"shortMonthSymbols" value:nil];;
}

- (NSMutableArray *)TestProjectCalendar_property_monthSymbols {
    return [self createTableModelSingleArrayWithProperty:@"monthSymbols" value:nil];;
}

- (NSMutableArray *)TestProjectCalendar_property_longEraSymbols {
    return [self createTableModelSingleArrayWithProperty:@"longEraSymbols" value:nil];;
}

- (NSMutableArray *)TestProjectCalendar_property_eraSymbols {
    return [self createTableModelSingleArrayWithProperty:@"eraSymbols" value:nil];;
}

- (NSMutableArray *)TestProjectCalendar_property_minimumDaysInFirstWeek {
    return [self createTableModelSingleArrayWithProperty:@"minimumDaysInFirstWeek" value:nil];;
}

- (NSMutableArray *)TestProjectCalendar_property_firstWeekday {
    return [self createTableModelSingleArrayWithProperty:@"firstWeekday" value:nil];;
}

- (NSMutableArray *)TestProjectCalendar_property_timeZone {
    return [self createTableModelSingleArrayWithProperty:@"timeZone" value:nil];;
}

- (NSMutableArray *)TestProjectCalendar_property_locale {
    return [self createTableModelSingleArrayWithProperty:@"locale" value:nil];;
}

- (NSMutableArray *)TestProjectCalendar_property_calendarIdentifier {
    return [self createTableModelSingleArrayWithProperty:@"calendarIdentifier" value:nil];;
}

//FOUNDATION_EXPORT NSCalendarIdentifier const NSCalendarIdentifierGregorian  API_AVAILABLE(macos(10.6), ios(4.0), watchos(2.0), tvos(9.0)); // the common calendar in Europe, the Western Hemisphere, and elsewhere
//FOUNDATION_EXPORT NSCalendarIdentifier const NSCalendarIdentifierBuddhist            API_AVAILABLE(macos(10.6), ios(4.0), watchos(2.0), tvos(9.0));
//FOUNDATION_EXPORT NSCalendarIdentifier const NSCalendarIdentifierChinese             API_AVAILABLE(macos(10.6), ios(4.0), watchos(2.0), tvos(9.0));
//FOUNDATION_EXPORT NSCalendarIdentifier const NSCalendarIdentifierCoptic              API_AVAILABLE(macos(10.6), ios(4.0), watchos(2.0), tvos(9.0));
//FOUNDATION_EXPORT NSCalendarIdentifier const NSCalendarIdentifierEthiopicAmeteMihret API_AVAILABLE(macos(10.6), ios(4.0), watchos(2.0), tvos(9.0));
//FOUNDATION_EXPORT NSCalendarIdentifier const NSCalendarIdentifierEthiopicAmeteAlem   API_AVAILABLE(macos(10.6), ios(4.0), watchos(2.0), tvos(9.0));
//FOUNDATION_EXPORT NSCalendarIdentifier const NSCalendarIdentifierHebrew              API_AVAILABLE(macos(10.6), ios(4.0), watchos(2.0), tvos(9.0));
//FOUNDATION_EXPORT NSCalendarIdentifier const NSCalendarIdentifierISO8601             API_AVAILABLE(macos(10.6), ios(4.0), watchos(2.0), tvos(9.0));
//FOUNDATION_EXPORT NSCalendarIdentifier const NSCalendarIdentifierIndian              API_AVAILABLE(macos(10.6), ios(4.0), watchos(2.0), tvos(9.0));
//FOUNDATION_EXPORT NSCalendarIdentifier const NSCalendarIdentifierIslamic             API_AVAILABLE(macos(10.6), ios(4.0), watchos(2.0), tvos(9.0));
//FOUNDATION_EXPORT NSCalendarIdentifier const NSCalendarIdentifierIslamicCivil        API_AVAILABLE(macos(10.6), ios(4.0), watchos(2.0), tvos(9.0));
//FOUNDATION_EXPORT NSCalendarIdentifier const NSCalendarIdentifierJapanese            API_AVAILABLE(macos(10.6), ios(4.0), watchos(2.0), tvos(9.0));
//FOUNDATION_EXPORT NSCalendarIdentifier const NSCalendarIdentifierPersian             API_AVAILABLE(macos(10.6), ios(4.0), watchos(2.0), tvos(9.0));
//FOUNDATION_EXPORT NSCalendarIdentifier const NSCalendarIdentifierRepublicOfChina     API_AVAILABLE(macos(10.6), ios(4.0), watchos(2.0), tvos(9.0));
//// A simple tabular Islamic calendar using the astronomical/Thursday epoch of CE 622 July 15
//FOUNDATION_EXPORT NSCalendarIdentifier const NSCalendarIdentifierIslamicTabular      API_AVAILABLE(macos(10.10), ios(8.0), watchos(2.0), tvos(9.0));
//// The Islamic Umm al-Qura calendar used in Saudi Arabia. This is based on astronomical calculation, instead of tabular behavior.
//FOUNDATION_EXPORT NSCalendarIdentifier const NSCalendarIdentifierIslamicUmmAlQura    API_AVAILABLE(macos(10.10), ios(8.0), watchos(2.0), tvos(9.0));

- (NSMutableArray *)TestProjectCalendar_class_calendarWithIdentifier {
    NSArray *arr = @[
        @{
            @"title": @"设置的属性是NSCalendarIdentifierGregorian，公历",
            @"value": NSCalendarIdentifierGregorian,
        },
        @{
            @"title": @"设置的属性是NSCalendarIdentifierBuddhist，佛教日历",
            @"value": NSCalendarIdentifierBuddhist,
        },
        @{
            @"title": @"设置的属性是NSCalendarIdentifierChinese，中国农历",
            @"value": NSCalendarIdentifierChinese,
        },
        @{
            @"title": @"设置的属性是NSCalendarIdentifierCoptic",
            @"value": NSCalendarIdentifierCoptic,
        },
        @{
            @"title": @"设置的属性是NSCalendarIdentifierEthiopicAmeteMihret",
            @"value": NSCalendarIdentifierEthiopicAmeteMihret,
        },
        @{
            @"title": @"设置的属性是NSCalendarIdentifierEthiopicAmeteAlem",
            @"value": NSCalendarIdentifierEthiopicAmeteAlem,
        },
        @{
            @"title": @"设置的属性是NSCalendarIdentifierHebrew，希伯来日历",
            @"value": NSCalendarIdentifierHebrew,
        },
        @{
            @"title": @"设置的属性是NSCalendarIdentifierISO8601，ISO8601",
            @"value": NSCalendarIdentifierISO8601,
        },
        @{
            @"title": @"设置的属性是NSCalendarIdentifierIndian，印度日历",
            @"value": NSCalendarIdentifierIndian,
        },
        @{
            @"title": @"设置的属性是NSCalendarIdentifierIslamic，伊斯兰教日历",
            @"value": NSCalendarIdentifierIslamic,
        },
        @{
            @"title": @"设置的属性是NSCalendarIdentifierIslamicCivil",
            @"value": NSCalendarIdentifierIslamicCivil,
        },
        @{
            @"title": @"设置的属性是NSCalendarIdentifierJapanese，日本日历",
            @"value": NSCalendarIdentifierJapanese,
        },
        @{
            @"title": @"设置的属性是NSCalendarIdentifierPersian，波斯日历",
            @"value": NSCalendarIdentifierPersian,
        },
        @{
            @"title": @"设置的属性是NSCalendarIdentifierRepublicOfChina，台湾日历",
            @"value": NSCalendarIdentifierRepublicOfChina,
        },
        @{
            @"title": @"设置的属性是NSCalendarIdentifierIslamicTabular",
            @"value": NSCalendarIdentifierIslamicTabular,
        },
        @{
            @"title": @"设置的属性是NSCalendarIdentifierIslamicTabular",
            @"value": NSCalendarIdentifierIslamicTabular,
        },
        @{
            @"title": @"设置的属性是NSCalendarIdentifierIslamicUmmAlQura",
            @"value": NSCalendarIdentifierIslamicUmmAlQura,
        },
    ];
    for (NSDictionary *dic in arr) {
        NSString *title = dic[@"title"];
        NSCalendarIdentifier value = dic[@"value"];
        NSCalendar *canlendar = [NSCalendar calendarWithIdentifier:value];
        [self createTableModelWithTitle:[NSString stringWithFormat:@"%@\ncalendar:%@", title, canlendar] block:nil];
    }
    return self.dataMutArr;
}

- (NSMutableArray *)TestProjectCalendar_class_property_autoupdatingCurrentCalendar {
    return [self createTableModelSingleArrayWithTitle:[NSString stringWithFormat:@"currentCalendar:%@", [NSCalendar autoupdatingCurrentCalendar]] block:nil];
}

- (NSMutableArray *)TestProjectCalendar_class_property_currentCalendar {
    return [self createTableModelSingleArrayWithTitle:[NSString stringWithFormat:@"currentCalendar:%@", [NSCalendar currentCalendar]] block:nil];
}

@end
