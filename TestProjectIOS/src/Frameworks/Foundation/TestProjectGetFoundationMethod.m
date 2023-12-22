//
//  TestProjectGetFoundationMethod.m
//  TestProjectIOS
//
//  Created by liwenfan on 2023/3/3.
//

#import "TestProjectGetFoundationMethod.h"

@implementation TestProjectGetFoundationMethod

+ (NSArray *)itemChilds {
    return @[
        [self NSDateFormatter],
        [self NSDate],
        [self NSLocale],
        [self NSTimeZone],
        [self NSCalendar],
        [self NSAttributedString],
    ];
}

+ (NSDictionary *)project_Foundation {
    return @{
        @"title": @"Foundation",
        @"atIndex": @0,
        @"abstract": @"Foundation的库",
        @"itemChilds": [self itemChilds],
    };
}

+ (NSDictionary *)NSDateFormatter {
    return @{
        @"atIndex": @0,
        @"title": @"NSDateFormatter",
        @"abstract": @"日期格式实例的对象类",
        @"viewKey": @"TestProjectNSDateFormatter",
    };
}

+ (NSDictionary *)NSDate {
    return @{
        @"title": @"NSDate",
        @"atIndex": @0,
        @"abstract": @"日期实例的对象类",
        @"itemChilds": @[
            @{
                @"title": @"NSDate\n(NSDateCreation)",
                @"abstract": @"日期实例创建",
                @"viewKey": @"TestProjectNSDateCreation",
            },
            @{
                @"title": @"NSDate\n(NSExtendedDate)",
                @"abstract": @"日期实例的比较",
                @"viewKey": @"TestProjectNSExtendedDate",
            },
        ]
    };
}

+ (NSDictionary *)NSLocale {
    return @{
        @"title": @"NSLocale",
        @"atIndex": @0,
        @"abstract": @"区域实例的类",
        @"itemChilds": @[
            @{
                @"title": @"NSLocale\n(NSLocaleGeneralInfo)",
                @"abstract": @"区域实例的类属性扩展",
                @"viewKey": @"TestProjectNSLocaleGeneralInfo",
            },
            @{
                @"title": @"NSLocale\n(NSLocaleCreation)",
                @"abstract": @"创建区域实例的扩展",
                @"viewKey": @"TestProjectNSLocaleCreation",
            },
            @{
                @"title": @"NSLocale\n(NSExtendedLocale)",
                @"abstract": @"区域实例的属性扩展",
                @"viewKey": @"TestProjectNSExtendedLocale",
            },
            @{
                @"title": @"NSLocale",
                @"abstract": @"区域实例的类",
                @"viewKey": @"TestProjectNSLocale",
            },
        ]
    };
}

+ (NSDictionary *)NSTimeZone {
    return @{
        @"title": @"NSTimeZone",
        @"atIndex": @0,
        @"abstract": @"时间区域的实例的类",
        @"itemChilds": @[
            @{
                @"title": @"NSTimeZone\n(NSExtendedTimeZone)",
                @"abstract": @"时间区域的实例获取属性扩展",
                @"viewKey": @"TestProjectNSExtendedTimeZone",
            },
            @{
                @"title": @"NSTimeZone",
                @"abstract": @"时间区域的实例的类",
                @"viewKey": @"TestProjectNSTimeZone",
            },
        ]
    };
}

+ (NSDictionary *)NSCalendar {
    return @{
        @"title": @"NSCalendar",
        @"atIndex": @0,
        @"abstract": @"日历的实例的类",
        @"itemChilds": @[
            @{
                @"title": @"NSDateComponents",
                @"abstract": @"日历格式实例的类",
                @"viewKey": @"TestProjectNSDateComponents",
            },
            @{
                @"title": @"NSCalendar",
                @"abstract": @"日历的实例的类",
                @"viewKey": @"TestProjectNSCalendar",
            },
        ]
    };
}

+ (NSDictionary *)NSAttributedString {
    return @{
        @"title": @"NSAttributedString",
        @"atIndex": @0,
        @"abstract": @"富文本的实例的类",
        @"itemChilds": @[
            @{
                @"title": @"NSMutableAttributedString\n(NSExtendedMutableAttributedString)",
                @"abstract": @"可变富文本的实例的创建扩展",
                @"viewKey": @"TestProjectNSExtendedMutableAttributedString",
            },
            @{
                @"title": @"NSMutableAttributedString",
                @"abstract": @"可变富文本的实例的类",
                @"viewKey": @"TestProjectNSMutableAttributedString",
            },
            @{
                @"title": @"NSAttributedString\n(NSExtendedAttributedString)",
                @"abstract": @"不可变富文本的实例的创建扩展",
                @"viewKey": @"TestProjectNSExtendedAttributeString",
            },
            @{
                @"title": @"NSAttributedString",
                @"abstract": @"不可变富文本的实例的类",
                @"viewKey": @"TestProjectNSAttributeStringFoundation",
            },
        ]
    };
}

@end

