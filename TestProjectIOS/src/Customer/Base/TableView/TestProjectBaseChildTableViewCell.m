//
//  TestProjectBaseChildTableViewCell.m
//  TestProjectIOS
//
//  Created by liwenfan on 2023/11/6.
//

#import "TestProjectBaseChildTableViewCell.h"

@interface TestProjectBaseChildTableViewCell ()

@property (nonatomic, strong) UILabel *titleLabel;

@end

@implementation TestProjectBaseChildTableViewCell

- (void)setViewModel:(TestProjectTableViewModel *)viewModel {
    _viewModel = viewModel;
    self.titleLabel.attributedText = viewModel->_titleAttr;
}

- (void)addChildView:(UIView *)childView {
    [self addSubview:childView];
    [childView testproject_makeConstraints:^(TestProjectViewConstrainMake * _Nonnull make) {
        make.width.height.equal(@30);
        make.centerY.trainling.equal(self);
    }];
}

- (UILabel *)titleLabel {
    if (!_titleLabel) {
        _titleLabel = [[UILabel alloc] init];
        _titleLabel.textColor = [UIColor blackColor];
        _titleLabel.font = [UIFont systemFontOfSize:22 weight:UIFontWeightMedium];
        _titleLabel.numberOfLines = 0;
        [self addSubview:_titleLabel];
        [_titleLabel testproject_makeConstraints:^(TestProjectViewConstrainMake * _Nonnull make) {
            make.top.leading.equal(self);
            make.trainling.equal(self).offset(-30);
        }];
    }
    return _titleLabel;
}

@end
