//
//  TestProjectAppearance.m
//  TestProjectIOS
//
//  Created by zjrcumac on 2023/4/4.
//

#import "TestProjectAppearance.h"

#import "TestProjectUIViewCell.h"

@interface TestProjectAppearanceView : UIView

@property (nonatomic, copy) UIColor *viewColor;

@end

@implementation TestProjectAppearanceView

- (void)setViewColor:(UIColor *)viewColor {
    _viewColor = viewColor;
    self.backgroundColor = viewColor;
}

@end

@interface TestProjectAppearanceSubView : TestProjectAppearanceView

@end

@implementation TestProjectAppearanceSubView

@end

@interface TestProjectAppearanceCellView : UIView <TestProjectViewProtocol>

@property (nonatomic, strong) id viewModel;

@property (nonatomic, strong) TestProjectAppearanceView *leftView;
@property (nonatomic, strong) TestProjectAppearanceSubView *rightView;

@end

@implementation TestProjectAppearanceCellView

- (instancetype)init {
    if (self = [super init]) {
        self.rightView.hidden = NO;
    }
    return self;
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

@implementation TestProjectAppearance

- (NSDictionary *)method_1 {
    return @{
        @"- check_appearance":@{
            @"method":@"TestProjectAppearance_check_appearance",
            @"desc":@"通过设置appearce查看视图对比结果"}
    };
}

- (NSDictionary *)method_2 {
    return @{
        @"+ (instancetype)appearance;":@{
            @"method":@"TestProjectAppearance_appearance",
            @"jumpType": @(TestProjectJumpTypeOfClick),
            @"jumpModel": @{
                @"jumpMethod": @"TestProjectAppearance_appearance",
            },
            @"desc":@"设置appearance的颜色为[UIColor redColor] \n 它的优先级低于+ (instancetype)appearanceWhenContainedInInstancesOfClasses:(NSArray<Class <UIAppearanceContainer>> *)containerTypes API_AVAILABLE(ios(9.0));方法"}
    };
}

- (NSDictionary *)method_3 {
    return @{
        @"+ (instancetype)appearanceWhenContainedInInstancesOfClasses:(NSArray<Class <UIAppearanceContainer>> *)containerTypes API_AVAILABLE(ios(9.0));":@{
            @"method":@"TestProjectAppearance_appearanceWhenContainedInInstancesOfClasses",
            @"jumpType": @(TestProjectJumpTypeOfClick),
            @"jumpModel": @{
                @"jumpMethod": @"TestProjectAppearance_appearanceWhenContainedInInstancesOfClasses",
            },
            @"desc":@"只设置了子视图的appearance的颜色为[UIColor blackColor] \n 它的优先级高于+ (instancetype)appearance;方法 \n param containerTypes : 必须是一个实例对象的class而且使用的appearance视图必须在这个实例对象class里生成"}
    };
}

- (void)TestProjectAppearance_appearanceWhenContainedInInstancesOfClasses {
    [TestProjectAppearanceSubView appearanceWhenContainedInInstancesOfClasses:@[self.class]].viewColor = [UIColor blackColor];
}

- (void)TestProjectAppearance_appearance {
    [TestProjectAppearanceView appearance].viewColor = [UIColor redColor];
}

- (void)TestProjectAppearance_check_appearance {
    TestProjectUIViewModel *vm = [[TestProjectUIViewModel alloc] init];
    vm.viewKey = @"TestProjectAppearanceCellView";

    [self.dataMutArr addObject:vm];
    self.tableView.dataSourceArray = self.dataMutArr;
}

@end
