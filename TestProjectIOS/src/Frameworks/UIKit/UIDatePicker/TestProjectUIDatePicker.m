//
//  TestProjectUIDatePicker.m
//  TestProjectIOS
//
//  Created by liwenfan on 2023/6/19.
//

#import "TestProjectUIDatePicker.h"

@interface TestProjectUIDatePicker ()

@property (nonatomic, strong) UIDatePicker *childDatePicker;

@end

@implementation TestProjectUIDatePicker

- (instancetype)initCreate {
    if (self = [super initCreate]) {
        [self.tableView testproject_updateConstraints:^(TestProjectViewConstrainMake * _Nonnull make) {
            make.height.equal(self).offset(-50);
        }];
        self.childDatePicker.backgroundColor = [UIColor redColor];
    }
    return self;
}

- (UIDatePicker *)childDatePicker {
    if (!_childDatePicker) {
        _childDatePicker = [[UIDatePicker alloc] init];
        [self addSubview:_childDatePicker];
        [_childDatePicker testproject_makeConstraints:^(TestProjectViewConstrainMake * _Nonnull make) {
            make.top.leading.trainling.equal(self);
            make.height.equal(@50);
        }];
    }
    return _childDatePicker;
}

- (id)setPropertyValueObject:(TestProjectTableViewParams *)params {
    return self.childDatePicker;
}

- (NSMutableArray *)TestProjectDatePicker_property_roundsToMinuteInterval:(TestProjectTableViewParams *)params {
    return [self createModelSingleArrayWithParams:params
                                         property:@"roundsToMinuteInterval"
                                            value:nil
                                        operation:TestProjectCreateModelGetBeforeClickGet
                                            block:nil];
}

- (NSDictionary *)method_13:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"设置获取UIDatePicker的属性roundsToMinuteInterval，暂时不知道什么作用",
            @"title": @"@property (nonatomic) BOOL roundsToMinuteInterval API_AVAILABLE(ios(15.0));",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectDatePicker_property_roundsToMinuteInterval:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectDatePicker_property_datePickerStyle:(TestProjectTableViewParams *)params {
    return [self createModelSingleArrayWithParams:params
                                         property:@"datePickerStyle"
                                            value:nil
                                        operation:TestProjectCreateModelGetBeforeClickGet
                                            block:nil];
}

- (NSDictionary *)method_12:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"设置获取UIDatePicker的属性datePickerStyle",
            @"title": @"@property (nonatomic, readonly, assign) UIDatePickerStyle datePickerStyle API_AVAILABLE(ios(13.4)) API_UNAVAILABLE(tvos, watchos);",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectDatePicker_property_datePickerStyle:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectDatePicker_property_preferredDatePickerStyle:(TestProjectTableViewParams *)params {
    return [self createModelSingleArrayWithParams:params
                                         property:@"preferredDatePickerStyle"
                                            value:nil
                                        operation:TestProjectCreateModelGetBeforeClickGet
                                            block:nil];
}

- (NSDictionary *)method_11:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"设置获取UIDatePicker的属性preferredDatePickerStyle",
            @"title": @"@property (nonatomic, readwrite, assign) UIDatePickerStyle preferredDatePickerStyle API_AVAILABLE(ios(13.4)) API_UNAVAILABLE(tvos, watchos);",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectDatePicker_property_preferredDatePickerStyle:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectDatePicker_setDate_animated:(TestProjectTableViewParams *)params {
    WS(wSelf);
    NSDate *date = [[NSDate date] dateByAddingTimeInterval:2 * 24 *3600];
    [self createModelWithParams:params title:[NSString stringWithFormat:@"设置的时间是两天后的:%@", date] block:^{
        [wSelf.childDatePicker setDate:date animated:YES];
    }];
    return self.dataMutArr;
}

- (NSDictionary *)method_10:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"执行UIDatePicker的方法setDate:animated:, 改变当前选中的时间",
            @"title": @"- (void)setDate:(NSDate *)date animated:(BOOL)animated;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectDatePicker_setDate_animated:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectDatePicker_property_minuteInterval:(TestProjectTableViewParams *)params {
    WS(wSelf);
    [self createModelWithParams:params title:@"设置的值是20" block:^{
        wSelf.childDatePicker.minuteInterval = 20;
    }];
    return self.dataMutArr;
}

- (NSDictionary *)method_9:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"设置获取UIDatePicker的属性minuteInterval",
            @"title": @"@property (nonatomic) NSInteger      minuteInterval;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectDatePicker_property_minuteInterval:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectDatePicker_property_countDownDuration:(TestProjectTableViewParams *)params {
    return [self createModelSingleArrayWithParams:params
                                         property:@"countDownDuration"
                                            value:@23
                                        operation:TestProjectCreateModelGetBeforeClickSet
                                            block:nil];
}

- (NSDictionary *)method_8:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"设置获取UIDatePicker的属性countDownDuration, 暂时不知道什么作用",
            @"title": @"@property (nonatomic) NSTimeInterval countDownDuration;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectDatePicker_property_countDownDuration:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectDatePicker_property_maximumDate:(TestProjectTableViewParams *)params {
    WS(wSelf);
    NSDate *date = [[NSDate date] dateByAddingTimeInterval:2 * 24 *3600];
    [self createModelWithParams:params title:[NSString stringWithFormat:@"设置的时间是两天后的:%@", date] block:^{
        wSelf.childDatePicker.maximumDate = date;
    }];
    return self.dataMutArr;
}

