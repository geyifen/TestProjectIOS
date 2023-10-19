//
//  TestProjectCalendarSelectionMultiDate.m
//  TestProjectIOS
//
//  Created by liwenfan on 2023/7/17.
//

#import "TestProjectCalendarSelectionMultiDate.h"

API_AVAILABLE(ios(16.0))
@interface TestProjectCalendarSelectionMultiDate () <UICalendarSelectionMultiDateDelegate>

@property (nonatomic, strong) UICalendarSelectionMultiDate *multiDate;
@property (nonatomic, strong) UICalendarView *calendarView;

@end

API_AVAILABLE(ios(16.0))
@implementation TestProjectCalendarSelectionMultiDate

- (instancetype)initCreate {
    if (self = [super initCreate]) {
        [self.tableView testproject_updateConstraints:^(TestProjectViewConstrainMake * _Nonnull make) {
            make.height.equal(self).offset(-350);
        }];
        self.calendarView.selectionBehavior = self.multiDate;
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

- (UICalendarSelectionMultiDate *)multiDate {
    if (!_multiDate) {
        _multiDate = [[UICalendarSelectionMultiDate alloc] initWithDelegate:self];
    }
    return _multiDate;
}

- (id)setPropertyValueObject {
    return self.multiDate;
}

- (NSDictionary *)method_1:(NSInteger)index {
    return @{
        @"dataModel": @{
            @"abstract": @"设置获取UICalendarSelectionMultiDate的属性delegate",
            @"title": @"@property (nonatomic, weak, nullable, readonly) id<UICalendarSelectionMultiDateDelegate> delegate;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectCalendarSelectionMultiDate_property_delegate:index],
            }
        },
    };
}

- (NSMutableArray *)TestProjectCalendarSelectionMultiDate_property_delegate:(NSInteger)index {
    return [self createModelSingleArrayWithIndex:index
                                        property:@"delegate"
                                           value:nil
                                       operation:TestProjectCreateModelOnlyGet
                                           block:nil];
}

- (NSDictionary *)method_2:(NSInteger)index {
    return @{
        @"dataModel": @{
            @"abstract": @"设置获取UICalendarSelectionMultiDate的属性selectedDates, 获取选中或者设置选中的日期",
            @"title": @"@property (nonatomic, copy) NSArray<NSDateComponents *> *selectedDates;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectCalendarSelectionMultiDate_property_selectedDates:index],
            }
        },
    };
}

- (NSMutableArray *)TestProjectCalendarSelectionMultiDate_property_selectedDates:(NSInteger)index {
    NSMutableArray *mutArr = [NSMutableArray array];
    for (NSInteger i = 1; i <= 12; i++) {
        NSDateComponents *dateComponents = [[NSDateComponents alloc] init];
        dateComponents.year = 1993;
        dateComponents.month = 11;
        dateComponents.day = i * 2;
        [mutArr addObject:dateComponents];
    }

    return [self createModelSingleArrayWithIndex:index
                                        property:@"selectedDates"
                                           value:mutArr
                                       operation:TestProjectCreateModelGetBeforClickGetBeforeClickSet
                                           block:nil];
}

- (NSDictionary *)method_3:(NSInteger)index {
    return @{
        @"dataModel": @{
            @"abstract": @"执行UICalendarSelectionMultiDate的方法，设置选中的日期",
            @"title": @"- (void)setSelectedDates:(NSArray<NSDateComponents *> *)selectedDates animated:(BOOL)animated;",
            @"isDataModelExpand": @(YES),
            @"desc": @"@param selectedDate:要设置的选中的日期\n@param animated:是否要动画，但看起来是没有效果的",
            @"dataModel": @{
                @"childItems": [self TestProjectCalendarSelectionMultiDate_setSelectedDates_animated:index],
            }
        },
    };
}

- (NSMutableArray *)TestProjectCalendarSelectionMultiDate_setSelectedDates_animated:(NSInteger)index {
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
    NSMutableArray *mutArr = [NSMutableArray array];
    for (NSInteger i = 1; i <= 12; i++) {
        NSDateComponents *dateComponents = [[NSDateComponents alloc] init];
        dateComponents.year = 1993;
        dateComponents.month = 11;
        dateComponents.day = i * 2;
        [mutArr addObject:dateComponents];
    }

    WS(wSelf);
    for (NSDictionary *dic in arr) {
        NSString *title = dic[@"title"];
        NSNumber *value = dic[@"value"];
        [self createModelSingleArrayWithIndex:index title:[NSString stringWithFormat:@"%@_%@", title, mutArr] methodBlock:^NSString * _Nonnull{
            [wSelf.multiDate setSelectedDates:mutArr animated:[value boolValue]];
            return nil;
        }];
    }
    return self.dataMutArr;
}

- (NSDictionary *)method_4:(NSInteger)index {
    return @{
        @"dataModel": @{
            @"abstract": @"执行UICalendarSelectionMultiDate的方法，通过UICalendarSelectionMultiDateDelegate设置实例对象",
            @"title": @"- (instancetype)initWithDelegate:(nullable id<UICalendarSelectionMultiDateDelegate>)delegate;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectCalendarSelectionMultiDate_initWithDelegate:index],
            }
        },
    };
}

- (NSMutableArray *)TestProjectCalendarSelectionMultiDate_initWithDelegate:(NSInteger)index {
    return [self createModelSingleArrayWithIndex:index title:nil block:nil];
}

