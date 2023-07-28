//
//  TestProjectCollectionCell.m
//  TestProjectIOS
//
//  Created by zjrcumac on 2023/7/26.
//

#import "TestProjectCollectionCell.h"

#import "TestProjectCategoryHeader.h"

@interface TestProjectCollectionCell ()

@property (nonatomic, strong) UILabel *titleLabel;

@end

@implementation TestProjectCollectionCell

- (void)setTitle:(NSString *)title {
    self.titleLabel.text = title;
}

- (UILabel *)titleLabel {
    if (!_titleLabel) {
        _titleLabel = [[UILabel alloc] init];
        _titleLabel.textColor = [UIColor lightGrayColor];
        _titleLabel.font = [UIFont systemFontOfSize:12];
        [self addSubview:_titleLabel];
        [_titleLabel testproject_makeConstraints:^(TestProjectViewConstrainMake * _Nonnull make) {
            make.top.bottom.leading.trainling.equal(self);
        }];
    }
    return _titleLabel;
}

@end

@interface TestProjectCollectionReusableView ()

@property (nonatomic, strong) UILabel *titleLabel;

@end

@implementation TestProjectCollectionReusableView

- (void)setTitle:(NSString *)title {
    self.titleLabel.text = title;
}

- (UILabel *)titleLabel {
    if (!_titleLabel) {
        _titleLabel = [[UILabel alloc] init];
        _titleLabel.textColor = [UIColor lightGrayColor];
        _titleLabel.font = [UIFont systemFontOfSize:12];
        [self addSubview:_titleLabel];
        [_titleLabel testproject_makeConstraints:^(TestProjectViewConstrainMake * _Nonnull make) {
            make.top.bottom.leading.trainling.equal(self);
        }];
    }
    return _titleLabel;
}

@end
