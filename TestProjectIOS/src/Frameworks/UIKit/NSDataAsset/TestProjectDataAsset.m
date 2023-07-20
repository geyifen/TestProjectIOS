//
//  TestProjectDataAsset.m
//  TestProjectIOS
//
//  Created by zjrcumac on 2023/3/15.
//

#import "TestProjectDataAsset.h"

@implementation TestProjectDataAsset

- (NSDictionary *)method_1 {
    return @{
        @"dataModel": @{
            @"abstract": @"获取NSDataAsset的name",
            @"title": @"@property (nonatomic, readonly, copy) NSDataAssetName name;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectDataAsset_property_name],
            }
        },
    };
}

- (NSDictionary *)method_2 {
    return @{
        @"dataModel": @{
            @"abstract": @"获取NSDataAsset的data",
            @"title": @"@property (nonatomic, readonly, copy) NSData *data;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectDataAsset_property_data],
            }
        },
    };
}

- (NSDictionary *)method_3 {
    return @{
        @"dataModel": @{
            @"abstract": @"获取NSDataAsset的typeIdentifier",
            @"title": @"property (nonatomic, readonly, copy) NSString *typeIdentifier;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectDataAsset_property_typeIdentifier],
            }
        },
    };
}

- (NSMutableArray *)createDataAssetModelWithProperty:(NSString *)key {
    NSDataAsset *dataAsset = [[NSDataAsset alloc] initWithName:@"Data"];
    TestProjectTableModel *m = [[TestProjectTableModel alloc] init];
    m.titleMutAttrStr = [[NSMutableAttributedString alloc] initWithString:[NSString stringWithFormat:@"我是一个dataAsset: %@ 是一张图片组成的NSData，展示如下\n", dataAsset]];
    NSTextAttachment *attachment = [[NSTextAttachment alloc] init];
    attachment.image = [UIImage imageWithData:dataAsset.data];
    attachment.bounds = CGRectMake(0, 0, 100, 50);
    NSAttributedString *attrStr = [NSAttributedString attributedStringWithAttachment:attachment];
    [m.titleMutAttrStr appendAttributedString:attrStr];
    m.desc = [NSString stringWithFormat:@"我是属性%@:%@", key, [dataAsset valueForKey:key]];

    [m calculDataViewHeight];
    [self.dataMutArr addObject:m];
    return self.dataMutArr;
}

- (NSMutableArray *)TestProjectDataAsset_property_typeIdentifier {
    return [self createDataAssetModelWithProperty:@"typeIdentifier"];
}

- (NSMutableArray *)TestProjectDataAsset_property_data {
    return [self createDataAssetModelWithProperty:@"data"];
}

- (NSMutableArray *)TestProjectDataAsset_property_name {
    return [self createDataAssetModelWithProperty:@"name"];
}

@end
