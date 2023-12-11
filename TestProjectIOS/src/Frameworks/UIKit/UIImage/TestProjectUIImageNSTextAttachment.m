//
//  TestProjectUIImageNSTextAttachment.m
//  TestProjectIOS
//
//  Created by liwenfan on 2023/12/8.
//

#import "TestProjectUIImageNSTextAttachment.h"

#import "TestProjectUIImageCell.h"

@implementation TestProjectUIImageNSTextAttachment

- (Class)createTableModelClass:(TestProjectTableViewParams *)params {
    return TestProjectUIImageModel.class;
}

- (NSMutableArray *)TestProjectUIImageNSTextAttachment_class_textAttachmentWithImage:(TestProjectTableViewParams *)params {
    UIImage *image = [UIImage imageNamed:@"lyf_2"];
    NSTextAttachment *textAttachment = [NSTextAttachment textAttachmentWithImage:image];
    NSAttributedString *attrStr = [NSAttributedString attributedStringWithAttachment:textAttachment];
    return [self createModelSingleArrayWithParams:params
                                            title:[NSString stringWithFormat:@"size:%@", NSStringFromCGSize(image.size)]
                                    modelKeyValue:@{@"image":image, @"descMutAttrStr": attrStr}
                                            block:nil];
}

- (NSDictionary *)method_1:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"从图片生成NSTextAttachment",
            @"title": @"+ (NSTextAttachment *)textAttachmentWithImage:(UIImage *)image API_AVAILABLE(ios(13.0),tvos(13.0));",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectUIImageNSTextAttachment_class_textAttachmentWithImage:params],
            }
        },
    };
}

@end
