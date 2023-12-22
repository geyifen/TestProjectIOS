//
//  TestProjectUIImagePickerController.m
//  TestProjectIOS
//
//  Created by liwenfan on 2023/12/11.
//

#import "TestProjectUIImagePickerController.h"

#import "TestProjectUIImageCell.h"

@interface TestProjectUIImagePickerController ()

@property (nonatomic, strong) UIImagePickerController *imagePickerController;

@end

@implementation TestProjectUIImagePickerController

- (instancetype)initCreate {
    if (self = [super initCreate]) {
        [self.tableView testproject_updateConstraints:^(TestProjectViewConstrainMake * _Nonnull make) {
            make.height.equal(self).offset(-300);
        }];
    }
    return self;
}

- (UIImagePickerController *)imagePickerController {
    if (!_imagePickerController) {
        WS(wSelf);
        dispatch_main_queue_work(
                                 SS(sSelf);
                                 sSelf->_imagePickerController = [[UIImagePickerController alloc] init];
                                 [sSelf addSubview:sSelf->_imagePickerController.view];
                                 [sSelf.parentVC addChildViewController:sSelf->_imagePickerController];
                                 [sSelf->_imagePickerController.view testproject_makeConstraints:^(TestProjectViewConstrainMake * _Nonnull make) {
                                     make.top.trainling.leading.equal(sSelf);
                                     make.height.equal(@300);
                                 }];
                                 )
    }
    return _imagePickerController;
}

- (id)setPropertyValueObject:(TestProjectTableViewParams *)params {
    return self.imagePickerController;
}

- (Class)createTableModelClass:(TestProjectTableViewParams *)params {
    return TestProjectUIImageModel.class;
}

- (NSMutableArray *)TestProjectUIImagePickerController_property_cameraFlashMode:(TestProjectTableViewParams *)params {
    NSArray *arr = @[
        @{
            @"title": [NSString stringWithFormat:@"设置的属性值是UIImagePickerControllerCameraFlashModeOff(%ld), 闪光灯关闭", UIImagePickerControllerCameraFlashModeOff],
            @"value": @(UIImagePickerControllerCameraFlashModeOff),
        },
        @{
            @"title": [NSString stringWithFormat:@"设置的属性值是UIImagePickerControllerCameraFlashModeAuto(%ld), 闪光灯自动", UIImagePickerControllerCameraFlashModeAuto],
            @"value": @(UIImagePickerControllerCameraFlashModeAuto),
        },
        @{
            @"title": [NSString stringWithFormat:@"设置的属性值是UIImagePickerControllerCameraFlashModeOn(%ld), 闪光灯开启", UIImagePickerControllerCameraFlashModeOn],
            @"value": @(UIImagePickerControllerCameraFlashModeOn),
        },
    ];
    for (NSDictionary *dic in arr) {
        NSString *title = dic[@"title"];
        UIImagePickerControllerCameraFlashMode value = [dic[@"value"] integerValue];
        [self createModelWithParams:params
                              title:[NSString stringWithFormat:@"%@\n获得的属性cameraFlashMode:%ld", title, self.imagePickerController.cameraFlashMode]
                        methodBlock:^NSString * _Nonnull{
            UIImagePickerController *imagePickerController = [[UIImagePickerController alloc] init];
            imagePickerController.cameraFlashMode = value;
            return [NSString stringWithFormat:@"初始化的cameraFlashMode: %ld", imagePickerController.cameraFlashMode];
        }];
    }
    return self.dataMutArr;
}

