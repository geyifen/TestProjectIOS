//
//  TestProjectAttributeStringFoundationCell.m
//  TestProjectIOS
//
//  Created by zjrcumac on 2023/3/3.
//

#import "TestProjectAttributeStringFoundationCell.h"

@implementation TestProjectAttributeStringFoundationModel

- (NSString *)viewIdentifier {
    return @"TestProjectAttributeStringFoundationCell";
}

@end

@implementation TestProjectAttributeStringFoundationCell

@end

@implementation TestProjectAttributeStringFoundViewTable

- (TestProjectAttributeStringFoundationModel *)createAttrStrModel {
    return [self createAttrStrModelWithNeedAdd:YES];
}

- (TestProjectAttributeStringFoundationModel *)createAttrStrModelWithNeedAdd:(BOOL)needAdd {
    TestProjectAttributeStringFoundationModel *attrStrModel = [[TestProjectAttributeStringFoundationModel alloc] init];
    attrStrModel.isTitleExpand = NO;
    
    NSAttributedString *firstAttrStr = [[NSAttributedString alloc] initWithString:self.firstAttrText attributes:@{NSFontAttributeName:[UIFont systemFontOfSize:18]}];
    NSAttributedString *secondAttrStr = [[NSAttributedString alloc] initWithString:self.secondAttrText attributes:@{NSForegroundColorAttributeName:[UIColor colorFromString:@"#F33"], NSFontAttributeName:[UIFont systemFontOfSize:22]}];
    NSAttributedString *thirdAttrStr = [[NSAttributedString alloc] initWithString:self.thirdAttrText attributes:@{NSForegroundColorAttributeName:[UIColor colorFromString:@"#F33"], NSFontAttributeName:[UIFont systemFontOfSize:28]}];
    NSAttributedString *fourthAttrStr = [[NSAttributedString alloc] initWithString:self.fourthAttrText attributes:@{NSForegroundColorAttributeName:[UIColor colorFromString:@"#F33"], NSFontAttributeName:[UIFont systemFontOfSize:22]}];
    NSAttributedString *fivethAttrStr = [[NSAttributedString alloc] initWithString:self.fivthAttrText attributes:nil];
    NSAttributedString *sixthAttrStr = [[NSAttributedString alloc] initWithString:self.sixthAttrText attributes:@{NSStrokeColorAttributeName:[UIColor colorFromString:@"#33F"]}];

    attrStrModel.titleMutAttrStr = [[NSMutableAttributedString alloc] initWithAttributedString:firstAttrStr];
    [attrStrModel.titleMutAttrStr appendAttributedString:secondAttrStr];
    [attrStrModel.titleMutAttrStr appendAttributedString:thirdAttrStr];
    [attrStrModel.titleMutAttrStr appendAttributedString:fourthAttrStr];
    [attrStrModel.titleMutAttrStr appendAttributedString:fivethAttrStr];
    [attrStrModel.titleMutAttrStr appendAttributedString:sixthAttrStr];

    attrStrModel.isChild = YES;
    if (needAdd) {
        [self.dataMutArr addObject:attrStrModel];
    }
    return attrStrModel;
}

- (TestProjectAttributeStringFoundationModel *)createAttrStrModelWithAttributes:(NSDictionary *)keyValue {
    TestProjectAttributeStringFoundationModel *attrStrModel = [[TestProjectAttributeStringFoundationModel alloc] init];
    attrStrModel.isChild = YES;
    attrStrModel.isTitleExpand = NO;
    NSAttributedString *firstAttrStr = [[NSAttributedString alloc] initWithString:self.firstAttrText attributes:keyValue];
    NSAttributedString *secondAttrStr = [[NSAttributedString alloc] initWithString:self.secondAttrText attributes:@{NSForegroundColorAttributeName:[UIColor colorFromString:@"#F33"], NSFontAttributeName:[UIFont systemFontOfSize:22]}];

    attrStrModel.titleMutAttrStr = [[NSMutableAttributedString alloc] initWithAttributedString:firstAttrStr];
    [attrStrModel.titleMutAttrStr appendAttributedString:secondAttrStr];
    [self.dataMutArr addObject:attrStrModel];
    return attrStrModel;
}


- (NSString *)firstAttrText {
    if (!_firstAttrText) {
        _firstAttrText = @"我是第一个段落的开头的数据\n我是第二段的内容数据我是第二段的内容数据我是第二段的内容数据我是第二段的内容数据ABCDEFGHIJKLMNOPQRSTUVWXYZ我是第二段的内容数据我是第二段的内容数据我是第二段的内容数据abggggfffcbbdefghijklmnopqrstuwwwvvvwxyz我是第二段的内容数据我是第二段的内容数据我是第二段的内容数据我是第二段的内容数据我是第二段的内容数据我是第二段的内容数据我是第二段的内容数据\n我是第三段的开头数据\n";
    }
    return _firstAttrText;
}

- (NSString *)secondAttrText {
    if (!_secondAttrText) {
        _secondAttrText = @"我是第二个secondAttrText\n";
    }
    return _secondAttrText;
}

- (NSString *)thirdAttrText {
    if (!_thirdAttrText) {
        _thirdAttrText = @"我是第二个secondAttrText\n";
    }
    return _thirdAttrText;
}

- (NSString *)fourthAttrText {
    if (!_fourthAttrText) {
        _fourthAttrText = @"我是第四个secondAttrText\n";
    }
    return _fourthAttrText;
}

- (NSString *)fivthAttrText {
    if (!_fivthAttrText) {
        _fivthAttrText = @"我是第五个fivthAttrText\n";
    }
    return _fivthAttrText;
}

- (NSString *)sixthAttrText {
    if (!_sixthAttrText) {
        _sixthAttrText = @"我是第六个sixthAttrText\n";
    }
    return _sixthAttrText;
}

@synthesize compareViewModel = _compareViewModel;

- (TestProjectAttributeStringFoundationModel *)compareViewModel {
    if (!_compareViewModel) {
        TestProjectAttributeStringFoundationModel *m = [self createAttrStrModelWithNeedAdd:NO];
        m.isChild = NO;
        m.desc = [NSString stringWithFormat:@"%@", m.titleMutAttrStr];
        m.isTitleExpand = YES;
        [m calculDataViewHeight];
        _compareViewModel = m;
    }
    return _compareViewModel;
}

@end
