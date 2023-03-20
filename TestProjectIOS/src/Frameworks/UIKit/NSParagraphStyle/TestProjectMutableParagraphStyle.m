//
//  TestProjectMutableParagraphStyle.m
//  TestProjectIOS
//
//  Created by zjrcumac on 2023/3/16.
//

#import "TestProjectMutableParagraphStyle.h"

#import "TestProjectAttributeStringFoundationCell.h"

@interface TestProjectMutableParagraphStyle ()

@property (nonatomic, copy) NSString *firstAttrText;

@end

@implementation TestProjectMutableParagraphStyle

- (NSString *)firstAttrText {
    if (!_firstAttrText) {
        _firstAttrText = @"我是第一个段落的开头的数据\n我是第二段的内容数据我是第二段的内容数据我是第二段的内容数据我是第二段的内容数据ABCDEFGHIJKLMNOPQRSTUVWXYZ我是第二段的内容数据我是第二段的内容数据我是第二段的内容数据abcdefghijklmnopqrstuvwxyz我是第二段的内容数据我是第二段的内容数据我是第二段的内容数据我是第二段的内容数据我是第二段的内容数据我是第二段的内容数据我是第二段的内容数据\n我是第三段的开头数据";
    }
    return _firstAttrText;
}

- (NSDictionary *)method_1 {
    return @{
        @"NSFontAttributeName":@{
            @"method":@"TestProjectAttributeStringKit_key_NSFontAttributeName",
            @"desc":@"设置attrText的字体 \n value 是UIFont"}
    };
}

- (NSDictionary *)method_2 {
    return @{
        @"NSParagraphStyleAttributeName":@{
            @"method":@"TestProjectAttributeStringKit_key_NSParagraphStyleAttributeName",
            @"desc":@"设置attrText的段落样式 \n value 是NSParagraphStyle"}
    };
}

- (NSDictionary *)method_3 {
    return @{
        @"NSForegroundColorAttributeName":@{
            @"method":@"TestProjectAttributeStringKit_key_NSForegroundColorAttributeName",
            @"desc":@"设置attrText的字体颜色 \n value 是UIColor"}
    };
}

- (NSDictionary *)method_4 {
    return @{
        @"NSBackgroundColorAttributeName":@{
            @"method":@"TestProjectAttributeStringKit_key_NSBackgroundColorAttributeName",
            @"desc":@"设置attrText的字体背景颜色 \n value 是UIColor"}
    };
}

- (NSDictionary *)method_5 {
    return @{
        @"NSLigatureAttributeName":@{
            @"method":@"TestProjectAttributeStringKit_key_NSLigatureAttributeName",
            @"desc":@"设置attrText的字体的连体样式 \n value 是NSNumber"}
    };
}

- (NSDictionary *)method_6 {
    return @{
        @"NSKernAttributeName":@{
            @"method":@"TestProjectAttributeStringKit_key_NSKernAttributeName",
            @"desc":@"设置attrText的字间距属性 \n value 是NSNumber"}
    };
}

- (TestProjectAttributeStringFoundationModel *)createAttrStrModelWith:(NSDictionary *)keyValue {
    TestProjectAttributeStringFoundationModel *attrStrModel = [[TestProjectAttributeStringFoundationModel alloc] init];
    NSAttributedString *firstAttrStr = [[NSAttributedString alloc] initWithString:self.firstAttrText attributes:keyValue];

    attrStrModel.titleMutAttrStr = [[NSMutableAttributedString alloc] initWithAttributedString:firstAttrStr];
    return attrStrModel;
}

- (void)TestProjectAttributeStringKit_key_NSKernAttributeName {

    NSMutableArray *mutDataArr = [NSMutableArray array];
    
    TestProjectAttributeStringFoundationModel *m1 = [self createAttrStrModelWith:@{NSKernAttributeName: @0}];
    m1.desc = [NSString stringWithFormat:@"设置的是@{NSKernAttributeName: @0} attrText:%@", m1.titleMutAttrStr];
    [m1 calculDataViewHeight];
    [mutDataArr addObject:m1];
    
    TestProjectAttributeStringFoundationModel *m2 = [self createAttrStrModelWith:@{NSKernAttributeName: @10}];
    m2.desc = [NSString stringWithFormat:@"设置的是@{NSKernAttributeName: @0} attrText:%@", m2.titleMutAttrStr];
    [m2 calculDataViewHeight];
    [mutDataArr addObject:m2];

    TestProjectAttributeStringFoundationModel *m3 = [self createAttrStrModelWith:@{NSKernAttributeName: @-10}];
    m3.desc = [NSString stringWithFormat:@"设置的是@{NSKernAttributeName: @0} attrText:%@", m3.titleMutAttrStr];
    [m3 calculDataViewHeight];
    [mutDataArr addObject:m3];
    
    self.tableView.dataSourceArray = mutDataArr;
}