- (NSDictionary *)method_21:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"UIImagePickerController的属性(cameraFlashMode), 暂不知道作用",
            @"title": @"@property(nonatomic) UIImagePickerControllerCameraFlashMode   cameraFlashMode   API_AVAILABLE(ios(4.0)); // default is UIImagePickerControllerCameraFlashModeAuto.\n// cameraFlashMode controls the still-image flash when cameraCaptureMode is Photo. cameraFlashMode controls the video torch when cameraCaptureMode is Video.",
            @"isDataModelExpand": @(YES),
            @"desc": @"在初始化的时候设置, 必须是在sourceType为UIImagePickerControllerSourceTypeCamera下使用",
            @"dataModel": @{
                @"childItems": [self TestProjectUIImagePickerController_property_cameraFlashMode:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectUIImagePickerController_property_cameraDevice:(TestProjectTableViewParams *)params {
    NSArray *arr = @[
        @{
            @"title": [NSString stringWithFormat:@"设置的属性值是UIImagePickerControllerCameraDeviceRear(%ld)", UIImagePickerControllerCameraDeviceRear],
            @"value": @(UIImagePickerControllerCameraDeviceRear),
        },
        @{
            @"title": [NSString stringWithFormat:@"设置的属性值是UIImagePickerControllerCameraDeviceFront(%ld)", UIImagePickerControllerCameraDeviceFront],
            @"value": @(UIImagePickerControllerCameraDeviceFront),
        },
    ];
    for (NSDictionary *dic in arr) {
        NSString *title = dic[@"title"];
        UIImagePickerControllerCameraDevice value = [dic[@"value"] integerValue];
        [self createModelWithParams:params
                              title:[NSString stringWithFormat:@"%@\n获得的属性cameraDevice:%ld", title, self.imagePickerController.cameraDevice]
                        methodBlock:^NSString * _Nonnull{
            UIImagePickerController *imagePickerController = [[UIImagePickerController alloc] init];
            imagePickerController.cameraDevice = value;
            return [NSString stringWithFormat:@"初始化的cameraDevice: %ld", imagePickerController.cameraDevice];
        }];
    }
    return self.dataMutArr;
}

- (NSDictionary *)method_20:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"UIImagePickerController的属性(cameraDevice), 暂不知道作用",
            @"title": @"@property(nonatomic) UIImagePickerControllerCameraDevice      cameraDevice      API_AVAILABLE(ios(4.0)); // default is UIImagePickerControllerCameraDeviceRear",
            @"isDataModelExpand": @(YES),
            @"desc": @"在初始化的时候设置, 必须是在sourceType为UIImagePickerControllerSourceTypeCamera下使用",
            @"dataModel": @{
                @"childItems": [self TestProjectUIImagePickerController_property_cameraDevice:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectUIImagePickerController_property_cameraCaptureMode:(TestProjectTableViewParams *)params {
    NSArray *arr = @[
        @{
            @"title": [NSString stringWithFormat:@"设置的属性值是UIImagePickerControllerCameraCaptureModePhoto(%ld)", UIImagePickerControllerCameraCaptureModePhoto],
            @"value": @(UIImagePickerControllerCameraCaptureModePhoto),
        },
        @{
            @"title": [NSString stringWithFormat:@"设置的属性值是UIImagePickerControllerCameraCaptureModeVideo(%ld)", UIImagePickerControllerCameraCaptureModeVideo],
            @"value": @(UIImagePickerControllerCameraCaptureModeVideo),
        },
    ];
    for (NSDictionary *dic in arr) {
        NSString *title = dic[@"title"];
        UIImagePickerControllerCameraCaptureMode value = [dic[@"value"] integerValue];
        [self createModelWithParams:params
                              title:[NSString stringWithFormat:@"%@\n获得的属性cameraCaptureMode:%ld", title, self.imagePickerController.cameraCaptureMode]
                        methodBlock:^NSString * _Nonnull{
            UIImagePickerController *imagePickerController = [[UIImagePickerController alloc] init];
            imagePickerController.cameraCaptureMode = value;
            return [NSString stringWithFormat:@"初始化的cameraCaptureMode: %ld", imagePickerController.cameraCaptureMode];
        }];
    }
    return self.dataMutArr;
}

- (NSDictionary *)method_19:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"UIImagePickerController的属性(cameraCaptureMode), 暂不知道作用",
            @"title": @"@property(nonatomic) UIImagePickerControllerCameraCaptureMode cameraCaptureMode API_AVAILABLE(ios(4.0)); // default is UIImagePickerControllerCameraCaptureModePhoto",
            @"isDataModelExpand": @(YES),
            @"desc": @"在初始化的时候设置, 必须是在sourceType为UIImagePickerControllerSourceTypeCamera下使用",
            @"dataModel": @{
                @"childItems": [self TestProjectUIImagePickerController_property_cameraCaptureMode:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectUIImagePickerController_stopVideoCapture:(TestProjectTableViewParams *)params {
    WS(wSelf);
    return [self createModelSingleArrayWithParams:params
                                            title:@"停止录屏"
                                            block:^{
        SS(sSelf);
        [sSelf.imagePickerController stopVideoCapture];
    }];
}

- (NSDictionary *)method_18:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"UIImagePickerController停止录屏",
            @"title": @"- (void)stopVideoCapture  API_AVAILABLE(ios(4.0));",
            @"isDataModelExpand": @(YES),
            @"desc": @"必须是在sourceType为UIImagePickerControllerSourceTypeCamera下使用",
            @"dataModel": @{
                @"childItems": [self TestProjectUIImagePickerController_stopVideoCapture:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectUIImagePickerController_startVideoCapture:(TestProjectTableViewParams *)params {
    WS(wSelf);
    return [self createModelSingleArrayWithParams:params
                                            title:@"开始录屏"
                                            block:^{
        SS(sSelf);
        [sSelf.imagePickerController startVideoCapture];
    }];
}

- (NSDictionary *)method_17:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"UIImagePickerController开始录屏",
            @"title": @"- (BOOL)startVideoCapture API_AVAILABLE(ios(4.0));",
            @"isDataModelExpand": @(YES),
            @"desc": @"必须是在sourceType为UIImagePickerControllerSourceTypeCamera下使用",
            @"dataModel": @{
                @"childItems": [self TestProjectUIImagePickerController_startVideoCapture:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectUIImagePickerController_takePicture:(TestProjectTableViewParams *)params {
    WS(wSelf);
    return [self createModelSingleArrayWithParams:params title:@"开始拍照" block:^{
        SS(sSelf);
        [sSelf.imagePickerController takePicture];
    }];
}

- (NSDictionary *)method_16:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"UIImagePickerController开始拍照",
            @"title": @"- (void)takePicture API_AVAILABLE(ios(3.1));",
            @"isDataModelExpand": @(YES),
            @"desc": @"必须是在sourceType为UIImagePickerControllerSourceTypeCamera下使用",
            @"dataModel": @{
                @"childItems": [self TestProjectUIImagePickerController_takePicture:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectUIImagePickerController_property_cameraViewTransform:(TestProjectTableViewParams *)params {
    return [self createModelSingleArrayWithParams:params
                                            title:[NSString stringWithFormat:@"获得的属性cameraViewTransform:%@", NSStringFromCGAffineTransform(self.imagePickerController.cameraViewTransform)]
                                      methodBlock:^NSString * _Nonnull{
        UIView *view = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 30, 30)];
        view.backgroundColor = [UIColor redColor];
        UIImagePickerController *imagePickerController = [[UIImagePickerController alloc] init];
        imagePickerController.cameraOverlayView = view;
        imagePickerController.cameraViewTransform = CGAffineTransformMakeScale(2, 1);;
        [UIApplication.rootNavController pushViewController:imagePickerController animated:YES];
        return [NSString stringWithFormat:@"初始化的cameraViewTransform: %@", NSStringFromCGAffineTransform(imagePickerController.cameraViewTransform)];
    }];
}

- (NSDictionary *)method_15:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"UIImagePickerController的属性(cameraViewTransform), 暂不知道作用",
            @"title": @"@property(nonatomic)           CGAffineTransform                     cameraViewTransform API_AVAILABLE(ios(3.1));   // set the transform of the preview view.",
            @"isDataModelExpand": @(YES),
            @"desc": @"在初始化的时候设置, 必须是在sourceType为UIImagePickerControllerSourceTypeCamera下使用",
            @"dataModel": @{
                @"childItems": [self TestProjectUIImagePickerController_property_cameraViewTransform:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectUIImagePickerController_property_cameraOverlayView:(TestProjectTableViewParams *)params {
    return [self createModelSingleArrayWithParams:params
                                            title:[NSString stringWithFormat:@"获得的属性cameraOverlayView:%@", self.imagePickerController.cameraOverlayView]
                                      methodBlock:^NSString * _Nonnull{
        UIView *view = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 30, 30)];
        view.backgroundColor = [UIColor redColor];
        UIImagePickerController *imagePickerController = [[UIImagePickerController alloc] init];
        imagePickerController.cameraOverlayView = view;
        [UIApplication.rootNavController pushViewController:imagePickerController animated:YES];
        return [NSString stringWithFormat:@"初始化的cameraOverlayView: %@", imagePickerController.cameraOverlayView];
    }];
}

- (NSDictionary *)method_14:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"UIImagePickerController的属性(cameraOverlayView), 暂不知道作用",
            @"title": @"@property(nullable, nonatomic,strong) __kindof UIView                *cameraOverlayView  API_AVAILABLE(ios(3.1));   // set a view to overlay the preview view.",
            @"isDataModelExpand": @(YES),
            @"desc": @"在初始化的时候设置, 必须是在sourceType为UIImagePickerControllerSourceTypeCamera下使用",
            @"dataModel": @{
                @"childItems": [self TestProjectUIImagePickerController_property_cameraOverlayView:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectUIImagePickerController_property_showsCameraControls:(TestProjectTableViewParams *)params {
    NSArray *arr = @[
        @{
            @"title": [NSString stringWithFormat:@"设置的属性值是YES"],
            @"value": @(YES),
        },
        @{
            @"title": [NSString stringWithFormat:@"设置的属性值是NO"],
            @"value": @(NO),
        },
    ];
    for (NSDictionary *dic in arr) {
        NSString *title = dic[@"title"];
        BOOL value = [dic[@"value"] boolValue];
        [self createModelWithParams:params
                              title:[NSString stringWithFormat:@"%@\n获得的属性showsCameraControls:%u", title, self.imagePickerController.showsCameraControls]
                        methodBlock:^NSString * _Nonnull{
            UIImagePickerController *imagePickerController = [[UIImagePickerController alloc] init];
            imagePickerController.showsCameraControls = value;
            [UIApplication.rootNavController pushViewController:imagePickerController animated:YES];
            return [NSString stringWithFormat:@"初始化的showsCameraControls: %u", imagePickerController.showsCameraControls];
        }];
    }
    return self.dataMutArr;
}

- (NSDictionary *)method_13:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"UIImagePickerController的属性(showsCameraControls), 暂不知道作用",
            @"title": @"// camera additions available only if sourceType is UIImagePickerControllerSourceTypeCamera.\n@property(nonatomic)           BOOL                                  showsCameraControls API_AVAILABLE(ios(3.1));   // set to NO to hide all standard camera UI. default is YES",
            @"isDataModelExpand": @(YES),
            @"desc": @"在初始化的时候设置, 必须是在sourceType为UIImagePickerControllerSourceTypeCamera下使用",
            @"dataModel": @{
                @"childItems": [self TestProjectUIImagePickerController_property_showsCameraControls:params],
            }
        },
    };
}

//typedef NS_ENUM(NSInteger, UIImagePickerControllerQualityType) {
//    UIImagePickerControllerQualityTypeHigh = 0,       // highest quality
//    UIImagePickerControllerQualityTypeMedium = 1,     // medium quality, suitable for transmission via Wi-Fi
//    UIImagePickerControllerQualityTypeLow = 2,         // lowest quality, suitable for transmission via cellular network
//    UIImagePickerControllerQualityType640x480 API_AVAILABLE(ios(4.0)) = 3,    // VGA quality
//    UIImagePickerControllerQualityTypeIFrame1280x720 API_AVAILABLE(ios(5.0)) = 4,
//    UIImagePickerControllerQualityTypeIFrame960x540 API_AVAILABLE(ios(5.0)) = 5,
//} API_UNAVAILABLE(tvos);

- (NSMutableArray *)TestProjectUIImagePickerController_property_videoQuality:(TestProjectTableViewParams *)params {
    NSArray *arr = @[
        @{
            @"title": [NSString stringWithFormat:@"设置的属性值是UIImagePickerControllerQualityTypeHigh(%ld)", UIImagePickerControllerQualityTypeHigh],
            @"value": @(UIImagePickerControllerQualityTypeHigh),
        },
        @{
            @"title": [NSString stringWithFormat:@"设置的属性值是UIImagePickerControllerQualityTypeMedium(%ld)", UIImagePickerControllerQualityTypeMedium],
            @"value": @(UIImagePickerControllerQualityTypeMedium),
        },
        @{
            @"title": [NSString stringWithFormat:@"设置的属性值是UIImagePickerControllerQualityTypeLow(%ld)", UIImagePickerControllerQualityTypeLow],
            @"value": @(UIImagePickerControllerQualityTypeLow),
        },
        @{
            @"title": [NSString stringWithFormat:@"设置的属性值是UIImagePickerControllerQualityType640x480(%ld)", UIImagePickerControllerQualityType640x480],
            @"value": @(UIImagePickerControllerQualityType640x480),
        },
        @{
            @"title": [NSString stringWithFormat:@"设置的属性值是UIImagePickerControllerQualityTypeIFrame1280x720(%ld)", UIImagePickerControllerQualityTypeIFrame1280x720],
            @"value": @(UIImagePickerControllerQualityTypeIFrame1280x720),
        },
        @{
            @"title": [NSString stringWithFormat:@"设置的属性值是UIImagePickerControllerQualityTypeIFrame960x540(%ld)", UIImagePickerControllerQualityTypeIFrame960x540],
            @"value": @(UIImagePickerControllerQualityTypeIFrame960x540),
        },
    ];
    for (NSDictionary *dic in arr) {
        NSString *title = dic[@"title"];
        UIImagePickerControllerQualityType value = [dic[@"value"] integerValue];
        [self createModelWithParams:params
                              title:[NSString stringWithFormat:@"%@\n获得的属性videoQuality:%ld", title, self.imagePickerController.videoQuality]
                        methodBlock:^NSString * _Nonnull{
            UIImagePickerController *imagePickerController = [[UIImagePickerController alloc] init];
            imagePickerController.videoQuality = value;
            return [NSString stringWithFormat:@"初始化的videoQuality: %ld", imagePickerController.videoQuality];
        }];
    }
    return self.dataMutArr;
}

- (NSDictionary *)method_12:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"UIImagePickerController的设置video的品质属性(videoQuality)",
            @"title": @"@property(nonatomic)           UIImagePickerControllerQualityType    videoQuality API_AVAILABLE(ios(3.1));         // default value is UIImagePickerControllerQualityTypeMedium. If the cameraDevice does not support the videoQuality, it will use the default value.",
            @"isDataModelExpand": @(YES),
            @"desc": @"在初始化的时候设置",
            @"dataModel": @{
                @"childItems": [self TestProjectUIImagePickerController_property_videoQuality:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectUIImagePickerController_property_videoMaximumDuration:(TestProjectTableViewParams *)params {
    return [self createModelSingleArrayWithParams:params
                                            title:[NSString stringWithFormat:@"获得的属性videoMaximumDuration:%f", self.imagePickerController.videoMaximumDuration]
                                      methodBlock:^NSString * _Nonnull{
        UIImagePickerController *imagePickerController = [[UIImagePickerController alloc] init];
        imagePickerController.videoMaximumDuration = 30 * 60;
        [UIApplication.rootCurrentController presentViewController:imagePickerController animated:YES completion:nil];
        return [NSString stringWithFormat:@"初始化的videoMaximumDuration: %f", imagePickerController.videoMaximumDuration];
    }];
}

- (NSDictionary *)method_11:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"UIImagePickerController的有kUTTypeMovie的资源类型时长属性(videoMaximumDuration)",
            @"title": @"@property(nonatomic)           NSTimeInterval                        videoMaximumDuration API_AVAILABLE(ios(3.1)); // default value is 10 minutes.",
            @"isDataModelExpand": @(YES),
            @"desc": @"在初始化的时候设置",
            @"dataModel": @{
                @"childItems": [self TestProjectUIImagePickerController_property_videoMaximumDuration:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectUIImagePickerController_property_imageExportPreset:(TestProjectTableViewParams *)params {
    NSArray *arr = @[
        @{
            @"title": [NSString stringWithFormat:@"设置的属性是:UIImagePickerControllerImageURLExportPresetCompatible(%ld)", UIImagePickerControllerImageURLExportPresetCompatible],
            @"value": @(UIImagePickerControllerImageURLExportPresetCompatible),
        },
        @{
            @"title": [NSString stringWithFormat:@"设置的属性是:UIImagePickerControllerImageURLExportPresetCurrent(%ld)", UIImagePickerControllerImageURLExportPresetCurrent],
            @"value": @(UIImagePickerControllerImageURLExportPresetCurrent),
        },
    ];
    for (NSDictionary *dic in arr) {
        NSString *title = dic[@"title"];
        NSNumber *value = dic[@"value"];
        [self createModelWithParams:params
                              title:title
                           property:@"imageExportPreset"
                              value:value
                          operation:TestProjectCreateModelGetBeforeClickSet
                              block:^{
            UIImagePickerController *imagePickerController = [[UIImagePickerController alloc] init];
            imagePickerController.imageExportPreset = [value integerValue];
            [UIApplication.rootCurrentController presentViewController:imagePickerController animated:YES completion:nil];
        }];
    }
    return self.dataMutArr;
}

- (NSDictionary *)method_10:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"UIImagePickerController的属性(imageExportPreset), 暂不知道作用",
            @"title": @"@property(nonatomic)           UIImagePickerControllerImageURLExportPreset imageExportPreset API_DEPRECATED(\"Will be removed in a future release, use PHPicker.\", ios(11.0, API_TO_BE_DEPRECATED));  // default value is UIImagePickerControllerImageExportPresetCompatible.",
            @"isDataModelExpand": @(YES),
            @"desc": @"在初始化的时候设置，当为YES时在选中照片后可以进行编辑在返回图片的代理",
            @"dataModel": @{
                @"childItems": [self TestProjectUIImagePickerController_property_imageExportPreset:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectUIImagePickerController_property_allowsEditing:(TestProjectTableViewParams *)params {
    NSArray *arr = @[
        @{
            @"title": @"设置的属性是:YES",
            @"value": @(YES),
        },
        @{
            @"title": @"设置的属性是:NO",
            @"value": @(NO),
        },
    ];
    for (NSDictionary *dic in arr) {
        NSString *title = dic[@"title"];
        NSNumber *value = dic[@"value"];
        [self createModelWithParams:params
                              title:title
                           property:@"allowsEditing"
                              value:value
                          operation:TestProjectCreateModelGetBeforeClickSet
                              block:^{
            UIImagePickerController *imagePickerController = [[UIImagePickerController alloc] init];
            imagePickerController.allowsEditing = [value boolValue];
            [UIApplication.rootCurrentController presentViewController:imagePickerController animated:YES completion:nil];
        }];
    }
    return self.dataMutArr;
}

- (NSDictionary *)method_9:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"UIImagePickerController的是否允许编辑属性(allowsEditing)",
            @"title": @"@property(nonatomic)           BOOL                                  allowsEditing API_AVAILABLE(ios(3.1));     // replacement for -allowsImageEditing; default value is NO.",
            @"isDataModelExpand": @(YES),
            @"desc": @"在初始化的时候设置，当为YES时在选中照片后可以进行编辑在返回图片的代理",
            @"dataModel": @{
                @"childItems": [self TestProjectUIImagePickerController_property_allowsEditing:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectUIImagePickerController_property_mediaTypes:(TestProjectTableViewParams *)params {
    return [self createModelSingleArrayWithParams:params
                                         property:@"mediaTypes"
                                            value:nil
                                        operation:TestProjectCreateModelGetBeforeClickGet
                                            block:nil];
}

- (NSDictionary *)method_8:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"UIImagePickerController的媒体资源属性(mediaTypes)",
            @"title": @"@property(nonatomic,copy)      NSArray<NSString *>                   *mediaTypes;// default value is an array containing kUTTypeImage.",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectUIImagePickerController_property_mediaTypes:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectUIImagePickerController_property_sourceType:(TestProjectTableViewParams *)params {
    NSArray *arr = @[
        @{
            @"title": [NSString stringWithFormat:@"设置的属性是:UIImagePickerControllerSourceTypePhotoLibrary(%ld), 是否可以访问相册", UIImagePickerControllerSourceTypePhotoLibrary],
            @"value": @(UIImagePickerControllerSourceTypePhotoLibrary),
        },
        @{
            @"title": [NSString stringWithFormat:@"设置的属性是:UIImagePickerControllerSourceTypeCamera(%ld), 是否可以访问相机拍照", UIImagePickerControllerSourceTypeCamera],
            @"value": @(UIImagePickerControllerSourceTypeCamera),
        },
        @{
            @"title": [NSString stringWithFormat:@"设置的属性是:UIImagePickerControllerSourceTypeSavedPhotosAlbum(%ld), 是否可以访问相册", UIImagePickerControllerSourceTypeSavedPhotosAlbum],
            @"value": @(UIImagePickerControllerSourceTypeSavedPhotosAlbum),
        },
    ];
    for (NSDictionary *dic in arr) {
        NSString *title = dic[@"title"];
        NSNumber *value = dic[@"value"];
        [self createModelWithParams:params
                              title:title
                           property:@"sourceType"
                              value:value
                          operation:TestProjectCreateModelGetBeforeClickSet
                              block:^{
            UIImagePickerController *imagePickerController = [[UIImagePickerController alloc] init];
            imagePickerController.sourceType = [value integerValue];
            [UIApplication.rootCurrentController presentViewController:imagePickerController animated:YES completion:nil];
        }];
    }
    return self.dataMutArr;
}

- (NSDictionary *)method_7:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"UIImagePickerController的展示图片列表样式属性(sourceType)",
            @"title": @"@property(nonatomic)           UIImagePickerControllerSourceType     sourceType;                                                        // default value is UIImagePickerControllerSourceTypePhotoLibrary.",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectUIImagePickerController_property_sourceType:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectUIImagePickerController_property_delegate:(TestProjectTableViewParams *)params {
    return [self createModelSingleArrayWithParams:params
                                         property:@"delegate"
                                            value:self
                                        operation:TestProjectCreateModelGetBeforeClickSet
                                            block:nil];
}

- (NSDictionary *)method_6:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"UIImagePickerController的代理属性(delegate)",
            @"title": @"@property(nullable,nonatomic,weak)      id <UINavigationControllerDelegate, UIImagePickerControllerDelegate> delegate;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectUIImagePickerController_property_delegate:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectUIImagePickerController_class_availableCaptureModesForCameraDevice:(TestProjectTableViewParams *)params {
    NSArray *arr = @[
        @{
            @"title": [NSString stringWithFormat:@"设置的属性是:UIImagePickerControllerCameraDeviceRear(%ld), 后置摄像头是否可以使用", UIImagePickerControllerCameraDeviceRear],
            @"value": @(UIImagePickerControllerCameraDeviceRear),
        },
        @{
            @"title": [NSString stringWithFormat:@"设置的属性是:UIImagePickerControllerCameraDeviceFront(%ld), 前置摄像头是否可以使用", UIImagePickerControllerCameraDeviceFront],
            @"value": @(UIImagePickerControllerCameraDeviceFront),
        },
    ];
    for (NSDictionary *dic in arr) {
        NSString *title = dic[@"title"];
        UIImagePickerControllerCameraDevice value = [dic[@"value"] integerValue];
        NSArray *res = [UIImagePickerController availableCaptureModesForCameraDevice:value];
        [self createModelWithParams:params
                              title:[NSString stringWithFormat:@"%@:%@", title, res]
                              block:nil];
    }
    return self.dataMutArr;
}

- (NSDictionary *)method_5:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"判断当前相册的拍照模式可用的情况下，获取捕获的资源类型有哪些",
            @"title": @"+ (nullable NSArray<NSNumber *> *)availableCaptureModesForCameraDevice:(UIImagePickerControllerCameraDevice)cameraDevice API_AVAILABLE(ios(4.0)); // returns array of NSNumbers (UIImagePickerControllerCameraCaptureMode)",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectUIImagePickerController_class_availableCaptureModesForCameraDevice:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectUIImagePickerController_class_isFlashAvailableForCameraDevice:(TestProjectTableViewParams *)params {
    NSArray *arr = @[
        @{
            @"title": [NSString stringWithFormat:@"设置的属性是:UIImagePickerControllerCameraDeviceRear(%ld), 后置摄像头是否可以使用", UIImagePickerControllerCameraDeviceRear],
            @"value": @(UIImagePickerControllerCameraDeviceRear),
        },
        @{
            @"title": [NSString stringWithFormat:@"设置的属性是:UIImagePickerControllerCameraDeviceFront(%ld), 前置摄像头是否可以使用", UIImagePickerControllerCameraDeviceFront],
            @"value": @(UIImagePickerControllerCameraDeviceFront),
        },
    ];
    for (NSDictionary *dic in arr) {
        NSString *title = dic[@"title"];
        UIImagePickerControllerCameraDevice value = [dic[@"value"] integerValue];
        BOOL res = [UIImagePickerController isFlashAvailableForCameraDevice:value];
        [self createModelWithParams:params
                              title:[NSString stringWithFormat:@"%@:%u", title, res]
                              block:nil];
    }
    return self.dataMutArr;
}

- (NSDictionary *)method_4:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"判断当前相册的拍照模式可用的情况下，闪光灯是否可以使用",
            @"title": @"+ (BOOL)isFlashAvailableForCameraDevice:(UIImagePickerControllerCameraDevice)cameraDevice           API_AVAILABLE(ios(4.0)); // returns YES if camera device supports flash and torch.",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectUIImagePickerController_class_isFlashAvailableForCameraDevice:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectUIImagePickerController_class_isCameraDeviceAvailable:(TestProjectTableViewParams *)params {
    NSArray *arr = @[
        @{
            @"title": [NSString stringWithFormat:@"设置的属性是:UIImagePickerControllerCameraDeviceRear(%ld), 后置摄像头是否可以使用", UIImagePickerControllerCameraDeviceRear],
            @"value": @(UIImagePickerControllerCameraDeviceRear),
        },
        @{
            @"title": [NSString stringWithFormat:@"设置的属性是:UIImagePickerControllerCameraDeviceFront(%ld), 前置摄像头是否可以使用", UIImagePickerControllerCameraDeviceFront],
            @"value": @(UIImagePickerControllerCameraDeviceFront),
        },
    ];
    for (NSDictionary *dic in arr) {
        NSString *title = dic[@"title"];
        UIImagePickerControllerCameraDevice value = [dic[@"value"] integerValue];
        BOOL res = [UIImagePickerController isCameraDeviceAvailable:value];
        [self createModelWithParams:params
                              title:[NSString stringWithFormat:@"%@:%u", title, res]
                              block:nil];
    }
    return self.dataMutArr;
}

- (NSDictionary *)method_3:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"判断当前相册的拍照模式可用的情况下，摄像头是否可以使用",
            @"title": @"+ (BOOL)isCameraDeviceAvailable:(UIImagePickerControllerCameraDevice)cameraDevice                   API_AVAILABLE(ios(4.0)); // returns YES if camera device is available",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectUIImagePickerController_class_isCameraDeviceAvailable:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectUIImagePickerController_class_availableMediaTypesForSourceType:(TestProjectTableViewParams *)params {
    NSArray *arr = @[
        @{
            @"title": [NSString stringWithFormat:@"设置的属性是:UIImagePickerControllerSourceTypePhotoLibrary(%ld), 是否可以访问相册", UIImagePickerControllerSourceTypePhotoLibrary],
            @"value": @(UIImagePickerControllerSourceTypePhotoLibrary),
        },
        @{
            @"title": [NSString stringWithFormat:@"设置的属性是:UIImagePickerControllerSourceTypeCamera(%ld), 是否可以访问相机拍照", UIImagePickerControllerSourceTypeCamera],
            @"value": @(UIImagePickerControllerSourceTypeCamera),
        },
        @{
            @"title": [NSString stringWithFormat:@"设置的属性是:UIImagePickerControllerSourceTypeSavedPhotosAlbum(%ld), 是否可以访问相册", UIImagePickerControllerSourceTypeSavedPhotosAlbum],
            @"value": @(UIImagePickerControllerSourceTypeSavedPhotosAlbum),
        },
    ];
    for (NSDictionary *dic in arr) {
        NSString *title = dic[@"title"];
        UIImagePickerControllerSourceType value = [dic[@"value"] integerValue];
        NSArray *res = [UIImagePickerController availableMediaTypesForSourceType:value];
        [self createModelWithParams:params
                              title:[NSString stringWithFormat:@"%@:%@", title, res]
                              block:nil];
    }
    return self.dataMutArr;
}

- (NSDictionary *)method_2:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"判断当前相册的模式能访问的资源类型有哪些",
            @"title": @"+ (nullable NSArray<NSString *> *)availableMediaTypesForSourceType:(UIImagePickerControllerSourceType)sourceType; // returns array of available media types (i.e. kUTTypeImage)",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectUIImagePickerController_class_availableMediaTypesForSourceType:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectUIImagePickerController_class_isSourceTypeAvailable:(TestProjectTableViewParams *)params {
    NSArray *arr = @[
        @{
            @"title": [NSString stringWithFormat:@"设置的属性是:UIImagePickerControllerSourceTypePhotoLibrary(%ld), 是否可以访问相册", UIImagePickerControllerSourceTypePhotoLibrary],
            @"value": @(UIImagePickerControllerSourceTypePhotoLibrary),
        },
        @{
            @"title": [NSString stringWithFormat:@"设置的属性是:UIImagePickerControllerSourceTypeCamera(%ld), 是否可以访问相机拍照", UIImagePickerControllerSourceTypeCamera],
            @"value": @(UIImagePickerControllerSourceTypeCamera),
        },
        @{
            @"title": [NSString stringWithFormat:@"设置的属性是:UIImagePickerControllerSourceTypeSavedPhotosAlbum(%ld), 是否可以访问相册", UIImagePickerControllerSourceTypeSavedPhotosAlbum],
            @"value": @(UIImagePickerControllerSourceTypeSavedPhotosAlbum),
        },
    ];
    for (NSDictionary *dic in arr) {
        NSString *title = dic[@"title"];
        UIImagePickerControllerSourceType value = [dic[@"value"] integerValue];
        BOOL res = [UIImagePickerController isSourceTypeAvailable:value];
        [self createModelWithParams:params
                              title:[NSString stringWithFormat:@"%@:%u", title, res]
                              block:nil];
    }
    return self.dataMutArr;
}

- (NSDictionary *)method_1:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"判断当前相册能使用什么模式调用的",
            @"title": @"+ (BOOL)isSourceTypeAvailable:(UIImagePickerControllerSourceType)sourceType;                 // returns YES if source is available (i.e. camera present)",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectUIImagePickerController_class_isSourceTypeAvailable:params],
            }
        },
    };
}

@end
