//
//  TestProjectImage.m
//  TestProjectIOS
//
//  Created by liwenfan on 2023/10/25.
//

#import "TestProjectImage.h"

#import "TestProjectUIImageCell.h"

#import <CoreImage/CoreImage.h>

@interface TestProjectChildImage : UIImage

@end

@implementation TestProjectChildImage

- (void)drawAtPoint:(CGPoint)point {
    [super drawAtPoint:CGPointMake(10, 10)];
}

@end

@interface TestProjectImage ()

@property (nonatomic, assign) CGImageRef currentImageRef;
@property (nonatomic, assign) CGDataProviderRef providerRef;
@property (nonatomic, strong) CIImage *currentCIImage;
@property (nonatomic, strong) TestProjectChildImage *image;

@property (nonatomic, strong) UIImage *imageList;
@property (nonatomic, strong) UIImage *resizingModeImage;

@end

@implementation TestProjectImage

- (void)dealloc {
    CGImageRelease(_currentImageRef);
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

- (CIImage *)currentCIImage {
    if (!_currentCIImage) {
        _currentCIImage = [CIImage imageWithCGImage:self.currentImageRef];
    }
    return _currentCIImage;
}

- (TestProjectChildImage *)image {
    if (!_image) {
        _image = [TestProjectChildImage imageNamed:@"lyf_2"];
    }
    return _image;
}

- (UIImage *)imageList {
    if (!_imageList) {
        _imageList = [UIImage animatedImageWithImages:@[[UIImage imageNamed:@"lyf_1"], [UIImage imageNamed:@"lyf_2"]] duration:4];
    }
    return _imageList;
}

- (UIImage *)resizingModeImage {
    if (!_resizingModeImage) {
        _resizingModeImage = [[UIImage imageNamed:@"lyf_2"] resizableImageWithCapInsets:UIEdgeInsetsMake(5, 10, 5, 10) resizingMode:UIImageResizingModeStretch];
    }
    return _resizingModeImage;
}

- (Class)createTableModelClass:(TestProjectTableViewParams *)params {
    if (params.methodIndex >= 19 && params.methodIndex <= 24) {
        return [super createTableModelClass:params];
    }
    return TestProjectUIImageModel.class;
}

- (id)setPropertyValueObject:(TestProjectTableViewParams *)params {
    return self.image;
}

- (NSMutableArray *)TestProjectImage_prepareThumbnailOfSize_completionHandler:(TestProjectTableViewParams *)params {
    __block UIImage *image = [UIImage imageNamed:@"lyf_2"];
    if (@available(iOS 15.0, *)) {
        [image prepareThumbnailOfSize:CGSizeMake(10, 10) completionHandler:^(UIImage *newImage) {
            image = newImage;
        }];
    } else {
        // Fallback on earlier versions
    }
    __block TestProjectUIImageModel *m;
    m = [self createModelWithParams:params title:@"点击更新压缩的图片" methodBlock:^NSString * _Nonnull{
        m.image = image;
        return [NSString stringWithFormat:@"size:%@", NSStringFromCGSize(image.size)];
    }];
    return self.dataMutArr;
}

- (NSDictionary *)method_58:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"修改UIImage的整个图标颜色(TintColor)",
            @"title": @"- (void)prepareThumbnailOfSize:(CGSize)size completionHandler:(void (^)(UIImage *_Nullable))completionHandler NS_SWIFT_ASYNC_NAME(byPreparingThumbnail(ofSize:)) API_AVAILABLE(ios(15.0),tvos(15.0),watchos(8.0));",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectImage_prepareThumbnailOfSize_completionHandler:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectImage_imageWithTintColor_renderingMode:(TestProjectTableViewParams *)params {
    UIImage *image = [[UIImage imageNamed:@"arrow_down"] imageWithTintColor:[UIColor redColor] renderingMode:UIImageRenderingModeAlwaysOriginal];
    return [self createModelSingleArrayWithParams:params
                                            title:[NSString stringWithFormat:@"size:%@", NSStringFromCGSize(image.size)]
                                    modelKeyValue:@{@"image":image}
                                            block:nil];
}

- (NSDictionary *)method_57:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"修改UIImage的整个图标颜色(TintColor)",
            @"title": @"- (UIImage *)imageWithTintColor:(UIColor *)color renderingMode:(UIImageRenderingMode)renderingMode API_AVAILABLE(ios(13.0),tvos(13.0),watchos(6.0));",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectImage_imageWithTintColor_renderingMode:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectImage_imageWithTintColor:(TestProjectTableViewParams *)params {
    UIImage *image = [[[UIImage imageNamed:@"lyf_2"] imageWithBaselineOffsetFromBottom:30] imageWithTintColor:[UIColor redColor]];
    return [self createModelSingleArrayWithParams:params
                                            title:[NSString stringWithFormat:@"size:%@", NSStringFromCGSize(image.size)]
                                    modelKeyValue:@{@"image":image}
                                            block:nil];
}

- (NSDictionary *)method_56:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"修改UIImage的TintColor",
            @"title": @"- (UIImage *)imageWithTintColor:(UIColor *)color API_AVAILABLE(ios(13.0),tvos(13.0),watchos(6.0));",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectImage_imageWithTintColor:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectImage_imageByApplyingSymbolConfiguration:(TestProjectTableViewParams *)params {
    UIImageSymbolConfiguration *config = [UIImageSymbolConfiguration configurationWithPointSize:20];
    UIImage *image = [[UIImage imageNamed:@"lyf_2"] imageByApplyingSymbolConfiguration:config];
    return [self createModelSingleArrayWithParams:params
                                            title:[NSString stringWithFormat:@"size:%@ symbolConfiguration:%@", NSStringFromCGSize(image.size), config]
                                    modelKeyValue:@{@"image":image}
                                            block:nil];
}

- (NSDictionary *)method_55:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"通过UIImageSymbolConfiguration配置生成UIImage, 暂不知道作用",
            @"title": @"- (nullable UIImage *)imageByApplyingSymbolConfiguration:(UIImageSymbolConfiguration *)configuration API_AVAILABLE(ios(13.0),tvos(13.0),watchos(6.0));",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectImage_imageByApplyingSymbolConfiguration:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectImage_property_symbolConfiguration:(TestProjectTableViewParams *)params {
    UIImage *image = [UIImage imageNamed:@"lyf_2"];
    return [self createModelSingleArrayWithParams:params
                                            title:[NSString stringWithFormat:@"symbolConfiguration:%@", image.symbolConfiguration]
                                    modelKeyValue:@{@"image":image}
                                            block:nil];
}

- (NSDictionary *)method_54:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"获取图片属性(symbolConfiguration)，暂不知道作用",
            @"title": @"@property (nullable, nonatomic, copy, readonly) UIImageSymbolConfiguration *symbolConfiguration API_AVAILABLE(ios(13.0),tvos(13.0),watchos(6.0));",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectImage_property_symbolConfiguration:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectImage_imageWithConfiguration:(TestProjectTableViewParams *)params {
    UITraitCollection *trait = [UITraitCollection traitCollectionWithUserInterfaceStyle:UIUserInterfaceStyleDark];
    UIImageConfiguration *config = [[UIImageConfiguration alloc] configurationWithTraitCollection:trait];
    UIImage *image = [[UIImage imageNamed:@"lyf_2"] imageWithConfiguration:config];
    return [self createModelSingleArrayWithParams:params
                                            title:[NSString stringWithFormat:@"size:%@ configuration:%@", NSStringFromCGSize(image.size), config]
                                    modelKeyValue:@{@"image":image}
                                            block:nil];
}

- (NSDictionary *)method_53:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"通过UIImageConfiguration配置生成UIImage, 暂不知道作用",
            @"title": @"- (UIImage *)imageWithConfiguration:(UIImageConfiguration *)configuration API_AVAILABLE(ios(13.0),tvos(13.0),watchos(6.0));",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectImage_imageWithConfiguration:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectImage_property_configuration:(TestProjectTableViewParams *)params {
    UIImage *image = [UIImage imageNamed:@"lyf_2"];
    return [self createModelSingleArrayWithParams:params
                                            title:[NSString stringWithFormat:@"configuration:%@", image.configuration]
                                    modelKeyValue:@{@"image":image}
                                            block:nil];
}

- (NSDictionary *)method_52:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"获取图片属性(configuration)，暂不知道作用",
            @"title": @"@property (nullable, nonatomic, copy, readonly) __kindof UIImageConfiguration *configuration API_AVAILABLE(ios(13.0),tvos(13.0),watchos(6.0));",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectImage_property_configuration:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectImage_imageWithoutBaseline:(TestProjectTableViewParams *)params {
    UIImage *image = [[UIImage imageNamed:@"lyf_2"] imageWithoutBaseline];
    return [self createModelSingleArrayWithParams:params
                                            title:[NSString stringWithFormat:@"size:%@", NSStringFromCGSize(image.size)]
                                    modelKeyValue:@{@"image":image}
                                            block:nil];
}

- (NSDictionary *)method_51:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"暂不知道作用",
            @"title": @"- (UIImage *)imageWithoutBaseline API_AVAILABLE(ios(13.0),tvos(13.0),watchos(6.0));",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectImage_imageWithoutBaseline:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectImage_imageWithBaselineOffsetFromBottom:(TestProjectTableViewParams *)params {
    UIImage *image = [[UIImage imageNamed:@"lyf_2"] imageWithBaselineOffsetFromBottom:30];
    return [self createModelSingleArrayWithParams:params
                                            title:[NSString stringWithFormat:@"size:%@", NSStringFromCGSize(image.size)]
                                    modelKeyValue:@{@"image":image}
                                            block:nil];
}

- (NSDictionary *)method_50:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"暂不知道作用",
            @"title": @"- (UIImage *)imageWithBaselineOffsetFromBottom:(CGFloat)baselineOffset API_AVAILABLE(ios(13.0),tvos(13.0),watchos(6.0));",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectImage_imageWithBaselineOffsetFromBottom:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectImage_property_hasBaseline:(TestProjectTableViewParams *)params {
    UIImage *image = [[UIImage imageNamed:@"lyf_2"] imageWithoutBaseline];
    return [self createModelSingleArrayWithParams:params
                                            title:[NSString stringWithFormat:@"hasBaseline:%u", image.hasBaseline]
                                    modelKeyValue:@{@"image":image}
                                            block:nil];
}

- (NSDictionary *)method_49:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"获取图片属性(hasBaseline)，暂不知道作用",
            @"title": @"@property (nonatomic, readonly) BOOL hasBaseline API_AVAILABLE(ios(13.0),tvos(13.0),watchos(6.0)) NS_REFINED_FOR_SWIFT;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectImage_property_hasBaseline:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectImage_property_baselineOffsetFromBottom:(TestProjectTableViewParams *)params {
    UIImage *image = [[UIImage imageNamed:@"lyf_2"] imageWithBaselineOffsetFromBottom:20];
    return [self createModelSingleArrayWithParams:params
                                            title:[NSString stringWithFormat:@"baselineOffsetFromBottom:%f", image.baselineOffsetFromBottom]
                                    modelKeyValue:@{@"image":image}
                                            block:nil];
}

