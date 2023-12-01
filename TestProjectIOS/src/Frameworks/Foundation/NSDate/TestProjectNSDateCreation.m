//
//  TestProjectNSDateCreation.m
//  TestProjectIOS
//
//  Created by liwenfan on 2023/6/14.
//

#import "TestProjectNSDateCreation.h"

@implementation TestProjectNSDateCreation

- (NSMutableArray *)TestProjectDateCreation_alloc_initWithTimeInterval_sinceDate:(TestProjectTableViewParams *)params {
    NSDate *date = [[NSDate alloc] initWithTimeInterval:24 * 3600 sinceDate:[[NSDate date] dateByAddingTimeInterval:24 * 3600]];
    return [self createModelSingleArrayWithParams:params
                                            title:[NSString stringWithFormat:@"date:%@", date]
                                            block:nil];
}

- (NSDictionary *)method_11:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"执行NSDate的方法initWithTimeInterval:sinceDate: 在指定的时间上加上时间差返回新的NSDate",
            @"title": @"- (instancetype)initWithTimeInterval:(NSTimeInterval)secsToBeAdded sinceDate:(NSDate *)date;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectDateCreation_alloc_initWithTimeInterval_sinceDate:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectDateCreation_alloc_initWithTimeIntervalSince1970:(TestProjectTableViewParams *)params {
    NSDate *date = [[NSDate alloc] initWithTimeIntervalSince1970:24 * 3600];
    return [self createModelSingleArrayWithParams:params
                                            title:[NSString stringWithFormat:@"date:%@", date]
                                            block:nil];
}

- (NSDictionary *)method_10:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"执行NSDate的方法initWithTimeIntervalSince1970: 在1970时间上加上时间差返回新的NSDate",
            @"title": @"- (instancetype)initWithTimeIntervalSince1970:(NSTimeInterval)secs;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectDateCreation_alloc_initWithTimeIntervalSince1970:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectDateCreation_alloc_initWithTimeIntervalSinceNow:(TestProjectTableViewParams *)params {
    NSDate *date = [[NSDate alloc] initWithTimeIntervalSinceNow:24 * 3600];
    return [self createModelSingleArrayWithParams:params
                                            title:[NSString stringWithFormat:@"date:%@", date]
                                            block:nil];
}

- (NSDictionary *)method_9:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"执行NSDate的方法initWithTimeIntervalSinceNow: 在当前的时间上加上时间差返回新的NSDate",
            @"title": @"- (instancetype)initWithTimeIntervalSinceNow:(NSTimeInterval)secs;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectDateCreation_alloc_initWithTimeIntervalSinceNow:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectDateCreation_class_property_now:(TestProjectTableViewParams *)params {
    NSDate *date = [NSDate now];
    return [self createModelSingleArrayWithParams:params
                                            title:[NSString stringWithFormat:@"date:%@", date]
                                            block:nil];
}

- (NSDictionary *)method_8:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"获取NSDate的class属性now 当前时间",
            @"title": @"@property (class, readonly, copy) NSDate *now API_AVAILABLE(macos(10.15), ios(13.0), watchos(6.0), tvos(13.0));",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectDateCreation_class_property_now:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectDateCreation_class_property_distantPast:(TestProjectTableViewParams *)params {
    NSDate *date = [NSDate distantPast];
    return [self createModelSingleArrayWithParams:params
                                            title:[NSString stringWithFormat:@"date:%@", date]
                                            block:nil];
}

- (NSDictionary *)method_7:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"获取NSDate的class属性distantFuture 过去时间",
            @"title": @"@property (class, readonly, copy) NSDate *distantPast;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectDateCreation_class_property_distantPast:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectDateCreation_class_property_distantFuture:(TestProjectTableViewParams *)params {
    NSDate *date = [NSDate distantFuture];
    return [self createModelSingleArrayWithParams:params
                                            title:[NSString stringWithFormat:@"date:%@", date]
                                            block:nil];
}

- (NSDictionary *)method_6:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"获取NSDate的class属性distantFuture 未来时间",
            @"title": @"@property (class, readonly, copy) NSDate *distantFuture;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectDateCreation_class_property_distantFuture:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectDateCreation_class_dateWithTimeInterval_sinceDate:(TestProjectTableViewParams *)params {
    NSDate *date = [NSDate dateWithTimeInterval:24 * 3600 sinceDate:[[NSDate date] dateByAddingTimeInterval:24 * 3600]];
    return [self createModelSingleArrayWithParams:params
                                            title:[NSString stringWithFormat:@"date:%@", date]
                                            block:nil];
}

- (NSDictionary *)method_5:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"执行NSDate的class方法dateWithTimeInterval:sinceDate: 在指定的时间上加上时间差返回新的NSDate",
            @"title": @"+ (instancetype)dateWithTimeInterval:(NSTimeInterval)secsToBeAdded sinceDate:(NSDate *)date;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectDateCreation_class_dateWithTimeInterval_sinceDate:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectDateCreation_class_dateWithTimeIntervalSince1970:(TestProjectTableViewParams *)params {
    NSDate *date = [NSDate dateWithTimeIntervalSince1970:24 * 3600];
    return [self createModelSingleArrayWithParams:params
                                            title:[NSString stringWithFormat:@"date:%@", date]
                                            block:nil];
}

- (NSDictionary *)method_4:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"执行NSDate的class方法dateWithTimeIntervalSince1970: 在1970时间上加上时间差返回新的NSDate",
            @"title": @"+ (instancetype)dateWithTimeIntervalSince1970:(NSTimeInterval)secs;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectDateCreation_class_dateWithTimeIntervalSince1970:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectDateCreation_class_dateWithTimeIntervalSinceReferenceDate:(TestProjectTableViewParams *)params {
    NSDate *date = [NSDate dateWithTimeIntervalSinceReferenceDate:24 * 3600];
    return [self createModelSingleArrayWithParams:params
                                            title:[NSString stringWithFormat:@"date:%@", date]
                                            block:nil];
}

- (NSDictionary *)method_3:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"执行NSDate的class方法dateWithTimeIntervalSinceReferenceDate: 在2001时间上加上时间差返回新的NSDate",
            @"title": @"+ (instancetype)dateWithTimeIntervalSinceReferenceDate:(NSTimeInterval)ti;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectDateCreation_class_dateWithTimeIntervalSinceReferenceDate:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectDateCreation_class_dateWithTimeIntervalSinceNow:(TestProjectTableViewParams *)params {
    NSDate *date = [NSDate dateWithTimeIntervalSinceNow:24 * 3600];
    return [self createModelSingleArrayWithParams:params
                                            title:[NSString stringWithFormat:@"date:%@", date]
                                            block:nil];
}

- (NSDictionary *)method_2:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"执行NSDate的class方法dateWithTimeIntervalSinceNow: 在当前的时间上加上时间差返回新的NSDate",
            @"title": @"+ (instancetype)dateWithTimeIntervalSinceNow:(NSTimeInterval)secs;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectDateCreation_class_dateWithTimeIntervalSinceNow:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectDateCreation_class_date:(TestProjectTableViewParams *)params {
    NSDate *date = [NSDate date];
    return [self createModelSingleArrayWithParams:params
                                            title:[NSString stringWithFormat:@"date:%@", date]
                                            block:nil];
}

- (NSDictionary *)method_1:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"执行NSDate的class方法date 获取当前的时间",
            @"title": @"+ (instancetype)date;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectDateCreation_class_date:params],
            }
        },
    };
}

@end
