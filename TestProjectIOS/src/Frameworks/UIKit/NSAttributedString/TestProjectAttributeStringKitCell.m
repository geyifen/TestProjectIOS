//
//  TestProjectAttributeStringKitCell.m
//  TestProjectIOS
//
//  Created by zjrcumac on 2023/3/3.
//

#import "TestProjectAttributeStringKitCell.h"

@implementation TestProjectAttributeStringKitModel

- (NSString *)viewIdentifier {
    return @"TestProjectAttributeStringKitCell";
}

@end

@implementation TestProjectAttributeStringKitCell

- (void)setViewModel:(TestProjectAttributeStringKitModel *)viewModel {
    [super setViewModel:viewModel];
    self.titleLabel.attributedText = viewModel.mutAttrString;
}

@end