- (NSDictionary *)method_48:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"获取图片属性(baselineOffsetFromBottom)，暂不知道作用",
            @"title": @"@@property (nonatomic, readonly) CGFloat baselineOffsetFromBottom API_AVAILABLE(ios(13.0),tvos(13.0),watchos(6.0)) NS_REFINED_FOR_SWIFT;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectImage_property_baselineOffsetFromBottom:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectImage_imageWithHorizontallyFlippedOrientation:(TestProjectTableViewParams *)params {
    UIImage *image = [[UIImage imageNamed:@"lyf_2"] imageWithHorizontallyFlippedOrientation];
    return [self createModelSingleArrayWithParams:params
                                            title:[NSString stringWithFormat:@"size:%@", NSStringFromCGSize(image.size)]
                                    modelKeyValue:@{@"image":image}
                                            block:nil];
}

- (NSDictionary *)method_47:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"让图片在水平方向互调",
            @"title": @"- (UIImage *)imageWithHorizontallyFlippedOrientation API_AVAILABLE(ios(10.0));",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectImage_imageWithHorizontallyFlippedOrientation:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectImage_property_flipsForRightToLeftLayoutDirection:(TestProjectTableViewParams *)params {
    UIImage *image = [[UIImage imageNamed:@"lyf_2"] imageFlippedForRightToLeftLayoutDirection];
    return [self createModelSingleArrayWithParams:params
                                            title:[NSString stringWithFormat:@"flipsForRightToLeftLayoutDirection:%u", image.flipsForRightToLeftLayoutDirection]
                                    modelKeyValue:@{@"image":image}
                                            block:nil];
}

- (NSDictionary *)method_46:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"获取图片属性(flipsForRightToLeftLayoutDirection)，暂不知道作用",
            @"title": @"@property (nonatomic, readonly) BOOL flipsForRightToLeftLayoutDirection API_AVAILABLE(ios(9.0));",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectImage_property_flipsForRightToLeftLayoutDirection:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectImage_imageFlippedForRightToLeftLayoutDirection:(TestProjectTableViewParams *)params {
    UIImage *image = [[UIImage imageNamed:@"lyf_2"] imageFlippedForRightToLeftLayoutDirection];
    return [self createModelSingleArrayWithParams:params
                                            title:[NSString stringWithFormat:@"size:%@", NSStringFromCGSize(image.size)]
                                    modelKeyValue:@{@"image":image}
                                            block:nil];
}

