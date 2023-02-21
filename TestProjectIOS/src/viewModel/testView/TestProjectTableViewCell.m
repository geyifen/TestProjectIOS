//
//  TestProjectTableViewCell.m
//  TestProjectIOS
//
//  Created by zjrcumac on 2023/2/22.
//

#import "TestProjectTableViewCell.h"

#import "TestProjectCategoryHeader.h"

@interface TestProjectTableViewCell ()

@property (nonatomic, strong) UILabel *titleLabel;
@property (nonatomic, strong) UILabel *descLabel;
@property (nonatomic, strong) UIView *bottomLineView;

@end

@implementation TestProjectTableViewCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        self.accessoryType = UITableViewCellAccessoryNone;
    }
    return self;
}

- (void)setViewModel:(TestProjectTableModel *)viewModel {
    self.titleLabel.text = viewModel.title;
    self.descLabel.text = viewModel.desc;
}

- (UILabel *)titleLabel {
    if (!_titleLabel) {
        _titleLabel = [[UILabel alloc] init];
        _titleLabel.numberOfLines = 0;
        _titleLabel.font = [UIFont systemFontOfSize:20];
        [self addSubview:_titleLabel];
        [_titleLabel mas_makeConstraints:^(TestProjectViewConstrainMake * _Nonnull make) {
            make.leading.trainling.equal(self.descLabel);
            make.top.equal(self.descLabel.bottom);
            make.height.equal(@100);
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
        [_descLabel mas_makeConstraints:^(TestProjectViewConstrainMake * _Nonnull make) {
            make.top.equal(self);
            make.leading.equal(self).offset(15);
            make.trainling.equal(self).offset(-15);
            make.height.equal(@50);
        }];
        [self.bottomLineView mas_makeConstraints:^(TestProjectViewConstrainMake * _Nonnull make) {
            make.bottom.leading.trainling.equal(self);
            make.height.equal(@2);
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
