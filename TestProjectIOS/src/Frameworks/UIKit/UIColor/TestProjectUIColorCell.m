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
    CGFloat viewHeight = [super viewHeight] + (self.isSection ? 20 : 0);
    return viewHeight;
}

@end

@interface TestProjectUIColorCell ()

@end

@implementation TestProjectUIColorCell

- (void)setViewModel:(TestProjectUIColorModel *)viewModel {
    [super setViewModel:viewModel];
    self.backgroundColor = viewModel.backgroundColor;
    self.titleLabel.textColor = viewModel.textColor ? viewModel.textColor : (viewModel.isSection ? [UIColor blackColor] : [UIColor blueColor]);
    [self.descLabel testproject_updateConstraints:^(TestProjectViewConstrainMake * _Nonnull make) {
        make.top.equal(self).offset(viewModel.isSection ? 20 : 0);
    }];
    if (viewModel.cgColor) {
        self.layer.backgroundColor = viewModel.cgColor;
    }
    
}

@end
