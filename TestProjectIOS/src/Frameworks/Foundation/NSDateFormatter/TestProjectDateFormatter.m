//
//  TestProjectDateFormatter.m
//  TestProjectIOS
//
//  Created by liwenfan on 2023/6/14.
//

#import "TestProjectDateFormatter.h"

@interface TestProjectDateFormatter ()

@property (nonatomic, strong) NSDateFormatter *childDateFormatter;

@end

@implementation TestProjectDateFormatter

- (NSDateFormatter *)childDateFormatter {
    if (!_childDateFormatter) {
        _childDateFormatter = [[NSDateFormatter alloc] init];
        [_childDateFormatter setDateFormat:@"yyyy/MM/dd HH:mm:ss:SSS"];
    }
    return _childDateFormatter;
}

- (id)setPropertyValueObject {
    return self.childDateFormatter;
}

- (NSDictionary *)method_1 {
    return @{
        @"dataModel": @{
            @"abstract": @"获取NSDateFormatter的属性formattingContext",
            @"title": @"@property NSFormattingContext formattingContext API_AVAILABLE(macos(10.10), ios(8.0), watchos(2.0), tvos(9.0));",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectDateFormatter_formattingContext],
            }
        },
    };
}

- (NSDictionary *)method_2 {
    return @{
        @"dataModel": @{
            @"abstract": @"执行NSDateFormatter的方法getObjectValue:forString:range:error",
            @"title": @"- (BOOL)getObjectValue:(out id _Nullable * _Nullable)obj forString:(NSString *)string range:(inout nullable NSRange *)rangep error:(out NSError **)error;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectDateFormatter_getObjectValue_forString_range_error],
            }
        },
    };
}

- (NSDictionary *)method_3 {
    return @{
        @"dataModel": @{
            @"abstract": @"执行NSDateFormatter的方法stringFromDate",
            @"title": @"- (NSString *)stringFromDate:(NSDate *)date;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectDateFormatter_stringFromDate],
            }
        },
    };
}

- (NSDictionary *)method_4 {
    return @{
        @"dataModel": @{
            @"abstract": @"执行NSDateFormatter的方法dateFromString:",
            @"title": @"- (nullable NSDate *)dateFromString:(NSString *)string;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectDateFormatter_dateFromString],
            }
        },
    };
}

- (NSDictionary *)method_5 {
    return @{
        @"dataModel": @{
            @"abstract": @"执行NSDateFormatter的class方法localizedStringFromDate:dateStyle:timeStyle",
            @"title": @"+ (NSString *)localizedStringFromDate:(NSDate *)date dateStyle:(NSDateFormatterStyle)dstyle timeStyle:(NSDateFormatterStyle)tstyle API_AVAILABLE(macos(10.6), ios(4.0), watchos(2.0), tvos(9.0));",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectDateFormatter_localizedStringFromDate_dateStyle_timeStyle],
            }
        },
    };
}

- (NSDictionary *)method_6 {
    return @{
        @"dataModel": @{
            @"abstract": @"执行NSDateFormatter的方法dateFormatFromTemplate:options:locale:",
            @"title": @"+ (nullable NSString *)dateFormatFromTemplate:(NSString *)tmplate options:(NSUInteger)opts locale:(nullable NSLocale *)locale API_AVAILABLE(macos(10.6), ios(4.0), watchos(2.0), tvos(9.0));",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectDateFormatter_dateFormatFromTemplate_options_locale],
            }
        },
    };
}

- (NSDictionary *)method_7 {
    return @{
        @"dataModel": @{
            @"abstract": @"执行NSDateFormatter的class属性defaultFormatterBehavior",
            @"title": @"@property (class) NSDateFormatterBehavior defaultFormatterBehavior;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectDateFormatter_class_property_defaultFormatterBehavior],
            }
        },
    };
}

- (NSDictionary *)method_8 {
    return @{
        @"dataModel": @{
            @"abstract": @"执行NSDateFormatter属性dateFormat",
            @"title": @"@property (null_resettable, copy) NSString *dateFormat;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectDateFormatter_property_dateFormat],
            }
        },
    };
}

