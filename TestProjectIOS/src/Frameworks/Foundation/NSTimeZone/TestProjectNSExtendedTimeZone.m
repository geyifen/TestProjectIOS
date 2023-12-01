//
//  TestProjectNSExtendedTimeZone.m
//  TestProjectIOS
//
//  Created by liwenfan on 2023/6/13.
//

#import "TestProjectNSExtendedTimeZone.h"

@interface TestProjectNSExtendedTimeZone ()

@property (nonatomic, strong) NSTimeZone *childTimeZone;

@end

@implementation TestProjectNSExtendedTimeZone

- (NSTimeZone *)childTimeZone {
    if (!_childTimeZone) {
        _childTimeZone = [NSTimeZone systemTimeZone];
    }
    return _childTimeZone;
}

- (id)setPropertyValueObject:(TestProjectTableViewParams *)params {
    return self.childTimeZone;
}

//typedef NS_ENUM(NSInteger, NSTimeZoneNameStyle) {
//    NSTimeZoneNameStyleStandard,        // Central Standard Time
//    NSTimeZoneNameStyleShortStandard,    // CST
//    NSTimeZoneNameStyleDaylightSaving,    // Central Daylight Time
//    NSTimeZoneNameStyleShortDaylightSaving,    // CDT
//    NSTimeZoneNameStyleGeneric,        // Central Time
//    NSTimeZoneNameStyleShortGeneric        // CT
//};

- (NSMutableArray *)TestProjectExtendedTimeZone_localizedName_locale:(TestProjectTableViewParams *)params {
    NSArray *arr = @[
        @{
            @"title": [NSString stringWithFormat:@"设置的属性值是NSTimeZoneNameStyleStandard(%ld)", NSTimeZoneNameStyleStandard],
            @"value": @(NSTimeZoneNameStyleStandard),
        },
        @{
            @"title": [NSString stringWithFormat:@"设置的属性值是NSTimeZoneNameStyleShortStandard(%ld)", NSTimeZoneNameStyleShortStandard],
            @"value": @(NSTimeZoneNameStyleShortStandard),
        },
        @{
            @"title": [NSString stringWithFormat:@"设置的属性值是NSTimeZoneNameStyleDaylightSaving(%ld)", NSTimeZoneNameStyleDaylightSaving],
            @"value": @(NSTimeZoneNameStyleDaylightSaving),
        },
        @{
            @"title": [NSString stringWithFormat:@"设置的属性值是NSTimeZoneNameStyleShortDaylightSaving(%ld)", NSTimeZoneNameStyleShortDaylightSaving],
            @"value": @(NSTimeZoneNameStyleShortDaylightSaving),
        },
        @{
            @"title": [NSString stringWithFormat:@"设置的属性值是NSTimeZoneNameStyleGeneric(%ld)", NSTimeZoneNameStyleGeneric],
            @"value": @(NSTimeZoneNameStyleGeneric),
        },
        @{
            @"title": [NSString stringWithFormat:@"设置的属性值是NSTimeZoneNameStyleShortGeneric(%ld)", NSTimeZoneNameStyleShortGeneric],
            @"value": @(NSTimeZoneNameStyleShortGeneric),
        },
    ];
    NSLocale *locale = [NSLocale currentLocale];
    for (NSDictionary *dic in arr) {
        NSString *title = dic[@"title"];
        NSTimeZoneNameStyle style = [dic[@"value"] integerValue];
        NSString *res = [self.childTimeZone localizedName:style locale:locale];
        [self createModelWithParams:params title:[NSString stringWithFormat:@"%@\n%@", title, res] block:nil];
    }
    return self.dataMutArr;
}

- (NSDictionary *)method_15:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"执行NSTimeZone的方法localizedName:locale:",
            @"title": @"- (nullable NSString *)localizedName:(NSTimeZoneNameStyle)style locale:(nullable NSLocale *)locale API_AVAILABLE(macos(10.5), ios(2.0), watchos(2.0), tvos(9.0));",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectExtendedTimeZone_localizedName_locale:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectExtendedTimeZone_isEqualToTimeZone:(TestProjectTableViewParams *)params {
    NSTimeZone *localTimeZone = [NSTimeZone localTimeZone];
    BOOL res = [self.childTimeZone isEqualToTimeZone:localTimeZone];
    return [self createModelSingleArrayWithParams:params title:[NSString stringWithFormat:@"systemTimeZone:%@ localTimeZone:%@ res:%u", self.childTimeZone, localTimeZone, res] block:nil];
}