- (NSDictionary *)method_45:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"暂不知道什么作用",
            @"title": @"- (UIImage *)imageFlippedForRightToLeftLayoutDirection API_AVAILABLE(ios(9.0));",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectImage_imageFlippedForRightToLeftLayoutDirection:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectImage_property_imageAsset:(TestProjectTableViewParams *)params {
    return [self createModelSingleArrayWithParams:params
                                            title:[NSString stringWithFormat:@"imageAsset:%@", self.image.imageAsset]
                                    modelKeyValue:@{@"image":self.image}
                                            block:nil];
}

- (NSDictionary *)method_44:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"获取图片属性(imageAsset)",
            @"title": @"@property (nullable, nonatomic, readonly) UIImageAsset *imageAsset API_AVAILABLE(ios(8.0)); // The asset is not encoded along with the image. Returns nil if the image is not CGImage based.",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectImage_property_imageAsset:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectImage_property_traitCollection:(TestProjectTableViewParams *)params {
    return [self createModelSingleArrayWithParams:params
                                            title:[NSString stringWithFormat:@"traitCollection:%@", self.image.traitCollection]
                                    modelKeyValue:@{@"image":self.image}
                                            block:nil];
}

- (NSDictionary *)method_43:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"获取图片属性(traitCollection)",
            @"title": @"@property (nonatomic, readonly, copy) UITraitCollection *traitCollection API_AVAILABLE(ios(8.0)); // describes the image in terms of its traits",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectImage_property_traitCollection:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectImage_property_renderingMode:(TestProjectTableViewParams *)params {
    UIImage *image = [[UIImage imageNamed:@"lyf_2"] imageWithRenderingMode:UIImageRenderingModeAlwaysTemplate];
    return [self createModelSingleArrayWithParams:params
                                            title:[NSString stringWithFormat:@"renderingMode:%ld", image.renderingMode]
                                    modelKeyValue:@{@"image":image}
                                            block:nil];
}

- (NSDictionary *)method_42:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"获取图片渲染model属性(renderingMode)",
            @"title": @"@property(nonatomic, readonly) UIImageRenderingMode renderingMode API_AVAILABLE(ios(7.0));",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectImage_property_renderingMode:params],
            }
        },
    };
}

//typedef NS_ENUM(NSInteger, UIImageRenderingMode) {
//    UIImageRenderingModeAutomatic,          // Use the default rendering mode for the context where the image is used
//
//    UIImageRenderingModeAlwaysOriginal,     // Always draw the original image, without treating it as a template
//    UIImageRenderingModeAlwaysTemplate,     // Always draw the image as a template image, ignoring its color information
//} API_AVAILABLE(ios(7.0));

- (NSMutableArray *)TestProjectImage_imageWithRenderingMode:(TestProjectTableViewParams *)params {
    NSArray *arr = @[
        @{
            @"title": [NSString stringWithFormat:@"设置的属性是UIImageRenderingModeAutomatic(%ld)", UIImageRenderingModeAutomatic],
            @"value": @(UIImageRenderingModeAutomatic),
        },
        @{
            @"title": [NSString stringWithFormat:@"设置的属性是UIImageRenderingModeAlwaysOriginal(%ld)", UIImageRenderingModeAlwaysOriginal],
            @"value": @(UIImageRenderingModeAlwaysOriginal),
        },
        @{
            @"title": [NSString stringWithFormat:@"设置的属性是UIImageRenderingModeAlwaysTemplate(%ld), 忽略图片的颜色信息", UIImageRenderingModeAlwaysTemplate],
            @"value": @(UIImageRenderingModeAlwaysTemplate),
        },
    ];
    for (NSDictionary *dic in arr) {
        NSString *title = dic[@"title"];
        UIImageRenderingMode model = [dic[@"value"] integerValue];
        UIImage *image = [[UIImage imageNamed:@"lyf_2"] imageWithRenderingMode:model];

        [self createModelWithParams:params
                              title:[NSString stringWithFormat:@"%@\nsize:%@", title, NSStringFromCGSize(image.size)]
                      modelKeyValue:@{@"image":image}
                              block:nil];
    }
    return self.dataMutArr;
}

- (NSDictionary *)method_41:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"返回渲染颜色的新的图片",
            @"title": @"- (UIImage *)imageWithRenderingMode:(UIImageRenderingMode)renderingMode API_AVAILABLE(ios(7.0));",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectImage_imageWithRenderingMode:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectImage_property_alignmentRectInsets:(TestProjectTableViewParams *)params {
    UIImage *image = [[UIImage imageNamed:@"lyf_2"] imageWithAlignmentRectInsets:UIEdgeInsetsMake(1, 3, 1, 3)];
    return [self createModelSingleArrayWithParams:params
                                            title:[NSString stringWithFormat:@"alignmentRectInsets:%@", NSStringFromUIEdgeInsets(image.alignmentRectInsets)]
                                    modelKeyValue:@{@"image":image}
                                            block:nil];
}

- (NSDictionary *)method_40:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"获取图片对齐model属性(alignmentRectInsets)，暂不知道作用",
            @"title": @"@property(nonatomic,readonly) UIEdgeInsets alignmentRectInsets API_AVAILABLE(ios(6.0));",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectImage_property_alignmentRectInsets:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectImage_imageWithAlignmentRectInsets:(TestProjectTableViewParams *)params {
    UIImage *image = [[UIImage imageNamed:@"lyf_2"] imageWithAlignmentRectInsets:UIEdgeInsetsMake(1, 3, 1, 3)];
    return [self createModelSingleArrayWithParams:params
                                            title:[NSString stringWithFormat:@"size:%@", NSStringFromCGSize(image.size)]
                                    modelKeyValue:@{@"image":image}
                                            block:nil];
}

- (NSDictionary *)method_39:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"返回对齐的新的图片，暂不知道什么作用",
            @"title": @"- (UIImage *)imageWithAlignmentRectInsets:(UIEdgeInsets)alignmentInsets API_AVAILABLE(ios(6.0));",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectImage_imageWithAlignmentRectInsets:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectImage_property_resizingMode:(TestProjectTableViewParams *)params {
    return [self createModelSingleArrayWithParams:params
                                            title:[NSString stringWithFormat:@"resizingMode:%ld", self.resizingModeImage.resizingMode]
                                    modelKeyValue:@{@"image":self.resizingModeImage}
                                            block:nil];
}

