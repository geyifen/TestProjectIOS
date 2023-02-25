//
//  TestProjectTableModel.m
//  TestProjectIOS
//
//  Created by zjrcumac on 2023/2/22.
//

#import "TestProjectTableModel.h"

@implementation TestProjectTableModel {
    CGFloat _viewHeight;
}

- (NSString *)viewIdentifier {
    return @"TestProjectTableViewCell";
}

- (CGFloat)viewHeight {
    return _viewHeight;
}

- (void)calculDataViewHeight {
    UILabel *titleLabel = [[UILabel alloc] init];
    _viewHeight = _titleHeight + _descHeight;
}

@end
