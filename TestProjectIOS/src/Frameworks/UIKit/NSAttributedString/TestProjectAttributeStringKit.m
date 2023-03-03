//
//  TestProjectAttributeStringKit.m
//  TestProjectIOS
//
//  Created by zjrcumac on 2023/3/3.
//

#import "TestProjectAttributeStringKit.h"

@implementation TestProjectAttributeStringKit

- (NSDictionary *)method_3 {
    return @{
        @"- (instancetype)initWithColor:(UIColor *)color API_AVAILABLE(ios(5.0));":@{
            @"method":@"TestProjectCIColorKitAdditions_initWithColor",
            @"desc":@"根据UIColor获取CIColor"}
    };
}

@end