- (NSDictionary *)method_38:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"获取图片抓取model属性(resizingMode)",
            @"title": @"@property(nonatomic,readonly) UIImageResizingMode resizingMode API_AVAILABLE(ios(6.0)); // default is UIImageResizingModeTile",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectImage_property_resizingMode:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectImage_property_capInsets:(TestProjectTableViewParams *)params {
    return [self createModelSingleArrayWithParams:params
                                            title:[NSString stringWithFormat:@"images:%@", NSStringFromUIEdgeInsets(self.resizingModeImage.capInsets)]
                                    modelKeyValue:@{@"image":self.resizingModeImage}
                                            block:nil];
}

- (NSDictionary *)method_37:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"获取图片的抓取内距属性(capInsets)",
            @"title": @"@property(nonatomic,readonly) UIEdgeInsets capInsets               API_AVAILABLE(ios(5.0));   // default is UIEdgeInsetsZero for non resizable images",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectImage_property_capInsets:params],
            }
        },
    };
}

//typedef NS_ENUM(NSInteger, UIImageResizingMode) {
//#if TARGET_ABI_USES_IOS_VALUES
//    UIImageResizingModeTile = 0,
//    UIImageResizingModeStretch = 1,
//#else /* TARGET_ABI_USES_IOS_VALUES */
//    UIImageResizingModeStretch = 0,
//    UIImageResizingModeTile = 1,
//#endif /* TARGET_ABI_USES_IOS_VALUES */
//};

- (NSMutableArray *)TestProjectImage_resizableImageWithCapInsets_resizingMode:(TestProjectTableViewParams *)params {
    NSArray *arr = @[
        @{
            @"title": [NSString stringWithFormat:@"设置的属性是UIImageResizingModeTile(%ld)", UIImageResizingModeTile],
            @"value": @(UIImageResizingModeTile),
        },
        @{
            @"title": [NSString stringWithFormat:@"设置的属性是UIImageResizingModeStretch(%ld), 一般是用这个", UIImageResizingModeStretch],
            @"value": @(UIImageResizingModeStretch),
        },
    ];
    for (NSDictionary *dic in arr) {
        NSString *title = dic[@"title"];
        UIImageResizingMode model = [dic[@"value"] integerValue];
        UIImage *image = [[UIImage imageNamed:@"lyf_2"] resizableImageWithCapInsets:UIEdgeInsetsMake(5, 3, 5, 3) resizingMode:model];

        [self createModelWithParams:params
                              title:title
                      modelKeyValue:@{@"image":image}
                              block:nil];
    }
    return self.dataMutArr;
}

- (NSDictionary *)method_36:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"以UIEdgeInsets范围外的不拉伸，其它范围内的拉伸, 加上拉伸的限制",
            @"title": @"- (UIImage *)resizableImageWithCapInsets:(UIEdgeInsets)capInsets resizingMode:(UIImageResizingMode)resizingMode API_AVAILABLE(ios(6.0)); // the interior is resized according to the resizingMode",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectImage_resizableImageWithCapInsets_resizingMode:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectImage_resizableImageWithCapInsets:(TestProjectTableViewParams *)params {
    UIImage *image = [[UIImage imageNamed:@"lyf_1"] resizableImageWithCapInsets:UIEdgeInsetsMake(1, 3, 1, 3)];
    return [self createModelSingleArrayWithParams:params
                                            title:[NSString stringWithFormat:@"size:%@", NSStringFromCGSize(image.size)]
                                    modelKeyValue:@{@"image":image}
                                            block:nil];
}

- (NSDictionary *)method_35:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"以UIEdgeInsets范围外的不拉伸，其它范围内的拉伸",
            @"title": @"- (UIImage *)resizableImageWithCapInsets:(UIEdgeInsets)capInsets API_AVAILABLE(ios(5.0)); // create a resizable version of this image. the interior is tiled when drawn.",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectImage_resizableImageWithCapInsets:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectImage_drawInRect_blendMode_alpha:(TestProjectTableViewParams *)params {
    [self.image drawInRect:CGRectMake(0, 0, 30, 30) blendMode:kCGBlendModeDarken alpha:1];
    return [self createModelSingleArrayWithParams:params
                                            title:[NSString stringWithFormat:@"size:%@", NSStringFromCGSize(self.image.size)]
                                    modelKeyValue:@{@"image":self.image}
                                            block:nil];
}

- (NSDictionary *)method_34:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"在某个CGRect绘制，加上CGBlendMode、alpha, 不知道作用",
            @"title": @"- (void)drawInRect:(CGRect)rect blendMode:(CGBlendMode)blendMode alpha:(CGFloat)alpha;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectImage_drawInRect_blendMode_alpha:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectImage_drawInRect:(TestProjectTableViewParams *)params {
    [self.image drawInRect:CGRectMake(0, 0, 30, 30)];
    return [self createModelSingleArrayWithParams:params
                                            title:[NSString stringWithFormat:@"size:%@", NSStringFromCGSize(self.image.size)]
                                    modelKeyValue:@{@"image":self.image}
                                            block:nil];
}

- (NSDictionary *)method_33:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"在某个CGRect绘制, 不知道作用",
            @"title": @"- (void)drawInRect:(CGRect)rect;                                                           // mode = kCGBlendModeNormal, alpha = 1.0",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectImage_drawInRect:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectImage_drawAtPoint_blendMode_alpha:(TestProjectTableViewParams *)params {
    [self.image drawAtPoint:CGPointMake(10, 10) blendMode:kCGBlendModeColor alpha:1.0];
    return [self createModelSingleArrayWithParams:params
                                            title:[NSString stringWithFormat:@"size:%@", NSStringFromCGSize(self.image.size)]
                                    modelKeyValue:@{@"image":self.image}
                                            block:nil];
}

- (NSDictionary *)method_32:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"在某个点绘制，加上CGBlendMode、alpha, 不知道作用",
            @"title": @"- (void)drawAtPoint:(CGPoint)point blendMode:(CGBlendMode)blendMode alpha:(CGFloat)alpha;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectImage_drawAtPoint_blendMode_alpha:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectImage_drawAtPoint:(TestProjectTableViewParams *)params {
    [self.image drawAtPoint:CGPointMake(10, 10)];
    return [self createModelSingleArrayWithParams:params
                                            title:[NSString stringWithFormat:@"size:%@", NSStringFromCGSize(self.image.size)]
                                    modelKeyValue:@{@"image":self.image}
                                            block:nil];
}