- (NSDictionary *)method_9 {
    return @{
        @"dataModel": @{
            @"abstract": @"执行NSDateFormatter属性dateStyle",
            @"title": @"@property NSDateFormatterStyle dateStyle;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectDateFormatter_property_dateStyle],
            }
        },
    };
}

- (NSDictionary *)method_10 {
    return @{
        @"dataModel": @{
            @"abstract": @"执行NSDateFormatter属性timeStyle",
            @"title": @"@property NSDateFormatterStyle timeStyle;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectDateFormatter_property_timeStyle],
            }
        },
    };
}

- (NSDictionary *)method_11 {
    return @{
        @"dataModel": @{
            @"abstract": @"执行NSDateFormatter属性locale",
            @"title": @"@property (null_resettable, copy) NSLocale *locale;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectDateFormatter_property_locale],
            }
        },
    };
}

- (NSDictionary *)method_12 {
    return @{
        @"dataModel": @{
            @"abstract": @"执行NSDateFormatter属性generatesCalendarDates",
            @"title": @"@property BOOL generatesCalendarDates;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectDateFormatter_property_generatesCalendarDates],
            }
        },
    };
}

- (NSDictionary *)method_13 {
    return @{
        @"dataModel": @{
            @"abstract": @"执行NSDateFormatter属性formatterBehavior",
            @"title": @"@property NSDateFormatterBehavior formatterBehavior;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectDateFormatter_property_formatterBehavior],
            }
        },
    };
}

- (NSDictionary *)method_14 {
    return @{
        @"dataModel": @{
            @"abstract": @"执行NSDateFormatter属性timeZone",
            @"title": @"@property (null_resettable, copy) NSTimeZone *timeZone;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectDateFormatter_property_timeZone],
            }
        },
    };
}

- (NSDictionary *)method_15 {
    return @{
        @"dataModel": @{
            @"abstract": @"执行NSDateFormatter属性calendar",
            @"title": @"@property (null_resettable, copy) NSCalendar *calendar;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectDateFormatter_property_calendar],
            }
        },
    };
}

- (NSDictionary *)method_16 {
    return @{
        @"dataModel": @{
            @"abstract": @"执行NSDateFormatter属性lenient",
            @"title": @"@property (getter=isLenient) BOOL lenient;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectDateFormatter_property_lenient],
            }
        },
    };
}

- (NSDictionary *)method_17 {
    return @{
        @"dataModel": @{
            @"abstract": @"执行NSDateFormatter属性twoDigitStartDate",
            @"title": @"@property (nullable, copy) NSDate *twoDigitStartDate;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectDateFormatter_property_twoDigitStartDate],
            }
        },
    };
}

- (NSDictionary *)method_18 {
    return @{
        @"dataModel": @{
            @"abstract": @"执行NSDateFormatter属性defaultDate",
            @"title": @"@property (nullable, copy) NSDate *defaultDate;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectDateFormatter_property_defaultDate],
            }
        },
    };
}

- (NSDictionary *)method_19 {
    return @{
        @"dataModel": @{
            @"abstract": @"执行NSDateFormatter属性eraSymbols",
            @"title": @"@property (null_resettable, copy) NSArray<NSString *> *eraSymbols;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectDateFormatter_property_eraSymbols],
            }
        },
    };
}

- (NSDictionary *)method_20 {
    return @{
        @"dataModel": @{
            @"abstract": @"执行NSDateFormatter属性monthSymbols",
            @"title": @"@property (null_resettable, copy) NSArray<NSString *> *monthSymbols;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectDateFormatter_property_monthSymbols],
            }
        },
    };
}

- (NSDictionary *)method_21 {
    return @{
        @"dataModel": @{
            @"abstract": @"执行NSDateFormatter属性shortMonthSymbols",
            @"title": @"@property (null_resettable, copy) NSArray<NSString *> *shortMonthSymbols;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectDateFormatter_property_shortMonthSymbols],
            }
        },
    };
}

- (NSDictionary *)method_22 {
    return @{
        @"dataModel": @{
            @"abstract": @"执行NSDateFormatter属性weekdaySymbols",
            @"title": @"@property (null_resettable, copy) NSArray<NSString *> *weekdaySymbols;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectDateFormatter_property_weekdaySymbols],
            }
        },
    };
}