- (NSDictionary *)method_7:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"设置获取UIDatePicker的属性maximumDate，设置最大的选择日期限制",
            @"title": @"@property (nullable, nonatomic, strong) NSDate *maximumDate;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectDatePicker_property_maximumDate:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectDatePicker_property_minimumDate:(TestProjectTableViewParams *)params {
    WS(wSelf);
    NSDate *date = [[NSDate date] dateByAddingTimeInterval:-2 * 24 *3600];
    [self createModelWithParams:params title:[NSString stringWithFormat:@"设置的时间是两天前的:%@", date] block:^{
        wSelf.childDatePicker.minimumDate = date;
    }];
    return self.dataMutArr;
}

- (NSDictionary *)method_6:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"设置获取UIDatePicker的属性minimumDate，设置最小的选择日期限制",
            @"title": @"@property (nullable, nonatomic, strong) NSDate *minimumDate;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectDatePicker_property_minimumDate:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectDatePicker_property_date:(TestProjectTableViewParams *)params {
    return [self createModelSingleArrayWithParams:params
                                         property:@"date"
                                            value:nil
                                        operation:TestProjectCreateModelGetBeforeClickGet
                                            block:nil];
}

- (NSDictionary *)method_5:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"设置获取UIDatePicker的属性date，获取当前选中的日期",
            @"title": @"@property (nonatomic, strong) NSDate *date;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectDatePicker_property_date:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectDatePicker_property_timeZone:(TestProjectTableViewParams *)params {
    return [self createModelSingleArrayWithParams:params
                                         property:@"timeZone"
                                            value:nil
                                        operation:TestProjectCreateModelGetBeforeClickGet
                                            block:nil];
}

- (NSDictionary *)method_4:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"设置获取UIDatePicker的属性timeZone",
            @"title": @"@property (nullable, nonatomic, strong) NSTimeZone *timeZone;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectDatePicker_property_timeZone:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectDatePicker_property_calendar:(TestProjectTableViewParams *)params {
    return [self createModelSingleArrayWithParams:params
                                         property:@"calendar"
                                            value:nil
                                        operation:TestProjectCreateModelGetBeforeClickGet
                                            block:nil];
}

- (NSDictionary *)method_3:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"设置获取UIDatePicker的属性calendar",
            @"title": @"@property (null_resettable, nonatomic, copy)   NSCalendar *calendar;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectDatePicker_property_calendar:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectDatePicker_property_locale:(TestProjectTableViewParams *)params {
    return [self createModelSingleArrayWithParams:params
                                         property:@"locale"
                                            value:nil
                                        operation:TestProjectCreateModelGetBeforeClickGet
                                            block:nil];
}

- (NSDictionary *)method_2:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"设置获取UIDatePicker的属性locale",
            @"title": @"@property (nullable, nonatomic, strong) NSLocale   *locale;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectDatePicker_property_locale:params],
            }
        },
    };
}

//typedef NS_ENUM(NSInteger, UIDatePickerMode) {
//    UIDatePickerModeTime,           // Displays hour, minute, and optionally AM/PM designation depending on the locale setting (e.g. 6 | 53 | PM)
//    UIDatePickerModeDate,           // Displays month, day, and year depending on the locale setting (e.g. November | 15 | 2007)
//    UIDatePickerModeDateAndTime,    // Displays date, hour, minute, and optionally AM/PM designation depending on the locale setting (e.g. Wed Nov 15 | 6 | 53 | PM)
//    UIDatePickerModeCountDownTimer, // Displays hour and minute (e.g. 1 | 53)
//} API_UNAVAILABLE(tvos);

- (NSMutableArray *)TestProjectDatePicker_property_datePickerMode:(TestProjectTableViewParams *)params {
    NSArray *arr = @[
        @{
            @"title": [NSString stringWithFormat:@"设置的属性是UIDatePickerModeTime(%ld), 只显示时间", UIDatePickerModeTime],
            @"value": @(UIDatePickerModeTime),
        },
        @{
            @"title": [NSString stringWithFormat:@"设置的属性是UIDatePickerModeDate(%ld), 只显示年月日", UIDatePickerModeDate],
            @"value": @(UIDatePickerModeDate),
        },
        @{
            @"title": [NSString stringWithFormat:@"设置的属性是UIDatePickerModeDateAndTime(%ld), 显示日期和年月日", UIDatePickerModeDateAndTime],
            @"value": @(UIDatePickerModeDateAndTime),
        },
        @{
            @"title": [NSString stringWithFormat:@"设置的属性是UIDatePickerModeCountDownTimer(%ld), 只显示滑动时间", UIDatePickerModeCountDownTimer],
            @"value": @(UIDatePickerModeCountDownTimer),
        },
    ];
    for (NSDictionary *dic in arr) {
        NSString *title = dic[@"title"];
        NSNumber *value = dic[@"value"];
        [self createModelWithParams:params
                              title:title
                           property:@"datePickerMode"
                              value:value
                          operation:TestProjectCreateModelGetBeforeClickSet
                              block:nil];
    }
    return self.dataMutArr;
}

- (NSDictionary *)method_1:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"设置获取UIDatePicker的属性datePickerMode, 日期显示的模式",
            @"title": @"@property (nonatomic) UIDatePickerMode datePickerMode;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectDatePicker_property_datePickerMode:params],
            }
        },
    };
}

@end
