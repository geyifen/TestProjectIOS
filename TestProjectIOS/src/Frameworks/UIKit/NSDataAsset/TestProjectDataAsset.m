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
        @"- (nullable instancetype)initWithName:(NSDataAssetName)name;":@{
            @"method":@"TestProjectDataAsset_initWithName",
            @"desc":@"从asset 获取Data set"}
    };
}

- (NSDictionary *)method_2 {
    return @{
        @"@property (nonatomic, readonly, copy) NSDataAssetName name;":@{
            @"method":@"TestProjectDataAsset_property_name",
            @"desc":@"获取NSDataAsset的name"}
    };
}

- (NSDictionary *)method_3 {
    return @{
        @"@property (nonatomic, readonly, copy) NSData *data;":@{
            @"method":@"TestProjectDataAsset_property_data",
            @"desc":@"获取NSDataAsset的name"}
    };
}

- (NSDictionary *)method_4 {
    return @{
        @"property (nonatomic, readonly, copy) NSString *typeIdentifier;":@{
            @"method":@"TestProjectDataAsset_property_typeIdentifier",
            @"desc":@"获取NSDataAsset的typeIdentifier"}
    };
}

- (void)TestProjectDataAsset_property_typeIdentifier {
    NSDataAsset *dataAsset = [[NSDataAsset alloc] initWithName:@"data1"];
    TestProjectTableModel *m = [[TestProjectTableModel alloc] init];
    m.title = [NSString stringWithFormat:@"我是一个dataAsset: %@", dataAsset];
    m.desc = [NSString stringWithFormat:@"我是属性typeIdentifier:%@", dataAsset.typeIdentifier];
    [m calculDataViewHeight];
    [self.dataMutArr addObject:m];
    self.tableView.dataSourceArray = self.dataMutArr;
}

- (void)TestProjectDataAsset_property_data {
    NSDataAsset *dataAsset = [[NSDataAsset alloc] initWithName:@"data1"];
    
    TestProjectTableModel *m1 = [[TestProjectTableModel alloc] init];
    m1.title = [NSString stringWithFormat:@"我是一个dataAsset: %@", dataAsset];
    m1.desc = [NSString stringWithFormat:@"我是属性data.length:%ld", dataAsset.data.length];
    [m1 calculDataViewHeight];
    [self.dataMutArr addObject:m1];
    
    UIImage *image = [UIImage imageWithData:dataAsset.data];
    NSTextAttachment *textAttachment = [[NSTextAttachment alloc] init];
    textAttachment.bounds = CGRectMake(0, 0, 100, 50);
    textAttachment.image = image;

    TestProjectTableModel *m2 = [[TestProjectTableModel alloc] init];
    m2.titleMutAttrStr = [NSMutableAttributedString attributedStringWithAttachment:textAttachment];
    [m2.titleMutAttrStr appendAttributedString:[[NSAttributedString alloc] initWithString:[NSString stringWithFormat:@"我是一个dataAsset: %@", dataAsset]]];
    [m2 calculDataViewHeight];
    [self.dataMutArr addObject:m2];
    
    self.tableView.dataSourceArray = self.dataMutArr;
}

- (void)TestProjectDataAsset_property_name {
    NSDataAsset *dataAsset = [[NSDataAsset alloc] initWithName:@"data1"];
    TestProjectTableModel *m = [[TestProjectTableModel alloc] init];
    m.title = [NSString stringWithFormat:@"我是一个dataAsset: %@", dataAsset];
    m.desc = [NSString stringWithFormat:@"我是属性name:%@", dataAsset.name];
    [m calculDataViewHeight];
    [self.dataMutArr addObject:m];
    self.tableView.dataSourceArray = self.dataMutArr;
}

- (void)TestProjectDataAsset_initWithName {
    NSDataAsset *dataAsset = [[NSDataAsset alloc] initWithName:@"data1"];
    TestProjectTableModel *m = [[TestProjectTableModel alloc] init];
    m.title = [NSString stringWithFormat:@"我是一个dataAsset: %@", dataAsset];
    [m calculDataViewHeight];
    [self.dataMutArr addObject:m];
    self.tableView.dataSourceArray = self.dataMutArr;
}

@end
