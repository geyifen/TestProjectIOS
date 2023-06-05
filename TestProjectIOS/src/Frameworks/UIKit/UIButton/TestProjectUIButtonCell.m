//
//  TestProjectUIButtonCell.m
//  TestProjectIOS
//
//  Created by zjrcumac on 2023/6/1.
//

#import "TestProjectUIButtonCell.h"

@implementation TestProjectUIButtonCellModel

- (NSString *)viewIdentifier {
    return @"TestProjectUIButtonCell";
}

- (CGFloat)viewHeight {
    return 50;
}

- (BOOL)needAutoCalculViewHeight {
    return NO;
}

@end

@interface TestProjectUIButtonCell ()

@property (nonatomic, strong) UILabel *titleLabel;
@property (nonatomic, strong) UIView *childView;

@end

@implementation TestProjectUIButtonCell

- (void)setViewModel:(TestProjectUIButtonCellModel *)viewModel {
    _viewModel = viewModel;
    self.titleLabel.text = viewModel.title;
    if (![viewModel.chidlButton isDescendantOfView:self.childView]) {
        [self.childView addSubview:viewModel.chidlButton];
    }
}

- (UILabel *)titleLabel {
    if (!_titleLabel) {
        _titleLabel = [[UILabel alloc] init];
        _titleLabel.numberOfLines = 0;
        [self addSubview:_titleLabel];
        [_titleLabel testproject_makeConstraints:^(TestProjectViewConstrainMake * _Nonnull make) {
            make.leading.top.bottom.equal(self);
            make.trainling.equal(self.childView.leading).offset(-5);
        }];
    }
    return _titleLabel;
}

- (UIView *)childView {
    if (!_childView) {
        _childView = [[UIView alloc] init];
        [self addSubview:_childView];
        [_childView testproject_makeConstraints:^(TestProjectViewConstrainMake * _Nonnull make) {
            make.top.bottom.trainling.equal(self);
            make.width.equal(self.height);
        }];
    }
    return _childView;
}

@end