- (NSDictionary *)method_23 {
    return @{
        @"dataModel": @{
            @"abstract": @"执行NSDateFormatter属性shortWeekdaySymbols",
            @"title": @"@property (null_resettable, copy) NSArray<NSString *> *shortWeekdaySymbols;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectDateFormatter_property_shortWeekdaySymbols],
            }
        },
    };
}

- (NSDictionary *)method_24 {
    return @{
        @"dataModel": @{
            @"abstract": @"执行NSDateFormatter属性AMSymbol",
            @"title": @"@property (null_resettable, copy) NSString *AMSymbol;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectDateFormatter_property_AMSymbol],
            }
        },
    };
}

- (NSDictionary *)method_25 {
    return @{
        @"dataModel": @{
            @"abstract": @"执行NSDateFormatter属性PMSymbol",
            @"title": @"@property (null_resettable, copy) NSString *PMSymbol;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectDateFormatter_property_PMSymbol],
            }
        },
    };
}

- (NSDictionary *)method_26 {
    return @{
        @"dataModel": @{
            @"abstract": @"执行NSDateFormatter属性longEraSymbols",
            @"title": @"@property (null_resettable, copy) NSArray<NSString *> *longEraSymbols API_AVAILABLE(macos(10.5), ios(2.0), watchos(2.0), tvos(9.0));",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectDateFormatter_property_longEraSymbols],
            }
        },
    };
}

- (NSDictionary *)method_27 {
    return @{
        @"dataModel": @{
            @"abstract": @"执行NSDateFormatter属性veryShortMonthSymbols",
            @"title": @"@property (null_resettable, copy) NSArray<NSString *> *veryShortMonthSymbols API_AVAILABLE(macos(10.5), ios(2.0), watchos(2.0), tvos(9.0));",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectDateFormatter_property_veryShortMonthSymbols],
            }
        },
    };
}

- (NSDictionary *)method_28 {
    return @{
        @"dataModel": @{
            @"abstract": @"执行NSDateFormatter属性standaloneMonthSymbols",
            @"title": @"@property (null_resettable, copy) NSArray<NSString *> *standaloneMonthSymbols API_AVAILABLE(macos(10.5), ios(2.0), watchos(2.0), tvos(9.0));",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectDateFormatter_property_standaloneMonthSymbols],
            }
        },
    };
}

- (NSDictionary *)method_29 {
    return @{
        @"dataModel": @{
            @"abstract": @"执行NSDateFormatter属性shortStandaloneMonthSymbols",
            @"title": @"@property (null_resettable, copy) NSArray<NSString *> *shortStandaloneMonthSymbols API_AVAILABLE(macos(10.5), ios(2.0), watchos(2.0), tvos(9.0));",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectDateFormatter_property_shortStandaloneMonthSymbols],
            }
        },
    };
}

- (NSDictionary *)method_30 {
    return @{
        @"dataModel": @{
            @"abstract": @"执行NSDateFormatter属性veryShortStandaloneMonthSymbols",
            @"title": @"@property (null_resettable, copy) NSArray<NSString *> *veryShortStandaloneMonthSymbols API_AVAILABLE(macos(10.5), ios(2.0), watchos(2.0), tvos(9.0));",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectDateFormatter_property_veryShortStandaloneMonthSymbols],
            }
        },
    };
}

- (NSDictionary *)method_31 {
    return @{
        @"dataModel": @{
            @"abstract": @"执行NSDateFormatter属性veryShortWeekdaySymbols",
            @"title": @"@property (null_resettable, copy) NSArray<NSString *> *veryShortWeekdaySymbols API_AVAILABLE(macos(10.5), ios(2.0), watchos(2.0), tvos(9.0));",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectDateFormatter_property_veryShortWeekdaySymbols],
            }
        },
    };
}

- (NSDictionary *)method_32 {
    return @{
        @"dataModel": @{
            @"abstract": @"执行NSDateFormatter属性standaloneWeekdaySymbols",
            @"title": @"@property (null_resettable, copy) NSArray<NSString *> *standaloneWeekdaySymbols API_AVAILABLE(macos(10.5), ios(2.0), watchos(2.0), tvos(9.0));",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectDateFormatter_property_standaloneWeekdaySymbols],
            }
        },
    };
}

