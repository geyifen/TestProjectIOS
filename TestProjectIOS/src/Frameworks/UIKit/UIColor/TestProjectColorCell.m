//
//  TestProjectColorCell.m
//  TestProjectIOS
//
//  Created by 李文凡 on 2023/2/25.
//

#import "TestProjectColorCell.h"

@implementation TestProjectColorModel

- (NSString *)viewIdentifier {
    return @"TestProjectColorCell";
}

- (CGFloat)viewHeight {
    CGFloat viewHeight = [super viewHeight] + (self.isSection ? 20 : 0);
    return viewHeight;
}

@end

@interface TestProjectColorCell ()

@end

@implementation TestProjectColorCell

- (void)setViewModel:(TestProjectColorModel *)viewModel {
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
