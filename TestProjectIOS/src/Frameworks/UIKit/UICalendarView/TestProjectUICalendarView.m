//
//  TestProjectUICalendarView.m
//  TestProjectIOS
//
//  Created by liwenfan on 2023/6/8.
//

#import "TestProjectUICalendarView.h"

@interface TestProjectUICalendarView () <UICalendarViewDelegate>

@property (nonatomic, strong) UICalendarView *childCalendarView API_AVAILABLE(ios(16.0));

@end

@implementation TestProjectUICalendarView

- (instancetype)initCreate {
    if (self = [super initCreate]) {
        [self.tableView testproject_updateConstraints:^(TestProjectViewConstrainMake * _Nonnull make) {
            make.height.equal(self).offset(-400);
        }];
        if (@available(iOS 16.0, *)) {
            self.childCalendarView.hidden = NO;
        } else {
            // Fallback on earlier versions
        }
    }
    return self;
}

- (UICalendarView *)childCalendarView:(TestProjectTableViewParams *)params {
    if (!_childCalendarView) {
        _childCalendarView = [[UICalendarView alloc] init];
        _childCalendarView.delegate = self;
        [self addSubview:_childCalendarView];
        [_childCalendarView testproject_makeConstraints:^(TestProjectViewConstrainMake * _Nonnull make) {
            make.top.trainling.leading.equal(self);
            make.height.equal(@400);
        }];
    }
    return _childCalendarView;
}

- (BOOL)enableLog:(TestProjectTableViewParams *)params {
    return NO;
}

- (id)setPropertyValueObject:(TestProjectTableViewParams *)params {
    if (@available(iOS 16.0, *)) {
        return self.childCalendarView;
    } else {
        // Fallback on earlier versions
    }
    return nil;
}

#pragma mark - UICalendarViewDelegate
- (UICalendarViewDecoration *)calendarView:(UICalendarView *)calendarView decorationForDateComponents:(NSDateComponents *)dateComponents  API_AVAILABLE(ios(16.0)){
    NSLog(@"%@ calendarView:%@ decorationForDateComponents:%@", NSStringFromSelector(_cmd), calendarView, dateComponents);
    UICalendarViewDecoration *decoration = [UICalendarViewDecoration decorationWithImage:[UIImage imageNamed:@"lyf_2"]];
    return decoration;
}

- (void)calendarView:(UICalendarView *)calendarView didChangeVisibleDateComponentsFrom:(NSDateComponents *)previousDateComponents  API_AVAILABLE(ios(16.0)){
    NSLog(@"%@ calendarView:%@ decorationForDateComponents:%@", NSStringFromSelector(_cmd), calendarView, previousDateComponents);
}

- (NSMutableArray *)TestProjectCalendarView_setVisibleDateComponents_animated:(TestProjectTableViewParams *)params {
    WS(wSelf);
    [self createModelWithParams:params title:@"setVisibleDateComponents" methodBlock:^NSString * _Nonnull{
        NSDateComponents *dateComponents;
        if (@available(iOS 16.0, *)) {
            dateComponents = [wSelf.childCalendarView.calendar components:NSCalendarUnitDay | NSCalendarUnitYear fromDate:[NSDate date]];
            [wSelf.childCalendarView setVisibleDateComponents:dateComponents animated:YES];
        } else {
            // Fallback on earlier versions
        }
        return [NSString stringWithFormat:@"%@", dateComponents];
    }];
    return self.dataMutArr;
}

- (NSDictionary *)method_10:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"获取UICalendarView的方法setVisibleDateComponents:animated:",
            @"title": @"- (void)setVisibleDateComponents:(NSDateComponents *)dateComponents animated:(BOOL)animated;",
            @"isDataModelExpand": @(YES),
            @"desc": @"只展示年月日，如果NSDateComponents没有设置某个刻度，则视图会跳到最初始的日期，如没有设置月份，则会跳到1月份\n如果设置了年份，则选择器可以选择年和月，不能选择日；没设置只能选择月份和日期",
            @"dataModel": @{
                @"childItems": [self TestProjectCalendarView_setVisibleDateComponents_animated:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectCalendarView_property_wantsDateDecorations:(TestProjectTableViewParams *)params {
    NSArray *arr = @[
        @{
            @"title": @"设置的属性是YES，能够显示图片",
            @"value": @(YES),
        },
        @{
            @"title": @"设置的属性是NO，不能够显示图片",
            @"value": @(NO),
        },
    ];
    for (NSDictionary *dic in arr) {
        NSString *title = dic[@"title"];
        NSNumber *value = dic[@"value"];
        [self createModelWithParams:params
                              title:title
                           property:@"wantsDateDecorations"
                              value:value
                          operation:TestProjectCreateModelGetBeforeClickSet
                              block:nil];
    }
    return self.dataMutArr;
}

- (NSDictionary *)method_9:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"获取UICalendarView的属性wantsDateDecorations",
            @"title": @"@property (nonatomic, assign) BOOL wantsDateDecorations;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectCalendarView_property_wantsDateDecorations:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectCalendarView_property_visibleDateComponents:(TestProjectTableViewParams *)params {
    return [self createModelSingleArrayWithParams:params
                                         property:@"visibleDateComponents"
                                            value:nil
                                        operation:TestProjectCreateModelGetBeforeClickGet
                                            block:nil];
}

- (NSDictionary *)method_8:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"获取UICalendarView的属性visibleDateComponents",
            @"title": @"@property (nonatomic, copy, nonnull) NSDateComponents *visibleDateComponents;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectCalendarView_property_visibleDateComponents:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectCalendarView_property_availableDateRange:(TestProjectTableViewParams *)params {
    NSDate *date = [NSDate date];
    NSDate *startDate = [date dateByAddingTimeInterval:-5 * 365 * 24 *3600];
    NSDateInterval *dateInterval = [[NSDateInterval alloc] initWithStartDate:startDate duration:10 * 365 * 24 *3600];
    return [self createModelSingleArrayWithParams:params
                                         property:@"availableDateRange"
                                            value:dateInterval
                                        operation:TestProjectCreateModelGetBeforeClickSet
                                            block:nil];
}

