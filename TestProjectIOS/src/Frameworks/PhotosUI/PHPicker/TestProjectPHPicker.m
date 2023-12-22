//
//  TestProjectPHPicker.m
//  TestProjectIOS
//
//  Created by liwenfan on 2023/12/14.
//

#import "TestProjectPHPicker.h"

#import <PhotosUI/PhotosUI.h>

@implementation TestProjectPHPicker

- (NSMutableArray *)TestProjectPHPicker_click:(TestProjectTableViewParams *)params {
    return [self createModelSingleArrayWithParams:params
                                            title:nil
                                            block:^{
        PHPickerConfiguration *config = [[PHPickerConfiguration alloc] initWithPhotoLibrary:[PHPhotoLibrary sharedPhotoLibrary]];
        PHPickerViewController *vc = [[PHPickerViewController alloc] initWithConfiguration:config];
        [UIApplication.rootNavController pushViewController:vc animated:YES];
    }];
}

- (NSDictionary *)method_2:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"通过CGContext获取CFTypeID方法",
            @"title": @"CG_EXTERN void CGContextScaleCTM(CGContextRef cg_nullable c, CGFloat sx, CGFloat sy) CG_AVAILABLE_STARTING(10.0, 2.0);",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectPHPicker_click:params],
            }
        },
    };
}

@end