- (NSDictionary *)method_33 {
    return @{
        @"dataModel": @{
            @"abstract": @"执行NSDateFormatter属性shortStandaloneWeekdaySymbols",
            @"title": @"@property (null_resettable, copy) NSArray<NSString *> *shortStandaloneWeekdaySymbols API_AVAILABLE(macos(10.5), ios(2.0), watchos(2.0), tvos(9.0));",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectDateFormatter_property_shortStandaloneWeekdaySymbols],
            }
        },
    };
}

- (NSDictionary *)method_34 {
    return @{
        @"dataModel": @{
            @"abstract": @"执行NSDateFormatter属性veryShortStandaloneWeekdaySymbols",
            @"title": @"@property (null_resettable, copy) NSArray<NSString *> *veryShortStandaloneWeekdaySymbols API_AVAILABLE(macos(10.5), ios(2.0), watchos(2.0), tvos(9.0));",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectDateFormatter_property_veryShortStandaloneWeekdaySymbols],
            }
        },
    };
}

- (NSDictionary *)method_35 {
    return @{
        @"dataModel": @{
            @"abstract": @"执行NSDateFormatter属性quarterSymbols",
            @"title": @"@property (null_resettable, copy) NSArray<NSString *> *quarterSymbols API_AVAILABLE(macos(10.5), ios(2.0), watchos(2.0), tvos(9.0));",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectDateFormatter_property_quarterSymbols],
            }
        },
    };
}

- (NSDictionary *)method_36 {
    return @{
        @"dataModel": @{
            @"abstract": @"执行NSDateFormatter属性shortQuarterSymbols",
            @"title": @"@property (null_resettable, copy) NSArray<NSString *> *shortQuarterSymbols API_AVAILABLE(macos(10.5), ios(2.0), watchos(2.0), tvos(9.0));;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectDateFormatter_property_shortQuarterSymbols],
            }
        },
    };
}

- (NSDictionary *)method_37 {
    return @{
        @"dataModel": @{
            @"abstract": @"执行NSDateFormatter属性standaloneQuarterSymbols",
            @"title": @"@property (null_resettable, copy) NSArray<NSString *> *standaloneQuarterSymbols API_AVAILABLE(macos(10.5), ios(2.0), watchos(2.0), tvos(9.0));;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectDateFormatter_property_standaloneQuarterSymbols],
            }
        },
    };
}

- (NSDictionary *)method_38 {
    return @{
        @"dataModel": @{
            @"abstract": @"执行NSDateFormatter属性shortStandaloneQuarterSymbols",
            @"title": @"@property (null_resettable, copy) NSArray<NSString *> *shortStandaloneQuarterSymbols API_AVAILABLE(macos(10.5), ios(2.0), watchos(2.0), tvos(9.0));",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectDateFormatter_property_shortStandaloneQuarterSymbols],
            }
        },
    };
}

- (NSDictionary *)method_39 {
    return @{
        @"dataModel": @{
            @"abstract": @"执行NSDateFormatter属性gregorianStartDate",
            @"title": @"@property (nullable, copy) NSDate *gregorianStartDate API_AVAILABLE(macos(10.5), ios(2.0), watchos(2.0), tvos(9.0));",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectDateFormatter_property_gregorianStartDate],
            }
        },
    };
}

- (NSDictionary *)method_40 {
    return @{
        @"dataModel": @{
            @"abstract": @"执行NSDateFormatter属性doesRelativeDateFormatting",
            @"title": @"@property BOOL doesRelativeDateFormatting API_AVAILABLE(macos(10.6), ios(4.0), watchos(2.0), tvos(9.0));",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectDateFormatter_property_doesRelativeDateFormatting],
            }
        },
    };
}

- (NSMutableArray *)TestProjectDateFormatter_property_doesRelativeDateFormatting {
    return [self createTableModelSingleArrayWithProperty:@"doesRelativeDateFormatting" value:nil];
}

- (NSMutableArray *)TestProjectDateFormatter_property_gregorianStartDate {
    return [self createTableModelSingleArrayWithProperty:@"gregorianStartDate" value:nil];
}

