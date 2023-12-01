//
//  TestProjectUICalendarSelectionSingleDate.m
//  TestProjectIOS
//
//  Created by liwenfan on 2023/7/17.
//

#import "TestProjectUICalendarSelectionSingleDate.h"

API_AVAILABLE(ios(16.0))
@interface TestProjectUICalendarSelectionSingleDate () <UICalendarSelectionSingleDateDelegate>

@property (nonatomic, strong) UICalendarSelectionSingleDate *singleDate;
@property (nonatomic, strong) UICalendarView *calendarView;

@end

API_AVAILABLE(ios(16.0))
@implementation TestProjectUICalendarSelectionSingleDate

- (instancetype)initCreate {
    if (self = [super initCreate]) {
        [self.tableView testproject_updateConstraints:^(TestProjectViewConstrainMake * _Nonnull make) {
            make.height.equal(self).offset(-350);
        }];
        self.calendarView.selectionBehavior = self.singleDate;
    }
    return self;
}

- (UICalendarView *)calendarView {
    if (!_calendarView) {
        _calendarView = [[UICalendarView alloc] init];
        [self addSubview:_calendarView];
        [_calendarView testproject_makeConstraints:^(TestProjectViewConstrainMake * _Nonnull make) {
            make.top.leading.trainling.equal(self);
            make.height.equal(@350);
        }];
    }
    return _calendarView;
}

- (UICalendarSelectionSingleDate *)singleDate {
    if (!_singleDate) {
        _singleDate = [[UICalendarSelectionSingleDate alloc] initWithDelegate:self];
    }
    return _singleDate;
}

- (id)setPropertyValueObject:(TestProjectTableViewParams *)params {
    return self.singleDate;
}

#pragma mark - UICalendarSelectionSingleDateDelegate
- (BOOL)dateSelection:(UICalendarSelectionSingleDate *)selection canSelectDate:(NSDateComponents *)dateComponents {
    NSLog(@"%@ canSelectDate:%@", NSStringFromSelector(_cmd), dateComponents);
    return NO;
}

- (NSMutableArray *)TestProjectCalendarSelectionSingleDate_UICalendarSelectionSingleDateDelegate_dateSelection_canSelectDate:(TestProjectTableViewParams *)params {
    return [self createModelSingleArrayWithParams:params title:nil block:nil];
}

- (NSDictionary *)method_6:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"执行UICalendarSelectionSingleDate的UICalendarSelectionSingleDateDelegate方法",
            @"title": @"- (BOOL)dateSelection:(UICalendarSelectionSingleDate *)selection canSelectDate:(nullable NSDateComponents *)dateComponents;",
            @"isDataModelExpand": @(YES),
            @"desc": @"点击UICalendarView选中日期进行返回，设置属性selectedDate不会回调；\n切换日期页面当月的日期都会执行回调一遍；\n当返回NO的时候则这个日期不能被点击选中，但仍然可以设置属性selectedDate；",
            @"dataModel": @{
                @"childItems": [self TestProjectCalendarSelectionSingleDate_UICalendarSelectionSingleDateDelegate_dateSelection_canSelectDate:params],
            }
        },
    };
}

- (void)dateSelection:(UICalendarSelectionSingleDate *)selection didSelectDate:(nullable NSDateComponents *)dateComponents {
    NSLog(@"%@ didSelectDate:%@", NSStringFromSelector(_cmd), dateComponents);
}

- (NSMutableArray *)TestProjectCalendarSelectionSingleDate_UICalendarSelectionSingleDateDelegate_dateSelection_didSelectDate:(TestProjectTableViewParams *)params {
    return [self createModelSingleArrayWithParams:params title:nil block:nil];
}

