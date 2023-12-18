//
//  TestProjectGetPhotosUIMethod.m
//  TestProjectIOS
//
//  Created by zjrcumac on 2023/12/14.
//

#import "TestProjectGetPhotosUIMethod.h"

@implementation TestProjectGetPhotosUIMethod

+ (NSArray *)itemChilds {
    return @[
        [self PHPicker],
    ];
}

+ (NSDictionary *)project_PhotosUI {
    return @{
        @"title": @"PhotosUI",
        @"atIndex": @0,
        @"itemChilds": [self itemChilds],
    };
}

+ (NSDictionary *)PHPicker {
    return @{
        @"atIndex": @0,
        @"title": @"PHPicker",
        @"viewKey": @"TestProjectPHPicker",
    };
}

@end
