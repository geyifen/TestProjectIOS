//
//  TestProjectNSDateCreation.m
//  TestProjectIOS
//
//  Created by liwenfan on 2023/6/14.
//

#import "TestProjectNSDateCreation.h"

@implementation TestProjectNSDateCreation

- (NSDictionary *)method_1 {
    return @{
        @"dataModel": @{
            @"abstract": @"执行NSDate的class方法date 获取当前的时间",
            @"title": @"+ (instancetype)date;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectDateCreation_class_date],
            }
        },
    };
}

- (NSDictionary *)method_2 {
    return @{
        @"dataModel": @{
            @"abstract": @"执行NSDate的class方法dateWithTimeIntervalSinceNow: 在当前的时间上加上时间差返回新的NSDate",
            @"title": @"+ (instancetype)dateWithTimeIntervalSinceNow:(NSTimeInterval)secs;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectDateCreation_class_dateWithTimeIntervalSinceNow],
            }
        },
    };
}

- (NSDictionary *)method_3 {
    return @{
        @"dataModel": @{
            @"abstract": @"执行NSDate的class方法dateWithTimeIntervalSinceReferenceDate: 在2001时间上加上时间差返回新的NSDate",
            @"title": @"+ (instancetype)dateWithTimeIntervalSinceReferenceDate:(NSTimeInterval)ti;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectDateCreation_class_dateWithTimeIntervalSinceReferenceDate],
            }
        },
    };
}

- (NSDictionary *)method_4 {
    return @{
        @"dataModel": @{
            @"abstract": @"执行NSDate的class方法dateWithTimeIntervalSince1970: 在1970时间上加上时间差返回新的NSDate",
            @"title": @"+ (instancetype)dateWithTimeIntervalSince1970:(NSTimeInterval)secs;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectDateCreation_class_dateWithTimeIntervalSince1970],
            }
        },
    };
}

- (NSDictionary *)method_5 {
    return @{
        @"dataModel": @{
            @"abstract": @"执行NSDate的class方法dateWithTimeInterval:sinceDate: 在指定的时间上加上时间差返回新的NSDate",
            @"title": @"+ (instancetype)dateWithTimeInterval:(NSTimeInterval)secsToBeAdded sinceDate:(NSDate *)date;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectDateCreation_class_dateWithTimeInterval_sinceDate],
            }
        },
    };
}

- (NSDictionary *)method_6 {
    return @{
        @"dataModel": @{
            @"abstract": @"获取NSDate的class属性distantFuture 未来时间",
            @"title": @"@property (class, readonly, copy) NSDate *distantFuture;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectDateCreation_class_property_distantFuture],
            }
        },
    };
}

- (NSDictionary *)method_7 {
    return @{
        @"dataModel": @{
            @"abstract": @"获取NSDate的class属性distantFuture 过去时间",
            @"title": @"@property (class, readonly, copy) NSDate *distantPast;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectDateCreation_class_property_distantPast],
            }
        },
    };
}

- (NSDictionary *)method_8 {
    return @{
        @"dataModel": @{
            @"abstract": @"获取NSDate的class属性now 当前时间",
            @"title": @"@property (class, readonly, copy) NSDate *now API_AVAILABLE(macos(10.15), ios(13.0), watchos(6.0), tvos(13.0));",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectDateCreation_class_property_now],
            }
        },
    };
}

- (NSDictionary *)method_9 {
    return @{
        @"dataModel": @{
            @"abstract": @"执行NSDate的方法initWithTimeIntervalSinceNow: 在当前的时间上加上时间差返回新的NSDate",
            @"title": @"- (instancetype)initWithTimeIntervalSinceNow:(NSTimeInterval)secs;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectDateCreation_alloc_initWithTimeIntervalSinceNow],
            }
        },
    };
}

- (NSDictionary *)method_10 {
    return @{
        @"dataModel": @{
            @"abstract": @"执行NSDate的方法initWithTimeIntervalSince1970: 在1970时间上加上时间差返回新的NSDate",
            @"title": @"- (instancetype)initWithTimeIntervalSince1970:(NSTimeInterval)secs;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectDateCreation_alloc_initWithTimeIntervalSince1970],
            }
        },
    };
}

