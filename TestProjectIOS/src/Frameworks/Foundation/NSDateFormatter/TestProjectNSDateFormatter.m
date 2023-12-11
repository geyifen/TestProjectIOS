//
//  TestProjectNSDateFormatter.m
//  TestProjectIOS
//
//  Created by liwenfan on 2023/6/14.
//

#import "TestProjectNSDateFormatter.h"

@interface TestProjectNSDateFormatter ()

@property (nonatomic, strong) NSDateFormatter *childDateFormatter;

@end

@implementation TestProjectNSDateFormatter

- (NSDateFormatter *)childDateFormatter {
    if (!_childDateFormatter) {
        _childDateFormatter = [[NSDateFormatter alloc] init];
        [_childDateFormatter setDateFormat:@"yyyy/MM/dd HH:mm:ss:SSS"];
    }
    return _childDateFormatter;
}

- (id)setPropertyValueObject:(TestProjectTableViewParams *)params {
    return self.childDateFormatter;
}

- (NSMutableArray *)TestProjectDateFormatter_property_doesRelativeDateFormatting:(TestProjectTableViewParams *)params {
    return [self createModelSingleArrayWithParams:params
                                         property:@"doesRelativeDateFormatting"
                                            value:nil
                                        operation:TestProjectCreateModelGetBeforeClickGet
                                            block:nil];
}

- (NSDictionary *)method_40:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"执行NSDateFormatter属性doesRelativeDateFormatting",
            @"title": @"@property BOOL doesRelativeDateFormatting API_AVAILABLE(macos(10.6), ios(4.0), watchos(2.0), tvos(9.0));",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectDateFormatter_property_doesRelativeDateFormatting:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectDateFormatter_property_gregorianStartDate:(TestProjectTableViewParams *)params {
    return [self createModelSingleArrayWithParams:params
                                         property:@"gregorianStartDate"
                                            value:nil
                                        operation:TestProjectCreateModelGetBeforeClickGet
                                            block:nil];
}

- (NSDictionary *)method_39:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"执行NSDateFormatter属性gregorianStartDate",
            @"title": @"@property (nullable, copy) NSDate *gregorianStartDate API_AVAILABLE(macos(10.5), ios(2.0), watchos(2.0), tvos(9.0));",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectDateFormatter_property_gregorianStartDate:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectDateFormatter_property_shortStandaloneQuarterSymbols:(TestProjectTableViewParams *)params {
    return [self createModelSingleArrayWithParams:params
                                         property:@"shortStandaloneQuarterSymbols"
                                            value:nil
                                        operation:TestProjectCreateModelGetBeforeClickGet
                                            block:nil];
}

- (NSDictionary *)method_38:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"执行NSDateFormatter属性shortStandaloneQuarterSymbols",
            @"title": @"@property (null_resettable, copy) NSArray<NSString *> *shortStandaloneQuarterSymbols API_AVAILABLE(macos(10.5), ios(2.0), watchos(2.0), tvos(9.0));",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectDateFormatter_property_shortStandaloneQuarterSymbols:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectDateFormatter_property_standaloneQuarterSymbols:(TestProjectTableViewParams *)params {
    return [self createModelSingleArrayWithParams:params
                                         property:@"standaloneQuarterSymbols"
                                            value:nil
                                        operation:TestProjectCreateModelGetBeforeClickGet
                                            block:nil];
}

- (NSDictionary *)method_37:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"执行NSDateFormatter属性standaloneQuarterSymbols",
            @"title": @"@property (null_resettable, copy) NSArray<NSString *> *standaloneQuarterSymbols API_AVAILABLE(macos(10.5), ios(2.0), watchos(2.0), tvos(9.0));;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectDateFormatter_property_standaloneQuarterSymbols:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectDateFormatter_property_shortQuarterSymbols:(TestProjectTableViewParams *)params {
    return [self createModelSingleArrayWithParams:params
                                         property:@"shortQuarterSymbols"
                                            value:nil
                                        operation:TestProjectCreateModelGetBeforeClickGet
                                            block:nil];
}

