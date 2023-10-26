//
//  TestProjectGetCoreGraphicsMethod.m
//  TestProjectIOS
//
//  Created by zjrcumac on 2023/10/26.
//

#import "TestProjectGetCoreGraphicsMethod.h"

@implementation TestProjectGetCoreGraphicsMethod

+ (NSArray *)itemChilds {
    return @[
        [self CGImage],
    ];
}

+ (NSDictionary *)project_CoreGraphics {
    return @{
        @"title": @"CoreGraphics",
        @"atIndex": @0,
        @"itemChilds": [self itemChilds],
    };
}

+ (NSDictionary *)CGImage {
    return @{
        @"atIndex": @0,
        @"title": @"CGImage",
        @"viewKey": @"TestProjectCGImage",
    };
}

@end
