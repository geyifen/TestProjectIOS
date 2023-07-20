//
//  TestProjectCalendarView.m
//  TestProjectIOS
//
//  Created by zjrcumac on 2023/6/8.
//

#import "TestProjectCalendarView.h"

@interface TestProjectCalendarView () <UICalendarViewDelegate>

@property (nonatomic, strong) UICalendarView *childCalendarView API_AVAILABLE(ios(16.0));

@end

@implementation TestProjectCalendarView

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

- (UICalendarView *)childCalendarView {
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

- (BOOL)enableLog {
    return NO;
}

- (id)setPropertyValueObject {
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

- (NSDictionary *)method_1 {
    return @{
        @"dataModel": @{
            @"abstract": @"获取UICalendarView的属性delegate",
            @"title": @"@property (nonatomic, weak, nullable) id<UICalendarViewDelegate> delegate;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectCalendarView_property_delegate],
            }
        },
    };
}

- (NSDictionary *)method_2 {
    return @{
        @"dataModel": @{
            @"abstract": @"获取UICalendarView的属性selectionBehavior",
            @"title": @"@property (nonatomic, strong, nullable) UICalendarSelection *selectionBehavior;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectCalendarView_property_selectionBehavior],
            }
        },
    };
}

- (NSDictionary *)method_3 {
    return @{
        @"dataModel": @{
            @"abstract": @"获取UICalendarView的属性locale",
            @"title": @"@property (nonatomic, strong, nonnull) NSLocale *locale;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectCalendarView_property_locale],
            }
        },
    };
}

- (NSDictionary *)method_4 {
    return @{
        @"dataModel": @{
            @"abstract": @"获取UICalendarView的属性calendar",
            @"title": @"@property (nonatomic, copy, nonnull) NSCalendar *calendar;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectCalendarView_property_calendar],
            }
        },
    };
}

- (NSDictionary *)method_5 {
    return @{
        @"dataModel": @{
            @"abstract": @"获取UICalendarView的属性timeZone",
            @"title": @"@property (nonatomic, strong, nullable) NSTimeZone *timeZone;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectCalendarView_property_timeZone],
            }
        },
    };
}

- (NSDictionary *)method_6 {
    return @{
        @"dataModel": @{
            @"abstract": @"获取UICalendarView的属性fontDesign",
            @"title": @"@property (nonatomic, copy, nonnull) UIFontDescriptorSystemDesign fontDesign;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectCalendarView_property_fontDesign],
            }
        },
    };
}

- (NSDictionary *)method_7 {
    return @{
        @"dataModel": @{
            @"abstract": @"获取UICalendarView的属性availableDateRange",
            @"title": @"@property (nonatomic, copy, nonnull) NSDateInterval *availableDateRange;",
            @"isDataModelExpand": @(YES),
            @"desc": @"这个可以设置最小和最大的日期选择项，但当前日期必须在这之间，否则会崩溃说越界",
            @"dataModel": @{
                @"childItems": [self TestProjectCalendarView_property_availableDateRange],
            }
        },
    };
}

- (NSDictionary *)method_8 {
    return @{
        @"dataModel": @{
            @"abstract": @"获取UICalendarView的属性visibleDateComponents",
            @"title": @"@property (nonatomic, copy, nonnull) NSDateComponents *visibleDateComponents;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectCalendarView_property_visibleDateComponents],
            }
        },
    };
}

- (NSDictionary *)method_9 {
    return @{
        @"dataModel": @{
            @"abstract": @"获取UICalendarView的属性wantsDateDecorations",
            @"title": @"@property (nonatomic, assign) BOOL wantsDateDecorations;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectCalendarView_property_wantsDateDecorations],
            }
        },
    };
}

- (NSDictionary *)method_10:(NSInteger)index {
    return @{
        @"dataModel": @{
            @"abstract": @"获取UICalendarView的方法setVisibleDateComponents:animated:",
            @"title": @"- (void)setVisibleDateComponents:(NSDateComponents *)dateComponents animated:(BOOL)animated;",
            @"isDataModelExpand": @(YES),
            @"desc": @"只展示年月日，如果NSDateComponents没有设置某个刻度，则视图会跳到最初始的日期，如没有设置月份，则会跳到1月份\n如果设置了年份，则选择器可以选择年和月，不能选择日；没设置只能选择月份和日期",
            @"dataModel": @{
                @"childItems": [self TestProjectCalendarView_setVisibleDateComponents_animated:index],
            }
        },
    };
}

- (NSMutableArray *)TestProjectCalendarView_setVisibleDateComponents_animated:(NSInteger)index {
    WS(wSelf);
    [self createTableModelWithMethodBlock:^NSString * _Nonnull{
        NSDateComponents *dateComponents;
        if (@available(iOS 16.0, *)) {
            dateComponents = [wSelf.childCalendarView.calendar components:NSCalendarUnitDay | NSCalendarUnitYear fromDate:[NSDate date]];
            [wSelf.childCalendarView setVisibleDateComponents:dateComponents animated:YES];
        } else {
            // Fallback on earlier versions
        }
        return [NSString stringWithFormat:@"%@", dateComponents];
    } title:@"setVisibleDateComponents" index:index];
    return self.dataMutArr;
}

- (NSMutableArray *)TestProjectCalendarView_property_wantsDateDecorations {
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
        [self createClickSetTableModelWithProperty:@"wantsDateDecorations" value:value title:title block:nil];
    }
    return self.dataMutArr;
}

- (NSMutableArray *)TestProjectCalendarView_property_visibleDateComponents {
    return [self createTableModelSingleArrayWithProperty:@"visibleDateComponents" value:nil];
}

- (NSMutableArray *)TestProjectCalendarView_property_availableDateRange {
    NSDate *date = [NSDate date];
    NSDate *startDate = [date dateByAddingTimeInterval:-5 * 365 * 24 *3600];
    NSDateInterval *dateInterval = [[NSDateInterval alloc] initWithStartDate:startDate duration:10 * 365 * 24 *3600];
    return [self createClickSetSingleArrayTableModelWithProperty:@"availableDateRange" value:dateInterval];
}

- (NSMutableArray *)TestProjectCalendarView_property_fontDesign {
    return [self createTableModelSingleArrayWithProperty:@"fontDesign" value:nil];
}

- (NSMutableArray *)TestProjectCalendarView_property_timeZone {
    return [self createTableModelSingleArrayWithProperty:@"timeZone" value:nil];
}

- (NSMutableArray *)TestProjectCalendarView_property_calendar {
    return [self createTableModelSingleArrayWithProperty:@"calendar" value:nil];
}

- (NSMutableArray *)TestProjectCalendarView_property_locale {
    return [self createTableModelSingleArrayWithProperty:@"locale" value:nil];
}

- (NSMutableArray *)TestProjectCalendarView_property_selectionBehavior {
    return [self createTableModelSingleArrayWithProperty:@"selectionBehavior" value:nil];
}

- (NSMutableArray *)TestProjectCalendarView_property_delegate {
    return [self createTableModelSingleArrayWithProperty:@"delegate" value:nil];
}

@end
