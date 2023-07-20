//
//  TestProjectCIColorKitAdditions.m
//  TestProjectIOS
//
//  Created by 李文凡 on 2023/2/26.
//

#import "TestProjectCIColorKitAdditions.h"

#import "TestProjectUIColorCell.h"

#import <CoreImage/CoreImage.h>

@implementation TestProjectCIColorKitAdditions

- (Class)createTableModelClass {
    return TestProjectUIColorModel.class;
}

- (NSDictionary *)method_1:(NSInteger)index {
    return @{
        @"dataModel": @{
            @"abstract": @"根据UIColor获取CIColor",
            @"title": @"- (instancetype)initWithColor:(UIColor *)color API_AVAILABLE(ios(5.0));", 
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectCIColorKitAdditions_initWithColor:index],
            }
        },
    };
}

- (NSMutableArray *)TestProjectCIColorKitAdditions_initWithColor:(NSInteger)index {
    UIColor *color = [UIColor yellowColor];
    id data;
    @try {
        data = color.CIColor;
    } @catch (NSException *exception) {
        data = exception;
    } @finally {
        
    }
    [self createModelWithIndex:index
                         title:[NSString stringWithFormat:@"%@", data]
                 modelKeyValue:@{@"backgroundColor": color}
                         block:nil];
    return self.dataMutArr;
}

@end
