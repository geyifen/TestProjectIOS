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

- (NSDictionary *)method_1 {
    return @{
        @"dataModel": @{
            @"abstract": @"根据UIColor获取CIColor",
            @"title": @"- (instancetype)initWithColor:(UIColor *)color API_AVAILABLE(ios(5.0));", 
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"modelClass": TestProjectUIColorModel.class,
                @"childItems": [self TestProjectCIColorKitAdditions_initWithColor],
            }
        },
    };
}

- (void)createColorModel:(UIColor *)color text:(NSString *)text {
    TestProjectUIColorModel *colorModel = [[TestProjectUIColorModel alloc] init];
    colorModel.title = text;
    colorModel.backgroundColor = color;
    [self.dataMutArr addObject:colorModel];
}

- (NSMutableArray *)TestProjectCIColorKitAdditions_initWithColor {
    UIColor *color = [UIColor yellowColor];
    id data;
    @try {
        data = color.CIColor;
    } @catch (NSException *exception) {
        data = exception;
    } @finally {
        
    }
    [self createColorModel:color text:[NSString stringWithFormat:@"%@", data]];
    return self.dataMutArr;
}

@end