- (NSDictionary *)method_11 {
    return @{
        @"dataModel": @{
            @"abstract": @"执行NSDate的方法initWithTimeInterval:sinceDate: 在指定的时间上加上时间差返回新的NSDate",
            @"title": @"- (instancetype)initWithTimeInterval:(NSTimeInterval)secsToBeAdded sinceDate:(NSDate *)date;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectDateCreation_alloc_initWithTimeInterval_sinceDate],
            }
        },
    };
}

- (NSMutableArray *)TestProjectDateCreation_alloc_initWithTimeInterval_sinceDate {
    NSDate *date = [[NSDate alloc] initWithTimeInterval:24 * 3600 sinceDate:[[NSDate date] dateByAddingTimeInterval:24 * 3600]];
    return [self createTableModelSingleArrayWithTitle:[NSString stringWithFormat:@"date:%@", date] block:nil];
}

- (NSMutableArray *)TestProjectDateCreation_alloc_initWithTimeIntervalSince1970 {
    NSDate *date = [[NSDate alloc] initWithTimeIntervalSince1970:24 * 3600];
    return [self createTableModelSingleArrayWithTitle:[NSString stringWithFormat:@"date:%@", date] block:nil];
}

- (NSMutableArray *)TestProjectDateCreation_alloc_initWithTimeIntervalSinceNow {
    NSDate *date = [[NSDate alloc] initWithTimeIntervalSinceNow:24 * 3600];
    return [self createTableModelSingleArrayWithTitle:[NSString stringWithFormat:@"date:%@", date] block:nil];
}

- (NSMutableArray *)TestProjectDateCreation_class_property_now {
    NSDate *date = [NSDate now];
    return [self createTableModelSingleArrayWithTitle:[NSString stringWithFormat:@"date:%@", date] block:nil];
}

- (NSMutableArray *)TestProjectDateCreation_class_property_distantPast {
    NSDate *date = [NSDate distantPast];
    return [self createTableModelSingleArrayWithTitle:[NSString stringWithFormat:@"date:%@", date] block:nil];
}

- (NSMutableArray *)TestProjectDateCreation_class_property_distantFuture {
    NSDate *date = [NSDate distantFuture];
    return [self createTableModelSingleArrayWithTitle:[NSString stringWithFormat:@"date:%@", date] block:nil];
}

- (NSMutableArray *)TestProjectDateCreation_class_dateWithTimeInterval_sinceDate {
    NSDate *date = [NSDate dateWithTimeInterval:24 * 3600 sinceDate:[[NSDate date] dateByAddingTimeInterval:24 * 3600]];
    return [self createTableModelSingleArrayWithTitle:[NSString stringWithFormat:@"date:%@", date] block:nil];
}

- (NSMutableArray *)TestProjectDateCreation_class_dateWithTimeIntervalSince1970 {
    NSDate *date = [NSDate dateWithTimeIntervalSince1970:24 * 3600];
    return [self createTableModelSingleArrayWithTitle:[NSString stringWithFormat:@"date:%@", date] block:nil];
}

- (NSMutableArray *)TestProjectDateCreation_class_dateWithTimeIntervalSinceReferenceDate {
    NSDate *date = [NSDate dateWithTimeIntervalSinceReferenceDate:24 * 3600];
    return [self createTableModelSingleArrayWithTitle:[NSString stringWithFormat:@"date:%@", date] block:nil];
}

- (NSMutableArray *)TestProjectDateCreation_class_dateWithTimeIntervalSinceNow {
    NSDate *date = [NSDate dateWithTimeIntervalSinceNow:24 * 3600];
    return [self createTableModelSingleArrayWithTitle:[NSString stringWithFormat:@"date:%@", date] block:nil];
}

- (NSMutableArray *)TestProjectDateCreation_class_date {
    NSDate *date = [NSDate date];
    return [self createTableModelSingleArrayWithTitle:[NSString stringWithFormat:@"date:%@", date] block:nil];
}

@end
