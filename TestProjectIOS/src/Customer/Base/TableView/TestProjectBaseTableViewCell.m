//
//  TestProjectBaseTableViewCell.m
//  TestProjectIOS
//
//  Created by zjrcumac on 2023/2/22.
//

#import "TestProjectBaseTableViewCell.h"

#import "TestProjectCategoryHeader.h"

@interface TestProjectBaseTableViewCell ()

@property (nonatomic, strong) UIView *bottomLineView;

@end

@implementation TestProjectBaseTableViewCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        self.accessoryType = UITableViewCellAccessoryNone;
    }
    return self;
}

- (void)setViewModel:(TestProjectTableModel *)viewModel {
    _viewModel = viewModel;
    self.titleLabel.attributedText = viewModel->_titleAttr;
    self.descLabel.attributedText = viewModel->_descAttr;
    [self.titleLabel testproject_updateConstraints:^(TestProjectViewConstrainMake * _Nonnull make) {
        make.height.equal(@(viewModel->_titleHeight));
    }];
    [self.descLabel testproject_updateConstraints:^(TestProjectViewConstrainMake * _Nonnull make) {
        make.height.equal(@(viewModel->_descHeight));
    }];
}

- (UILabel *)titleLabel {
    if (!_titleLabel) {
        _titleLabel = [[UILabel alloc] init];
        _titleLabel.numberOfLines = 0;
        [self addSubview:_titleLabel];
        [_titleLabel testproject_makeConstraints:^(TestProjectViewConstrainMake * _Nonnull make) {
            make.leading.trainling.equal(self.descLabel);
            make.top.equal(self.descLabel.bottom).offset(10);
        }];
        [self.bottomLineView testproject_makeConstraints:^(TestProjectViewConstrainMake * _Nonnull make) {
            make.bottom.leading.trainling.equal(self);
            make.height.equal(@2);
        }];
    }
    return _titleLabel;
}

- (UILabel *)descLabel {
    if (!_descLabel) {
        _descLabel = [[UILabel alloc] init];
        _descLabel.textColor = [UIColor lightGrayColor];
        _descLabel.numberOfLines = 0;
        [self addSubview:_descLabel];
        [_descLabel testproject_makeConstraints:^(TestProjectViewConstrainMake * _Nonnull make) {
            make.top.equal(self).offset(10);
            make.leading.equal(self).offset(15);
            make.trainling.equal(self).offset(-15);
        }];
    }
    return _descLabel;
}

- (UIView *)bottomLineView {
    if (!_bottomLineView) {
        _bottomLineView = [[UIView alloc] init];
        _bottomLineView.backgroundColor = [UIColor lightGrayColor];
        [self addSubview:_bottomLineView];
    }
    return _bottomLineView;
}

@end