- (void)TestProjectAttributeStringKit_key_NSLigatureAttributeName {

    NSMutableArray *mutDataArr = [NSMutableArray array];
    
    TestProjectAttributeStringFoundationModel *m1 = [self createAttrStrModelWith:@{NSLigatureAttributeName: @0}];
    m1.desc = [NSString stringWithFormat:@"设置的是@{NSLigatureAttributeName: @0} attrText:%@", m1.titleMutAttrStr];
    [m1 calculDataViewHeight];
    [mutDataArr addObject:m1];
    
    TestProjectAttributeStringFoundationModel *m2 = [self createAttrStrModelWith:@{NSLigatureAttributeName: @0}];
    m2.desc = [NSString stringWithFormat:@"设置的是@{NSLigatureAttributeName: @0} attrText:%@", m2.titleMutAttrStr];
    [m2 calculDataViewHeight];
    [mutDataArr addObject:m2];

    TestProjectAttributeStringFoundationModel *m3 = [self createAttrStrModelWith:@{NSLigatureAttributeName: @0}];
    m3.desc = [NSString stringWithFormat:@"设置的是@{NSLigatureAttributeName: @0} attrText:%@", m3.titleMutAttrStr];
    [m3 calculDataViewHeight];
    [mutDataArr addObject:m3];
    
    self.tableView.dataSourceArray = mutDataArr;
}

- (void)TestProjectAttributeStringKit_key_NSBackgroundColorAttributeName {

    NSMutableArray *mutDataArr = [NSMutableArray array];
    
    TestProjectAttributeStringFoundationModel *m1 = [self createAttrStrModelWith:@{NSBackgroundColorAttributeName: [UIFont systemFontOfSize:20]}];
    m1.desc = [NSString stringWithFormat:@"设置的是@{NSBackgroundColorAttributeName: [UIColor colorFromString:@\"#33ffff\"]} attrText:%@", m1.titleMutAttrStr];
    [m1 calculDataViewHeight];
    [mutDataArr addObject:m1];
    
    self.tableView.dataSourceArray = mutDataArr;
}

- (void)TestProjectAttributeStringKit_key_NSForegroundColorAttributeName {

    NSMutableArray *mutDataArr = [NSMutableArray array];
    
    TestProjectAttributeStringFoundationModel *m1 = [self createAttrStrModelWith:@{NSForegroundColorAttributeName: [UIColor colorFromString:@"#33ffff"]}];
    m1.desc = [NSString stringWithFormat:@"设置的是@{NSForegroundColorAttributeName: [UIColor colorFromString:@\"#33ffff\"]} attrText:%@", m1.titleMutAttrStr];
    [m1 calculDataViewHeight];
    [mutDataArr addObject:m1];
    
    self.tableView.dataSourceArray = mutDataArr;
}

- (void)TestProjectAttributeStringKit_key_NSParagraphStyleAttributeName {
    NSMutableArray *mutDataArr = [NSMutableArray array];
    
    NSParagraphStyle *style1 = [[NSParagraphStyle alloc] init];
    TestProjectAttributeStringFoundationModel *m1 = [self createAttrStrModelWith:@{NSParagraphStyleAttributeName: style1}];
    m1.desc = [NSString stringWithFormat:@"设置的是@{NSParagraphStyleAttributeName: [[NSParagraphStyle alloc] init]} attrText:%@", m1.titleMutAttrStr];
    [m1 calculDataViewHeight];
    [mutDataArr addObject:m1];

    NSParagraphStyle *style2 = [NSParagraphStyle defaultParagraphStyle];
    TestProjectAttributeStringFoundationModel *m2 = [self createAttrStrModelWith:@{NSParagraphStyleAttributeName: style2}];
    m2.desc = [NSString stringWithFormat:@"设置的是@{NSParagraphStyleAttributeName: [NSParagraphStyle defaultParagraphStyle]} attrText:%@", m2.titleMutAttrStr];
    [m2 calculDataViewHeight];
    [mutDataArr addObject:m2];
    
    self.tableView.dataSourceArray = mutDataArr;
}


- (void)TestProjectAttributeStringKit_key_NSFontAttributeName {
    NSMutableArray *mutDataArr = [NSMutableArray array];
    
    TestProjectAttributeStringFoundationModel *m1 = [self createAttrStrModelWith:@{NSFontAttributeName: [UIFont systemFontOfSize:40]}];
    m1.desc = [NSString stringWithFormat:@"设置的是@{NSFontAttributeName: [UIFont systemFontOfSize:40]} attrText:%@", m1.titleMutAttrStr];
    [m1 calculDataViewHeight];
    [mutDataArr addObject:m1];
    
    self.tableView.dataSourceArray = mutDataArr;
}

@end
