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

@end

@interface TestProjectUIImageCell ()

@property (nonatomic, strong) UIImageView *subImageView;

@end

@implementation TestProjectUIImageCell

- (void)setViewModel:(TestProjectUIImageModel *)viewModel {
    [super setViewModel:viewModel];
    self.subImageView.image = viewModel.image;
}

- (UIImageView *)subImageView {
    if (!_subImageView) {
        _subImageView = [[UIImageView alloc] init];
        [self addChildView:_subImageView];
    }
    return _subImageView;
}

@end

