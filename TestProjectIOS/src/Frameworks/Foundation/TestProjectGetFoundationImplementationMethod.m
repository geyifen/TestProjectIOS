//
//  TestProjectGetFoundationImplementationMethod.m
//  TestProjectIOS
//
//  Created by zjrcumac on 2023/3/3.
//

#import "TestProjectGetFoundationImplementationMethod.h"

@implementation TestProjectGetFoundationImplementationMethod

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
        @"viewKey": @"TestProjectDateFormatter",
    };
}

+ (NSDictionary *)NSDate {
    return @{
        @"title": @"NSDate",
        @"atIndex": @0,
        @"itemChilds": @[
            @{
                @"title": @"NSDate\n(NSDateCreation)",
                @"viewKey": @"TestProjectDateCreation",
            },
            @{
                @"title": @"NSDate\n(NSExtendedDate)",
                @"viewKey": @"TestProjectExtendedDate",
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
                @"viewKey": @"TestProjectLocaleGeneralInfo",
            },
            @{
                @"title": @"NSLocale\n(NSLocaleCreation)",
                @"viewKey": @"TestProjectLocaleCreation",
            },
            @{
                @"title": @"NSLocale\n(NSExtendedLocale)",
                @"viewKey": @"TestProjectExtendedLocale",
            },
            @{
                @"title": @"NSLocale",
                @"viewKey": @"TestProjectLocale",
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
                @"viewKey": @"TestProjectExtendedTimeZone",
            },
            @{
                @"title": @"NSTimeZone",
                @"viewKey": @"TestProjectTimeZone",
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
                @"viewKey": @"TestProjectDateComponents",
            },
            @{
                @"title": @"NSCalendar",
                @"viewKey": @"TestProjectCalendar",
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
                @"viewKey": @"TestProjectMutableAttributedStringExtended",
            },
            @{
                @"title": @"NSMutableAttributedString",
                @"viewKey": @"TestProjectMutableAttributedString",
            },
            @{
                @"title": @"NSAttributedString\n(NSExtendedAttributedString)",
                @"viewKey": @"TestProjectAttributeStringExtendedString",
            },
            @{
                @"title": @"NSAttributedString",
                @"viewKey": @"TestProjectAttributeStringFoundation",
            },
        ]
    };
}

@end