- (NSDictionary *)method_36:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"执行NSDateFormatter属性shortQuarterSymbols",
            @"title": @"@property (null_resettable, copy) NSArray<NSString *> *shortQuarterSymbols API_AVAILABLE(macos(10.5), ios(2.0), watchos(2.0), tvos(9.0));;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectDateFormatter_property_shortQuarterSymbols:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectDateFormatter_property_quarterSymbols:(TestProjectTableViewParams *)params {
    return [self createModelSingleArrayWithParams:params
                                         property:@"quarterSymbols"
                                            value:nil
                                        operation:TestProjectCreateModelGetBeforeClickGet
                                            block:nil];
}

- (NSDictionary *)method_35:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"执行NSDateFormatter属性quarterSymbols",
            @"title": @"@property (null_resettable, copy) NSArray<NSString *> *quarterSymbols API_AVAILABLE(macos(10.5), ios(2.0), watchos(2.0), tvos(9.0));",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectDateFormatter_property_quarterSymbols:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectDateFormatter_property_veryShortStandaloneWeekdaySymbols:(TestProjectTableViewParams *)params {
    return [self createModelSingleArrayWithParams:params
                                         property:@"veryShortStandaloneWeekdaySymbols"
                                            value:nil
                                        operation:TestProjectCreateModelGetBeforeClickGet
                                            block:nil];
}

- (NSDictionary *)method_34:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"执行NSDateFormatter属性veryShortStandaloneWeekdaySymbols",
            @"title": @"@property (null_resettable, copy) NSArray<NSString *> *veryShortStandaloneWeekdaySymbols API_AVAILABLE(macos(10.5), ios(2.0), watchos(2.0), tvos(9.0));",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectDateFormatter_property_veryShortStandaloneWeekdaySymbols:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectDateFormatter_property_shortStandaloneWeekdaySymbols:(TestProjectTableViewParams *)params {
    return [self createModelSingleArrayWithParams:params
                                         property:@"shortStandaloneWeekdaySymbols"
                                            value:nil
                                        operation:TestProjectCreateModelGetBeforeClickGet
                                            block:nil];
}

- (NSDictionary *)method_33:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"执行NSDateFormatter属性shortStandaloneWeekdaySymbols",
            @"title": @"@property (null_resettable, copy) NSArray<NSString *> *shortStandaloneWeekdaySymbols API_AVAILABLE(macos(10.5), ios(2.0), watchos(2.0), tvos(9.0));",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectDateFormatter_property_shortStandaloneWeekdaySymbols:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectDateFormatter_property_standaloneWeekdaySymbols:(TestProjectTableViewParams *)params {
    return [self createModelSingleArrayWithParams:params
                                         property:@"standaloneWeekdaySymbols"
                                            value:nil
                                        operation:TestProjectCreateModelGetBeforeClickGet
                                            block:nil];
}

- (NSDictionary *)method_32:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"执行NSDateFormatter属性standaloneWeekdaySymbols",
            @"title": @"@property (null_resettable, copy) NSArray<NSString *> *standaloneWeekdaySymbols API_AVAILABLE(macos(10.5), ios(2.0), watchos(2.0), tvos(9.0));",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectDateFormatter_property_standaloneWeekdaySymbols:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectDateFormatter_property_veryShortWeekdaySymbols:(TestProjectTableViewParams *)params {
    return [self createModelSingleArrayWithParams:params
                                         property:@"veryShortWeekdaySymbols"
                                            value:nil
                                        operation:TestProjectCreateModelGetBeforeClickGet
                                            block:nil];
}

- (NSDictionary *)method_31:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"执行NSDateFormatter属性veryShortWeekdaySymbols",
            @"title": @"@property (null_resettable, copy) NSArray<NSString *> *veryShortWeekdaySymbols API_AVAILABLE(macos(10.5), ios(2.0), watchos(2.0), tvos(9.0));",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectDateFormatter_property_veryShortWeekdaySymbols:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectDateFormatter_property_veryShortStandaloneMonthSymbols:(TestProjectTableViewParams *)params {
    return [self createModelSingleArrayWithParams:params
                                         property:@"veryShortStandaloneMonthSymbols"
                                            value:nil
                                        operation:TestProjectCreateModelGetBeforeClickGet
                                            block:nil];
}

