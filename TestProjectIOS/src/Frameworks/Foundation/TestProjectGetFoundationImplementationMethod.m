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
        [self NSAttributedString]
    ];
}

+ (NSDictionary *)project_Foundation {
    return @{
        @"title": @"Foundation",
        @"atIndex": @0,
        @"itemChilds": [self itemChilds],
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

