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
        @"abstract": @"CoreGraphics的库",
        @"itemChilds": [self itemChilds],
    };
}

+ (NSDictionary *)CGContext {
    return @{
        @"atIndex": @0,
        @"title": @"CGContext",
        @"abstract": @"对CGContext使用的文件",
        @"viewKey": @"TestProjectCGContext",
    };
}

+ (NSDictionary *)CIImage {
    return @{
        @"atIndex": @0,
        @"title": @"CIImage",
        @"abstract": @"对CIImage使用的文件",
        @"viewKey": @"TestProjectCIImage",
    };
}

+ (NSDictionary *)CGImage {
    return @{
        @"atIndex": @0,
        @"title": @"CGImage",
        @"abstract": @"对CGImage使用的文件",
        @"viewKey": @"TestProjectCGImage",
    };
}

@end
