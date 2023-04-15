//
//  TestProjectSectionViewTab.m
//  TestProjectIOS
//
//  Created by zjrcumac on 2023/1/29.
//

#import "TestProjectSectionViewTab.h"
#import "UIView+TestProject_Constrain.h"

@interface TestProjectSectionViewTab ()

@property (nonatomic, strong) UILabel *titleLabel;
@property (nonatomic, strong) UIView *bottomLineView;

@end

@implementation TestProjectSectionViewTab

+ (UIView<TestProjectCreateViewProtocol> *)initCreateByViewModel {
    TestProjectSectionViewTab *view = [[TestProjectSectionViewTab alloc] init];
    return view;
}

- (void)setViewModel:(TestProjectViewModelTab *)viewModel {
    _viewModel = viewModel;
    self.bottomLineView.hidden = YES;
    self.titleLabel.text = viewModel.title;
}

#pragma mark - TestProjectTabChildViewProtocol
- (void)tabViewWithSelectItemView:(TestProjectViewTab *)tabView {
    self.bottomLineView.hidden = NO;
}

- (void)tabViewWithCancelSelectItemView:(TestProjectViewTab *)tabView {
    self.bottomLineView.hidden = YES;
}

- (void)updateMoveTabView:(TestProjectViewTab *)tabView animated:(BOOL)animated completed:(void (^)(void))completed  {
    if (animated) {
        [UIView animateWithDuration:0.25 animations:^{
            [self.bottomLineView testproject_updateConstraints:^(TestProjectViewConstrainMake * _Nonnull make) {
                make.centerX.equal(self.titleLabel).offset(-tabView.moveViewCenterOffset);
                make.width.equal(self.titleLabel).offset(tabView.moveViewWidthOffset);
            }];
        } completion:^(BOOL finished) {
            if (finished && completed) {
                completed();
            }
        }];
    } else {
        [self.bottomLineView testproject_updateConstraints:^(TestProjectViewConstrainMake * _Nonnull make) {
            make.centerX.equal(self.titleLabel).offset(-tabView.moveViewCenterOffset);
            make.width.equal(self.titleLabel).offset(tabView.moveViewWidthOffset);
        }];
    }
}

- (UILabel *)titleLabel {
    if (!_titleLabel) {
        _titleLabel = [[UILabel alloc] init];
        _titleLabel.font = [UIFont systemFontOfSize:18 weight:UIFontWeightMedium];
        _titleLabel.textAlignment = NSTextAlignmentCenter;
        
        [self addSubview:_titleLabel];
        [_titleLabel testproject_makeConstraints:^(TestProjectViewConstrainMake * _Nonnull make) {
            make.top.bottom.equal(self);
            make.height.equal(@50);
            if (self.viewModel.tabType == TestProjectTab_AutoDivede) {
                make.width.equal(self);
            } else {
                make.centerX.equal(self);
            }
        }];
    }
    return _titleLabel;
}

- (UIView *)bottomLineView {
    if (!_bottomLineView) {
        _bottomLineView = [[UIView alloc] init];
        _bottomLineView.backgroundColor = [UIColor blackColor];
        [self addSubview:_bottomLineView];
        [_bottomLineView testproject_makeConstraints:^(TestProjectViewConstrainMake * _Nonnull make) {
            make.bottom.width.centerX.equal(self.titleLabel);
            make.height.equal(@2);
        }];
    }
    return _bottomLineView;
}

@end
