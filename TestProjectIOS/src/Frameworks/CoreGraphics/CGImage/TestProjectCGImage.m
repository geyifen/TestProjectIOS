//
//  TestProjectCGImage.m
//  TestProjectIOS
//
//  Created by liwenfan on 2023/10/26.
//

#import "TestProjectCGImage.h"

#import "TestProjectUIImageCell.h"

#import <CoreGraphics/CoreGraphics.h>

@interface TestProjectCGImage ()

@property (nonatomic, assign) CGImageRef currentImageRef;
@property (nonatomic, assign) CGDataProviderRef providerRef;
@property (nonatomic, assign) CGImageRef imageRef;

@end

@implementation TestProjectCGImage

- (void)dealloc {
    CGImageRelease(_currentImageRef);
    CGImageRelease(_imageRef);
    CGDataProviderRelease(_providerRef);
}

- (Class)createTableModelClass:(TestProjectTableViewParams *)params {
    return TestProjectUIImageModel.class;
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

- (NSMutableArray *)TestProjectCGImage_CGImageGetUTType:(TestProjectTableViewParams *)params {
    CFStringRef uttype = CGImageGetUTType(self.imageRef);
    UIImage *image = [UIImage imageWithCGImage:self.imageRef];
    return [self createModelSingleArrayWithParams:params
                                    modelKeyValue:@{@"image":image, @"title": [NSString stringWithFormat:@"uttype:%@", uttype]}
                                            block:nil];
}

- (NSDictionary *)method_23:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"获取CGImageRef对象的UTType信息",
            @"title": @"CG_EXTERN CFStringRef  __nullable CGImageGetUTType(cg_nullable CGImageRef image) CG_AVAILABLE_STARTING(10.11, 9.0);",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectCGImage_CGImageGetUTType:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectCGImage_CGImageGetPixelFormatInfo:(TestProjectTableViewParams *)params {
    CGImagePixelFormatInfo piexlFormatInfo = CGImageGetPixelFormatInfo(self.imageRef);
    UIImage *image = [UIImage imageWithCGImage:self.imageRef];
    return [self createModelSingleArrayWithParams:params
                                     modelKeyValue:@{@"image":image, @"title": [NSString stringWithFormat:@"piexlFormatInfo:%u", piexlFormatInfo]}
                                            block:nil];
}

- (NSDictionary *)method_22:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"获取CGImageRef对象的PixelFormatInfo信息",
            @"title": @"CG_EXTERN CGImagePixelFormatInfo CGImageGetPixelFormatInfo(CGImageRef cg_nullable image) CG_AVAILABLE_STARTING(10.14, 12.0);",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectCGImage_CGImageGetPixelFormatInfo:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectCGImage_CGImageGetByteOrderInfo:(TestProjectTableViewParams *)params {
    CGImageByteOrderInfo ByteOrderInfo = CGImageGetByteOrderInfo(self.imageRef);
    UIImage *image = [UIImage imageWithCGImage:self.imageRef];
    return [self createModelSingleArrayWithParams:params
                                    modelKeyValue:@{@"image":image, @"title": [NSString stringWithFormat:@"ByteOrderInfo:%u", ByteOrderInfo]}
                                            block:nil];
}

- (NSDictionary *)method_21:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"获取CGImageRef对象的ByteOrderInfo信息",
            @"title": @"CG_EXTERN CGImageByteOrderInfo CGImageGetByteOrderInfo(CGImageRef cg_nullable image) CG_AVAILABLE_STARTING(10.14, 12.0);",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectCGImage_CGImageGetByteOrderInfo:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectCGImage_CGImageGetBitmapInfo:(TestProjectTableViewParams *)params {
    CGBitmapInfo bitMapInfo = CGImageGetBitmapInfo(self.imageRef);
    UIImage *image = [UIImage imageWithCGImage:self.imageRef];
    return [self createModelSingleArrayWithParams:params
                                    modelKeyValue:@{@"image":image, @"title": [NSString stringWithFormat:@"bitMapInfo:%u", bitMapInfo]}
                                            block:nil];
}

- (NSDictionary *)method_20:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"获取CGImageRef对象的BitmapInfo信息",
            @"title": @"CG_EXTERN CGBitmapInfo CGImageGetBitmapInfo(CGImageRef cg_nullable image) CG_AVAILABLE_STARTING(10.4, 2.0);",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectCGImage_CGImageGetBitmapInfo:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectCGImage_CGImageGetRenderingIntent:(TestProjectTableViewParams *)params {
    CGColorRenderingIntent renderingIntent = CGImageGetRenderingIntent(self.imageRef);
    UIImage *image = [UIImage imageWithCGImage:self.imageRef];
    return [self createModelSingleArrayWithParams:params
                                    modelKeyValue:@{@"image":image, @"title": [NSString stringWithFormat:@"renderingIntent:%u", renderingIntent]}
                                            block:nil];
}

- (NSDictionary *)method_19:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"获取CGImageRef对象的RenderingIntent信息",
            @"title": @"CG_EXTERN CGColorRenderingIntent CGImageGetRenderingIntent(cg_nullable CGImageRef image) CG_AVAILABLE_STARTING(10.0, 2.0);",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectCGImage_CGImageGetRenderingIntent:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectCGImage_CGImageGetShouldInterpolate:(TestProjectTableViewParams *)params {
    bool shouldInterpolate = CGImageGetShouldInterpolate(self.imageRef);
    UIImage *image = [UIImage imageWithCGImage:self.imageRef];
    return [self createModelSingleArrayWithParams:params
                                    modelKeyValue:@{@"image":image, @"title": [NSString stringWithFormat:@"shouldInterpolate:%u", shouldInterpolate]}
                                            block:nil];
}

- (NSDictionary *)method_18:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"获取CGImageRef对象的shouldInterpolate信息",
            @"title": @"CG_EXTERN bool CGImageGetShouldInterpolate(CGImageRef cg_nullable image) CG_AVAILABLE_STARTING(10.0, 2.0);",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectCGImage_CGImageGetShouldInterpolate:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectCGImage_CGImageGetDecode:(TestProjectTableViewParams *)params {
    const CGFloat *decode = CGImageGetDecode(self.imageRef);
    UIImage *image = [UIImage imageWithCGImage:self.imageRef];
    return [self createModelSingleArrayWithParams:params
                                    modelKeyValue:@{@"image":image, @"title": [NSString stringWithFormat:@"decode:%@", decode]}
                                            block:nil];
}

- (NSDictionary *)method_17:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"获取CGImageRef对象的decode信息",
            @"title": @"CG_EXTERN const CGFloat * __nullable CGImageGetDecode(CGImageRef cg_nullable image) CG_AVAILABLE_STARTING(10.0, 2.0)",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectCGImage_CGImageGetDecode:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectCGImage_CGImageGetDataProvider:(TestProjectTableViewParams *)params {
    CGDataProviderRef providerRef = CGImageGetDataProvider(self.imageRef);
    UIImage *image = [UIImage imageWithCGImage:self.imageRef];
    return [self createModelSingleArrayWithParams:params
                                    modelKeyValue:@{@"image":image, @"title": [NSString stringWithFormat:@"providerRef:%@", providerRef]}
                                            block:nil];
}

- (NSDictionary *)method_16:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"获取CGImageRef对象的provider信息",
            @"title": @"CG_EXTERN CGDataProviderRef __nullable CGImageGetDataProvider(CGImageRef cg_nullable image) CG_AVAILABLE_STARTING(10.0, 2.0);",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectCGImage_CGImageGetDataProvider:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectCGImage_CGImageGetAlphaInfo:(TestProjectTableViewParams *)params {
    CGImageAlphaInfo alphaInfo = CGImageGetAlphaInfo(self.imageRef);
    UIImage *image = [UIImage imageWithCGImage:self.imageRef];
    return [self createModelSingleArrayWithParams:params
                                    modelKeyValue:@{@"image":image, @"title": [NSString stringWithFormat:@"alphaInfo:%u", alphaInfo]}
                                            block:nil];
}

- (NSDictionary *)method_15:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"获取CGImageRef对象的Alpha信息",
            @"title": @"CG_EXTERN CGImageAlphaInfo CGImageGetAlphaInfo(CGImageRef cg_nullable image) CG_AVAILABLE_STARTING(10.0, 2.0);",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectCGImage_CGImageGetAlphaInfo:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectCGImage_CGImageGetColorSpace:(TestProjectTableViewParams *)params {
    CGColorSpaceRef color = CGImageGetColorSpace(self.imageRef);
    UIImage *image = [UIImage imageWithCGImage:self.imageRef];
    return [self createModelSingleArrayWithParams:params
                                    modelKeyValue:@{@"image":image, @"title": [NSString stringWithFormat:@"color:%@", color]}
                                            block:nil];
}

- (NSDictionary *)method_14:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"获取CGImageRef对象颜色空间",
            @"title": @"CG_EXTERN CGColorSpaceRef __nullable CGImageGetColorSpace(CGImageRef cg_nullable image) CG_AVAILABLE_STARTING(10.0, 2.0);",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectCGImage_CGImageGetColorSpace:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectCGImage_CGImageGetBytesPerRow:(TestProjectTableViewParams *)params {
    size_t perRow = CGImageGetBytesPerRow(self.imageRef);
    UIImage *image = [UIImage imageWithCGImage:self.imageRef];
    return [self createModelSingleArrayWithParams:params
                                    modelKeyValue:@{@"image":image, @"title": [NSString stringWithFormat:@"perRow:%ld", perRow]}
                                            block:nil];
}

- (NSDictionary *)method_13:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"获取CGImageRef对象的每行的像素",
            @"title": @"CG_EXTERN size_t CGImageGetBytesPerRow(CGImageRef cg_nullable image) CG_AVAILABLE_STARTING(10.0, 2.0);",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectCGImage_CGImageGetBytesPerRow:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectCGImage_CGImageGetBitsPerPixel:(TestProjectTableViewParams *)params {
    size_t perPixel = CGImageGetBitsPerPixel(self.imageRef);
    UIImage *image = [UIImage imageWithCGImage:self.imageRef];
    return [self createModelSingleArrayWithParams:params
                                    modelKeyValue:@{@"image":image, @"title": [NSString stringWithFormat:@"perPixel:%ld", perPixel]}
                                            block:nil];
}

- (NSDictionary *)method_12:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"获取CGImageRef对象的每个点位深度",
            @"title": @"CG_EXTERN size_t CGImageGetBitsPerPixel(CGImageRef cg_nullable image) CG_AVAILABLE_STARTING(10.0, 2.0);",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectCGImage_CGImageGetBitsPerPixel:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectCGImage_CGImageGetBitsPerComponent:(TestProjectTableViewParams *)params {
    size_t perComponent = CGImageGetBitsPerComponent(self.imageRef);
    UIImage *image = [UIImage imageWithCGImage:self.imageRef];
    return [self createModelSingleArrayWithParams:params
                                    modelKeyValue:@{@"image":image, @"title": [NSString stringWithFormat:@"perComponent:%ld", perComponent]}
                                            block:nil];
}

- (NSDictionary *)method_11:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"获取CGImageRef对象的通道位",
            @"title": @"CG_EXTERN size_t CGImageGetBitsPerComponent(CGImageRef cg_nullable image) CG_AVAILABLE_STARTING(10.0, 2.0);",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectCGImage_CGImageGetBitsPerComponent:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectCGImage_CGImageGetHeight:(TestProjectTableViewParams *)params {
    size_t height = CGImageGetHeight(self.imageRef);
    UIImage *image = [UIImage imageWithCGImage:self.imageRef];
    return [self createModelSingleArrayWithParams:params
                                    modelKeyValue:@{@"image":image, @"title": [NSString stringWithFormat:@"height:%ld", height]}
                                            block:nil];
}

- (NSDictionary *)method_10:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"获取CGImageRef对象的高度",
            @"title": @"CG_EXTERN size_t CGImageGetHeight(CGImageRef cg_nullable image) CG_AVAILABLE_STARTING(10.0, 2.0);",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectCGImage_CGImageGetHeight:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectCGImage_CGImageGetWidth:(TestProjectTableViewParams *)params {
    size_t width = CGImageGetWidth(self.imageRef);
    UIImage *image = [UIImage imageWithCGImage:self.imageRef];
    return [self createModelSingleArrayWithParams:params
                                    modelKeyValue:@{@"image":image, @"title": [NSString stringWithFormat:@"width:%ld", width]}
                                            block:nil];
}

- (NSDictionary *)method_9:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"获取CGImageRef对象的宽度",
            @"title": @"CG_EXTERN size_t CGImageGetWidth(CGImageRef cg_nullable image) CG_AVAILABLE_STARTING(10.0, 2.0);",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectCGImage_CGImageGetWidth:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectCGImage_CGImageRelease:(TestProjectTableViewParams *)params {
    UIImage *image = [UIImage imageWithCGImage:self.imageRef];
    CGImageRelease(self.imageRef);
    return [self createModelSingleArrayWithParams:params
                                    modelKeyValue:@{@"image":image}
                                            block:nil];
}

- (NSDictionary *)method_8:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"释放 CGImageRef的对象",
            @"title": @"CG_EXTERN void CGImageRelease(CGImageRef cg_nullable image) CG_AVAILABLE_STARTING(10.0, 2.0);",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectCGImage_CGImageRelease:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectCGImage_CGImageCreateCopyWithColorSpace:(TestProjectTableViewParams *)params {
    CGImageRef imageRef = CGImageCreateCopyWithColorSpace(self.imageRef, CGImageGetColorSpace(self.imageRef));
    UIImage *image = [UIImage imageWithCGImage:imageRef];
    CGImageRelease(imageRef);
    return [self createModelSingleArrayWithParams:params
                                    modelKeyValue:@{@"image":image}
                                            block:nil];
}

- (NSDictionary *)method_7:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"根据CGColorSpaceRef生成 CGImageRef的对象",
            @"title": @"CG_EXTERN CGImageRef __nullable CGImageCreateCopyWithColorSpace(CGImageRef cg_nullable image, CGColorSpaceRef cg_nullable space) CG_AVAILABLE_STARTING(10.3, 2.0);",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectCGImage_CGImageCreateCopyWithColorSpace:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectCGImage_CGImageCreateWithImageInRect:(TestProjectTableViewParams *)params {
    CGImageRef imageRef = CGImageCreateWithImageInRect(self.imageRef, CGRectMake(0, 0, 20, 20));
    UIImage *image = [UIImage imageWithCGImage:imageRef];
    CGImageRelease(imageRef);
    return [self createModelSingleArrayWithParams:params
                                    modelKeyValue:@{@"image":image}
                                            block:nil];
}

- (NSDictionary *)method_6:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"根据CGRect生成 CGImageRef的对象",
            @"title": @"CG_EXTERN CGImageRef __nullable CGImageCreateWithImageInRect(CGImageRef cg_nullable image, CGRect rect)CG_AVAILABLE_STARTING(10.4, 2.0);",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectCGImage_CGImageCreateWithImageInRect:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectCGImage_CGImageCreateWithPNGDataProvider:(TestProjectTableViewParams *)params {
    UIImage *dataImage = [UIImage imageWithCGImage:self.currentImageRef]; //[UIImage imageNamed:@"lyf_2"];
    CGDataProviderRef providerRef = CGDataProviderCreateWithCFData((__bridge CFDataRef)UIImagePNGRepresentation(dataImage));
    CGImageRef imageRef = CGImageCreateWithPNGDataProvider(providerRef, NULL, NO, kCGRenderingIntentDefault);
    UIImage *image = [UIImage imageWithCGImage:imageRef];
    CGImageRelease(imageRef);
    CGDataProviderRelease(providerRef);
    return [self createModelSingleArrayWithParams:params
                                    modelKeyValue:@{@"image":image}
                                            block:nil];
}

- (NSDictionary *)method_5:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"生成png的 CGImageRef的对象",
            @"title": @"CG_EXTERN CGImageRef __nullable CGImageCreateWithPNGDataProvider(CGDataProviderRef cg_nullable source, const CGFloat * __nullable decode, bool shouldInterpolate, CGColorRenderingIntent intent) CG_AVAILABLE_STARTING(10.2, 2.0);",
            @"isDataModelExpand": @(YES),
            @"desc": @"不能直接使用CGDataProviderCreateWithData创建的provider",
            @"dataModel": @{
                @"childItems": [self TestProjectCGImage_CGImageCreateWithPNGDataProvider:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectCGImage_CGImageCreateWithJPEGDataProvider:(TestProjectTableViewParams *)params {
    UIImage *dataImage = [UIImage imageNamed:@"lyf_1"];
    NSArray *arr = @[@0.2, @0.5, @0.8, @1.0];
    for (NSNumber *num in arr) {
        NSData *data = UIImageJPEGRepresentation(dataImage, [num floatValue]);
        CGDataProviderRef providerRef = CGDataProviderCreateWithCFData((__bridge CFDataRef)data);
        CGImageRef imageRef = CGImageCreateWithJPEGDataProvider(providerRef, NULL, NO, kCGRenderingIntentDefault);
        UIImage *image = [UIImage imageWithCGImage:imageRef];
        CGImageRelease(imageRef);
        CGDataProviderRelease(providerRef);
        [self createModelWithParams:params
                              title:[NSString stringWithFormat:@"设置的属性值是:%@ length:%ld image:%@", num, data.length, image]
                     modelKeyValue:@{@"image":image}
                              block:nil];
    }
    return self.dataMutArr;
}

- (NSDictionary *)method_4:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"生成jpeg的 CGImageRef的对象",
            @"title": @"CG_EXTERN CGImageRef __nullable CGImageCreateWithJPEGDataProvider(CGDataProviderRef cg_nullable source, const CGFloat * __nullable decode, bool shouldInterpolate, CGColorRenderingIntent intent) CG_AVAILABLE_STARTING(10.1, 2.0);",
            @"isDataModelExpand": @(YES),
            @"desc": @"不能直接使用CGDataProviderCreateWithData创建的provider",
            @"dataModel": @{
                @"childItems": [self TestProjectCGImage_CGImageCreateWithJPEGDataProvider:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectCGImage_CGImageCreateCopy:(TestProjectTableViewParams *)params {
    CGImageRef imageRef = CGImageCreateCopy(self.currentImageRef);
    UIImage *image = [UIImage imageWithCGImage:imageRef];
    CGImageRelease(imageRef);
    return [self createModelSingleArrayWithParams:params
                                    modelKeyValue:@{@"image":image}
                                            block:nil];
}

- (NSDictionary *)method_3:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"copy CGImageRef的对象",
            @"title": @"CG_EXTERN CGImageRef __nullable CGImageCreateCopy(CGImageRef cg_nullable image) CG_AVAILABLE_STARTING(10.4, 2.0);",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectCGImage_CGImageCreateCopy:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectCGImage_CGImageMaskCreate:(TestProjectTableViewParams *)params {
    size_t imageW = 200;
    size_t imageH = 300;
    size_t bitsPerComponent = 8;
    size_t bitsPerPixel = 32;
    size_t bytesPerRow = imageW * bitsPerPixel / 8;
    CGImageRef imageRef = CGImageMaskCreate(imageW, imageH, bitsPerComponent, bitsPerPixel, bytesPerRow, self.providerRef, nil, NO);
    UIImage *image = [UIImage imageWithCGImage:imageRef];
    CGImageRelease(imageRef);
    return [self createModelSingleArrayWithParams:params
                                    modelKeyValue:@{@"image":image}
                                            block:nil];
}

- (NSDictionary *)method_2:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"生成CGImageRef的mask对象",
            @"title": @"CG_EXTERN CGImageRef __nullable CGImageMaskCreate(size_t width, size_t height, size_t bitsPerComponent, size_t bitsPerPixel, size_t bytesPerRow, CGDataProviderRef cg_nullable provider, const CGFloat * __nullable decode, bool shouldInterpolate) CG_AVAILABLE_STARTING(10.0, 2.0);",
            @"isDataModelExpand": @(YES),
            @"desc": @"@param width:像素宽度\n@param height:像素高度\n@param bitsPerComponent:每个像素通道位深(bit数量)\n@param bitsPerPixel:每个像素点位深(bit数量)\n@param bytesPerRow:每行像素空间大小(单位 字节)\n@param space:颜色空间\n@param bitmapInfo:像素排列及读取顺序\n@param provider:数据提供源\n@param decode:解码arrr 一般传入null, 保持数据源\n@param shouldInterpolate:是否使用差值来平滑过度图像",
            @"dataModel": @{
                @"childItems": [self TestProjectCGImage_CGImageMaskCreate:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectCGImage_CGImageCreate:(TestProjectTableViewParams *)params {
    size_t imageW = 200;
    size_t imageH = 300;
    size_t bitsPerComponent = 8;
    size_t bitsPerPixel = 32;
    size_t bytesPerRow = imageW * bitsPerPixel / 8;
    CGColorSpaceRef colorSpaceRef = CGColorSpaceCreateDeviceRGB();
    CGBitmapInfo bitmapInfo = kCGImageAlphaPremultipliedLast | kCGImageByteOrderDefault;
    CGImageRef imageRef = CGImageCreate(imageW, imageH, bitsPerComponent, bitsPerPixel, bytesPerRow, colorSpaceRef, bitmapInfo, self.providerRef, nil, NO, kCGRenderingIntentDefault);
    UIImage *image = [UIImage imageWithCGImage:imageRef];
    CGColorSpaceRelease(colorSpaceRef);
    CGImageRelease(imageRef);
    return [self createModelSingleArrayWithParams:params
                                    modelKeyValue:@{@"image":image}
                                            block:nil];
}

- (NSDictionary *)method_1:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"生成CGImageRef对象",
            @"title": @"CG_EXTERN CGImageRef __nullable CGImageCreate(size_t width, size_t height, size_t bitsPerComponent, size_t bitsPerPixel, size_t bytesPerRow, CGColorSpaceRef cg_nullable space, CGBitmapInfo bitmapInfo, CGDataProviderRef cg_nullable provider, const CGFloat * __nullable decode, bool shouldInterpolate, CGColorRenderingIntent intent) CG_AVAILABLE_STARTING(10.0, 2.0);",
            @"isDataModelExpand": @(YES),
            @"desc": @"@param width:像素宽度\n@param height:像素高度\n@param bitsPerComponent:每个像素通道位深(bit数量)\n@param bitsPerPixel:每个像素点位深(bit数量)\n@param bytesPerRow:每行像素空间大小(单位 字节)\n@param space:颜色空间\n@param bitmapInfo:像素排列及读取顺序\n@param provider:数据提供源\n@param decode:解码arrr 一般传入null, 保持数据源\n@param shouldInterpolate:是否使用差值来平滑过度图像\n@param intent:从一个颜色空间map到另一个空间颜色的方式",
            @"dataModel": @{
                @"childItems": [self TestProjectCGImage_CGImageCreate:params],
            }
        },
    };
}

@end
