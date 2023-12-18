//
//  TestProjectUIImage_UIKIT_EXTERN.m
//  TestProjectIOS
//
//  Created by liwenfan on 2023/12/11.
//

#import "TestProjectUIImage_UIKIT_EXTERN.h"

#import "TestProjectUIImageCell.h"

@implementation TestProjectUIImage_UIKIT_EXTERN

- (Class)createTableModelClass:(TestProjectTableViewParams *)params {
    return TestProjectUIImageModel.class;
}

- (NSMutableArray *)TestProjectUIImage_UIKIT_EXTERN_UIImageJPEGRepresentation:(TestProjectTableViewParams *)params {
    NSArray *arr = @[
        @{
            @"title": @"图片压比例为-1",
            @"value": @(-1)
        },
        @{
            @"title": @"图片压比例为0",
            @"value": @(0)
        },
        @{
            @"title": @"图片压比例为0.080",
            @"value": @(0.080)
        },
        @{
            @"title": @"图片压比例为0.5",
            @"value": @(0.5)
        },
        @{
            @"title": @"图片压比例为1",
            @"value": @(1)
        },
        @{
            @"title": @"图片压比例为2",
            @"value": @(2)
        },
    ];
    for (NSDictionary *dic in arr) {
        NSString *title = dic[@"title"];
        CGFloat value = [dic[@"value"] floatValue];
        NSData *data = UIImageJPEGRepresentation([UIImage imageNamed:@"lyf_2"], value);
        UIImage *image = [UIImage imageWithData:data];
        [self createModelWithParams:params
                              title:[NSString stringWithFormat:@"%@\nsize:%@ length:%ld", title, NSStringFromCGSize(image.size), data.length]
                      modelKeyValue:@{@"image":image}
                              block:nil];
    }
    return self.dataMutArr;
}

- (NSDictionary *)method_2:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"把图片转成jpeg的格式",
            @"title": @"UIKIT_EXTERN  NSData * __nullable UIImageJPEGRepresentation(UIImage * __nonnull image, CGFloat compressionQuality);  // return image as JPEG. May return nil if image has no CGImageRef or invalid bitmap format. compression is 0(most)..1(least)",
            @"isDataModelExpand": @(YES),
            @"desc": @"压缩比例在0～1之间，低于0的相当于是0，大于1的相当于是1\n为0的比例大致在0.08\njpeg的本身比例是png的0.61",
            @"dataModel": @{
                @"childItems": [self TestProjectUIImage_UIKIT_EXTERN_UIImageJPEGRepresentation:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectUIImage_UIKIT_EXTERN_UIImagePNGRepresentation:(TestProjectTableViewParams *)params {
    NSData *data = UIImagePNGRepresentation([UIImage imageNamed:@"lyf_2"]);
    UIImage *image = [UIImage imageWithData:data];
    return [self createModelSingleArrayWithParams:params
                                            title:[NSString stringWithFormat:@"size:%@ length:%ld", NSStringFromCGSize(image.size), data.length]
                                    modelKeyValue:@{@"image":image}
                                            block:nil];
}

- (NSDictionary *)method_1:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"把图片转成png的格式",
            @"title": @"UIKIT_EXTERN  NSData * __nullable UIImagePNGRepresentation(UIImage * __nonnull image);                               // return image as PNG. May return nil if image has no CGImageRef or invalid bitmap format",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectUIImage_UIKIT_EXTERN_UIImagePNGRepresentation:params],
            }
        },
    };
}

@end
