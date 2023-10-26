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

- (id)setPropertyValueObject {
    return self.childDate;
}

- (NSDate *)childDate {
    if (!_childDate) {
        _childDate = [NSDate date];
    }
    return _childDate;
}

- (NSDictionary *)method_1 {
    return @{
        @"dataModel": @{
            @"abstract": @"执行NSDate的方法timeIntervalSinceDate:",
            @"title": @"- (NSTimeInterval)timeIntervalSinceDate:(NSDate *)anotherDate;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectExtendedDate_timeIntervalSinceDate],
            }
        },
    };
}

- (NSDictionary *)method_2 {
    return @{
        @"dataModel": @{
            @"abstract": @"获取NSDate的属性timeIntervalSinceNow, 该时间与当前时间的时间差值",
            @"title": @"@property (readonly) NSTimeInterval timeIntervalSinceNow;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectExtendedDate_property_timeIntervalSinceNow],
            }
        },
    };
}

- (NSDictionary *)method_3 {
    return @{
        @"dataModel": @{
            @"abstract": @"获取NSDate的属性timeIntervalSince1970, 该时间与1970时间的时间差值",
            @"title": @"@property (readonly) NSTimeInterval timeIntervalSince1970;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectExtendedDate_property_timeIntervalSince1970],
            }
        },
    };
}

- (NSDictionary *)method_4 {
    return @{
        @"dataModel": @{
            @"abstract": @"执行NSDate的方法dateByAddingTimeInterval: 通过时间差初始化NSDate",
            @"title": @"- (instancetype)dateByAddingTimeInterval:(NSTimeInterval)ti API_AVAILABLE(macos(10.6), ios(2.0), watchos(2.0), tvos(9.0));",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectExtendedDate_dateByAddingTimeInterval],
            }
        },
    };
}

- (NSDictionary *)method_5 {
    return @{
        @"dataModel": @{
            @"abstract": @"执行NSDate的方法earlierDate: 比较两个时间的早晚，返回早的时间",
            @"title": @"- (NSDate *)earlierDate:(NSDate *)anotherDate;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectExtendedDate_earlierDate],
            }
        },
    };
}

- (NSDictionary *)method_6 {
    return @{
        @"dataModel": @{
            @"abstract": @"执行NSDate的方法laterDate: 比较两个时间的早晚，返回晚的时间",
            @"title": @"- (NSDate *)laterDate:(NSDate *)anotherDate;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectExtendedDate_laterDate],
            }
        },
    };
}

- (NSDictionary *)method_7 {
    return @{
        @"dataModel": @{
            @"abstract": @"执行NSDate的方法compare: 比较两个日期的大小",
            @"title": @"- (NSComparisonResult)compare:(NSDate *)other;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectExtendedDate_compare],
            }
        },
    };
}

- (NSDictionary *)method_8 {
    return @{
        @"dataModel": @{
            @"abstract": @"执行NSDate的方法isEqualToDate: 不同的对象，但日期是相同的返回的也是false",
            @"title": @"- (BOOL)isEqualToDate:(NSDate *)otherDate;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectExtendedDate_isEqualToDate],
            }
        },
    };
}

- (NSDictionary *)method_9 {
    return @{
        @"dataModel": @{
            @"abstract": @"执行NSDate的方法descriptionWithLocale:",
            @"title": @"- (NSString *)descriptionWithLocale:(nullable id)locale;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectExtendedDate_descriptionWithLocale],
            }
        },
    };
}

- (NSDictionary *)method_10 {
    return @{
        @"dataModel": @{
            @"abstract": @"获取NSDate的class属性timeIntervalSinceReferenceDate 返回的是2021.01.01号到当前的时间差",
            @"title": @"@property (class, readonly) NSTimeInterval timeIntervalSinceReferenceDate;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectExtendedDate_class_property_timeIntervalSinceReferenceDate],
            }
        },
    };
}

- (NSMutableArray *)TestProjectExtendedDate_class_property_timeIntervalSinceReferenceDate {
    NSTimeInterval interval = [NSDate timeIntervalSinceReferenceDate];
    return [self createTableModelSingleArrayWithTitle:[NSString stringWithFormat:@"interval:%f", interval] block:nil];
}

- (NSMutableArray *)TestProjectExtendedDate_descriptionWithLocale {
    NSString *result = [self.childDate descriptionWithLocale:[NSLocale currentLocale]];
    return [self createTableModelSingleArrayWithTitle:[NSString stringWithFormat:@"childDate:%@ result:%@", self.childDate, result] block:nil];
}

- (NSMutableArray *)TestProjectExtendedDate_isEqualToDate {
    NSDate *date = [NSDate dateWithTimeIntervalSinceNow:0];
    BOOL result = [self.childDate isEqualToDate:date];
    return [self createTableModelSingleArrayWithTitle:[NSString stringWithFormat:@"childDate:%@ date:%@ result:%u", self.childDate, date, result] block:nil];
}

- (NSMutableArray *)TestProjectExtendedDate_compare {
    NSDate *date = [NSDate dateWithTimeIntervalSinceNow:24 * 3600];
    NSComparisonResult result = [self.childDate compare:date];
    return [self createTableModelSingleArrayWithTitle:[NSString stringWithFormat:@"childDate:%@ date:%@ result:%ld", self.childDate, date, result] block:nil];
}

- (NSMutableArray *)TestProjectExtendedDate_laterDate {
    NSDate *date = [NSDate dateWithTimeIntervalSinceNow:24 * 3600];
    NSDate *laterDate = [date laterDate:self.childDate];
    return [self createTableModelSingleArrayWithTitle:[NSString stringWithFormat:@"childDate:%@ date:%@ laterDate:%@", self.childDate, date, laterDate] block:nil];
}

- (NSMutableArray *)TestProjectExtendedDate_earlierDate {
    NSDate *date = [NSDate dateWithTimeIntervalSinceNow:24 * 3600];
    NSDate *earlierDate = [date earlierDate:self.childDate];
    return [self createTableModelSingleArrayWithTitle:[NSString stringWithFormat:@"childDate:%@ date:%@ earlierDate:%@", self.childDate, date, earlierDate] block:nil];
}

- (NSMutableArray *)TestProjectExtendedDate_dateByAddingTimeInterval {
    NSDate *date = [self.childDate dateByAddingTimeInterval:24 * 3600];
    return [self createTableModelSingleArrayWithTitle:[NSString stringWithFormat:@"childDate:%@ date:%@", self.childDate, date] block:nil];
}

- (NSMutableArray *)TestProjectExtendedDate_property_timeIntervalSince1970 {
    return [self createTableModelSingleArrayWithProperty:@"timeIntervalSince1970" value:nil];
}

- (NSMutableArray *)TestProjectExtendedDate_property_timeIntervalSinceNow {
    return [self createTableModelSingleArrayWithProperty:@"timeIntervalSinceNow" value:nil];
}

- (NSMutableArray *)TestProjectExtendedDate_timeIntervalSinceDate {
    NSDate *date = [NSDate dateWithTimeIntervalSinceNow:24 * 3600];
    NSTimeInterval interval = [self.childDate timeIntervalSinceDate:date];
    return [self createTableModelSingleArrayWithTitle:[NSString stringWithFormat:@"childDate:%@ date:%@ 时间差:%f", self.childDate, date, interval] block:nil];
}

@end