- (NSDictionary *)method_30:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"执行NSDateFormatter属性veryShortStandaloneMonthSymbols",
            @"title": @"@property (null_resettable, copy) NSArray<NSString *> *veryShortStandaloneMonthSymbols API_AVAILABLE(macos(10.5), ios(2.0), watchos(2.0), tvos(9.0));",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectDateFormatter_property_veryShortStandaloneMonthSymbols:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectDateFormatter_property_shortStandaloneMonthSymbols:(TestProjectTableViewParams *)params {
    return [self createModelSingleArrayWithParams:params
                                         property:@"shortStandaloneMonthSymbols"
                                            value:nil
                                        operation:TestProjectCreateModelGetBeforeClickGet
                                            block:nil];
}

- (NSDictionary *)method_29:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"执行NSDateFormatter属性shortStandaloneMonthSymbols",
            @"title": @"@property (null_resettable, copy) NSArray<NSString *> *shortStandaloneMonthSymbols API_AVAILABLE(macos(10.5), ios(2.0), watchos(2.0), tvos(9.0));",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectDateFormatter_property_shortStandaloneMonthSymbols:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectDateFormatter_property_standaloneMonthSymbols:(TestProjectTableViewParams *)params {
    return [self createModelSingleArrayWithParams:params
                                         property:@"standaloneMonthSymbols"
                                            value:nil
                                        operation:TestProjectCreateModelGetBeforeClickGet
                                            block:nil];
}

- (NSDictionary *)method_28:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"执行NSDateFormatter属性standaloneMonthSymbols",
            @"title": @"@property (null_resettable, copy) NSArray<NSString *> *standaloneMonthSymbols API_AVAILABLE(macos(10.5), ios(2.0), watchos(2.0), tvos(9.0));",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectDateFormatter_property_standaloneMonthSymbols:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectDateFormatter_property_veryShortMonthSymbols:(TestProjectTableViewParams *)params {
    return [self createModelSingleArrayWithParams:params
                                         property:@"veryShortMonthSymbols"
                                            value:nil
                                        operation:TestProjectCreateModelGetBeforeClickGet
                                            block:nil];
}

- (NSDictionary *)method_27:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"执行NSDateFormatter属性veryShortMonthSymbols",
            @"title": @"@property (null_resettable, copy) NSArray<NSString *> *veryShortMonthSymbols API_AVAILABLE(macos(10.5), ios(2.0), watchos(2.0), tvos(9.0));",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectDateFormatter_property_veryShortMonthSymbols:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectDateFormatter_property_longEraSymbols:(TestProjectTableViewParams *)params {
    return [self createModelSingleArrayWithParams:params
                                         property:@"longEraSymbols"
                                            value:nil
                                        operation:TestProjectCreateModelGetBeforeClickGet
                                            block:nil];
}

- (NSDictionary *)method_26:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"执行NSDateFormatter属性longEraSymbols",
            @"title": @"@property (null_resettable, copy) NSArray<NSString *> *longEraSymbols API_AVAILABLE(macos(10.5), ios(2.0), watchos(2.0), tvos(9.0));",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectDateFormatter_property_longEraSymbols:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectDateFormatter_property_PMSymbol:(TestProjectTableViewParams *)params {
    return [self createModelSingleArrayWithParams:params
                                         property:@"PMSymbol"
                                            value:nil
                                        operation:TestProjectCreateModelGetBeforeClickGet
                                            block:nil];
}

- (NSDictionary *)method_25:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"执行NSDateFormatter属性PMSymbol",
            @"title": @"@property (null_resettable, copy) NSString *PMSymbol;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectDateFormatter_property_PMSymbol:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectDateFormatter_property_AMSymbol:(TestProjectTableViewParams *)params {
    return [self createModelSingleArrayWithParams:params
                                         property:@"AMSymbol"
                                            value:nil
                                        operation:TestProjectCreateModelGetBeforeClickGet
                                            block:nil];
}

- (NSDictionary *)method_24:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"执行NSDateFormatter属性AMSymbol",
            @"title": @"@property (null_resettable, copy) NSString *AMSymbol;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectDateFormatter_property_AMSymbol:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectDateFormatter_property_shortWeekdaySymbols:(TestProjectTableViewParams *)params {
    return [self createModelSingleArrayWithParams:params
                                         property:@"shortWeekdaySymbols"
                                            value:nil
                                        operation:TestProjectCreateModelGetBeforeClickGet
                                            block:nil];
}

