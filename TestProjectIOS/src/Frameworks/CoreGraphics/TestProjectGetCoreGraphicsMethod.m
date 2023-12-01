//
//  TestProjectGetCoreGraphicsMethod.m
//  TestProjectIOS
//
//  Created by liwenfan on 2023/10/26.
//

#import "TestProjectGetCoreGraphicsMethod.h"

@implementation TestProjectGetCoreGraphicsMethod

+ (NSArray *)itemChilds {
    return @[
//        [self CGContext],
//        [self CIImage],
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

+ (NSDictionary *)CGContext {
    return @{
        @"atIndex": @0,
        @"title": @"CGContext",
        @"viewKey": @"TestProjectCGContext",
    };
}

+ (NSDictionary *)CIImage {
    return @{
        @"atIndex": @0,
        @"title": @"CIImage",
        @"viewKey": @"TestProjectCIImage",
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
