//
//  TestProjectImage.m
//  TestProjectIOS
//
//  Created by zjrcumac on 2023/10/25.
//

#import "TestProjectImage.h"

#import "TestProjectUIImageCell.h"

@implementation TestProjectImage

- (Class)createTableModelClass {
    return TestProjectUIImageModel.class;
}

- (NSMutableArray *)TestProjectImage_class_imageWithData_scale:(NSInteger)index {
    NSDataAsset *dataAsset = [[NSDataAsset alloc] initWithName:@"Data"];
    UIImage *image = [UIImage imageWithData:dataAsset.data scale:2.0];
    return [self createModelSingleArrayWithIndex:index
                                           title:[NSString stringWithFormat:@"imageWithData:scale: size:%@", NSStringFromCGSize(image.size)]
                                   modelKeyValue:@{@"image":image}
                                           block:nil];
}

- (NSDictionary *)method_7:(NSInteger)index {
    return @{
        @"dataModel": @{
            @"abstract": @"执行UIImage的class方法imageWithData:scale:, 根据imageName获取手动传入的image",
            @"title": @"+ (nullable UIImage *)imageWithData:(NSData *)data scale:(CGFloat)scale API_AVAILABLE(ios(6.0));",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectImage_class_imageWithData_scale:index],
            }
        },
    };
}

- (NSMutableArray *)TestProjectImage_class_imageWithData:(NSInteger)index {
    NSDataAsset *dataAsset = [[NSDataAsset alloc] initWithName:@"Data"];
    UIImage *image = [UIImage imageWithData:dataAsset.data];
    return [self createModelSingleArrayWithIndex:index
                                           title:[NSString stringWithFormat:@"imageWithData:scale: size:%@", NSStringFromCGSize(image.size)]
                                   modelKeyValue:@{@"image":image}
                                           block:nil];
}

- (NSDictionary *)method_6:(NSInteger)index {
    return @{
        @"dataModel": @{
            @"abstract": @"执行UIImage的class方法imageWithData:, 根据data获取手动传入的image",
            @"title": @"+ (nullable UIImage *)imageWithData:(NSData *)data;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectImage_class_imageWithData:index],
            }
        },
    };
}

- (NSMutableArray *)TestProjectImage_class_imageWithContentsOfFile:(NSInteger)index {
    return [self createModelSingleArrayWithIndex:index
                                           title:@"imageWithContentsOfFile:"
                                   modelKeyValue:@{@"image":[UIImage imageWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"lyf_4" ofType:@"png"]]}
                                           block:nil];
}

- (NSDictionary *)method_5:(NSInteger)index {
    return @{
        @"dataModel": @{
            @"abstract": @"执行UIImage的class方法imageWithContentsOfFile:, 根据imageName获取手动传入的image",
            @"title": @"+ (nullable UIImage *)imageWithContentsOfFile:(NSString *)path;",
            @"desc": @"该方法会把图片立即释放，不会占用内存，适用于一次性展示",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectImage_class_imageWithContentsOfFile:index],
            }
        },
    };
}

- (NSMutableArray *)TestProjectImage_class_imageNamed:(NSInteger)index {
    return [self createModelSingleArrayWithIndex:index
                                           title:@"imageNamed:"
                                   modelKeyValue:@{@"image":[UIImage imageNamed:@"lyf_2"]}
                                           block:nil];
}

- (NSDictionary *)method_4:(NSInteger)index {
    return @{
        @"dataModel": @{
            @"abstract": @"执行UIImage的class方法imageNamed:, 根据imageName获取手动传入的image",
            @"title": @"+ (nullable UIImage *)imageNamed:(NSString *)name;",
            @"desc": @"该方法不会把图片立即释放，会占用内存，适用于反复使用的视图中",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectImage_class_imageNamed:index],
            }
        },
    };
}

- (NSMutableArray *)TestProjectImage_class_systemImageNamed_variableValue_withConfiguration:(NSInteger)index {
    UITraitCollection *traitCollection = [UITraitCollection traitCollectionWithDisplayScale:0.1];
    UIImageConfiguration *configuration = [[UIImageConfiguration alloc] configurationWithTraitCollection:traitCollection];
    if (@available(iOS 16.0, *)) {
        return [self createModelSingleArrayWithIndex:index
                                               title:@"systemImageNamed:variableValue:withConfiguration:"
                                       modelKeyValue:@{@"image":[UIImage systemImageNamed:@"lock.doc" variableValue:0 withConfiguration:configuration]}
                                               block:nil];
    } else {
        // Fallback on earlier versions
        return self.dataMutArr;
    }
}

- (NSDictionary *)method_3:(NSInteger)index {
    return @{
        @"dataModel": @{
            @"abstract": @"执行UIImage的class方法systemImageNamed:variableValue:withConfiguration:, 根据imageName和一些配置信息以及variableValue获取image",
            @"title": @"+ (nullable UIImage *)systemImageNamed:(NSString *)name variableValue:(double)value withConfiguration:(nullable UIImageConfiguration *)configuration API_AVAILABLE(ios(16.0), macCatalyst(16.0), tvos(16.0), watchos(9.0));",
            @"desc": @"只能获取系统的image，自定义传入的图片加载不出来",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectImage_class_systemImageNamed_variableValue_withConfiguration:index],
            }
        },
    };
}

- (NSMutableArray *)TestProjectImage_class_systemImageNamed_withConfiguration:(NSInteger)index {
    UITraitCollection *traitCollection = [UITraitCollection traitCollectionWithDisplayScale:0.1];
    UIImageConfiguration *configuration = [[UIImageConfiguration alloc] configurationWithTraitCollection:traitCollection];
    return [self createModelSingleArrayWithIndex:index
                                           title:@"systemImageNamed:withConfiguration:"
                                   modelKeyValue:@{@"image":[UIImage systemImageNamed:@"lock.doc" withConfiguration:configuration]}
                                           block:nil];
}

- (NSDictionary *)method_2:(NSInteger)index {
    return @{
        @"dataModel": @{
            @"abstract": @"执行UIImage的class方法systemImageNamed:withConfiguration:, 根据imageName和一些配置信息获取image",
            @"title": @"+ (nullable UIImage *)systemImageNamed:(NSString *)name withConfiguration:(nullable UIImageConfiguration *)configuration API_AVAILABLE(ios(13.0),tvos(13.0),watchos(6.0));",
            @"desc": @"只能获取系统的image，自定义传入的图片加载不出来",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectImage_class_systemImageNamed_withConfiguration:index],
            }
        },
    };
}

- (NSMutableArray *)TestProjectImage_class_systemImageNamed:(NSInteger)index {
    return [self createModelSingleArrayWithIndex:index
                                           title:@"systemImageNamed:"
                                   modelKeyValue:@{@"image":[UIImage systemImageNamed:@"lock.doc"]}
                                           block:nil];
}

- (NSDictionary *)method_1:(NSInteger)index {
    return @{
        @"dataModel": @{
            @"abstract": @"执行UIImage的class方法systemImageNamed:, 根据imageName获取image",
            @"title": @"+ (nullable UIImage *)systemImageNamed:(NSString *)name API_AVAILABLE(ios(13.0),tvos(13.0),watchos(6.0));",
            @"desc": @"只能获取系统的image，自定义传入的图片加载不出来",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectImage_class_systemImageNamed:index],
            }
        },
    };
}

@end
