//
//  TestProjectExtendedTimeZone.m
//  TestProjectIOS
//
//  Created by zjrcumac on 2023/6/13.
//

#import "TestProjectExtendedTimeZone.h"

@interface TestProjectExtendedTimeZone ()

@property (nonatomic, strong) NSTimeZone *childTimeZone;

@end

@implementation TestProjectExtendedTimeZone

- (NSTimeZone *)childTimeZone {
    if (!_childTimeZone) {
        _childTimeZone = [NSTimeZone systemTimeZone];
    }
    return _childTimeZone;
}

- (id)setPropertyValueObject {
    return self.childTimeZone;
}

- (NSDictionary *)method_1 {
    return @{
        @"dataModel": @{
            @"abstract": @"获取NSTimeZone的class属性systemTimeZone",
            @"title": @"@property (class, readonly, copy) NSTimeZone *systemTimeZone;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectExtendedTimeZone_class_property_systemTimeZone],
            }
        },
    };
}

- (NSDictionary *)method_2 {
    return @{
        @"dataModel": @{
            @"abstract": @"执行NSTimeZone的class方法resetSystemTimeZone",
            @"title": @"+ (void)resetSystemTimeZone;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectExtendedTimeZone_class_resetSystemTimeZone],
            }
        },
    };
}

- (NSDictionary *)method_3 {
    return @{
        @"dataModel": @{
            @"abstract": @"获取NSTimeZone的class属性defaultTimeZone",
            @"title": @"@property (class, copy) NSTimeZone *defaultTimeZone;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectExtendedTimeZone_class_property_defaultTimeZone],
            }
        },
    };
}

- (NSDictionary *)method_4 {
    return @{
        @"dataModel": @{
            @"abstract": @"获取NSTimeZone的class属性localTimeZone",
            @"title": @"@property (class, readonly, copy) NSTimeZone *localTimeZone;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectExtendedTimeZone_class_property_localTimeZone],
            }
        },
    };
}

- (NSDictionary *)method_5 {
    return @{
        @"dataModel": @{
            @"abstract": @"获取NSTimeZone的class属性knownTimeZoneNames",
            @"title": @"@property (class, readonly, copy) NSArray<NSString *> *knownTimeZoneNames;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectExtendedTimeZone_class_property_knownTimeZoneNames],
            }
        },
    };
}

- (NSDictionary *)method_6 {
    return @{
        @"dataModel": @{
            @"abstract": @"获取NSTimeZone的class属性abbreviationDictionary",
            @"title": @"@property (class, copy) NSDictionary<NSString *, NSString *> *abbreviationDictionary API_AVAILABLE(macos(10.6), ios(4.0), watchos(2.0), tvos(9.0));",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectExtendedTimeZone_class_property_abbreviationDictionary],
            }
        },
    };
}

- (NSDictionary *)method_7:(NSInteger)index {
    return @{
        @"dataModel": @{
            @"abstract": @"执行NSTimeZone的class方法abbreviationDictionary",
            @"title": @"+ (NSDictionary<NSString *, NSString *> *)abbreviationDictionary;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectExtendedTimeZone_class_abbreviationDictionary:index],
            }
        },
    };
}

- (NSDictionary *)method_8 {
    return @{
        @"dataModel": @{
            @"abstract": @"获取NSTimeZone的class属性timeZoneDataVersion",
            @"title": @"@property (class, readonly, copy) NSString *timeZoneDataVersion API_AVAILABLE(macos(10.6), ios(4.0), watchos(2.0), tvos(9.0));",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectExtendedTimeZone_class_property_timeZoneDataVersion],
            }
        },
    };
}

- (NSDictionary *)method_9 {
    return @{
        @"dataModel": @{
            @"abstract": @"获取NSTimeZone的属性secondsFromGMT",
            @"title": @"@property (readonly) NSInteger secondsFromGMT;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectExtendedTimeZone_property_secondsFromGMT],
            }
        },
    };
}

- (NSDictionary *)method_10 {
    return @{
        @"dataModel": @{
            @"abstract": @"获取NSTimeZone的属性abbreviation",
            @"title": @"@property (nullable, readonly, copy) NSString *abbreviation;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectExtendedTimeZone_property_abbreviation],
            }
        },
    };
}

- (NSDictionary *)method_11 {
    return @{
        @"dataModel": @{
            @"abstract": @"获取NSTimeZone的属性daylightSavingTime",
            @"title": @"@property (readonly, getter=isDaylightSavingTime) BOOL daylightSavingTime;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectExtendedTimeZone_property_daylightSavingTime],
            }
        },
    };
}

- (NSDictionary *)method_12 {
    return @{
        @"dataModel": @{
            @"abstract": @"获取NSTimeZone的属性daylightSavingTimeOffset",
            @"title": @"@property (readonly) NSTimeInterval daylightSavingTimeOffset API_AVAILABLE(macos(10.5), ios(2.0), watchos(2.0), tvos(9.0));",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectExtendedTimeZone_property_daylightSavingTimeOffset],
            }
        },
    };
}

- (NSDictionary *)method_13 {
    return @{
        @"dataModel": @{
            @"abstract": @"获取NSTimeZone的属性nextDaylightSavingTimeTransition",
            @"title": @"@property (nullable, readonly, copy) NSDate *nextDaylightSavingTimeTransition API_AVAILABLE(macos(10.5), ios(2.0), watchos(2.0), tvos(9.0));",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectExtendedTimeZone_property_nextDaylightSavingTimeTransition],
            }
        },
    };
}

