//
//  TestProjectUIImagePickerControllerDelegate.m
//  TestProjectIOS
//
//  Created by liwenfan on 2023/12/13.
//

#import "TestProjectUIImagePickerControllerDelegate.h"

#import "TestProjectUIImageCell.h"
#import "TestProjectIgnoreWarningDefmacro.h"

#import <AssetsLibrary/AssetsLibrary.h>
#import <Photos/Photos.h>

@interface TestProjectUIImagePickerControllerDelegate () <UIImagePickerControllerDelegate, UINavigationControllerDelegate>

@end

@implementation TestProjectUIImagePickerControllerDelegate

- (Class)createTableModelClass:(TestProjectTableViewParams *)params {
    return TestProjectUIImageModel.class;
}

- (void)imagePickerControllerDidCancel:(UIImagePickerController *)picker {
    [picker dismissViewControllerAnimated:YES completion:nil];
    if (_currentSelectTableViewParams.methodIndex == 2) {
        [self reloadCurrentTableViewModelWithDesc:[NSString stringWithFormat:@"当前%@已被取消", [NSDate now]]];
    }
}

- (NSMutableArray *)TestProjectUIImagePickerControllerDelegate_optional_imagePickerControllerDidCancel:(TestProjectTableViewParams *)params {
    WS(wSelf);
    __block TestProjectTableViewModel *m;
    m = [self createModelWithParams:params title:@"进入选择图片控制器取消回调" block:^{
        SS(sSelf);
        UIImagePickerController *imagePickerController = [[UIImagePickerController alloc] init];
        imagePickerController.delegate = sSelf;
        [UIApplication.rootCurrentController presentViewController:imagePickerController animated:YES completion:nil];
        sSelf->_currentSelectTableViewModel = m;
        sSelf->_currentSelectTableViewParams = params;
    }];
    return self.dataMutArr;
}

- (NSDictionary *)method_2:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"TestProjectUIImagePickerControllerDelegate的@optional方法, 点击选择图片控制器取消的回调",
            @"title": @"- (void)imagePickerControllerDidCancel:(UIImagePickerController *)picker;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectUIImagePickerControllerDelegate_optional_imagePickerControllerDidCancel:params],
            }
        },
    };
}

- (void)imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary<UIImagePickerControllerInfoKey,id> *)info {
    [picker dismissViewControllerAnimated:YES completion:nil];
    NSLog(@"%@", info);
    if (_currentSelectTableViewParams.methodIndex == 1) {
        switch (_currentSelectTableViewModel.atIndex) {
            case 0: {
                NSURL *url = info[UIImagePickerControllerImageURL];
                NSData *data = [NSData dataWithContentsOfURL:url];
                UIImage *image = [UIImage imageWithData:data];
                ((TestProjectUIImageModel *)_currentSelectTableViewModel).image = image;
                [self reloadCurrentTableViewModelWithDesc:[NSString stringWithFormat:@"当前%@已选中一张照片\nimage:%@\n%@", [NSDate now], image, info]];
            } break;
            case 1: {
                UIImage *image = info[UIImagePickerControllerOriginalImage];
                ((TestProjectUIImageModel *)_currentSelectTableViewModel).image = image;
                [self reloadCurrentTableViewModelWithDesc:[NSString stringWithFormat:@"当前%@已选中一张照片\nimage:%@\n%@", [NSDate now], image, info]];
            } break;
            case 2: {
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated"
                NSURL *url = info[UIImagePickerControllerReferenceURL];
                ALAssetsLibrary *libarary = [[ALAssetsLibrary alloc] init];
                WS(wSelf);
                [libarary assetForURL:url resultBlock:^(ALAsset *asset) {
                    SS(sSelf);
                    ALAssetRepresentation *rep = [asset defaultRepresentation];
                    UIImage *image = [UIImage imageWithCGImage:rep.fullScreenImage];
                    NSLog(@"%@", rep);
                    NSLog(@"%@", rep.filename);
                    NSLog(@"%@", rep.UTI);
                    NSLog(@"%@", rep.url);
                    ((TestProjectUIImageModel *)sSelf->_currentSelectTableViewModel).image = image;
                    [sSelf reloadCurrentTableViewModelWithDesc:[NSString stringWithFormat:@"当前%@已选中一张照片\nimage:%@\n%@", [NSDate now], image, info]];
                } failureBlock:^(NSError *error) {
                    SS(sSelf);
                    [sSelf reloadCurrentTableViewModelWithDesc:[NSString stringWithFormat:@"当前%@已选中一张照片\n error:%@", [NSDate now], error]];
                }];
#pragma clang diagnostic pop
            } break;
            case 3: {
                PHAsset *asset = info[UIImagePickerControllerPHAsset];
                NSArray *resourceArr = [PHAssetResource assetResourcesForAsset:asset];
                PHAssetResource *resource = resourceArr.firstObject;
                if (asset.mediaType == PHAssetMediaTypeImage) {
                    PHImageRequestOptions *options = [[PHImageRequestOptions alloc] init];
                    options.version = PHImageRequestOptionsVersionCurrent;
                    options.deliveryMode = PHImageRequestOptionsDeliveryModeHighQualityFormat;
                    options.synchronous = YES;
                    WS(wSelf);
                    [[PHImageManager defaultManager] requestImageDataAndOrientationForAsset:asset options:options resultHandler:^(NSData * _Nullable imageData, NSString * _Nullable dataUTI, CGImagePropertyOrientation orientation, NSDictionary * _Nullable info) {
                        SS(sSelf);
                        UIImage *image = [UIImage imageWithData:imageData];
                        ((TestProjectUIImageModel *)sSelf->_currentSelectTableViewModel).image = image;
                        [sSelf reloadCurrentTableViewModelWithDesc:[NSString stringWithFormat:@"当前%@已选中一张照片\nimage:%@\n%@", [NSDate now], image, info]];
                    }];
                }
            } break;
            default:
                break;
        }
    }
}

