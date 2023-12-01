//
//  TestProjectNSExtendedDate.m
//  TestProjectIOS
//
//  Created by liwenfan on 2023/6/14.
//

#import "TestProjectNSExtendedDate.h"

@interface TestProjectNSExtendedDate ()

@property (nonatomic, strong) NSDate *childDate;

@end

@implementation TestProjectNSExtendedDate

- (id)setPropertyValueObject:(TestProjectTableViewParams *)params {
    return self.childDate;
}

- (NSDate *)childDate {
    if (!_childDate) {
        _childDate = [NSDate date];
    }
    return _childDate;
}

- (NSMutableArray *)TestProjectExtendedDate_class_property_timeIntervalSinceReferenceDate:(TestProjectTableViewParams *)params {
    NSTimeInterval interval = [NSDate timeIntervalSinceReferenceDate];
    return [self createModelSingleArrayWithParams:params title:[NSString stringWithFormat:@"interval:%f", interval] block:nil];
}

- (NSDictionary *)method_10:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"获取NSDate的class属性timeIntervalSinceReferenceDate 返回的是2021.01.01号到当前的时间差",
            @"title": @"@property (class, readonly) NSTimeInterval timeIntervalSinceReferenceDate;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectExtendedDate_class_property_timeIntervalSinceReferenceDate:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectExtendedDate_descriptionWithLocale:(TestProjectTableViewParams *)params {
    NSString *result = [self.childDate descriptionWithLocale:[NSLocale currentLocale]];
    return [self createModelSingleArrayWithParams:params title:[NSString stringWithFormat:@"childDate:%@ result:%@", self.childDate, result] block:nil];
}

- (NSDictionary *)method_9:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"执行NSDate的方法descriptionWithLocale:",
            @"title": @"- (NSString *)descriptionWithLocale:(nullable id)locale;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectExtendedDate_descriptionWithLocale:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectExtendedDate_isEqualToDate:(TestProjectTableViewParams *)params {
    NSDate *date = [NSDate dateWithTimeIntervalSinceNow:0];
    BOOL result = [self.childDate isEqualToDate:date];
    return [self createModelSingleArrayWithParams:params title:[NSString stringWithFormat:@"childDate:%@ date:%@ result:%u", self.childDate, date, result] block:nil];
}

- (NSDictionary *)method_8:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"执行NSDate的方法isEqualToDate: 不同的对象，但日期是相同的返回的也是false",
            @"title": @"- (BOOL)isEqualToDate:(NSDate *)otherDate;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectExtendedDate_isEqualToDate:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectExtendedDate_compare:(TestProjectTableViewParams *)params {
    NSDate *date = [NSDate dateWithTimeIntervalSinceNow:24 * 3600];
    NSComparisonResult result = [self.childDate compare:date];
    return [self createModelSingleArrayWithParams:params title:[NSString stringWithFormat:@"childDate:%@ date:%@ result:%ld", self.childDate, date, result] block:nil];
}

- (NSDictionary *)method_7:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"执行NSDate的方法compare: 比较两个日期的大小",
            @"title": @"- (NSComparisonResult)compare:(NSDate *)other;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectExtendedDate_compare:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectExtendedDate_laterDate:(TestProjectTableViewParams *)params {
    NSDate *date = [NSDate dateWithTimeIntervalSinceNow:24 * 3600];
    NSDate *laterDate = [date laterDate:self.childDate];
    return [self createModelSingleArrayWithParams:params title:[NSString stringWithFormat:@"childDate:%@ date:%@ laterDate:%@", self.childDate, date, laterDate] block:nil];
}

- (NSDictionary *)method_6:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"执行NSDate的方法laterDate: 比较两个时间的早晚，返回晚的时间",
            @"title": @"- (NSDate *)laterDate:(NSDate *)anotherDate;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectExtendedDate_laterDate:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectExtendedDate_earlierDate:(TestProjectTableViewParams *)params {
    NSDate *date = [NSDate dateWithTimeIntervalSinceNow:24 * 3600];
    NSDate *earlierDate = [date earlierDate:self.childDate];
    return [self createModelSingleArrayWithParams:params title:[NSString stringWithFormat:@"childDate:%@ date:%@ earlierDate:%@", self.childDate, date, earlierDate] block:nil];
}

- (NSDictionary *)method_5:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"执行NSDate的方法earlierDate: 比较两个时间的早晚，返回早的时间",
            @"title": @"- (NSDate *)earlierDate:(NSDate *)anotherDate;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectExtendedDate_earlierDate:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectExtendedDate_dateByAddingTimeInterval:(TestProjectTableViewParams *)params {
    NSDate *date = [self.childDate dateByAddingTimeInterval:24 * 3600];
    return [self createModelSingleArrayWithParams:params title:[NSString stringWithFormat:@"childDate:%@ date:%@", self.childDate, date] block:nil];
}

- (NSDictionary *)method_4:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"执行NSDate的方法dateByAddingTimeInterval: 通过时间差初始化NSDate",
            @"title": @"- (instancetype)dateByAddingTimeInterval:(NSTimeInterval)ti API_AVAILABLE(macos(10.6), ios(2.0), watchos(2.0), tvos(9.0));",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectExtendedDate_dateByAddingTimeInterval:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectExtendedDate_property_timeIntervalSince1970:(TestProjectTableViewParams *)params {
    return [self createModelSingleArrayWithParams:params
                                         property:@"timeIntervalSince1970"
                                            value:nil
                                        operation:TestProjectCreateModelGetBeforeClickGet
                                            block:nil];
}

- (NSDictionary *)method_3:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"获取NSDate的属性timeIntervalSince1970, 该时间与1970时间的时间差值",
            @"title": @"@property (readonly) NSTimeInterval timeIntervalSince1970;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectExtendedDate_property_timeIntervalSince1970:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectExtendedDate_property_timeIntervalSinceNow:(TestProjectTableViewParams *)params {
    return [self createModelSingleArrayWithParams:params
                                         property:@"timeIntervalSinceNow"
                                            value:nil
                                        operation:TestProjectCreateModelGetBeforeClickGet
                                            block:nil];
}

- (NSDictionary *)method_2:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"获取NSDate的属性timeIntervalSinceNow, 该时间与当前时间的时间差值",
            @"title": @"@property (readonly) NSTimeInterval timeIntervalSinceNow;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectExtendedDate_property_timeIntervalSinceNow:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectExtendedDate_timeIntervalSinceDate:(TestProjectTableViewParams *)params {
    NSDate *date = [NSDate dateWithTimeIntervalSinceNow:24 * 3600];
    NSTimeInterval interval = [self.childDate timeIntervalSinceDate:date];
    return [self createModelSingleArrayWithParams:params title:[NSString stringWithFormat:@"childDate:%@ date:%@ 时间差:%f", self.childDate, date, interval] block:nil];
}

- (NSDictionary *)method_1:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"执行NSDate的方法timeIntervalSinceDate:",
            @"title": @"- (NSTimeInterval)timeIntervalSinceDate:(NSDate *)anotherDate;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectExtendedDate_timeIntervalSinceDate:params],
            }
        },
    };
}

@end
