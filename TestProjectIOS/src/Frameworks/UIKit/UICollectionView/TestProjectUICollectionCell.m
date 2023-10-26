//
//  TestProjectUICollectionCell.m
//  TestProjectIOS
//
//  Created by liwenfan on 2023/7/26.
//

#import "TestProjectUICollectionCell.h"

#import "TestProjectCategoryHeader.h"

@interface TestProjectUICollectionCell ()

@property (nonatomic, strong) UILabel *titleLabel;

@end

@implementation TestProjectUICollectionCell

- (instancetype)initWithFrame:(CGRect)frame {
    if (self = [super initWithFrame:frame]) {
        self.backgroundColor = [UIColor redColor];
    }
    return self;
}

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

@interface TestProjectUICollectionReusableView ()

@property (nonatomic, strong) UILabel *titleLabel;

@end

@implementation TestProjectUICollectionReusableView

- (instancetype)initWithFrame:(CGRect)frame {
    if (self = [super initWithFrame:frame]) {
        self.backgroundColor = [UIColor yellowColor];
    }
    return self;
}

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
