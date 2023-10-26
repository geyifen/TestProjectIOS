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

- (id)setPropertyValueObject {
    return self.childDatePicker;
}

- (NSDictionary *)method_1 {
    return @{
        @"dataModel": @{
            @"abstract": @"设置获取UIDatePicker的属性datePickerMode, 日期显示的模式",
            @"title": @"@property (nonatomic) UIDatePickerMode datePickerMode;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectDatePicker_property_datePickerMode],
            }
        },
    };
}

- (NSDictionary *)method_2 {
    return @{
        @"dataModel": @{
            @"abstract": @"设置获取UIDatePicker的属性locale",
            @"title": @"@property (nullable, nonatomic, strong) NSLocale   *locale;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectDatePicker_property_locale],
            }
        },
    };
}

- (NSDictionary *)method_3 {
    return @{
        @"dataModel": @{
            @"abstract": @"设置获取UIDatePicker的属性calendar",
            @"title": @"@property (null_resettable, nonatomic, copy)   NSCalendar *calendar;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectDatePicker_property_calendar],
            }
        },
    };
}

- (NSDictionary *)method_4 {
    return @{
        @"dataModel": @{
            @"abstract": @"设置获取UIDatePicker的属性timeZone",
            @"title": @"@property (nullable, nonatomic, strong) NSTimeZone *timeZone;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectDatePicker_property_timeZone],
            }
        },
    };
}

- (NSDictionary *)method_5:(NSInteger)index {
    return @{
        @"dataModel": @{
            @"abstract": @"设置获取UIDatePicker的属性date，获取当前选中的日期",
            @"title": @"@property (nonatomic, strong) NSDate *date;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectDatePicker_property_date:index],
            }
        },
    };
}

- (NSDictionary *)method_6 {
    return @{
        @"dataModel": @{
            @"abstract": @"设置获取UIDatePicker的属性minimumDate，设置最小的选择日期限制",
            @"title": @"@property (nullable, nonatomic, strong) NSDate *minimumDate;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectDatePicker_property_minimumDate],
            }
        },
    };
}

- (NSDictionary *)method_7 {
    return @{
        @"dataModel": @{
            @"abstract": @"设置获取UIDatePicker的属性maximumDate，设置最大的选择日期限制",
            @"title": @"@property (nullable, nonatomic, strong) NSDate *maximumDate;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectDatePicker_property_maximumDate],
            }
        },
    };
}

- (NSDictionary *)method_8 {
    return @{
        @"dataModel": @{
            @"abstract": @"设置获取UIDatePicker的属性countDownDuration, 暂时不知道什么作用",
            @"title": @"@property (nonatomic) NSTimeInterval countDownDuration;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectDatePicker_property_countDownDuration],
            }
        },
    };
}

- (NSDictionary *)method_9 {
    return @{
        @"dataModel": @{
            @"abstract": @"设置获取UIDatePicker的属性minuteInterval",
            @"title": @"@property (nonatomic) NSInteger      minuteInterval;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectDatePicker_property_minuteInterval],
            }
        },
    };
}

- (NSDictionary *)method_10 {
    return @{
        @"dataModel": @{
            @"abstract": @"执行UIDatePicker的方法setDate:animated:, 改变当前选中的时间",
            @"title": @"- (void)setDate:(NSDate *)date animated:(BOOL)animated;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectDatePicker_setDate_animated],
            }
        },
    };
}

- (NSDictionary *)method_11 {
    return @{
        @"dataModel": @{
            @"abstract": @"设置获取UIDatePicker的属性preferredDatePickerStyle",
            @"title": @"@property (nonatomic, readwrite, assign) UIDatePickerStyle preferredDatePickerStyle API_AVAILABLE(ios(13.4)) API_UNAVAILABLE(tvos, watchos);",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectDatePicker_property_preferredDatePickerStyle],
            }
        },
    };
}

- (NSDictionary *)method_12 {
    return @{
        @"dataModel": @{
            @"abstract": @"设置获取UIDatePicker的属性datePickerStyle",
            @"title": @"@property (nonatomic, readonly, assign) UIDatePickerStyle datePickerStyle API_AVAILABLE(ios(13.4)) API_UNAVAILABLE(tvos, watchos);",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectDatePicker_property_datePickerStyle],
            }
        },
    };
}