- (NSDictionary *)method_23:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"执行NSDateFormatter属性shortWeekdaySymbols",
            @"title": @"@property (null_resettable, copy) NSArray<NSString *> *shortWeekdaySymbols;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectDateFormatter_property_shortWeekdaySymbols:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectDateFormatter_property_weekdaySymbols:(TestProjectTableViewParams *)params {
    return [self createModelSingleArrayWithParams:params
                                         property:@"monthSymbols"
                                            value:nil
                                        operation:TestProjectCreateModelGetBeforeClickGet
                                            block:nil];
}

- (NSDictionary *)method_22:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"执行NSDateFormatter属性weekdaySymbols",
            @"title": @"@property (null_resettable, copy) NSArray<NSString *> *weekdaySymbols;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectDateFormatter_property_weekdaySymbols:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectDateFormatter_property_shortMonthSymbols:(TestProjectTableViewParams *)params {
    return [self createModelSingleArrayWithParams:params
                                         property:@"shortMonthSymbols"
                                            value:nil
                                        operation:TestProjectCreateModelGetBeforeClickGet
                                            block:nil];
}

- (NSDictionary *)method_21:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"执行NSDateFormatter属性shortMonthSymbols",
            @"title": @"@property (null_resettable, copy) NSArray<NSString *> *shortMonthSymbols;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectDateFormatter_property_shortMonthSymbols:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectDateFormatter_property_monthSymbols:(TestProjectTableViewParams *)params {
    return [self createModelSingleArrayWithParams:params
                                         property:@"monthSymbols"
                                            value:nil
                                        operation:TestProjectCreateModelGetBeforeClickGet
                                            block:nil];
}

- (NSDictionary *)method_20:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"执行NSDateFormatter属性monthSymbols",
            @"title": @"@property (null_resettable, copy) NSArray<NSString *> *monthSymbols;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectDateFormatter_property_monthSymbols:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectDateFormatter_property_eraSymbols:(TestProjectTableViewParams *)params {
    return [self createModelSingleArrayWithParams:params
                                         property:@"eraSymbols"
                                            value:nil
                                        operation:TestProjectCreateModelGetBeforeClickGet
                                            block:nil];
}

- (NSDictionary *)method_19:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"执行NSDateFormatter属性eraSymbols",
            @"title": @"@property (null_resettable, copy) NSArray<NSString *> *eraSymbols;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectDateFormatter_property_eraSymbols:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectDateFormatter_property_defaultDate:(TestProjectTableViewParams *)params {
    return [self createModelSingleArrayWithParams:params
                                         property:@"defaultDate"
                                            value:nil
                                        operation:TestProjectCreateModelGetBeforeClickGet
                                            block:nil];
}

- (NSDictionary *)method_18:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"执行NSDateFormatter属性defaultDate",
            @"title": @"@property (nullable, copy) NSDate *defaultDate;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectDateFormatter_property_defaultDate:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectDateFormatter_property_twoDigitStartDate:(TestProjectTableViewParams *)params {
    return [self createModelSingleArrayWithParams:params
                                         property:@"twoDigitStartDate"
                                            value:nil
                                        operation:TestProjectCreateModelGetBeforeClickGet
                                            block:nil];
}

- (NSDictionary *)method_17:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"执行NSDateFormatter属性twoDigitStartDate",
            @"title": @"@property (nullable, copy) NSDate *twoDigitStartDate;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectDateFormatter_property_twoDigitStartDate:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectDateFormatter_property_lenient:(TestProjectTableViewParams *)params {
    return [self createModelSingleArrayWithParams:params
                                         property:@"lenient"
                                            value:nil
                                        operation:TestProjectCreateModelGetBeforeClickGet
                                            block:nil];
}

- (NSDictionary *)method_16:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"执行NSDateFormatter属性lenient",
            @"title": @"@property (getter=isLenient) BOOL lenient;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectDateFormatter_property_lenient:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectDateFormatter_property_calendar:(TestProjectTableViewParams *)params {
    return [self createModelSingleArrayWithParams:params
                                         property:@"calendar"
                                            value:nil
                                        operation:TestProjectCreateModelGetBeforeClickGet
                                            block:nil];
}

