//
//  TestProjectCIColorKitAdditions.m
//  TestProjectIOS
//
//  Created by 李文凡 on 2023/2/26.
//

#import "TestProjectCIColorKitAdditions.h"

#import "TestProjectColorCell.h"

#import <CoreImage/CoreImage.h>

@implementation TestProjectCIColorKitAdditions

- (NSDictionary *)method_3 {
    return @{
        @"- (instancetype)initWithColor:(UIColor *)color API_AVAILABLE(ios(5.0));":@{
            @"method":@"TestProjectCIColorKitAdditions_initWithColor",
            @"desc":@"根据UIColor获取CIColor"}
    };
}

- (TestProjectColorModel *)createColorModel:(UIColor *)color text:(NSString *)text {
    TestProjectColorModel *colorModel = [[TestProjectColorModel alloc] init];
    colorModel.title = text;
    colorModel.backgroundColor = color;
    [colorModel calculDataViewHeight];
    return colorModel;
}

- (void)TestProjectCIColorKitAdditions_initWithColor {
    NSMutableArray *mutDataArr = [NSMutableArray array];
    id data;
    @try {
        data = [UIColor yellowColor].CIColor;
    } @catch (NSException *exception) {
        data = exception;
    } @finally {
        
    }
    TestProjectColorModel *m1 = [self createColorModel:[UIColor whiteColor] text:[NSString stringWithFormat:@"%@", data]];
    [mutDataArr addObject:m1];
    self.tableView.dataSourceArray = mutDataArr;
}

@end
