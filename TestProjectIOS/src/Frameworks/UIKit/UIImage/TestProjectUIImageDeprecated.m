//
//  TestProjectUIImageDeprecated.m
//  TestProjectIOS
//
//  Created by liwenfan on 2023/12/11.
//

#import "TestProjectUIImageDeprecated.h"

#import "TestProjectUIImageCell.h"

@implementation TestProjectUIImageDeprecated

- (Class)createTableModelClass:(TestProjectTableViewParams *)params {
    return TestProjectUIImageModel.class;
}

- (NSMutableArray *)TestProjectUIImageDeprecated_property_topCapHeight:(TestProjectTableViewParams *)params {
    UIImage *image = [[UIImage imageNamed:@"lyf_2"] stretchableImageWithLeftCapWidth:10 topCapHeight:30];
    return [self createModelSingleArrayWithParams:params
                                            title:[NSString stringWithFormat:@"size:%@ topCapHeight：%ld", NSStringFromCGSize(image.size), image.topCapHeight]
                                    modelKeyValue:@{@"image":image  }
                                            block:nil];
}

- (NSDictionary *)method_3:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"获取图片的上边抓取的边距属性(topCapHeight)",
            @"title": @"@property(nonatomic,readonly) NSInteger topCapHeight API_UNAVAILABLE(tvos);   // default is 0. if non-zero, vert. stretchable. bottom cap is calculated as height - topCapWidth - 1",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectUIImageDeprecated_property_topCapHeight:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectUIImageDeprecated_property_leftCapWidth:(TestProjectTableViewParams *)params {
    UIImage *image = [[UIImage imageNamed:@"lyf_2"] stretchableImageWithLeftCapWidth:10 topCapHeight:10];
    return [self createModelSingleArrayWithParams:params
                                            title:[NSString stringWithFormat:@"size:%@ leftCapWidth：%ld", NSStringFromCGSize(image.size), image.leftCapWidth]
                                    modelKeyValue:@{@"image":image  }
                                            block:nil];
}

- (NSDictionary *)method_2:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"获取图片的左边抓取的边距属性(leftCapWidth)",
            @"title": @"@property(nonatomic,readonly) NSInteger leftCapWidth API_UNAVAILABLE(tvos);   // default is 0. if non-zero, horiz. stretchable. right cap is calculated as width - leftCapWidth - 1",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectUIImageDeprecated_property_leftCapWidth:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectUIImageDeprecated_stretchableImageWithLeftCapWidth_topCapHeight:(TestProjectTableViewParams *)params {
    UIImage *image = [[UIImage imageNamed:@"lyf_2"] stretchableImageWithLeftCapWidth:10 topCapHeight:10];
    return [self createModelSingleArrayWithParams:params
                                            title:[NSString stringWithFormat:@"size:%@", NSStringFromCGSize(image.size)]
                                    modelKeyValue:@{@"image":image  }
                                            block:nil];
}

- (NSDictionary *)method_1:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"从left和top的偏移位置开始抓取",
            @"title": @"- (UIImage *)stretchableImageWithLeftCapWidth:(NSInteger)leftCapWidth topCapHeight:(NSInteger)topCapHeight API_UNAVAILABLE(tvos);",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectUIImageDeprecated_stretchableImageWithLeftCapWidth_topCapHeight:params],
            }
        },
    };
}

@end
