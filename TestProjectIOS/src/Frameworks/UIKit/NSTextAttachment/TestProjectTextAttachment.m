//
//  TestProjectTextAttachment.m
//  TestProjectIOS
//
//  Created by zjrcumac on 2023/3/20.
//

#import "TestProjectTextAttachment.h"

#import "TestProjectAttributeStringFoundationCell.h"

@interface TestProjectTextAttachment ()

@property (nonatomic, copy) NSString *firstAttrText;

@end

@implementation TestProjectTextAttachment

- (NSString *)firstAttrText {
    if (!_firstAttrText) {
        _firstAttrText = @"我是第一个段落的开头的数据\n我是第二段的内容数据我是第二段的内容数据我是第二段的内容数据我是第二段的内容数据ABCDEFGHIJKLMNOPQRSTUVWXYZ我是第二段的内容数据我是第二段的内容数据我是第二段的内容数据abggggfffcbbdefghijklmnopqrstuwwwvvvwxyz我是第二段的内容数据我是第二段的内容数据我是第二段的内容数据我是第二段的内容数据我是第二段的内容数据我是第二段的内容数据我是第二段的内容数据\n我是第三段的开头数据";
    }
    return _firstAttrText;
}

- (NSDictionary *)method_1 {
    return @{
        @"- (instancetype)initWithData:(nullable NSData *)contentData ofType:(nullable NSString *)uti NS_DESIGNATED_INITIALIZER API_AVAILABLE(macos(10.11), ios(7.0), tvos(9.0)) API_UNAVAILABLE(watchos);":@{
            @"method":@"TestProjectTextAttachMent_initWithData_ofType",
            @"desc":@"此方法不知道怎么使用，获取的数据一片空白"}
    };
}

- (NSDictionary *)method_2 {
    return @{
        @"@property (nullable, copy, NS_NONATOMIC_IOSONLY) NSData *contents":@{
            @"method":@"TestProjectTextAttachMent_property_contents",
            @"desc":@"此方法不知道怎么使用，获取的数据一片空白"}
    };
}

- (NSDictionary *)method_3 {
    return @{
        @"@property (nullable, copy, NS_NONATOMIC_IOSONLY) NSData *fileType":@{
            @"method":@"TestProjectTextAttachMent_property_fileType",
            @"desc":@"此方法不知道怎么使用，获取的数据一片空白"}
    };
}

- (NSDictionary *)method_4 {
    return @{
        @"@property (nullable, strong, NS_NONATOMIC_IOSONLY) UIImage *image API_AVAILABLE(macos(10.11), ios(7.0), tvos(9.0)) API_UNAVAILABLE(watchos);":@{
            @"method":@"TestProjectTextAttachMent_property_image",
            @"desc":@"设置image内容"}
    };
}

- (NSDictionary *)method_5 {
    return @{
        @"@property (NS_NONATOMIC_IOSONLY) CGRect bounds API_AVAILABLE(macos(10.11), ios(7.0), tvos(9.0)) API_UNAVAILABLE(watchos);":@{
            @"method":@"TestProjectTextAttachMent_property_bounds",
            @"desc":@"设置占用的bounds"}
    };
}

- (NSDictionary *)method_6 {
    return @{
        @"@property CGFloat lineLayoutPadding API_AVAILABLE(macos(12.0), ios(15.0), tvos(15.0)) API_UNAVAILABLE(watchos);":@{
            @"method":@"TestProjectTextAttachMent_property_lineLayoutPadding",
            @"desc":@"设置间距"}
    };
}


- (TestProjectAttributeStringFoundationModel *)createAttrStrModelWith:(NSTextAttachment *)attachment {
    TestProjectAttributeStringFoundationModel *attrStrModel = [[TestProjectAttributeStringFoundationModel alloc] init];
    NSAttributedString *firstAttrStr = [[NSAttributedString alloc] initWithString:self.firstAttrText];

    attrStrModel.titleMutAttrStr = [[NSMutableAttributedString alloc] initWithAttributedString:firstAttrStr];
    NSAttributedString *attachmentAttr = [NSAttributedString attributedStringWithAttachment:attachment];
    [attrStrModel.titleMutAttrStr appendAttributedString:attachmentAttr];
    [self.dataMutArr addObject:attrStrModel];
    return attrStrModel;
}

- (void)TestProjectTextAttachMent_property_lineLayoutPadding {
    UIImage *image = [UIImage imageNamed:@"lyf_1"];
    NSTextAttachment *attachment1 = [[NSTextAttachment alloc] init];
    attachment1.image = image;
    CGRect bounds = CGRectMake(0, 0, 100, 50);
    attachment1.bounds = bounds;
    CGFloat lineLayoutPadding = 10;
    if (@available(iOS 15.0, *)) {
        attachment1.lineLayoutPadding = 10;
    }
    
    TestProjectAttributeStringFoundationModel *m1 = [self createAttrStrModelWith:attachment1];
    m1.desc = [NSString stringWithFormat:@"设置的是lineLayoutPadding:%f attrText:%@", lineLayoutPadding, m1.titleMutAttrStr];
    
    for (TestProjectAttributeStringFoundationModel *model in self.dataMutArr) {
        [model calculDataViewHeight];
    }

    self.tableView.dataSourceArray = self.dataMutArr;
}

- (void)TestProjectTextAttachMent_property_bounds {
    UIImage *image = [UIImage imageNamed:@"lyf_1"];
    NSTextAttachment *attachment1 = [[NSTextAttachment alloc] init];
    attachment1.image = image;
    CGRect bounds = CGRectMake(0, 0, 100, 50);
    attachment1.bounds = bounds;
    
    TestProjectAttributeStringFoundationModel *m1 = [self createAttrStrModelWith:attachment1];
    m1.desc = [NSString stringWithFormat:@"设置的是bounds:%@ attrText:%@", NSStringFromCGRect(bounds), m1.titleMutAttrStr];
    
    for (TestProjectAttributeStringFoundationModel *model in self.dataMutArr) {
        [model calculDataViewHeight];
    }

    self.tableView.dataSourceArray = self.dataMutArr;
}

- (void)TestProjectTextAttachMent_property_image {
    UIImage *image = [UIImage imageNamed:@"lyf_1"];
    NSTextAttachment *attachment1 = [[NSTextAttachment alloc] init];
    attachment1.image = image;
    attachment1.bounds = CGRectMake(0, 0, 100, 50);
    
    TestProjectAttributeStringFoundationModel *m1 = [self createAttrStrModelWith:attachment1];
    m1.desc = [NSString stringWithFormat:@"设置的是image:%@ attrText:%@", image, m1.titleMutAttrStr];
    
    for (TestProjectAttributeStringFoundationModel *model in self.dataMutArr) {
        [model calculDataViewHeight];
    }

    self.tableView.dataSourceArray = self.dataMutArr;
}

@end