- (NSMutableArray *)TestProjectUIImagePickerControllerDelegate_optional_imagePickerController_didFinishPickingMediaWithInfo:(TestProjectTableViewParams *)params {
    WS(wSelf);
    NSArray *arr = @[
        @"UIKIT_EXTERN UIImagePickerControllerInfoKey const UIImagePickerControllerImageURL API_AVAILABLE(ios(11.0)) API_UNAVAILABLE(tvos);  // an NSURL",
        @"UIKIT_EXTERN UIImagePickerControllerInfoKey const UIImagePickerControllerOriginalImage API_UNAVAILABLE(tvos);  // a UIImage",
        @"UIKIT_EXTERN UIImagePickerControllerInfoKey const UIImagePickerControllerReferenceURL API_DEPRECATED(\"Will be removed in a future release, use PHPicker.\", ios(4.1, 11.0)) API_UNAVAILABLE(tvos); // an NSURL that references an asset in the AssetsLibrary framework",
        @"UIKIT_EXTERN UIImagePickerControllerInfoKey const UIImagePickerControllerPHAsset API_DEPRECATED(\"Will be removed in a future release, use PHPicker.\", ios(11.0, API_TO_BE_DEPRECATED)) API_UNAVAILABLE(tvos); // a PHAsset",
    ];
    for (NSInteger i = 0; i < arr.count; i++) {
        NSString *str = arr[i];
        __block TestProjectTableViewModel *m;
        m = [self createModelWithParams:params
                                  title:[NSString stringWithFormat:@"进入选择图片进行回调, 模式为:%@", str]
                                  block:^{
            SS(sSelf);
            UIImagePickerController *imagePickerController = [[UIImagePickerController alloc] init];
            imagePickerController.delegate = sSelf;
            [UIApplication.rootCurrentController presentViewController:imagePickerController animated:YES completion:nil];
            sSelf->_currentSelectTableViewModel = m;
            sSelf->_currentSelectTableViewParams = params;
        }];
        m.atIndex = i;
    }
    return self.dataMutArr;
}

- (NSDictionary *)method_1:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"TestProjectUIImagePickerControllerDelegate的@optional方法, 点击选择图片的回调",
            @"title": @"- (void)imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary<UIImagePickerControllerInfoKey, id> *)info;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectUIImagePickerControllerDelegate_optional_imagePickerController_didFinishPickingMediaWithInfo:params],
            }
        },
    };
}

@end