- (NSDictionary *)method_31:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"在某个点绘制, 不知道作用",
            @"title": @"- (void)drawAtPoint:(CGPoint)point;                                                        // mode = kCGBlendModeNormal, alpha = 1.0",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectImage_drawAtPoint:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectImage_property_duration:(TestProjectTableViewParams *)params {
    return [self createModelSingleArrayWithParams:params
                                            title:[NSString stringWithFormat:@"duration:%f", self.imageList.duration]
                                    modelKeyValue:@{@"image":self.imageList}
                                            block:nil];
}

- (NSDictionary *)method_30:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"获取集合图片的时间属性(duration)",
            @"title": @"@property(nonatomic,readonly) NSTimeInterval duration API_AVAILABLE(ios(5.0)); // total duration for all frames. default is 0 for non-animated images",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectImage_property_duration:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectImage_property_images:(TestProjectTableViewParams *)params {
    return [self createModelSingleArrayWithParams:params
                                            title:[NSString stringWithFormat:@"images:%@", self.imageList.images]
                                    modelKeyValue:@{@"image":self.imageList}
                                            block:nil];
}

- (NSDictionary *)method_29:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"获取集合图片的图片属性(images)",
            @"title": @"@property(nullable, nonatomic,readonly) NSArray<UIImage *> *images   API_AVAILABLE(ios(5.0)); // default is nil for non-animated images",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectImage_property_images:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectImage_class_animatedImageWithImages_duration:(TestProjectTableViewParams *)params {
    UIImage *image = [UIImage animatedImageWithImages:@[[UIImage imageNamed:@"lyf_2"], [UIImage imageNamed:@"lyf_1"]] duration:2];
    return [self createModelSingleArrayWithParams:params
                                            title:[NSString stringWithFormat:@"size:%@", NSStringFromCGSize(image.size)]
                                    modelKeyValue:@{@"image":image}
                                            block:nil];
}

- (NSDictionary *)method_28:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"把多张单张图片组成集合轮播展示, 展示的图片大小是最后一张图片的大小",
            @"title": @"+ (nullable UIImage *)animatedImageWithImages:(NSArray<UIImage *> *)images duration:(NSTimeInterval)duration API_AVAILABLE(ios(5.0));",
            @"isDataModelExpand": @(YES),
            @"desc": @"@params images:要展示的图片集合\n@params duration:图片集合轮播的时间",
            @"dataModel": @{
                @"childItems": [self TestProjectImage_class_animatedImageWithImages_duration:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectImage_class_animatedResizableImageNamed_capInsets_resizingMode_duration:(TestProjectTableViewParams *)params {
    UIImage *image = [UIImage animatedResizableImageNamed:@"lyf_1" capInsets:UIEdgeInsetsMake(10, 10, 10, 20) resizingMode:UIImageResizingModeTile duration:2];
    return [self createModelSingleArrayWithParams:params
                                            title:@"暂未实现"//[NSString stringWithFormat:@"size:%@", NSStringFromCGSize(image.size)]
                                    modelKeyValue:@{@"image":image}
                                            block:nil];
}

- (NSDictionary *)method_27:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"暂不知道什么作用",
            @"title": @"+ (nullable UIImage *)animatedResizableImageNamed:(NSString *)name capInsets:(UIEdgeInsets)capInsets resizingMode:(UIImageResizingMode)resizingMode duration:(NSTimeInterval)duration API_AVAILABLE(ios(6.0));",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectImage_class_animatedResizableImageNamed_capInsets_resizingMode_duration:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectImage_class_animatedResizableImageNamed_capInsets_duration:(TestProjectTableViewParams *)params {
    UIImage *image = [UIImage animatedResizableImageNamed:@"lyf_1" capInsets:UIEdgeInsetsMake(10, 10, 10, 20) duration:2];
    return [self createModelSingleArrayWithParams:params
                                            title:@"暂未实现"//[NSString stringWithFormat:@"size:%@", NSStringFromCGSize(image.size)]
                                    modelKeyValue:@{@"image":image}
                                            block:nil];
}

- (NSDictionary *)method_26:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"暂不知道什么作用",
            @"title": @"+ (nullable UIImage *)animatedResizableImageNamed:(NSString *)name capInsets:(UIEdgeInsets)capInsets duration:(NSTimeInterval)duration API_AVAILABLE(ios(5.0)); // sequence of files",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectImage_class_animatedResizableImageNamed_capInsets_duration:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectImage_class_animatedImageNamed_duration:(TestProjectTableViewParams *)params {
    UIImage *image = [UIImage animatedImageNamed:@"lyf_1" duration:2];
    return [self createModelSingleArrayWithParams:params
                                            title:@"暂未实现"//[NSString stringWithFormat:@"size:%@", NSStringFromCGSize(image.size)]
                                    modelKeyValue:@{@"image":image}
                                            block:nil];
}

- (NSDictionary *)method_25:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"暂不知道什么作用",
            @"title": @"+ (nullable UIImage *)animatedImageNamed:(NSString *)name duration:(NSTimeInterval)duration API_AVAILABLE(ios(5.0));",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectImage_class_animatedImageNamed_duration:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectImage_property_symbolImage:(TestProjectTableViewParams *)params {
    return [self createModelSingleArrayWithParams:params
                                         property:@"symbolImage"
                                            value:nil
                                        operation:TestProjectCreateModelOnlyGet
                                            block:nil];
}

- (NSDictionary *)method_24:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"获取UIImage的属性symbolImage",
            @"title": @"@property(nonatomic,readonly,getter=isSymbolImage) BOOL symbolImage API_AVAILABLE(ios(13.0),tvos(13.0),watchos(6.0));",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectImage_property_symbolImage:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectImage_property_scale:(TestProjectTableViewParams *)params {
    return [self createModelSingleArrayWithParams:params
                                         property:@"scale"
                                            value:nil
                                        operation:TestProjectCreateModelOnlyGet
                                            block:nil];
}

- (NSDictionary *)method_23:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"获取UIImage的属性scale",
            @"title": @"@property(nonatomic,readonly) CGFloat scale API_AVAILABLE(ios(4.0));",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectImage_property_scale:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectImage_property_imageOrientation:(TestProjectTableViewParams *)params {
    return [self createModelSingleArrayWithParams:params
                                         property:@"imageOrientation"
                                            value:nil
                                        operation:TestProjectCreateModelOnlyGet
                                            block:nil];
}

- (NSDictionary *)method_22:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"获取UIImage的属性imageOrientation",
            @"title": @"@property(nonatomic,readonly) UIImageOrientation imageOrientation;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectImage_property_imageOrientation:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectImage_property_CIImage:(TestProjectTableViewParams *)params {
    return [self createModelSingleArrayWithParams:params
                                         property:@"CIImage"
                                            value:nil
                                        operation:TestProjectCreateModelOnlyGet
                                            block:nil];
}

- (NSDictionary *)method_21:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"获取UIImage的属性CIImage",
            @"title": @"@property(nullable,nonatomic,readonly) CIImage *CIImage API_AVAILABLE(ios(5.0));",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectImage_property_CIImage:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectImage_property_CGImage:(TestProjectTableViewParams *)params {
    return [self createModelSingleArrayWithParams:params
                                            title:[NSString stringWithFormat:@"获取的属性值(CGImage)：%@", self.image.CGImage]
                                            block:nil];
}

- (NSDictionary *)method_20:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"获取UIImage的属性CGImage",
            @"title": @"@property(nullable, nonatomic,readonly) CGImageRef CGImage;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectImage_property_CGImage:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectImage_property_size:(TestProjectTableViewParams *)params {
    return [self createModelSingleArrayWithParams:params
                                         property:@"size"
                                            value:nil
                                        operation:TestProjectCreateModelOnlyGet
                                            block:nil];
}

