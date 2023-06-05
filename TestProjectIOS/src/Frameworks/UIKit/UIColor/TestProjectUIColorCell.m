//
//  TestProjectUIColorCell.m
//  TestProjectIOS
//
//  Created by 李文凡 on 2023/2/25.
//

#import "TestProjectUIColorCell.h"

@implementation TestProjectUIColorModel

- (NSString *)viewIdentifier {
    return @"TestProjectUIColorCell";
}

- (CGFloat)viewHeight {
    if (self.childItems.count > 0) {
        return self.childItems.count * 60;
    }
    return 60;
}

@end

@interface TestProjectUIColorCell ()

@property (nonatomic, strong) UILabel *titleLabel;
@property (nonatomic, strong) UIView *view;

@end

@implementation TestProjectUIColorCell

- (void)setViewModel:(TestProjectUIColorModel *)viewModel {
    self.titleLabel.text = viewModel.title;
    self.view.backgroundColor = viewModel.backgroundColor;
}

- (UILabel *)titleLabel {
    if (!_titleLabel) {
        _titleLabel = [[UILabel alloc] init];
        _titleLabel.textColor = [UIColor blackColor];
        _titleLabel.numberOfLines = 0;
        [self addSubview:_titleLabel];
        [_titleLabel testproject_makeConstraints:^(TestProjectViewConstrainMake * _Nonnull make) {
            make.top.leading.equal(self);
            make.trainling.equal(self.view.leading);
        }];
    }
    return _titleLabel;
}

- (UIView *)view {
    if (!_view) {
        _view = [[UIView alloc] init];
        _view.layer.borderWidth = 2;
        _view.layer.borderColor = [UIColor redColor].CGColor;
        [self addSubview:_view];
        [_view testproject_makeConstraints:^(TestProjectViewConstrainMake * _Nonnull make) {
            make.width.height.equal(@40);
            make.bottom.trainling.equal(self).offset(-5);
        }];
    }
    return _view;
}

@end