- (NSDictionary *)method_15:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"执行NSDateFormatter属性calendar",
            @"title": @"@property (null_resettable, copy) NSCalendar *calendar;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectDateFormatter_property_calendar:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectDateFormatter_property_timeZone:(TestProjectTableViewParams *)params {
    return [self createModelSingleArrayWithParams:params
                                         property:@"timeZone"
                                            value:nil
                                        operation:TestProjectCreateModelGetBeforeClickGet
                                            block:nil];
}

- (NSDictionary *)method_14:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"执行NSDateFormatter属性timeZone",
            @"title": @"@property (null_resettable, copy) NSTimeZone *timeZone;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectDateFormatter_property_timeZone:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectDateFormatter_property_formatterBehavior:(TestProjectTableViewParams *)params {
    return [self createModelSingleArrayWithParams:params
                                         property:@"formatterBehavior"
                                            value:nil
                                        operation:TestProjectCreateModelGetBeforeClickGet
                                            block:nil];
}

- (NSDictionary *)method_13:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"执行NSDateFormatter属性formatterBehavior",
            @"title": @"@property NSDateFormatterBehavior formatterBehavior;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectDateFormatter_property_formatterBehavior:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectDateFormatter_property_generatesCalendarDates:(TestProjectTableViewParams *)params {
    return [self createModelSingleArrayWithParams:params
                                         property:@"generatesCalendarDates"
                                            value:nil
                                        operation:TestProjectCreateModelGetBeforeClickGet
                                            block:nil];
}

- (NSDictionary *)method_12:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"执行NSDateFormatter属性generatesCalendarDates",
            @"title": @"@property BOOL generatesCalendarDates;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectDateFormatter_property_generatesCalendarDates:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectDateFormatter_property_locale:(TestProjectTableViewParams *)params {
    return [self createModelSingleArrayWithParams:params
                                         property:@"locale"
                                            value:nil
                                        operation:TestProjectCreateModelGetBeforeClickGet
                                            block:nil];
}

- (NSDictionary *)method_11:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"执行NSDateFormatter属性locale",
            @"title": @"@property (null_resettable, copy) NSLocale *locale;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectDateFormatter_property_locale:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectDateFormatter_property_timeStyle:(TestProjectTableViewParams *)params {
    return [self createModelSingleArrayWithParams:params
                                         property:@"timeStyle"
                                            value:nil
                                        operation:TestProjectCreateModelGetBeforeClickGet
                                            block:nil];
}

- (NSDictionary *)method_10:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"执行NSDateFormatter属性timeStyle",
            @"title": @"@property NSDateFormatterStyle timeStyle;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectDateFormatter_property_timeStyle:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectDateFormatter_property_dateStyle:(TestProjectTableViewParams *)params {
    return [self createModelSingleArrayWithParams:params
                                         property:@"dateStyle"
                                            value:nil
                                        operation:TestProjectCreateModelGetBeforeClickGet
                                            block:nil];
}

- (NSDictionary *)method_9:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"执行NSDateFormatter属性dateStyle",
            @"title": @"@property NSDateFormatterStyle dateStyle;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectDateFormatter_property_dateStyle:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectDateFormatter_property_dateFormat:(TestProjectTableViewParams *)params {
    return [self createModelSingleArrayWithParams:params
                                         property:@"dateFormat"
                                            value:nil
                                        operation:TestProjectCreateModelGetBeforeClickGet
                                            block:nil];
}

- (NSDictionary *)method_8:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"执行NSDateFormatter属性dateFormat",
            @"title": @"@property (null_resettable, copy) NSString *dateFormat;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectDateFormatter_property_dateFormat:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectDateFormatter_class_property_defaultFormatterBehavior:(TestProjectTableViewParams *)params {
    NSInteger result = [NSDateFormatter defaultFormatterBehavior];
    return [self createModelSingleArrayWithParams:params title:[NSString stringWithFormat:@"result:%ld", result] block:nil];
}

- (NSDictionary *)method_7:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"执行NSDateFormatter的class属性defaultFormatterBehavior",
            @"title": @"@property (class) NSDateFormatterBehavior defaultFormatterBehavior;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectDateFormatter_class_property_defaultFormatterBehavior:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectDateFormatter_dateFormatFromTemplate_options_locale:(TestProjectTableViewParams *)params {
    NSString *result = [NSDateFormatter dateFormatFromTemplate:@"yyyy/MM/dd HH:mm:ss:SSS" options:0 locale:[NSLocale currentLocale]];
    return [self createModelSingleArrayWithParams:params title:[NSString stringWithFormat:@"result:%@", result] block:nil];
}

