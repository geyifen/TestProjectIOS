//
//  TestProjectGetFoundationImplementationMethod.m
//  TestProjectIOS
//
//  Created by zjrcumac on 2023/3/3.
//

#import "TestProjectGetFoundationImplementationMethod.h"

@implementation TestProjectGetFoundationImplementationMethod

+ (NSDictionary *)project_Foundation {
    return @{@"Foundation": @{
        @"itemChilds": @[
            [self NSAttributedString],
        ],
    }, };
}

+ (NSDictionary *)NSAttributedString {
    return @{
        @"NSAttributedString": @{
            @"itemChilds": @[@{
                @"NSMutableAttributedString(NSExtendedMutableAttributedString)": @{
                    @"viewKey": @"TestProjectMutableAttributedStringExtended"
                },
            }, @{
                @"NSMutableAttributedString": @{
                    @"viewKey": @"TestProjectMutableAttributedString"
                },
            }, @{
                @"NSAttributedString(NSExtendedAttributedString)": @{
                    @"viewKey": @"TestProjectAttributeStringExtendedString"
                },
            }, @{
                @"NSAttributedString": @{
                    @"viewKey": @"TestProjectAttributeStringFoundation"
                },
            }, ],
            @"atIndex": @0,
        }
    };
}

@end