- (NSDictionary *)method_13 {
    return @{
        @"dataModel": @{
            @"abstract": @"设置获取UIDatePicker的属性roundsToMinuteInterval，暂时不知道什么作用",
            @"title": @"@property (nonatomic) BOOL roundsToMinuteInterval API_AVAILABLE(ios(15.0));",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectDatePicker_property_roundsToMinuteInterval],
            }
        },
    };
}

- (NSMutableArray *)TestProjectDatePicker_property_roundsToMinuteInterval {
    return [self createTableModelSingleArrayWithProperty:@"roundsToMinuteInterval" value:nil];
}

- (NSMutableArray *)TestProjectDatePicker_property_datePickerStyle {
    return [self createTableModelSingleArrayWithProperty:@"datePickerStyle" value:nil];
}

- (NSMutableArray *)TestProjectDatePicker_property_preferredDatePickerStyle {
    return [self createTableModelSingleArrayWithProperty:@"preferredDatePickerStyle" value:nil];
}

- (NSMutableArray *)TestProjectDatePicker_setDate_animated {
    WS(wSelf);
    NSDate *date = [[NSDate date] dateByAddingTimeInterval:2 * 24 *3600];
    [self createTableModelWithTitle:[NSString stringWithFormat:@"设置的时间是两天后的:%@", date] block:^{
        [wSelf.childDatePicker setDate:date animated:YES];
    }];
    return self.dataMutArr;
}

- (NSMutableArray *)TestProjectDatePicker_property_minuteInterval {
    WS(wSelf);
    [self createTableModelWithTitle:@"设置的值是20" block:^{
        wSelf.childDatePicker.minuteInterval = 20;
    }];
    return self.dataMutArr;
}

- (NSMutableArray *)TestProjectDatePicker_property_countDownDuration {
    return [self createClickSetSingleArrayTableModelWithProperty:@"countDownDuration" value:@23];
}

- (NSMutableArray *)TestProjectDatePicker_property_maximumDate {
    WS(wSelf);
    NSDate *date = [[NSDate date] dateByAddingTimeInterval:2 * 24 *3600];
    [self createTableModelWithTitle:[NSString stringWithFormat:@"设置的时间是两天后的:%@", date] block:^{
        wSelf.childDatePicker.maximumDate = date;
    }];
    return self.dataMutArr;
}

- (NSMutableArray *)TestProjectDatePicker_property_minimumDate {
    WS(wSelf);
    NSDate *date = [[NSDate date] dateByAddingTimeInterval:-2 * 24 *3600];
    [self createTableModelWithTitle:[NSString stringWithFormat:@"设置的时间是两天前的:%@", date] block:^{
        wSelf.childDatePicker.minimumDate = date;
    }];
    return self.dataMutArr;
}

- (NSMutableArray *)TestProjectDatePicker_property_date:(NSInteger)index {
    return [self createTableModelSingleArrayWithProperty:@"date" index:index];
}

- (NSMutableArray *)TestProjectDatePicker_property_timeZone {
    return [self createTableModelSingleArrayWithProperty:@"timeZone" value:nil];
}

- (NSMutableArray *)TestProjectDatePicker_property_calendar {
    return [self createTableModelSingleArrayWithProperty:@"calendar" value:nil];
}

- (NSMutableArray *)TestProjectDatePicker_property_locale {
    return [self createTableModelSingleArrayWithProperty:@"locale" value:nil];
}

//typedef NS_ENUM(NSInteger, UIDatePickerMode) {
//    UIDatePickerModeTime,           // Displays hour, minute, and optionally AM/PM designation depending on the locale setting (e.g. 6 | 53 | PM)
//    UIDatePickerModeDate,           // Displays month, day, and year depending on the locale setting (e.g. November | 15 | 2007)
//    UIDatePickerModeDateAndTime,    // Displays date, hour, minute, and optionally AM/PM designation depending on the locale setting (e.g. Wed Nov 15 | 6 | 53 | PM)
//    UIDatePickerModeCountDownTimer, // Displays hour and minute (e.g. 1 | 53)
//} API_UNAVAILABLE(tvos);

- (NSMutableArray *)TestProjectDatePicker_property_datePickerMode {
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
        [self createClickSetTableModelWithProperty:@"datePickerMode" value:value title:title block:nil];
    }
    return self.dataMutArr;
}

@end
