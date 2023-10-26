//
//  TestProjectUIImageCell.m
//  TestProjectIOS
//
//  Created by zjrcumac on 2023/10/25.
//

#import "TestProjectUIImageCell.h"

#import "TestProjectCustomerHeader.h"

@implementation TestProjectUIImageModel

- (NSString *)viewIdentifier {
    return @"TestProjectUIImageCell";
}

- (CGFloat)viewHeight {
    return 60;
}

- (BOOL)needAutoCalculViewHeight {
    return NO;
}

@end

@interface TestProjectUIImageCell ()

@property (nonatomic, strong) UILabel *titleLabel;
@property (nonatomic, strong) UIImageView *subImageView;

@end

@implementation TestProjectUIImageCell

- (void)setViewModel:(TestProjectUIImageModel *)viewModel {
    self.titleLabel.text = viewModel.title;
    self.subImageView.image = viewModel.image;
}

- (UILabel *)titleLabel {
    if (!_titleLabel) {
        _titleLabel = [[UILabel alloc] init];
        _titleLabel.textColor = [UIColor blackColor];
        _titleLabel.numberOfLines = 0;
        [self addSubview:_titleLabel];
        [_titleLabel testproject_makeConstraints:^(TestProjectViewConstrainMake * _Nonnull make) {
            make.top.leading.equal(self);
            make.trainling.equal(self.subImageView.leading);
        }];
    }
    return _titleLabel;
}

- (UIImageView *)subImageView {
    if (!_subImageView) {
        _subImageView = [[UIImageView alloc] init];
        [self addSubview:_subImageView];
        [_subImageView testproject_makeConstraints:^(TestProjectViewConstrainMake * _Nonnull make) {
            make.width.height.equal(@40);
            make.centerY.trainling.equal(self);
        }];
    }
    return _subImageView;
}

@end

