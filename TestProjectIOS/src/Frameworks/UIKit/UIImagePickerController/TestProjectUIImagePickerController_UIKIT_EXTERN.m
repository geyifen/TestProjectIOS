//
//  TestProjectUIImagePickerController_UIKIT_EXTERN.m
//  TestProjectIOS
//
//  Created by zjrcumac on 2023/12/14.
//

#import "TestProjectUIImagePickerController_UIKIT_EXTERN.h"

@implementation TestProjectUIImagePickerController_UIKIT_EXTERN

- (void)video:(NSString *)videoPath didFinishSavingWithError:(NSError *)error contextInfo:(void *)contextInfo {
    [TestProjectToast showWithText:@"保存video成功"];
}

- (NSMutableArray *)TestProjectUIImagePickerController_UIKIT_EXTERN_UISaveVideoAtPathToSavedPhotosAlbum:(TestProjectTableViewParams *)params {
    WS(wSelf);
    return [self createModelSingleArrayWithParams:params
                                            title:@"保存video"
                                            block:^{
        UISaveVideoAtPathToSavedPhotosAlbum(nil, wSelf, @selector(video:didFinishSavingWithError:contextInfo:), NULL);
    }];
}

- (NSDictionary *)method_3:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"把图片保存到相册中",
            @"title": @"UIKIT_EXTERN void UISaveVideoAtPathToSavedPhotosAlbum(NSString *videoPath, __nullable id completionTarget, __nullable SEL completionSelector, void * __nullable contextInfo) API_AVAILABLE(ios(3.1)) API_UNAVAILABLE(tvos);",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectUIImagePickerController_UIKIT_EXTERN_UISaveVideoAtPathToSavedPhotosAlbum:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectUIImagePickerController_UIKIT_EXTERN_UIVideoAtPathIsCompatibleWithSavedPhotosAlbum:(TestProjectTableViewParams *)params {
    WS(wSelf);
    return [self createModelSingleArrayWithParams:params
                                            title:@"保存video"
                                            block:^{
        UIVideoAtPathIsCompatibleWithSavedPhotosAlbum(nil);
    }];
}

- (NSDictionary *)method_2:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"把video保存到相册中, 保存后没有回调方法",
            @"title": @"UIKIT_EXTERN BOOL UIVideoAtPathIsCompatibleWithSavedPhotosAlbum(NSString *videoPath) API_AVAILABLE(ios(3.1)) API_UNAVAILABLE(tvos);",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectUIImagePickerController_UIKIT_EXTERN_UIVideoAtPathIsCompatibleWithSavedPhotosAlbum:params],
            }
        },
    };
}

- (void)image:(UIImage *)image didFinishSavingWithError:(NSError *)error contextInfo:(void *)contextInfo {
    [TestProjectToast showWithText:@"保存图片成功"];
}

- (NSMutableArray *)TestProjectUIImagePickerController_UIKIT_EXTERN_UIImageWriteToSavedPhotosAlbum:(TestProjectTableViewParams *)params {
    WS(wSelf);
    return [self createModelSingleArrayWithParams:params
                                            title:@"保存图片"
                                            block:^{
        UIImageWriteToSavedPhotosAlbum([UIImage imageNamed:@"lyf_1"], wSelf, @selector(image:didFinishSavingWithError:contextInfo:), NULL);
    }];
}

- (NSDictionary *)method_1:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"把图片保存到相册中",
            @"title": @"UIKIT_EXTERN void UIImageWriteToSavedPhotosAlbum(UIImage *image, __nullable id completionTarget, __nullable SEL completionSelector, void * __nullable contextInfo) API_UNAVAILABLE(tvos);",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectUIImagePickerController_UIKIT_EXTERN_UIImageWriteToSavedPhotosAlbum:params],
            }
        },
    };
}

@end