- (NSMutableArray *)TestProjectDateFormatter_property_shortStandaloneQuarterSymbols {
    return [self createTableModelSingleArrayWithProperty:@"shortStandaloneQuarterSymbols" value:nil];
}

- (NSMutableArray *)TestProjectDateFormatter_property_standaloneQuarterSymbols {
    return [self createTableModelSingleArrayWithProperty:@"standaloneQuarterSymbols" value:nil];
}

- (NSMutableArray *)TestProjectDateFormatter_property_shortQuarterSymbols {
    return [self createTableModelSingleArrayWithProperty:@"shortQuarterSymbols" value:nil];
}

- (NSMutableArray *)TestProjectDateFormatter_property_quarterSymbols {
    return [self createTableModelSingleArrayWithProperty:@"quarterSymbols" value:nil];
}

- (NSMutableArray *)TestProjectDateFormatter_property_veryShortStandaloneWeekdaySymbols {
    return [self createTableModelSingleArrayWithProperty:@"veryShortStandaloneWeekdaySymbols" value:nil];
}

- (NSMutableArray *)TestProjectDateFormatter_property_shortStandaloneWeekdaySymbols {
    return [self createTableModelSingleArrayWithProperty:@"shortStandaloneWeekdaySymbols" value:nil];
}

- (NSMutableArray *)TestProjectDateFormatter_property_standaloneWeekdaySymbols {
    return [self createTableModelSingleArrayWithProperty:@"standaloneWeekdaySymbols" value:nil];
}

- (NSMutableArray *)TestProjectDateFormatter_property_veryShortWeekdaySymbols {
    return [self createTableModelSingleArrayWithProperty:@"veryShortWeekdaySymbols" value:nil];
}

- (NSMutableArray *)TestProjectDateFormatter_property_veryShortStandaloneMonthSymbols {
    return [self createTableModelSingleArrayWithProperty:@"veryShortStandaloneMonthSymbols" value:nil];
}

- (NSMutableArray *)TestProjectDateFormatter_property_shortStandaloneMonthSymbols {
    return [self createTableModelSingleArrayWithProperty:@"shortStandaloneMonthSymbols" value:nil];
}

- (NSMutableArray *)TestProjectDateFormatter_property_standaloneMonthSymbols {
    return [self createTableModelSingleArrayWithProperty:@"standaloneMonthSymbols" value:nil];
}

- (NSMutableArray *)TestProjectDateFormatter_property_veryShortMonthSymbols {
    return [self createTableModelSingleArrayWithProperty:@"veryShortMonthSymbols" value:nil];
}

- (NSMutableArray *)TestProjectDateFormatter_property_longEraSymbols {
    return [self createTableModelSingleArrayWithProperty:@"longEraSymbols" value:nil];
}

- (NSMutableArray *)TestProjectDateFormatter_property_PMSymbol {
    return [self createTableModelSingleArrayWithProperty:@"PMSymbol" value:nil];
}

- (NSMutableArray *)TestProjectDateFormatter_property_AMSymbol {
    return [self createTableModelSingleArrayWithProperty:@"AMSymbol" value:nil];
}

- (NSMutableArray *)TestProjectDateFormatter_property_shortWeekdaySymbols {
    return [self createTableModelSingleArrayWithProperty:@"shortWeekdaySymbols" value:nil];
}

- (NSMutableArray *)TestProjectDateFormatter_property_weekdaySymbols {
    return [self createTableModelSingleArrayWithProperty:@"monthSymbols" value:nil];
}

- (NSMutableArray *)TestProjectDateFormatter_property_shortMonthSymbols {
    return [self createTableModelSingleArrayWithProperty:@"shortMonthSymbols" value:nil];
}

- (NSMutableArray *)TestProjectDateFormatter_property_monthSymbols {
    return [self createTableModelSingleArrayWithProperty:@"monthSymbols" value:nil];
}

- (NSMutableArray *)TestProjectDateFormatter_property_eraSymbols {
    return [self createTableModelSingleArrayWithProperty:@"eraSymbols" value:nil];
}

- (NSMutableArray *)TestProjectDateFormatter_property_defaultDate {
    return [self createTableModelSingleArrayWithProperty:@"defaultDate" value:nil];
}

