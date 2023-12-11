//
//  TestProjectPreconfiguredSystemImages.m
//  TestProjectIOS
//
//  Created by liwenfan on 2023/12/8.
//

#import "TestProjectPreconfiguredSystemImages.h"

#import "TestProjectUIImageCell.h"

@implementation TestProjectPreconfiguredSystemImages

- (Class)createTableModelClass:(TestProjectTableViewParams *)params {
    return TestProjectUIImageModel.class;
}

- (NSMutableArray *)TestProjectPreconfiguredSystemImages_class_property_strokedCheckmarkImage:(TestProjectTableViewParams *)params {
    UIImage *image = [UIImage strokedCheckmarkImage];
    return [self createModelSingleArrayWithParams:params
                                            title:[NSString stringWithFormat:@"size:%@", NSStringFromCGSize(image.size)]
                                    modelKeyValue:@{@"image":image}
                                            block:nil];
}

- (NSDictionary *)method_5:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"获取图片class属性(strokedCheckmarkImage)，获取系统的strokedCheckmark的图片",
            @"title": @"@property (class, readonly, strong) UIImage *strokedCheckmarkImage API_AVAILABLE(ios(13.0),tvos(13.0),watchos(6.0)); // currently: white ✓ on tinted filled and white stroked circle",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectPreconfiguredSystemImages_class_property_strokedCheckmarkImage:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectPreconfiguredSystemImages_class_property_checkmarkImage:(TestProjectTableViewParams *)params {
    UIImage *image = [UIImage checkmarkImage];
    return [self createModelSingleArrayWithParams:params
                                            title:[NSString stringWithFormat:@"size:%@", NSStringFromCGSize(image.size)]
                                    modelKeyValue:@{@"image":image}
                                            block:nil];
}

- (NSDictionary *)method_4:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"获取图片class属性(checkmarkImage)，获取系统的checkmark的图片",
            @"title": @"@property (class, readonly, strong) UIImage *checkmarkImage API_AVAILABLE(ios(13.0),tvos(13.0),watchos(6.0)); // currently: white ✓ on tinted filled circle",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectPreconfiguredSystemImages_class_property_checkmarkImage:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectPreconfiguredSystemImages_class_property_removeImage:(TestProjectTableViewParams *)params {
    UIImage *image = [UIImage removeImage];
    return [self createModelSingleArrayWithParams:params
                                            title:[NSString stringWithFormat:@"size:%@", NSStringFromCGSize(image.size)]
                                    modelKeyValue:@{@"image":image}
                                            block:nil];
}

- (NSDictionary *)method_3:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"获取图片class属性(removeImage)，获取系统的remove的图片",
            @"title": @"@property (class, readonly, strong) UIImage *removeImage API_AVAILABLE(ios(13.0),tvos(13.0),watchos(6.0)); // currently: white - on red filled circle",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectPreconfiguredSystemImages_class_property_removeImage:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectPreconfiguredSystemImages_class_property_addImage:(TestProjectTableViewParams *)params {
    UIImage *image = [UIImage addImage];
    return [self createModelSingleArrayWithParams:params
                                            title:[NSString stringWithFormat:@"size:%@", NSStringFromCGSize(image.size)]
                                    modelKeyValue:@{@"image":image}
                                            block:nil];
}

- (NSDictionary *)method_2:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"获取图片class属性(addImage)，获取系统的add的图片",
            @"title": @"@property (class, readonly, strong) UIImage *addImage API_AVAILABLE(ios(13.0),tvos(13.0),watchos(6.0)); // currently: white + on green filled circle",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectPreconfiguredSystemImages_class_property_addImage:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectPreconfiguredSystemImages_class_property_actionsImage:(TestProjectTableViewParams *)params {
    UIImage *image = [UIImage actionsImage];
    return [self createModelSingleArrayWithParams:params
                                            title:[NSString stringWithFormat:@"size:%@", NSStringFromCGSize(image.size)]
                                    modelKeyValue:@{@"image":image}
                                            block:nil];
}

- (NSDictionary *)method_1:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"获取图片class属性(actionsImage)，获取系统的actions的图片",
            @"title": @"@property (class, readonly, strong) UIImage *actionsImage API_AVAILABLE(ios(13.0),tvos(13.0),watchos(6.0)); // currently: white ellipsis on tinted filled circle",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectPreconfiguredSystemImages_class_property_actionsImage:params],
            }
        },
    };
}

@end
