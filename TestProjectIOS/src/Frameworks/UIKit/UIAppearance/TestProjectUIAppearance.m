//
//  TestProjectUIAppearance.m
//  TestProjectIOS
//
//  Created by liwenfan on 2023/4/4.
//

#import "TestProjectUIAppearance.h"

#import "TestProjectBaseTableViewCell.h"
#import "TestProjectCategoryHeader.h"

@interface TestProjectAppearanceCellModel : TestProjectTableViewModel

@property (nonatomic, copy) UIColor *viewColor;

@end

@implementation TestProjectAppearanceCellModel

- (NSString *)viewIdentifier {
    return @"TestProjectAppearanceCell";
}

- (CGFloat)viewHeight {
    return 200;
}

@end

@interface TestProjectAppearanceView : UIView

@property (nonatomic, copy) UIColor *viewColor;

@end

@implementation TestProjectAppearanceView

- (void)setViewColor:(UIColor *)viewColor {
    NSLog(@"%@__%@", self, viewColor);
    _viewColor = viewColor;
    self.backgroundColor = viewColor;
}

@end

@interface TestProjectAppearanceSubView : TestProjectAppearanceView

@end

@implementation TestProjectAppearanceSubView

@end

@interface TestProjectAppearanceCell : TestProjectBaseTableViewCell <TestProjectViewProtocol>

@property (nonatomic, strong) TestProjectAppearanceView *leftView;
@property (nonatomic, strong) TestProjectAppearanceSubView *rightView;
@property (nonatomic, strong) TestProjectAppearanceCellModel *viewModel;

@end

@implementation TestProjectAppearanceCell

- (void)setViewModel:(TestProjectAppearanceCellModel *)viewModel {
    self.leftView.hidden = NO;
    self.rightView.hidden = NO;
}

- (TestProjectAppearanceView *)leftView {
    if (!_leftView) {

        _leftView = [[TestProjectAppearanceView alloc] init];

        [self addSubview:_leftView];
        [_leftView testproject_makeConstraints:^(TestProjectViewConstrainMake * _Nonnull make) {
            make.height.width.equal(@50);
            make.centerY.equal(self);
            make.leading.equal(self).offset(10);
        }];
    }
    return _leftView;
}

- (TestProjectAppearanceSubView *)rightView {
    if (!_rightView) {
        _rightView = [[TestProjectAppearanceSubView alloc] init];
        [self addSubview:_rightView];
        [_rightView testproject_makeConstraints:^(TestProjectViewConstrainMake * _Nonnull make) {
            make.height.width.equal(@50);
            make.centerY.equal(self);
            make.leading.equal(self.leftView.trainling).offset(10);
        }];
    }
    return _rightView;
}

@end

@implementation TestProjectUIAppearance

- (NSMutableArray *)TestProjectAppearance_appearanceWhenContainedInInstancesOfClasses {
    TestProjectAppearanceCellModel *m = [[TestProjectAppearanceCellModel alloc] init];
    m.clickBlock = ^{
        [UIAlertController alertWithTitle:@"TestProjectAppearanceSubView的appear的时候调用该方法" message:@"确定后退出重进" cancelTitle:@"取消" cancelBlock:nil sureTitle:@"确定" sureBlock:^{
            [TestProjectAppearanceView appearanceWhenContainedInInstancesOfClasses:@[self.class]].viewColor = [UIColor blackColor];
        }];
    };
    [self.dataMutArr addObject:m];
    return self.dataMutArr;
}

- (NSDictionary *)method_2:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"在即将出现的时候，会调用属性方法并把值传入",
            @"title": @"+ (instancetype)appearanceWhenContainedInInstancesOfClasses:(NSArray<Class <UIAppearanceContainer>> *)containerTypes API_AVAILABLE(ios(9.0));",
            @"desc": @"如果紧接着有该属性设置这不会执行appearance \n@param containerTypes 只会在该容器下才会调用属性方法，其它的容器下不会调用属性方法",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"modelClass": TestProjectAppearanceCellModel.class,
                @"childItems": [self TestProjectAppearance_appearanceWhenContainedInInstancesOfClasses],
            }
        },
    };
}

- (NSMutableArray *)TestProjectAppearance_appearance {
    TestProjectAppearanceCellModel *m = [[TestProjectAppearanceCellModel alloc] init];
    m.clickBlock = ^{
        [UIAlertController alertWithTitle:@"TestProjectAppearanceView的appear的时候调用该方法" message:@"确定后退出重进" cancelTitle:@"取消" cancelBlock:nil sureTitle:@"确定" sureBlock:^{
            [TestProjectAppearanceView appearance].viewColor = [UIColor redColor];
        }];
    };
    [self.dataMutArr addObject:m];
    return self.dataMutArr;
}

- (NSDictionary *)method_1:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"在即将出现的时候，会调用属性方法并把值传入",
            @"title": @"+ (instancetype)appearance;",
            @"desc": @"如果紧接着有该属性设置这不会执行appearance",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"modelClass": TestProjectAppearanceCellModel.class,
                @"childItems": [self TestProjectAppearance_appearance],
            }
        },
    };
}

@end