- (NSMutableArray *)TestProjectDateFormatter_property_twoDigitStartDate {
    return [self createTableModelSingleArrayWithProperty:@"twoDigitStartDate" value:nil];
}

- (NSMutableArray *)TestProjectDateFormatter_property_lenient {
    return [self createTableModelSingleArrayWithProperty:@"lenient" value:nil];
}

- (NSMutableArray *)TestProjectDateFormatter_property_calendar {
    return [self createTableModelSingleArrayWithProperty:@"calendar" value:nil];
}

- (NSMutableArray *)TestProjectDateFormatter_property_timeZone {
    return [self createTableModelSingleArrayWithProperty:@"timeZone" value:nil];
}

- (NSMutableArray *)TestProjectDateFormatter_property_formatterBehavior {
    return [self createTableModelSingleArrayWithProperty:@"formatterBehavior" value:nil];
}

- (NSMutableArray *)TestProjectDateFormatter_property_generatesCalendarDates {
    return [self createTableModelSingleArrayWithProperty:@"generatesCalendarDates" value:nil];
}

- (NSMutableArray *)TestProjectDateFormatter_property_locale {
    return [self createTableModelSingleArrayWithProperty:@"locale" value:nil];
}

- (NSMutableArray *)TestProjectDateFormatter_property_timeStyle {
    return [self createTableModelSingleArrayWithProperty:@"timeStyle" value:nil];
}

- (NSMutableArray *)TestProjectDateFormatter_property_dateStyle {
    return [self createTableModelSingleArrayWithProperty:@"dateStyle" value:nil];
}

- (NSMutableArray *)TestProjectDateFormatter_property_dateFormat {
    return [self createTableModelSingleArrayWithProperty:@"dateFormat" value:nil];
}

- (NSMutableArray *)TestProjectDateFormatter_class_property_defaultFormatterBehavior {
    NSInteger result = [NSDateFormatter defaultFormatterBehavior];
    return [self createTableModelSingleArrayWithTitle:[NSString stringWithFormat:@"result:%ld", result] block:nil];
}

- (NSMutableArray *)TestProjectDateFormatter_dateFormatFromTemplate_options_locale {
    NSString *result = [NSDateFormatter dateFormatFromTemplate:@"yyyy/MM/dd HH:mm:ss:SSS" options:0 locale:[NSLocale currentLocale]];
    return [self createTableModelSingleArrayWithTitle:[NSString stringWithFormat:@"result:%@", result] block:nil];
}

- (NSMutableArray *)TestProjectDateFormatter_localizedStringFromDate_dateStyle_timeStyle {
    NSDate *date = [NSDate date];
    NSString *result = [NSDateFormatter localizedStringFromDate:date dateStyle:NSDateFormatterShortStyle timeStyle:NSDateFormatterMediumStyle];
    return [self createTableModelSingleArrayWithTitle:[NSString stringWithFormat:@"date:%@ result:%@", date, result] block:nil];
}

- (NSMutableArray *)TestProjectDateFormatter_dateFromString {
    NSDate *date = [self.childDateFormatter dateFromString:@"1993/11/12 12:00:00:000"];
    return [self createTableModelSingleArrayWithTitle:[NSString stringWithFormat:@"date:%@", date] block:nil];
}

- (NSMutableArray *)TestProjectDateFormatter_stringFromDate {
    NSDate *date = [NSDate date];
    NSString *result = [self.childDateFormatter stringFromDate:[NSDate date]];
    return [self createTableModelSingleArrayWithTitle:[NSString stringWithFormat:@"date:%@ result:%@", date, result] block:nil];
}

- (NSMutableArray *)TestProjectDateFormatter_getObjectValue_forString_range_error {
    NSString *obj;
    NSRange range;
    NSError *err;
    BOOL result = [self.childDateFormatter getObjectValue:&obj forString:@"1993-12-31 16:00:00 +0000" range:&range error:&err];
    return [self createTableModelSingleArrayWithTitle:[NSString stringWithFormat:@"%@ %@ %u", obj, NSStringFromRange(range), result] block:nil];
}

- (NSMutableArray *)TestProjectDateFormatter_formattingContext {
    return [self createTableModelSingleArrayWithProperty:@"formattingContext" value:nil];
}

@end