#pragma mark - UICalendarSelectionMultiDateDelegate
- (void)multiDateSelection:(UICalendarSelectionMultiDate *)selection didSelectDate:(NSDateComponents *)dateComponents {
    NSLog(@"%@ dateComponents:%@", NSStringFromSelector(_cmd), dateComponents);
}

- (NSDictionary *)method_5:(NSInteger)index {
    return @{
        @"dataModel": @{
            @"abstract": @"执行UICalendarSelectionMultiDate的UICalendarSelectionMultiDateDelegate方法，选中日期的回调",
            @"title": @"- (void)multiDateSelection:(UICalendarSelectionMultiDate *)selection didSelectDate:(NSDateComponents *)dateComponents;",
            @"isDataModelExpand": @(YES),
            @"desc": @"点击UICalendarView选中日期进行返回，设置属性selectedDates不会回调",
            @"dataModel": @{
                @"childItems": [self TestProjectCalendarSelectionMultiDate_UICalendarSelectionMultiDateDelegate_multiDateSelection_didSelectDate:index],
            }
        },
    };
}

- (NSMutableArray *)TestProjectCalendarSelectionMultiDate_UICalendarSelectionMultiDateDelegate_multiDateSelection_didSelectDate:(NSInteger)index {
    return [self createModelSingleArrayWithIndex:index title:nil block:nil];
}

- (void)multiDateSelection:(UICalendarSelectionMultiDate *)selection didDeselectDate:(NSDateComponents *)dateComponents {
    NSLog(@"%@ dateComponents:%@", NSStringFromSelector(_cmd), dateComponents);
}

- (NSDictionary *)method_6:(NSInteger)index {
    return @{
        @"dataModel": @{
            @"abstract": @"执行UICalendarSelectionMultiDate的UICalendarSelectionMultiDateDelegate方法，取消选中的回调",
            @"title": @"- (void)multiDateSelection:(UICalendarSelectionMultiDate *)selection didDeselectDate:(NSDateComponents *)dateComponents;",
            @"isDataModelExpand": @(YES),
            @"desc": @"点击UICalendarView已经被选中日期进行取消选中回调，设置属性selectedDate不会回调；",
            @"dataModel": @{
                @"childItems": [self TestProjectCalendarSelectionMultiDate_UICalendarSelectionMultiDateDelegate_multiDateSelection_didDeselectDate:index],
            }
        },
    };
}

- (NSMutableArray *)TestProjectCalendarSelectionMultiDate_UICalendarSelectionMultiDateDelegate_multiDateSelection_didDeselectDate:(NSInteger)index {
    return [self createModelSingleArrayWithIndex:index title:nil block:nil];
}

- (BOOL)multiDateSelection:(UICalendarSelectionMultiDate *)selection canSelectDate:(NSDateComponents *)dateComponents {
    NSLog(@"%@ dateComponents:%@", NSStringFromSelector(_cmd), dateComponents);
    return YES;
}

- (NSDictionary *)method_7:(NSInteger)index {
    return @{
        @"dataModel": @{
            @"abstract": @"执行UICalendarSelectionMultiDate的UICalendarSelectionMultiDateDelegate方法，判断是否能被选中的回调",
            @"title": @"- (BOOL)multiDateSelection:(UICalendarSelectionMultiDate *)selection canSelectDate:(NSDateComponents *)dateComponents;",
            @"isDataModelExpand": @(YES),
            @"desc": @"点击UICalendarView选中日期进行返回，设置属性selectedDate不会回调；\n切换日期页面当月的日期都会执行回调一遍；\n当返回NO的时候则这个日期不能被点击选中，但仍然可以设置属性selectedDate；",
            @"dataModel": @{
                @"childItems": [self TestProjectCalendarSelectionMultiDate_UICalendarSelectionMultiDateDelegate_multiDateSelection_canSelectDate:index],
            }
        },
    };
}

- (NSMutableArray *)TestProjectCalendarSelectionMultiDate_UICalendarSelectionMultiDateDelegate_multiDateSelection_canSelectDate:(NSInteger)index {
    return [self createModelSingleArrayWithIndex:index title:nil block:nil];
}

- (BOOL)multiDateSelection:(UICalendarSelectionMultiDate *)selection canDeselectDate:(NSDateComponents *)dateComponents {
    NSLog(@"%@ dateComponents:%@", NSStringFromSelector(_cmd), dateComponents);
    return YES;
}

- (NSDictionary *)method_8:(NSInteger)index {
    return @{
        @"dataModel": @{
            @"abstract": @"执行UICalendarSelectionMultiDate的UICalendarSelectionMultiDateDelegate方法，判断是否能被取消选中的回调",
            @"title": @"- (BOOL)multiDateSelection:(UICalendarSelectionMultiDate *)selection canDeselectDate:(NSDateComponents *)dateComponents;",
            @"isDataModelExpand": @(YES),
            @"desc": @"点击UICalendarView取消选中日期的回调，设置属性selectedDate不会回调；\n当返回NO的时候则这个日期不能被点击选中，但仍然可以设置属性selectedDate；",
            @"dataModel": @{
                @"childItems": [self TestProjectCalendarSelectionMultiDate_UICalendarSelectionMultiDateDelegate_multiDateSelection_canDeselectDate:index],
            }
        },
    };
}

- (NSMutableArray *)TestProjectCalendarSelectionMultiDate_UICalendarSelectionMultiDateDelegate_multiDateSelection_canDeselectDate:(NSInteger)index {
    return [self createModelSingleArrayWithIndex:index title:nil block:nil];
}

@end