- (NSDictionary *)method_14:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"执行NSTimeZone的方法isEqualToTimeZone:",
            @"title": @"- (BOOL)isEqualToTimeZone:(NSTimeZone *)aTimeZone;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectExtendedTimeZone_isEqualToTimeZone:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectExtendedTimeZone_property_nextDaylightSavingTimeTransition:(TestProjectTableViewParams *)params {
    return [self createModelSingleArrayWithParams:params
                                         property:@"nextDaylightSavingTimeTransition"
                                            value:nil
                                        operation:TestProjectCreateModelGetBeforeClickGet
                                            block:nil];
}

- (NSDictionary *)method_13:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"获取NSTimeZone的属性nextDaylightSavingTimeTransition",
            @"title": @"@property (nullable, readonly, copy) NSDate *nextDaylightSavingTimeTransition API_AVAILABLE(macos(10.5), ios(2.0), watchos(2.0), tvos(9.0));",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectExtendedTimeZone_property_nextDaylightSavingTimeTransition:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectExtendedTimeZone_property_daylightSavingTimeOffset:(TestProjectTableViewParams *)params {
    return [self createModelSingleArrayWithParams:params
                                         property:@"daylightSavingTimeOffset"
                                            value:nil
                                        operation:TestProjectCreateModelGetBeforeClickGet
                                            block:nil];
}

- (NSDictionary *)method_12:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"获取NSTimeZone的属性daylightSavingTimeOffset",
            @"title": @"@property (readonly) NSTimeInterval daylightSavingTimeOffset API_AVAILABLE(macos(10.5), ios(2.0), watchos(2.0), tvos(9.0));",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectExtendedTimeZone_property_daylightSavingTimeOffset:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectExtendedTimeZone_property_daylightSavingTime:(TestProjectTableViewParams *)params {
    return [self createModelSingleArrayWithParams:params
                                         property:@"daylightSavingTime"
                                            value:nil
                                        operation:TestProjectCreateModelGetBeforeClickGet
                                            block:nil];
}

- (NSDictionary *)method_11:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"获取NSTimeZone的属性daylightSavingTime",
            @"title": @"@property (readonly, getter=isDaylightSavingTime) BOOL daylightSavingTime;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectExtendedTimeZone_property_daylightSavingTime:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectExtendedTimeZone_property_abbreviation:(TestProjectTableViewParams *)params {
    return [self createModelSingleArrayWithParams:params
                                         property:@"abbreviation"
                                            value:nil
                                        operation:TestProjectCreateModelGetBeforeClickGet
                                            block:nil];
}

- (NSDictionary *)method_10:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"获取NSTimeZone的属性abbreviation",
            @"title": @"@property (nullable, readonly, copy) NSString *abbreviation;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectExtendedTimeZone_property_abbreviation:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectExtendedTimeZone_property_secondsFromGMT:(TestProjectTableViewParams *)params {
    return [self createModelSingleArrayWithParams:params
                                         property:@"secondsFromGMT"
                                            value:nil
                                        operation:TestProjectCreateModelGetBeforeClickGet
                                            block:nil];
}

- (NSDictionary *)method_9:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"获取NSTimeZone的属性secondsFromGMT",
            @"title": @"@property (readonly) NSInteger secondsFromGMT;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectExtendedTimeZone_property_secondsFromGMT:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectExtendedTimeZone_class_property_timeZoneDataVersion:(TestProjectTableViewParams *)params {
    return [self createModelSingleArrayWithParams:params title:[NSString stringWithFormat:@"%@", [NSTimeZone timeZoneDataVersion]] block:nil];
}