- (NSDictionary *)method_5:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"执行UICalendarSelectionSingleDate的UICalendarSelectionSingleDateDelegate方法",
            @"title": @"- (void)dateSelection:(UICalendarSelectionSingleDate *)selection didSelectDate:(nullable NSDateComponents *)dateComponents;",
            @"isDataModelExpand": @(YES),
            @"desc": @"点击UICalendarView选中日期进行返回，设置属性selectedDate不会回调",
            @"dataModel": @{
                @"childItems": [self TestProjectCalendarSelectionSingleDate_UICalendarSelectionSingleDateDelegate_dateSelection_didSelectDate:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectCalendarSelectionSingleDate_initWithDelegate:(TestProjectTableViewParams *)params {
    return [self createModelSingleArrayWithParams:params title:nil block:nil];
}

- (NSDictionary *)method_4:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"执行UICalendarSelectionSingleDate的方法，通过UICalendarSelectionSingleDateDelegate设置实例对象",
            @"title": @"- (instancetype)initWithDelegate:(nullable id<UICalendarSelectionSingleDateDelegate>)delegate;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectCalendarSelectionSingleDate_initWithDelegate:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectCalendarSelectionSingleDate_setSelectedDate_animated:(TestProjectTableViewParams *)params {
    NSArray *arr = @[
        @{
            @"title": @"设置的属性是YES, 需要动画",
            @"value": @(YES),
        },
        @{
            @"title": @"设置的属性是NO, 不需要动画",
            @"value": @(NO),
        },
    ];
    NSDateComponents *dateComponents = [[NSDateComponents alloc] init];
    dateComponents.year = 1993;
    dateComponents.month = 11;
    dateComponents.day = 12;
    WS(wSelf);
    for (NSDictionary *dic in arr) {
        NSString *title = dic[@"title"];
        NSNumber *value = dic[@"value"];
        [self createModelSingleArrayWithParams:params title:[NSString stringWithFormat:@"%@_%@", title, dateComponents] methodBlock:^NSString * _Nonnull{
            [wSelf.singleDate setSelectedDate:dateComponents animated:[value boolValue]];
            return nil;
        }];
    }
    return self.dataMutArr;
}

- (NSDictionary *)method_3:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"执行UICalendarSelectionSingleDate的方法，设置选中的日期",
            @"title": @"- (void)setSelectedDate:(nullable NSDateComponents *)selectedDate animated:(BOOL)animated;",
            @"isDataModelExpand": @(YES),
            @"desc": @"@param selectedDate:要设置的选中的日期\n@param animated:是否要动画",
            @"dataModel": @{
                @"childItems": [self TestProjectCalendarSelectionSingleDate_setSelectedDate_animated:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectCalendarSelectionSingleDate_property_selectedDate:(TestProjectTableViewParams *)params {
    NSDateComponents *dateComponents = [[NSDateComponents alloc] init];
    dateComponents.year = 1993;
    dateComponents.month = 11;
    dateComponents.day = 12;

    return [self createModelSingleArrayWithParams:params
                                         property:@"selectedDate"
                                            value:dateComponents
                                        operation:TestProjectCreateModelGetBeforClickGetBeforeClickSet
                                            block:nil];
}

- (NSDictionary *)method_2:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"设置获取UICalendarSelectionSingleDate的属性selectedDate, 获取选中或者设置选中的日期",
            @"title": @"@property (nonatomic, copy, nullable) NSDateComponents *selectedDate;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectCalendarSelectionSingleDate_property_selectedDate:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectCalendarSelectionSingleDate_property_delegate:(TestProjectTableViewParams *)params {
    return [self createModelSingleArrayWithParams:params
                                         property:@"delegate"
                                            value:nil
                                        operation:TestProjectCreateModelOnlyGet
                                            block:nil];
}

- (NSDictionary *)method_1:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"设置获取UICalendarSelectionSingleDate的属性delegate",
            @"title": @"@property (nonatomic, weak, nullable, readonly) id<UICalendarSelectionSingleDateDelegate> delegate;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectCalendarSelectionSingleDate_property_delegate:params],
            }
        },
    };
}

@end
