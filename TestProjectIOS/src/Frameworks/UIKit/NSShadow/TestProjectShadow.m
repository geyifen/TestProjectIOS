//
//  TestProjectShadow.m
//  TestProjectIOS
//
//  Created by zjrcumac on 2023/3/27.
//

#import "TestProjectShadow.h"

#import "TestProjectAttributeStringFoundationCell.h"

@interface TestProjectShadow ()

@property (nonatomic, copy) NSString *firstAttrText;
@property (nonatomic, strong) NSShadow *shadow;

@end

@implementation TestProjectShadow

- (NSString *)firstAttrText {
    if (!_firstAttrText) {
        _firstAttrText = @"我是第一个段落的开头的数据\n我是第二段的内容数据我是第二段的内容数据我是第二段的内容数据我是第二段的内容数据我是第二段的内容数据我是第二段的内容数据我是第二段的内容数据我是第二段的内容数据我是第二段的内容数据我是第二段的内容数据我是第二段的内容数据我是第二段的内容数据我是第二段的内容数据我是第二段的内容数据\n我是第三段的开头数据";
    }
    return _firstAttrText;
}

- (NSShadow *)shadow {
    if (!_shadow) {
        _shadow = [[NSShadow alloc] init];
    }
    return _shadow;
}

- (NSDictionary *)method_1 {
    return @{
        @"@property (nonatomic, assign) CGSize shadowOffset;":@{
            @"method":@"TestProjectShadow_property_shadowOffset",
            @"desc":@"设置或者获取NSShadow的属性shadowOffset(阴影偏移量) CGSize"}
    };
}

- (NSDictionary *)method_2 {
    return @{
        @"@property (nonatomic, assign) CGFloat shadowBlurRadius;":@{
            @"method":@"TestProjectShadow_property_shadowBlurRadius",
            @"desc":@"设置或者获取NSShadow的属性shadowBlurRadius(阴影扩散度) CGFloat"}
    };
}

- (NSDictionary *)method_3 {
    return @{
        @"@property (nullable, nonatomic, strong) id shadowColor;":@{
            @"method":@"TestProjectShadow_property_shadowColor",
            @"desc":@"设置或者获取NSShadow的属性shadowColor(阴影颜色) UIColor"}
    };
}


- (TestProjectAttributeStringFoundationModel *)createAttrStrModel {
    TestProjectAttributeStringFoundationModel *attrStrModel = [[TestProjectAttributeStringFoundationModel alloc] init];
    NSAttributedString *firstAttrStr = [[NSAttributedString alloc] initWithString:self.firstAttrText attributes:@{NSShadowAttributeName: self.shadow}];

    attrStrModel.titleMutAttrStr = [[NSMutableAttributedString alloc] initWithAttributedString:firstAttrStr];
    [self.dataMutArr addObject:attrStrModel];
    return attrStrModel;
}

- (void)TestProjectShadow_property_shadowColor {
    self.shadow.shadowColor = [UIColor redColor];
    self.shadow.shadowOffset = CGSizeMake(0, 5);
    self.shadow.shadowBlurRadius = 5;

    TestProjectAttributeStringFoundationModel *m1 = [self createAttrStrModel];
    m1.desc = [NSString stringWithFormat:@"获取的属性shadowColor：%@ attrText:%@", self.shadow.shadowColor, m1.titleMutAttrStr];
    [m1 calculDataViewHeight];
    
    self.tableView.dataSourceArray = self.dataMutArr;
}

- (void)TestProjectShadow_property_shadowBlurRadius {
    self.shadow.shadowBlurRadius = 5;
    TestProjectAttributeStringFoundationModel *m1 = [self createAttrStrModel];
    m1.desc = [NSString stringWithFormat:@"获取的属性shadowBlurRadius：%f attrText:%@", self.shadow.shadowBlurRadius, m1.titleMutAttrStr];
    [m1 calculDataViewHeight];
    
    self.tableView.dataSourceArray = self.dataMutArr;
}

- (void)TestProjectShadow_property_shadowOffset {
    self.shadow.shadowOffset = CGSizeMake(0, 5);
    TestProjectAttributeStringFoundationModel *m1 = [self createAttrStrModel];
    m1.desc = [NSString stringWithFormat:@"获取的属性shadowOffset：%@ attrText:%@", NSStringFromCGSize(self.shadow.shadowOffset), m1.titleMutAttrStr];
    [m1 calculDataViewHeight];
    
    self.tableView.dataSourceArray = self.dataMutArr;
}


@end