- (NSDictionary *)method_14 {
    return @{
        @"dataModel": @{
            @"abstract": @"执行NSTimeZone的方法isEqualToTimeZone:",
            @"title": @"- (BOOL)isEqualToTimeZone:(NSTimeZone *)aTimeZone;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectExtendedTimeZone_isEqualToTimeZone],
            }
        },
    };
}

- (NSDictionary *)method_15 {
    return @{
        @"dataModel": @{
            @"abstract": @"执行NSTimeZone的方法localizedName:locale:",
            @"title": @"- (nullable NSString *)localizedName:(NSTimeZoneNameStyle)style locale:(nullable NSLocale *)locale API_AVAILABLE(macos(10.5), ios(2.0), watchos(2.0), tvos(9.0));",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectExtendedTimeZone_localizedName_locale],
            }
        },
    };
}

//typedef NS_ENUM(NSInteger, NSTimeZoneNameStyle) {
//    NSTimeZoneNameStyleStandard,        // Central Standard Time
//    NSTimeZoneNameStyleShortStandard,    // CST
//    NSTimeZoneNameStyleDaylightSaving,    // Central Daylight Time
//    NSTimeZoneNameStyleShortDaylightSaving,    // CDT
//    NSTimeZoneNameStyleGeneric,        // Central Time
//    NSTimeZoneNameStyleShortGeneric        // CT
//};

- (NSMutableArray *)TestProjectExtendedTimeZone_localizedName_locale {
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
        [self createTableModelWithTitle:[NSString stringWithFormat:@"%@\n%@", title, res] block:nil];
    }
    return self.dataMutArr;
}

- (NSMutableArray *)TestProjectExtendedTimeZone_isEqualToTimeZone {
    NSTimeZone *localTimeZone = [NSTimeZone localTimeZone];
    BOOL res = [self.childTimeZone isEqualToTimeZone:localTimeZone];
    return [self createTableModelSingleArrayWithTitle:[NSString stringWithFormat:@"systemTimeZone:%@ localTimeZone:%@ res:%u", self.childTimeZone, localTimeZone, res] block:nil];
}

- (NSMutableArray *)TestProjectExtendedTimeZone_property_nextDaylightSavingTimeTransition {
    return [self createTableModelSingleArrayWithProperty:@"nextDaylightSavingTimeTransition" value:nil];
}

- (NSMutableArray *)TestProjectExtendedTimeZone_property_daylightSavingTimeOffset {
    return [self createTableModelSingleArrayWithProperty:@"daylightSavingTimeOffset" value:nil];
}

- (NSMutableArray *)TestProjectExtendedTimeZone_property_daylightSavingTime {
    return [self createTableModelSingleArrayWithProperty:@"daylightSavingTime" value:nil];
}

- (NSMutableArray *)TestProjectExtendedTimeZone_property_abbreviation {
    return [self createTableModelSingleArrayWithProperty:@"abbreviation" value:nil];
}

- (NSMutableArray *)TestProjectExtendedTimeZone_property_secondsFromGMT {
    return [self createTableModelSingleArrayWithProperty:@"secondsFromGMT" value:nil];
}

- (NSMutableArray *)TestProjectExtendedTimeZone_class_property_timeZoneDataVersion {
    return [self createTableModelSingleArrayWithTitle:[NSString stringWithFormat:@"%@", [NSTimeZone timeZoneDataVersion]] block:nil];
}

- (NSMutableArray *)TestProjectExtendedTimeZone_class_abbreviationDictionary:(NSInteger)index {
    [self createTableModelWithMethodBlock:^NSString * _Nonnull{
        NSDictionary *dic = [NSTimeZone abbreviationDictionary];
        return [NSString stringWithFormat:@"%@", dic];
    } title:@"[NSTimeZone abbreviationDictionary]" index:index];
    return self.dataMutArr;
}

- (NSMutableArray *)TestProjectExtendedTimeZone_class_property_abbreviationDictionary {
    return [self createTableModelSingleArrayWithTitle:[NSString stringWithFormat:@"%@", [NSTimeZone abbreviationDictionary]] block:nil];
}

- (NSMutableArray *)TestProjectExtendedTimeZone_class_property_knownTimeZoneNames {
    return [self createTableModelSingleArrayWithTitle:[NSString stringWithFormat:@"%@", [NSTimeZone knownTimeZoneNames]] block:nil];
}

- (NSMutableArray *)TestProjectExtendedTimeZone_class_property_localTimeZone {
    return [self createTableModelSingleArrayWithTitle:[NSString stringWithFormat:@"%@", [NSTimeZone localTimeZone]] block:nil];
}

- (NSMutableArray *)TestProjectExtendedTimeZone_class_property_defaultTimeZone {
    return [self createTableModelSingleArrayWithTitle:[NSString stringWithFormat:@"%@", [NSTimeZone defaultTimeZone]] block:nil];
}

- (NSMutableArray *)TestProjectExtendedTimeZone_class_resetSystemTimeZone {
    return [self createTableModelSingleArrayWithTitle:@"执行[NSTimeZone resetSystemTimeZone]" block:^{
        [NSTimeZone resetSystemTimeZone];
    }];
}

- (NSMutableArray *)TestProjectExtendedTimeZone_class_property_systemTimeZone {
    return [self createTableModelSingleArrayWithTitle:[NSString stringWithFormat:@"%@", [NSTimeZone systemTimeZone]] block:nil];
}

@end
