//
//  TestProjectGetPhotosUIMethod.m
//  TestProjectIOS
//
//  Created by liwenfan on 2023/12/14.
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
        @"abstract": @"系统图片的库",
        @"itemChilds": [self itemChilds],
    };
}

+ (NSDictionary *)PHPicker {
    return @{
        @"atIndex": @0,
        @"title": @"PHPicker",
        @"abstract": @"系统图片的实例对象类",
        @"viewKey": @"TestProjectPHPicker",
    };
}

@end