- (NSDictionary *)method_19:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"获取UIImage的属性size",
            @"title": @"@property(nonatomic,readonly) CGSize size;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectImage_property_size:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectImage_alloc_initWithCIImage_scale_orientation:(TestProjectTableViewParams *)params {
    UIImage *image = [[UIImage alloc] initWithCIImage:self.currentCIImage scale:2 orientation:UIImageOrientationLeft];
    return [self createModelSingleArrayWithParams:params
                                            title:[NSString stringWithFormat:@"size:%@", NSStringFromCGSize(image.size)]
                                    modelKeyValue:@{@"image":image}
                                            block:nil];
}

- (NSDictionary *)method_18:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"执行UIImage的alloc方法imageWithCIImage:scale:orientation:",
            @"title": @"- (instancetype)initWithCIImage:(CIImage *)ciImage scale:(CGFloat)scale orientation:(UIImageOrientation)orientation API_AVAILABLE(ios(6.0));",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectImage_alloc_initWithCIImage_scale_orientation:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectImage_alloc_initWithCIImage:(TestProjectTableViewParams *)params {
    UIImage *image = [[UIImage alloc] initWithCIImage:self.currentCIImage];
    return [self createModelSingleArrayWithParams:params
                                            title:[NSString stringWithFormat:@"size:%@", NSStringFromCGSize(image.size)]
                                    modelKeyValue:@{@"image":image}
                                            block:nil];
}

- (NSDictionary *)method_17:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"执行UIImage的alloc方法initWithCIImage:",
            @"title": @"- (instancetype)initWithCIImage:(CIImage *)ciImage API_AVAILABLE(ios(5.0));",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectImage_alloc_initWithCIImage:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectImage_alloc_initWithCGImage_scale_orientation:(TestProjectTableViewParams *)params {
    NSArray *arr = @[
        @{
            @"title": [NSString stringWithFormat:@"设置的属性值orientation是:UIImageOrientationUp(%ld)", UIImageOrientationUp],
            @"value": @(UIImageOrientationUp),
        },
        @{
            @"title": [NSString stringWithFormat:@"设置的属性值orientation是:UIImageOrientationDown(%ld)", UIImageOrientationDown],
            @"value": @(UIImageOrientationDown),
        },
        @{
            @"title": [NSString stringWithFormat:@"设置的属性值orientation是:UIImageOrientationLeft(%ld)", UIImageOrientationUp],
            @"value": @(UIImageOrientationUp),
        },
        @{
            @"title": [NSString stringWithFormat:@"设置的属性值orientation是:UIImageOrientationRight(%ld)", UIImageOrientationRight],
            @"value": @(UIImageOrientationRight),
        },
        @{
            @"title": [NSString stringWithFormat:@"设置的属性值orientation是:UIImageOrientationUpMirrored(%ld)", UIImageOrientationUpMirrored],
            @"value": @(UIImageOrientationUpMirrored),
        },
        @{
            @"title": [NSString stringWithFormat:@"设置的属性值orientation是:UIImageOrientationDownMirrored(%ld)", UIImageOrientationDownMirrored],
            @"value": @(UIImageOrientationDownMirrored),
        },
        @{
            @"title": [NSString stringWithFormat:@"设置的属性值orientation是:UIImageOrientationLeftMirrored(%ld)", UIImageOrientationLeftMirrored],
            @"value": @(UIImageOrientationLeftMirrored),
        },
        @{
            @"title": [NSString stringWithFormat:@"设置的属性值orientation是:UIImageOrientationRightMirrored(%ld)", UIImageOrientationRightMirrored],
            @"value": @(UIImageOrientationRightMirrored),
        },
    ];
    for (NSDictionary *dic in arr) {
        NSString *title = dic[@"title"];
        UIImageOrientation orientation = [dic[@"value"] integerValue];
        UIImage *image = [[UIImage alloc] initWithCGImage:[UIImage imageNamed:@"lyf_1"].CGImage scale:2 orientation:orientation];
        [self createModelWithParams:params title:[NSString stringWithFormat:@"%@\n size:%@", title, NSStringFromCGSize(image.size)] modelKeyValue:@{@"image":image} block:nil];
    }
    return self.dataMutArr;
}