- (NSDictionary *)method_8:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"获取NSTimeZone的class属性timeZoneDataVersion",
            @"title": @"@property (class, readonly, copy) NSString *timeZoneDataVersion API_AVAILABLE(macos(10.6), ios(4.0), watchos(2.0), tvos(9.0));",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectExtendedTimeZone_class_property_timeZoneDataVersion:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectExtendedTimeZone_class_abbreviationDictionary:(TestProjectTableViewParams *)params {
    return [self createModelSingleArrayWithParams:params title:@"[NSTimeZone abbreviationDictionary]" methodBlock:^NSString * _Nonnull{
        NSDictionary *dic = [NSTimeZone abbreviationDictionary];
        return [NSString stringWithFormat:@"%@", dic];
    }];
}

- (NSDictionary *)method_7:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"执行NSTimeZone的class方法abbreviationDictionary",
            @"title": @"+ (NSDictionary<NSString *, NSString *> *)abbreviationDictionary;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectExtendedTimeZone_class_abbreviationDictionary:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectExtendedTimeZone_class_property_abbreviationDictionary:(TestProjectTableViewParams *)params {
    return [self createModelSingleArrayWithParams:params title:[NSString stringWithFormat:@"%@", [NSTimeZone abbreviationDictionary]] block:nil];
}

- (NSDictionary *)method_6:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"获取NSTimeZone的class属性abbreviationDictionary",
            @"title": @"@property (class, copy) NSDictionary<NSString *, NSString *> *abbreviationDictionary API_AVAILABLE(macos(10.6), ios(4.0), watchos(2.0), tvos(9.0));",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectExtendedTimeZone_class_property_abbreviationDictionary:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectExtendedTimeZone_class_property_knownTimeZoneNames:(TestProjectTableViewParams *)params {
    return [self createModelSingleArrayWithParams:params title:[NSString stringWithFormat:@"%@", [NSTimeZone knownTimeZoneNames]] block:nil];
}

- (NSDictionary *)method_5:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"获取NSTimeZone的class属性knownTimeZoneNames",
            @"title": @"@property (class, readonly, copy) NSArray<NSString *> *knownTimeZoneNames;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectExtendedTimeZone_class_property_knownTimeZoneNames:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectExtendedTimeZone_class_property_localTimeZone:(TestProjectTableViewParams *)params {
    return [self createModelSingleArrayWithParams:params title:[NSString stringWithFormat:@"%@", [NSTimeZone localTimeZone]] block:nil];
}

- (NSDictionary *)method_4:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"获取NSTimeZone的class属性localTimeZone",
            @"title": @"@property (class, readonly, copy) NSTimeZone *localTimeZone;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectExtendedTimeZone_class_property_localTimeZone:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectExtendedTimeZone_class_property_defaultTimeZone:(TestProjectTableViewParams *)params {
    return [self createModelSingleArrayWithParams:params title:[NSString stringWithFormat:@"%@", [NSTimeZone defaultTimeZone]] block:nil];
}

- (NSDictionary *)method_3:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"获取NSTimeZone的class属性defaultTimeZone",
            @"title": @"@property (class, copy) NSTimeZone *defaultTimeZone;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectExtendedTimeZone_class_property_defaultTimeZone:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectExtendedTimeZone_class_resetSystemTimeZone:(TestProjectTableViewParams *)params {
    return [self createModelSingleArrayWithParams:params title:@"执行[NSTimeZone resetSystemTimeZone]" block:^{
        [NSTimeZone resetSystemTimeZone];
    }];
}

- (NSDictionary *)method_2:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"执行NSTimeZone的class方法resetSystemTimeZone",
            @"title": @"+ (void)resetSystemTimeZone;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectExtendedTimeZone_class_resetSystemTimeZone:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectExtendedTimeZone_class_property_systemTimeZone:(TestProjectTableViewParams *)params {
    return [self createModelSingleArrayWithParams:params title:[NSString stringWithFormat:@"%@", [NSTimeZone systemTimeZone]] block:nil];
}

- (NSDictionary *)method_1:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"获取NSTimeZone的class属性systemTimeZone",
            @"title": @"@property (class, readonly, copy) NSTimeZone *systemTimeZone;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectExtendedTimeZone_class_property_systemTimeZone:params],
            }
        },
    };
}

@end
