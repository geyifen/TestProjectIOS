//
//  TestProjectAttributeStringFoundationCell.m
//  TestProjectIOS
//
//  Created by zjrcumac on 2023/3/3.
//

#import "TestProjectAttributeStringFoundationCell.h"

@implementation TestProjectAttributeStringFoundationModel

- (NSString *)viewIdentifier {
    return @"TestProjectAttributeStringFoundationCell";
}

@end

@implementation TestProjectAttributeStringFoundationCell

- (void)setViewModel:(TestProjectAttributeStringFoundationModel *)viewModel {
    [super setViewModel:viewModel];
    self.titleLabel.attributedText = viewModel.titleMutAttrStr;
}

@end