- (NSDictionary *)method_16:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"执行UIImage的alloc方法initWithCGImage:scale:orientation:, 具有旋转方向",
            @"title": @"- (instancetype)initWithCGImage:(CGImageRef)cgImage scale:(CGFloat)scale orientation:(UIImageOrientation)orientation API_AVAILABLE(ios(4.0));",
            @"isDataModelExpand": @(YES),
            @"desc": @"使用的CGImage应立即释放，如果短时间内多次使用会造成崩溃",
            @"dataModel": @{
                @"childItems": [self TestProjectImage_alloc_initWithCGImage_scale_orientation:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectImage_alloc_initWithCGImage:(TestProjectTableViewParams *)params {
    UIImage *image = [[UIImage alloc] initWithCGImage:self.currentImageRef];
    return [self createModelSingleArrayWithParams:params
                                            title:[NSString stringWithFormat:@"size:%@", NSStringFromCGSize(image.size)]
                                    modelKeyValue:@{@"image":image}
                                            block:nil];
}

- (NSDictionary *)method_15:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"执行UIImage的alloc方法imageWithCGImage:",
            @"title": @"- (instancetype)initWithCGImage:(CGImageRef)cgImage;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectImage_alloc_initWithCGImage:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectImage_alloc_initWithData_scale:(TestProjectTableViewParams *)params {
    NSDataAsset *dataAsset = [[NSDataAsset alloc] initWithName:@"Data"];
    UIImage *image = [[UIImage alloc] initWithData:dataAsset.data scale:2.0];
    return [self createModelSingleArrayWithParams:params
                                            title:[NSString stringWithFormat:@"initWithData:scale: size:%@", NSStringFromCGSize(image.size)]
                                    modelKeyValue:@{@"image":image}
                                            block:nil];
}

- (NSDictionary *)method_14:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"执行UIImage的alloc方法initWithData:scale:, 根据imageName获取手动传入的image",
            @"title": @"- (nullable instancetype)initWithData:(NSData *)data scale:(CGFloat)scale API_AVAILABLE(ios(6.0));",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectImage_alloc_initWithData_scale:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectImage_alloc_initWithData:(TestProjectTableViewParams *)params {
    NSDataAsset *dataAsset = [[NSDataAsset alloc] initWithName:@"Data"];
    UIImage *image = [[UIImage alloc] initWithData:dataAsset.data];
    return [self createModelSingleArrayWithParams:params
                                            title:[NSString stringWithFormat:@"initWithData: size:%@", NSStringFromCGSize(image.size)]
                                    modelKeyValue:@{@"image":image}
                                            block:nil];
}

- (NSDictionary *)method_13:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"执行UIImage的alloc方法initWithData:, 根据data获取手动传入的image",
            @"title": @"- (nullable instancetype)initWithData:(NSData *)data;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectImage_alloc_initWithData:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectImage_alloc_initWithContentsOfFile:(TestProjectTableViewParams *)params {
    return [self createModelSingleArrayWithParams:params
                                            title:@"initWithContentsOfFile:"
                                    modelKeyValue:@{@"image":[[UIImage alloc] initWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"lyf_4" ofType:@"png"]]}
                                            block:nil];
}

- (NSDictionary *)method_12:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"执行UIImage的alloc方法imageWithContentsOfFile:, 根据imageName获取手动传入的image",
            @"title": @"- (nullable instancetype)initWithContentsOfFile:(NSString *)path;",
            @"desc": @"该方法会把图片立即释放，不会占用内存，适用于一次性展示",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectImage_alloc_initWithContentsOfFile:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectImage_class_imageWithCIImage_scale_orientation:(TestProjectTableViewParams *)params {
    UIImage *image = [UIImage imageWithCIImage:self.currentCIImage scale:2 orientation:UIImageOrientationLeft];
    return [self createModelSingleArrayWithParams:params
                                            title:[NSString stringWithFormat:@"size:%@", NSStringFromCGSize(image.size)]
                                    modelKeyValue:@{@"image":image}
                                            block:nil];
}

- (NSDictionary *)method_11:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"执行UIImage的class方法imageWithCIImage:scale:orientation:",
            @"title": @"+ (UIImage *)imageWithCIImage:(CIImage *)ciImage scale:(CGFloat)scale orientation:(UIImageOrientation)orientation API_AVAILABLE(ios(6.0));",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectImage_class_imageWithCIImage_scale_orientation:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectImage_class_imageWithCIImage:(TestProjectTableViewParams *)params {
    UIImage *image = [UIImage imageWithCIImage:self.currentCIImage];
    return [self createModelSingleArrayWithParams:params
                                            title:[NSString stringWithFormat:@"size:%@", NSStringFromCGSize(image.size)]
                                    modelKeyValue:@{@"image":image}
                                            block:nil];
}

- (NSDictionary *)method_10:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"执行UIImage的class方法imageWithCIImage:",
            @"title": @"+ (UIImage *)imageWithCIImage:(CIImage *)ciImage API_AVAILABLE(ios(5.0));",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectImage_class_imageWithCIImage:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectImage_class_imageWithCGImage_scale_orientation:(TestProjectTableViewParams *)params {
    NSArray *arr = @[
        @{
            @"title": [NSString stringWithFormat:@"设置的属性值orientation是:UIImageOrientationUp(%ld)", UIImageOrientationUp],
            @"value": @(UIImageOrientationUp),
        },
        @{
            @"title": [NSString stringWithFormat:@"设置的属性值orientation是:UIImageOrientationDown(%ld)", UIImageOrientationDown],
            @"value": @(UIImageOrientationDown),
        },
        @{
            @"title": [NSString stringWithFormat:@"设置的属性值orientation是:UIImageOrientationLeft(%ld)", UIImageOrientationUp],
            @"value": @(UIImageOrientationUp),
        },
        @{
            @"title": [NSString stringWithFormat:@"设置的属性值orientation是:UIImageOrientationRight(%ld)", UIImageOrientationRight],
            @"value": @(UIImageOrientationRight),
        },
        @{
            @"title": [NSString stringWithFormat:@"设置的属性值orientation是:UIImageOrientationUpMirrored(%ld)", UIImageOrientationUpMirrored],
            @"value": @(UIImageOrientationUpMirrored),
        },
        @{
            @"title": [NSString stringWithFormat:@"设置的属性值orientation是:UIImageOrientationDownMirrored(%ld)", UIImageOrientationDownMirrored],
            @"value": @(UIImageOrientationDownMirrored),
        },
        @{
            @"title": [NSString stringWithFormat:@"设置的属性值orientation是:UIImageOrientationLeftMirrored(%ld)", UIImageOrientationLeftMirrored],
            @"value": @(UIImageOrientationLeftMirrored),
        },
        @{
            @"title": [NSString stringWithFormat:@"设置的属性值orientation是:UIImageOrientationRightMirrored(%ld)", UIImageOrientationRightMirrored],
            @"value": @(UIImageOrientationRightMirrored),
        },
    ];
    for (NSDictionary *dic in arr) {
        NSString *title = dic[@"title"];
        UIImageOrientation orientation = [dic[@"value"] integerValue];
        UIImage *image = [UIImage imageWithCGImage:[UIImage imageNamed:@"lyf_1"].CGImage scale:2 orientation:orientation];
        [self createModelWithParams:params title:[NSString stringWithFormat:@"%@\n size:%@", title, NSStringFromCGSize(image.size)] modelKeyValue:@{@"image":image} block:nil];
    }
    return self.dataMutArr;
}

