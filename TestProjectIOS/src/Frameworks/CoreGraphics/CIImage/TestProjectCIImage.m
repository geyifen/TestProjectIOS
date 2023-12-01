//
//  TestProjectCIImage.m
//  TestProjectIOS
//
//  Created by zjrcumac on 2023/11/6.
//

#import "TestProjectCIImage.h"

#import "TestProjectUIImageCell.h"

@interface TestProjectCIImage ()

@property (nonatomic, assign) CGImageRef currentImageRef;
@property (nonatomic, assign) CGDataProviderRef providerRef;
@property (nonatomic, assign) CGImageRef imageRef;

@end

@implementation TestProjectCIImage

- (Class)createTableModelClass:(TestProjectTableViewParams *)params {
    return TestProjectUIImageModel.class;
}

- (void)dealloc {
    CGImageRelease(_currentImageRef);
    CGImageRelease(_imageRef);
    CGDataProviderRelease(_providerRef);
}

- (CGDataProviderRef)providerRef {
    if (!_providerRef) {
        size_t imageW = 200;
        size_t imageH = 300;
        int byteIndex = 0;
        size_t allSize = imageW * imageH * 4;
        unsigned char *rawData = (unsigned char *) malloc(allSize);
        for (int i = 0; i < imageH; i++) {
            for (int j = 0; j < imageW; j++) {
                rawData[byteIndex++] = 255; //red 通道
                rawData[byteIndex++] = 0;   //green 通道
                rawData[byteIndex++] = 0;   //blue 通道
                rawData[byteIndex++] = 255; //alpha 通道
            }
        }
        _providerRef = CGDataProviderCreateWithData(NULL, rawData, allSize, NULL);
    }
    return _providerRef;
}

- (CGImageRef)currentImageRef {
    if (!_currentImageRef) {
        size_t imageW = 200;
        size_t imageH = 300;
        size_t bitsPerComponent = 8;
        size_t bitsPerPixel = 32;
        size_t bytesPerRow = imageW * bitsPerPixel / 8;
        CGColorSpaceRef colorSpaceRef = CGColorSpaceCreateDeviceRGB();
        CGBitmapInfo bitmapInfo = kCGImageAlphaPremultipliedLast | kCGImageByteOrderDefault;
        CGImageRef imageRef = CGImageCreate(imageW, imageH, bitsPerComponent, bitsPerPixel, bytesPerRow, colorSpaceRef, bitmapInfo, self.providerRef, nil, NO, kCGRenderingIntentDefault);
        CGColorSpaceRelease(colorSpaceRef);
        _currentImageRef = imageRef;
    }
    return _currentImageRef;
}

- (CGImageRef)imageRef {
    if (!_imageRef) {
        _imageRef = [UIImage imageNamed:@"lyf_1"].CGImage;
    }
    return _imageRef;
}

- (void)createViewModelWithParams:(TestProjectTableViewParams *)params title:(NSString *)title ciImage:(CIImage *)ciImage {
    UIImage *image = [UIImage imageWithCIImage:ciImage];
    [self createModelWithParams:params
                         title:[NSString stringWithFormat:@"%@\nimage:%@\nsize:%@", title, image, NSStringFromCGSize(image.size)]
                 modelKeyValue:@{@"image":image}
                         block:nil];
}

- (NSMutableArray *)createViewModelWithParams:(TestProjectTableViewParams *)params ciImage:(CIImage *)ciImage {
    UIImage *image = [UIImage imageWithCIImage:ciImage];
    return [self createModelSingleArrayWithParams:params
                                    modelKeyValue:@{@"image":image, @"title": [NSString stringWithFormat:@"size:%@", NSStringFromCGSize(image.size)]}
                                            block:nil];
}

- (NSMutableArray *)TestProjectCIImage_class_imageWithCGImageSource_index_options:(TestProjectTableViewParams *)params {
    CGImageSourceRef sourceRef = CGImageSourceCreateWithDataProvider(self.providerRef, NULL);
    CIImage *ciImage = [CIImage imageWithCGImageSource:sourceRef index:0 options:@{kCIImageAuxiliaryDepth:@(YES)}];
    return [self createViewModelWithParams:params ciImage:ciImage];
}