- (NSDictionary *)method_6:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"执行NSDateFormatter的方法dateFormatFromTemplate:options:locale:",
            @"title": @"+ (nullable NSString *)dateFormatFromTemplate:(NSString *)tmplate options:(NSUInteger)opts locale:(nullable NSLocale *)locale API_AVAILABLE(macos(10.6), ios(4.0), watchos(2.0), tvos(9.0));",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectDateFormatter_dateFormatFromTemplate_options_locale:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectDateFormatter_localizedStringFromDate_dateStyle_timeStyle:(TestProjectTableViewParams *)params {
    NSDate *date = [NSDate date];
    NSString *result = [NSDateFormatter localizedStringFromDate:date dateStyle:NSDateFormatterShortStyle timeStyle:NSDateFormatterMediumStyle];
    return [self createModelSingleArrayWithParams:params title:[NSString stringWithFormat:@"date:%@ result:%@", date, result] block:nil];
}

- (NSDictionary *)method_5:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"执行NSDateFormatter的class方法localizedStringFromDate:dateStyle:timeStyle",
            @"title": @"+ (NSString *)localizedStringFromDate:(NSDate *)date dateStyle:(NSDateFormatterStyle)dstyle timeStyle:(NSDateFormatterStyle)tstyle API_AVAILABLE(macos(10.6), ios(4.0), watchos(2.0), tvos(9.0));",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectDateFormatter_localizedStringFromDate_dateStyle_timeStyle:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectDateFormatter_dateFromString:(TestProjectTableViewParams *)params {
    NSDate *date = [self.childDateFormatter dateFromString:@"1993/11/12 12:00:00:000"];
    return [self createModelSingleArrayWithParams:params title:[NSString stringWithFormat:@"date:%@", date] block:nil];
}

- (NSDictionary *)method_4:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"执行NSDateFormatter的方法dateFromString:",
            @"title": @"- (nullable NSDate *)dateFromString:(NSString *)string;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectDateFormatter_dateFromString:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectDateFormatter_stringFromDate:(TestProjectTableViewParams *)params {
    NSDate *date = [NSDate date];
    NSString *result = [self.childDateFormatter stringFromDate:[NSDate date]];
    return [self createModelSingleArrayWithParams:params title:[NSString stringWithFormat:@"date:%@ result:%@", date, result] block:nil];
}

- (NSDictionary *)method_3:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"执行NSDateFormatter的方法stringFromDate",
            @"title": @"- (NSString *)stringFromDate:(NSDate *)date;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectDateFormatter_stringFromDate:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectDateFormatter_getObjectValue_forString_range_error:(TestProjectTableViewParams *)params {
    NSString *obj;
    NSRange range = NSMakeRange(0, 20);
    NSError *err;
    BOOL result = [self.childDateFormatter getObjectValue:&obj forString:@"1993/12/31 16:00:00 +0000" range:&range error:&err];
    return [self createModelSingleArrayWithParams:params title:[NSString stringWithFormat:@"%@ %@ %u", obj, NSStringFromRange(range), result] block:nil];
}

- (NSDictionary *)method_2:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"执行NSDateFormatter的方法getObjectValue:forString:range:error",
            @"title": @"- (BOOL)getObjectValue:(out id _Nullable * _Nullable)obj forString:(NSString *)string range:(inout nullable NSRange *)rangep error:(out NSError **)error;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectDateFormatter_getObjectValue_forString_range_error:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectDateFormatter_formattingContext:(TestProjectTableViewParams *)params {
    return [self createModelSingleArrayWithParams:params
                                         property:@"formattingContext"
                                            value:nil
                                        operation:TestProjectCreateModelGetBeforeClickGet
                                            block:nil];
}

- (NSDictionary *)method_1:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"获取NSDateFormatter的属性formattingContext",
            @"title": @"@property NSFormattingContext formattingContext API_AVAILABLE(macos(10.10), ios(8.0), watchos(2.0), tvos(9.0));",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectDateFormatter_formattingContext:params],
            }
        },
    };
}

@end
