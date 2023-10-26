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
        @"itemChilds": [self itemChilds],
    };
}

+ (NSDictionary *)NSDateFormatter {
    return @{
        @"atIndex": @0,
        @"title": @"NSDateFormatter",
        @"viewKey": @"TestProjectNSDateFormatter",
    };
}

+ (NSDictionary *)NSDate {
    return @{
        @"title": @"NSDate",
        @"atIndex": @0,
        @"itemChilds": @[
            @{
                @"title": @"NSDate\n(NSDateCreation)",
                @"viewKey": @"TestProjectNSDateCreation",
            },
            @{
                @"title": @"NSDate\n(NSExtendedDate)",
                @"viewKey": @"TestProjectNSExtendedDate",
            },
        ]
    };
}

+ (NSDictionary *)NSLocale {
    return @{
        @"title": @"NSLocale",
        @"atIndex": @0,
        @"itemChilds": @[
            @{
                @"title": @"NSLocale\n(NSLocaleGeneralInfo)",
                @"viewKey": @"TestProjectNSLocaleGeneralInfo",
            },
            @{
                @"title": @"NSLocale\n(NSLocaleCreation)",
                @"viewKey": @"TestProjectNSLocaleCreation",
            },
            @{
                @"title": @"NSLocale\n(NSExtendedLocale)",
                @"viewKey": @"TestProjectNSExtendedLocale",
            },
            @{
                @"title": @"NSLocale",
                @"viewKey": @"TestProjectNSLocale",
            },
        ]
    };
}

+ (NSDictionary *)NSTimeZone {
    return @{
        @"title": @"NSTimeZone",
        @"atIndex": @0,
        @"itemChilds": @[
            @{
                @"title": @"NSTimeZone\n(NSExtendedTimeZone)",
                @"viewKey": @"TestProjectNSExtendedTimeZone",
            },
            @{
                @"title": @"NSTimeZone",
                @"viewKey": @"TestProjectNSTimeZone",
            },
        ]
    };
}

+ (NSDictionary *)NSCalendar {
    return @{
        @"title": @"NSCalendar",
        @"atIndex": @0,
        @"itemChilds": @[
            @{
                @"title": @"NSDateComponents",
                @"viewKey": @"TestProjectNSDateComponents",
            },
            @{
                @"title": @"NSCalendar",
                @"viewKey": @"TestProjectNSCalendar",
            },
        ]
    };
}

+ (NSDictionary *)NSAttributedString {
    return @{
        @"title": @"NSAttributedString",
        @"atIndex": @0,
        @"itemChilds": @[
            @{
                @"title": @"NSMutableAttributedString\n(NSExtendedMutableAttributedString)",
                @"viewKey": @"TestProjectNSExtendedMutableAttributedString",
            },
            @{
                @"title": @"NSMutableAttributedString",
                @"viewKey": @"TestProjectNSMutableAttributedString",
            },
            @{
                @"title": @"NSAttributedString\n(NSExtendedAttributedString)",
                @"viewKey": @"TestProjectNSExtendedAttributeString",
            },
            @{
                @"title": @"NSAttributedString",
                @"viewKey": @"TestProjectNSAttributeStringFoundation",
            },
        ]
    };
}

@end