- (NSDictionary *)method_7:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"获取UICalendarView的属性availableDateRange",
            @"title": @"@property (nonatomic, copy, nonnull) NSDateInterval *availableDateRange;",
            @"isDataModelExpand": @(YES),
            @"desc": @"这个可以设置最小和最大的日期选择项，但当前日期必须在这之间，否则会崩溃说越界",
            @"dataModel": @{
                @"childItems": [self TestProjectCalendarView_property_availableDateRange:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectCalendarView_property_fontDesign:(TestProjectTableViewParams *)params {
    return [self createModelSingleArrayWithParams:params
                                         property:@"fontDesign"
                                            value:nil
                                        operation:TestProjectCreateModelGetBeforeClickGet
                                            block:nil];
}

- (NSDictionary *)method_6:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"获取UICalendarView的属性fontDesign",
            @"title": @"@property (nonatomic, copy, nonnull) UIFontDescriptorSystemDesign fontDesign;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectCalendarView_property_fontDesign:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectCalendarView_property_timeZone:(TestProjectTableViewParams *)params {
    return [self createModelSingleArrayWithParams:params
                                         property:@"timeZone"
                                            value:nil
                                        operation:TestProjectCreateModelGetBeforeClickGet
                                            block:nil];
}

- (NSDictionary *)method_5:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"获取UICalendarView的属性timeZone",
            @"title": @"@property (nonatomic, strong, nullable) NSTimeZone *timeZone;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectCalendarView_property_timeZone:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectCalendarView_property_calendar:(TestProjectTableViewParams *)params {
    return [self createModelSingleArrayWithParams:params
                                         property:@"calendar"
                                            value:nil
                                        operation:TestProjectCreateModelGetBeforeClickGet
                                            block:nil];
}

- (NSDictionary *)method_4:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"获取UICalendarView的属性calendar",
            @"title": @"@property (nonatomic, copy, nonnull) NSCalendar *calendar;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectCalendarView_property_calendar:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectCalendarView_property_locale:(TestProjectTableViewParams *)params {
    return [self createModelSingleArrayWithParams:params
                                         property:@"locale"
                                            value:nil
                                        operation:TestProjectCreateModelGetBeforeClickGet
                                            block:nil];
}

- (NSDictionary *)method_3:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"获取UICalendarView的属性locale",
            @"title": @"@property (nonatomic, strong, nonnull) NSLocale *locale;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectCalendarView_property_locale:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectCalendarView_property_selectionBehavior:(TestProjectTableViewParams *)params {
    return [self createModelSingleArrayWithParams:params
                                         property:@"selectionBehavior"
                                            value:nil
                                        operation:TestProjectCreateModelGetBeforeClickGet
                                            block:nil];
}

- (NSDictionary *)method_2:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"获取UICalendarView的属性selectionBehavior",
            @"title": @"@property (nonatomic, strong, nullable) UICalendarSelection *selectionBehavior;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectCalendarView_property_selectionBehavior:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectCalendarView_property_delegate:(TestProjectTableViewParams *)params {
    return [self createModelSingleArrayWithParams:params
                                         property:@"delegate"
                                            value:nil
                                        operation:TestProjectCreateModelGetBeforeClickGet
                                            block:nil];
}

- (NSDictionary *)method_1:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"获取UICalendarView的属性delegate",
            @"title": @"@property (nonatomic, weak, nullable) id<UICalendarViewDelegate> delegate;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectCalendarView_property_delegate:params],
            }
        },
    };
}

@end
