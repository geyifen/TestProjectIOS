//
//  TestProjectSectionViewTab.m
//  TestProjectIOS
//
//  Created by liwenfan on 2023/1/29.
//

#import "TestProjectSectionViewTab.h"
#import "UIView+TestProject_Constrain.h"

@interface TestProjectSectionViewTab ()

@property (nonatomic, strong) UILabel *titleLabel;
@property (nonatomic, strong) UIView *bottomLineView;
@property (nonatomic, strong) UIButton *arrowRightBtn;

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

- (void)didTapSectionViewTabForExpand {
    if (self.delegate && [self.delegate respondsToSelector:@selector(didTapSectionViewTabForExpand:)]) {
        [self.delegate didTapSectionViewTabForExpand:self];
    }
}

- (UILabel *)titleLabel {
    if (!_titleLabel) {
        _titleLabel = [[UILabel alloc] init];
        _titleLabel.font = [UIFont systemFontOfSize:18 weight:UIFontWeightMedium];
        _titleLabel.textAlignment = NSTextAlignmentCenter;
        _titleLabel.numberOfLines = 0;
        
        [self addSubview:_titleLabel];
        [_titleLabel testproject_makeConstraints:^(TestProjectViewConstrainMake * _Nonnull make) {
            make.top.bottom.equal(self);
            make.height.equal(@70);
            if (self.viewModel.tabType == TestProjectTab_AutoDivede) {
                make.leading.equal(self);
                make.trainling.equal(self.arrowRightBtn.leading);
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

- (UIButton *)arrowRightBtn {
    if (!_arrowRightBtn) {
        _arrowRightBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        UIImage *image = [UIImage systemImageNamed:@"chevron.forward"];
        [_arrowRightBtn setImage:image forState:UIControlStateNormal];
        [_arrowRightBtn addTarget:self action:@selector(didTapSectionViewTabForExpand) forControlEvents:UIControlEventTouchUpInside];
        [self addSubview:_arrowRightBtn];
        [_arrowRightBtn testproject_makeConstraints:^(TestProjectViewConstrainMake * _Nonnull make) {
            make.top.bottom.trainling.equal(self);
            make.width.equal(@30);
        }];
    }
    return _arrowRightBtn;
}

@end
