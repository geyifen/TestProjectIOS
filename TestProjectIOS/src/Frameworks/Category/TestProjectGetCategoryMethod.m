//
//  TestProjectGetCategoryMethod.m
//  TestProjectIOS
//
//  Created by zjrcumac on 2023/7/20.
//

#import "TestProjectGetCategoryMethod.h"

@implementation TestProjectGetCategoryMethod

+ (NSArray *)newItemChilds {
    return @[
        [self UIScrollView],
    ];
}

+ (NSArray *)itemChilds {
    NSMutableArray *arr = [NSMutableArray array];
    [arr addObjectsFromArray:[self newItemChilds]];
//    [arr addObjectsFromArray:[self oldItemChilds]];

    return [arr copy];
}

+ (NSDictionary *)project_Category {
    return @{
        @"title": @"Category",
        @"atIndex": @0,
        @"itemChilds": [self itemChilds],
    };
}

+ (NSDictionary *)UIScrollView {
    return @{
        @"title": @"UIScrollView",
        @"atIndex": @0,
        @"itemChilds": @[
            @{
                @"title": @"UIScrollView\n(TestProject_Refresh)",
                @"viewKey": @"TestProjectScrollViewRefresh",
            },
        ]
    };
}

@end