- (NSDictionary *)method_3:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"通过CGImageRef获取CIImage的class方法",
            @"title": @"+ (CIImage *)imageWithCGImageSource:(CGImageSourceRef)source index:(size_t)index options:(nullable NSDictionary<CIImageOption, id> *)dict NS_AVAILABLE(10_15, 13_0);",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectCIImage_class_imageWithCGImageSource_index_options:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectCIImage_class_imageWithCGImage_options:(TestProjectTableViewParams *)params {
    if (@available(iOS 14.3, *)) {
        NSArray *arr = @[
            @{
                @"title": @"设置的是kCIImageColorSpace:CGColorSpaceCreateDeviceRGB()",
                @"value": @{kCIImageColorSpace:(__bridge_transfer UIColor *)CGColorSpaceCreateDeviceRGB()},
            },
            @{
                @"title": @"设置的是kCIImageColorSpace:[NSNull null]",
                @"value": @{kCIImageColorSpace:[NSNull null]},
            },
            @{
                @"title": @"设置的是kCIImageToneMapHDRtoSDR:NO",
                @"value": @{kCIImageToneMapHDRtoSDR:@(NO)},
            },
            @{
                @"title": @"设置的是kCIImageToneMapHDRtoSDR:YES",
                @"value": @{kCIImageToneMapHDRtoSDR:@(YES)},
            },
            @{
                @"title": @"设置的是kCIImageNearestSampling:NO",
                @"value": @{kCIImageNearestSampling:@(NO)},
            },
            @{
                @"title": @"设置的是kCIImageNearestSampling:YES",
                @"value": @{kCIImageNearestSampling:@(YES)},
            },
            @{
                @"title": @"设置的是kCIImageProperties:[NSNull null]",
                @"value": @{kCIImageProperties:[NSNull null]},
            },
            @{
                @"title": @"设置的是kCIImageApplyOrientationProperty:NO",
                @"value": @{kCIImageApplyOrientationProperty:@(NO)},
            },
            @{
                @"title": @"设置的是kCIImageApplyOrientationProperty:YES",
                @"value": @{kCIImageApplyOrientationProperty:@(YES)},
            },
            @{
                @"title": @"设置的是kCIImageAuxiliaryDepth:NO",
                @"value": @{kCIImageAuxiliaryDepth:@(NO)},
            },
            @{
                @"title": @"设置的是kCIImageAuxiliaryDepth:YES",
                @"value": @{kCIImageAuxiliaryDepth:@(YES)},
            },
            @{
                @"title": @"设置的是kCIImageAuxiliaryDisparity:NO",
                @"value": @{kCIImageAuxiliaryDisparity:@(NO)},
            },
            @{
                @"title": @"设置的是kCIImageAuxiliaryDisparity:YES",
                @"value": @{kCIImageAuxiliaryDisparity:@(YES)},
            },
            @{
                @"title": @"设置的是kCIImageAuxiliaryPortraitEffectsMatte:NO",
                @"value": @{kCIImageAuxiliaryPortraitEffectsMatte:@(NO)},
            },
            @{
                @"title": @"设置的是kCIImageAuxiliaryPortraitEffectsMatte:YES",
                @"value": @{kCIImageAuxiliaryPortraitEffectsMatte:@(YES)},
            },
            @{
                @"title": @"设置的是kCIImageAuxiliarySemanticSegmentationSkinMatte:NO",
                @"value": @{kCIImageAuxiliarySemanticSegmentationSkinMatte:@(NO)},
            },
            @{
                @"title": @"设置的是kCIImageAuxiliarySemanticSegmentationSkinMatte:YES",
                @"value": @{kCIImageAuxiliarySemanticSegmentationSkinMatte:@(YES)},
            },
            @{
                @"title": @"设置的是kCIImageAuxiliarySemanticSegmentationHairMatte:NO",
                @"value": @{kCIImageAuxiliarySemanticSegmentationHairMatte:@(NO)},
            },
            @{
                @"title": @"设置的是kCIImageAuxiliarySemanticSegmentationHairMatte:YES",
                @"value": @{kCIImageAuxiliarySemanticSegmentationHairMatte:@(YES)},
            },
            @{
                @"title": @"设置的是kCIImageAuxiliarySemanticSegmentationTeethMatte:NO",
                @"value": @{kCIImageAuxiliarySemanticSegmentationTeethMatte:@(NO)},
            },
            @{
                @"title": @"设置的是kCIImageAuxiliarySemanticSegmentationTeethMatte:YES",
                @"value": @{kCIImageAuxiliarySemanticSegmentationTeethMatte:@(YES)},
            },
            @{
                @"title": @"设置的是kCIImageAuxiliarySemanticSegmentationGlassesMatte:NO",
                @"value": @{kCIImageAuxiliarySemanticSegmentationGlassesMatte:@(NO)},
            },
            @{
                @"title": @"设置的是kCIImageAuxiliarySemanticSegmentationGlassesMatte:YES",
                @"value": @{kCIImageAuxiliarySemanticSegmentationGlassesMatte:@(YES)},
            },
            @{
                @"title": @"设置的是kCIImageAuxiliarySemanticSegmentationSkyMatte:NO",
                @"value": @{kCIImageAuxiliarySemanticSegmentationSkyMatte:@(NO)},
            },
            @{
                @"title": @"设置的是kCIImageAuxiliarySemanticSegmentationSkyMatte:YES",
                @"value": @{kCIImageAuxiliarySemanticSegmentationSkyMatte:@(YES)},
            },
        ];
        for (NSDictionary *dic in arr) {
            CIImage *ciImage = [CIImage imageWithCGImage:self.imageRef options:dic[@"value"]];
            [self createViewModelWithParams:params title:dic[@"title"] ciImage:ciImage];
        }
    }
    return self.dataMutArr;
}

- (NSDictionary *)method_2:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"通过CGImageRef和CIImageOption获取CIImage的class方法",
            @"title": @"+ (CIImage *)imageWithCGImage:(CGImageRef)image options:(nullable NSDictionary<CIImageOption, id> *)options;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectCIImage_class_imageWithCGImage_options:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectCIImage_class_imageWithCGImage:(TestProjectTableViewParams *)params {
    CIImage *ciImage = [CIImage imageWithCGImage:self.currentImageRef];
    return [self createViewModelWithParams:params ciImage:ciImage];
}

- (NSDictionary *)method_1:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"通过CGImageRef获取CIImage的class方法",
            @"title": @"+ (CIImage *)imageWithCGImage:(CGImageRef)image;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectCIImage_class_imageWithCGImage:params],
            }
        },
    };
}

@end
