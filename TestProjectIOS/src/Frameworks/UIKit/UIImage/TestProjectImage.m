//
//  TestProjectImage.m
//  TestProjectIOS
//
//  Created by zjrcumac on 2023/10/25.
//

#import "TestProjectImage.h"

#import "TestProjectUIImageCell.h"

#import <CoreImage/CoreImage.h>

@interface TestProjectImage ()

@property (nonatomic, assign) CGImageRef currentImageRef;
@property (nonatomic, assign) CGDataProviderRef providerRef;
@property (nonatomic, assign) CGImageRef imageRef;
@property (nonatomic, strong) CIImage *currentCIImage;
@property (nonatomic, strong) UIImage *image;

@end

@implementation TestProjectImage

- (void)dealloc {
    CGImageRelease(_currentImageRef);
    CGDataProviderRelease(_providerRef);
    CGImageRelease(_imageRef);
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

- (CIImage *)currentCIImage {
    if (!_currentCIImage) {
        _currentCIImage = [CIImage imageWithCGImage:self.currentImageRef];
    }
    return _currentCIImage;
}

- (UIImage *)image {
    if (!_image) {
        _image = [UIImage imageNamed:@"lyf_2"];
    }
    return _image;
}

- (Class)createTableModelClass:(TestProjectTableViewParams *)params {
    if (params.selectIndex >= 19 && params.selectIndex <= 24) {
        return [super createTableModelClass:params];
    }
    return TestProjectUIImageModel.class;
}


- (id)setPropertyValueObject:(TestProjectTableViewParams *)params {
    return self.image;
}

- (NSMutableArray *)TestProjectImage_class_animatedImageNamed_duration:(TestProjectTableViewParams *)params {
    UIImage *image = [UIImage animatedImageNamed:@"lyf_1" duration:2];
    return [self createModelSingleArrayWithParams:params
                                            title:[NSString stringWithFormat:@"size:%@", NSStringFromCGSize(image.size)]
                                    modelKeyValue:@{@"image":image}
                                            block:nil];
}

- (NSDictionary *)method_25:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"执行UIImage的class方法animatedImageNamed:duration:",
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
        UIImage *image = [[UIImage alloc] initWithCGImage:self.imageRef scale:2 orientation:orientation];
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
        UIImage *image = [UIImage imageWithCGImage:self.imageRef scale:2 orientation:orientation];
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
