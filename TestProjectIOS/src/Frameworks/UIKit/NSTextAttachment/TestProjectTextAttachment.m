//
//  TestProjectTextAttachment.m
//  TestProjectIOS
//
//  Created by liwenfan on 2023/3/20.
//

#import "TestProjectTextAttachment.h"

@implementation TestProjectTextAttachment

- (NSDictionary *)method_1 {
    return @{
        @"dataModel": @{
            @"abstract": @"此方法不知道怎么使用，获取的数据一片空白",
            @"title": @"- (instancetype)initWithData:(nullable NSData *)contentData ofType:(nullable NSString *)uti NS_DESIGNATED_INITIALIZER API_AVAILABLE(macos(10.11), ios(7.0), tvos(9.0)) API_UNAVAILABLE(watchos);",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectTextAttachMent_initWithData_ofType],
                @"compareViewModel": self.compareViewModel,
            }
        },
    };
}

- (NSDictionary *)method_2 {
    return @{
        @"dataModel": @{
            @"abstract": @"此方法不知道怎么使用，获取的数据一片空白",
            @"title": @"@property (nullable, copy, NS_NONATOMIC_IOSONLY) NSData *contents",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectTextAttachMent_property_contents],
                @"compareViewModel": self.compareViewModel,
            }
        },
    };
}

- (NSDictionary *)method_3 {
    return @{
        @"dataModel": @{
            @"abstract": @"此方法不知道怎么使用，获取的数据一片空白",
            @"title": @"@property (nullable, copy, NS_NONATOMIC_IOSONLY) NSData *fileType",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectTextAttachMent_property_fileType],
                @"compareViewModel": self.compareViewModel,
            }
        },
    };
}

- (NSDictionary *)method_4 {
    return @{
        @"dataModel": @{
            @"abstract": @"设置image内容",
            @"title": @"@property (nullable, strong, NS_NONATOMIC_IOSONLY) UIImage *image API_AVAILABLE(macos(10.11), ios(7.0), tvos(9.0)) API_UNAVAILABLE(watchos);",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectTextAttachMent_property_image],
                @"compareViewModel": self.compareViewModel,
            }
        },
    };
}

- (NSDictionary *)method_5 {
    return @{
        @"dataModel": @{
            @"abstract": @"设置占用的bounds",
            @"title": @"@property (NS_NONATOMIC_IOSONLY) CGRect bounds API_AVAILABLE(macos(10.11), ios(7.0), tvos(9.0)) API_UNAVAILABLE(watchos);",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectTextAttachMent_property_bounds],
                @"compareViewModel": self.compareViewModel,
            }
        },
    };
}

- (NSDictionary *)method_6 {
    return @{
        @"dataModel": @{
            @"abstract": @"设置attachment的padding",
            @"title": @"@property CGFloat lineLayoutPadding API_AVAILABLE(macos(12.0), ios(15.0), tvos(15.0)) API_UNAVAILABLE(watchos);",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectTextAttachMent_property_lineLayoutPadding],
                @"compareViewModel": self.compareViewModel,
            }
        },
    };
}

- (TestProjectTableViewModel *)createAttrStrModelWith:(NSTextAttachment *)attachment {
    TestProjectTableViewModel *attrStrModel = [[TestProjectTableViewModel alloc] init];
    attrStrModel.isChild = YES;
    NSAttributedString *firstAttrStr = [[NSAttributedString alloc] initWithString:self.firstAttrText];

    attrStrModel.titleMutAttrStr = [[NSMutableAttributedString alloc] initWithAttributedString:firstAttrStr];
    NSAttributedString *attachmentAttr = [NSAttributedString attributedStringWithAttachment:attachment];
    [attrStrModel.titleMutAttrStr appendAttributedString:attachmentAttr];
    [self.dataMutArr addObject:attrStrModel];
    return attrStrModel;
}

- (NSMutableArray *)TestProjectTextAttachMent_property_lineLayoutPadding {
    if (@available(iOS 15.0, *)) {
        NSArray *arr = @[@(10), @(-10), @(100), @(-100)];
        for (NSNumber *num in arr) {
            UIImage *image = [UIImage imageNamed:@"lyf_1"];
            NSTextAttachment *attachment = [[NSTextAttachment alloc] init];
            attachment.image = image;
            CGRect bounds = CGRectMake(0, 0, 100, 50);
            attachment.bounds = bounds;
            CGFloat lineLayoutPadding = num.integerValue;
            attachment.lineLayoutPadding = lineLayoutPadding;
            TestProjectTableViewModel *m = [self createAttrStrModelWith:attachment];
            m.desc = [NSString stringWithFormat:@"设置的是lineLayoutPadding:%f attrText:%@", lineLayoutPadding, m.titleMutAttrStr];
            [m calculDataViewHeight];
        }
    }

    return self.dataMutArr;
}

- (NSMutableArray *)TestProjectTextAttachMent_property_bounds {
    UIImage *image = [UIImage imageNamed:@"lyf_1"];
    NSTextAttachment *attachment = [[NSTextAttachment alloc] init];
    attachment.image = image;
    CGRect bounds = CGRectMake(0, 0, 100, 50);
    attachment.bounds = bounds;
    
    TestProjectTableViewModel *m = [self createAttrStrModelWith:attachment];
    m.desc = [NSString stringWithFormat:@"设置的是bounds:%@ attrText:%@", NSStringFromCGRect(bounds), m.titleMutAttrStr];
    [m calculDataViewHeight];

    return self.dataMutArr;
}

- (NSMutableArray *)TestProjectTextAttachMent_property_image {
    UIImage *image = [UIImage imageNamed:@"lyf_1"];
    NSTextAttachment *attachment = [[NSTextAttachment alloc] init];
    attachment.image = image;
    attachment.bounds = CGRectMake(0, 0, 100, 50);
    
    TestProjectTableViewModel *m = [self createAttrStrModelWith:attachment];
    m.desc = [NSString stringWithFormat:@"设置的是image:%@ attrText:%@", image, m.titleMutAttrStr];
    [m calculDataViewHeight];

    return self.dataMutArr;
}

- (NSMutableArray *)TestProjectTextAttachMent_property_fileType {
    return self.dataMutArr;
}

- (NSMutableArray *)TestProjectTextAttachMent_property_contents {
    return self.dataMutArr;
}

- (NSMutableArray *)TestProjectTextAttachMent_initWithData_ofType {
    return self.dataMutArr;
}

@end