- (NSDictionary *)method_9:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"执行UIImage的class方法imageWithCGImage:scale:orientation:, 具有旋转方向",
            @"title": @"+ (UIImage *)imageWithCGImage:(CGImageRef)cgImage scale:(CGFloat)scale orientation:(UIImageOrientation)orientation API_AVAILABLE(ios(4.0));",
            @"isDataModelExpand": @(YES),
            @"desc": @"使用的CGImage应立即释放，如果短时间内多次使用会造成崩溃",
            @"dataModel": @{
                @"childItems": [self TestProjectImage_class_imageWithCGImage_scale_orientation:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectImage_class_imageWithCGImage:(TestProjectTableViewParams *)params {
    UIImage *image = [UIImage imageWithCGImage:self.currentImageRef];
    return [self createModelSingleArrayWithParams:params
                                            title:[NSString stringWithFormat:@"size:%@", NSStringFromCGSize(image.size)]
                                    modelKeyValue:@{@"image":image}
                                            block:nil];
}

- (NSDictionary *)method_8:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"执行UIImage的class方法imageWithCGImage:",
            @"title": @"+ (UIImage *)imageWithCGImage:(CGImageRef)cgImage;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectImage_class_imageWithData_scale:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectImage_class_imageWithData_scale:(TestProjectTableViewParams *)params {
    NSDataAsset *dataAsset = [[NSDataAsset alloc] initWithName:@"Data"];
    UIImage *image = [UIImage imageWithData:dataAsset.data scale:2.0];
    return [self createModelSingleArrayWithParams:params
                                            title:[NSString stringWithFormat:@"imageWithData:scale: size:%@", NSStringFromCGSize(image.size)]
                                    modelKeyValue:@{@"image":image}
                                            block:nil];
}

- (NSDictionary *)method_7:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"执行UIImage的class方法imageWithData:scale:, 根据imageName获取手动传入的image",
            @"title": @"+ (nullable UIImage *)imageWithData:(NSData *)data scale:(CGFloat)scale API_AVAILABLE(ios(6.0));",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectImage_class_imageWithData_scale:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectImage_class_imageWithData:(TestProjectTableViewParams *)params {
    NSDataAsset *dataAsset = [[NSDataAsset alloc] initWithName:@"Data"];
    UIImage *image = [UIImage imageWithData:dataAsset.data];
    return [self createModelSingleArrayWithParams:params
                                            title:[NSString stringWithFormat:@"imageWithData:scale: size:%@", NSStringFromCGSize(image.size)]
                                    modelKeyValue:@{@"image":image}
                                            block:nil];
}

- (NSDictionary *)method_6:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"执行UIImage的class方法imageWithData:, 根据data获取手动传入的image",
            @"title": @"+ (nullable UIImage *)imageWithData:(NSData *)data;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectImage_class_imageWithData:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectImage_class_imageWithContentsOfFile:(TestProjectTableViewParams *)params {
    return [self createModelSingleArrayWithParams:params
                                            title:@"imageWithContentsOfFile:"
                                    modelKeyValue:@{@"image":[UIImage imageWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"lyf_4" ofType:@"png"]]}
                                            block:nil];
}

- (NSDictionary *)method_5:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"执行UIImage的class方法imageWithContentsOfFile:, 根据imageName获取手动传入的image",
            @"title": @"+ (nullable UIImage *)imageWithContentsOfFile:(NSString *)path;",
            @"desc": @"该方法会把图片立即释放，不会占用内存，适用于一次性展示",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectImage_class_imageWithContentsOfFile:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectImage_class_imageNamed:(TestProjectTableViewParams *)params {
    return [self createModelSingleArrayWithParams:params
                                            title:@"imageNamed:"
                                    modelKeyValue:@{@"image":[UIImage imageNamed:@"lyf_2"]}
                                            block:nil];
}

- (NSDictionary *)method_4:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"执行UIImage的class方法imageNamed:, 根据imageName获取手动传入的image",
            @"title": @"+ (nullable UIImage *)imageNamed:(NSString *)name;",
            @"desc": @"该方法不会把图片立即释放，会占用内存，适用于反复使用的视图中",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectImage_class_imageNamed:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectImage_class_systemImageNamed_variableValue_withConfiguration:(TestProjectTableViewParams *)params {
    UITraitCollection *traitCollection = [UITraitCollection traitCollectionWithDisplayScale:0.1];
    UIImageConfiguration *configuration = [[UIImageConfiguration alloc] configurationWithTraitCollection:traitCollection];
    if (@available(iOS 16.0, *)) {
        return [self createModelSingleArrayWithParams:params
                                                title:@"systemImageNamed:variableValue:withConfiguration:"
                                        modelKeyValue:@{@"image":[UIImage systemImageNamed:@"lock.doc" variableValue:0 withConfiguration:configuration]}
                                                block:nil];
    } else {
        // Fallback on earlier versions
        return self.dataMutArr;
    }
}

- (NSDictionary *)method_3:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"执行UIImage的class方法systemImageNamed:variableValue:withConfiguration:, 根据imageName和一些配置信息以及variableValue获取image",
            @"title": @"+ (nullable UIImage *)systemImageNamed:(NSString *)name variableValue:(double)value withConfiguration:(nullable UIImageConfiguration *)configuration API_AVAILABLE(ios(16.0), macCatalyst(16.0), tvos(16.0), watchos(9.0));",
            @"desc": @"只能获取系统的image，自定义传入的图片加载不出来",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectImage_class_systemImageNamed_variableValue_withConfiguration:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectImage_class_systemImageNamed_withConfiguration:(TestProjectTableViewParams *)params {
    UITraitCollection *traitCollection = [UITraitCollection traitCollectionWithDisplayScale:0.1];
    UIImageConfiguration *configuration = [[UIImageConfiguration alloc] configurationWithTraitCollection:traitCollection];
    return [self createModelSingleArrayWithParams:params
                                            title:@"systemImageNamed:withConfiguration:"
                                    modelKeyValue:@{@"image":[UIImage systemImageNamed:@"lock.doc" withConfiguration:configuration]}
                                            block:nil];
}

- (NSDictionary *)method_2:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"执行UIImage的class方法systemImageNamed:withConfiguration:, 根据imageName和一些配置信息获取image",
            @"title": @"+ (nullable UIImage *)systemImageNamed:(NSString *)name withConfiguration:(nullable UIImageConfiguration *)configuration API_AVAILABLE(ios(13.0),tvos(13.0),watchos(6.0));",
            @"desc": @"只能获取系统的image，自定义传入的图片加载不出来",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectImage_class_systemImageNamed_withConfiguration:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectImage_class_systemImageNamed:(TestProjectTableViewParams *)params {
    return [self createModelSingleArrayWithParams:params
                                            title:@"systemImageNamed:"
                                    modelKeyValue:@{@"image":[UIImage systemImageNamed:@"lock.doc"]}
                                            block:nil];
}

- (NSDictionary *)method_1:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"执行UIImage的class方法systemImageNamed:, 根据imageName获取image",
            @"title": @"+ (nullable UIImage *)systemImageNamed:(NSString *)name API_AVAILABLE(ios(13.0),tvos(13.0),watchos(6.0));",
            @"desc": @"只能获取系统的image，自定义传入的图片加载不出来",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectImage_class_systemImageNamed:params],
            }
        },
    };
}

@end
