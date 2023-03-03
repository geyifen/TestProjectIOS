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
    CGSize size = CGSizeMake([UIScreen mainScreen].bounds.size.width - 30, CGFLOAT_MAX);
    UILabel *titleLabel = [[UILabel alloc] init];
    titleLabel.numberOfLines = 0;
    _titleAttr = [[NSMutableAttributedString alloc] initWithString:self.title];
    [_titleAttr addAttributes:@{NSFontAttributeName:[UIFont systemFontOfSize:20], NSForegroundColorAttributeName:[UIColor blackColor]} range:NSMakeRange(0, self.title.length)];
    titleLabel.attributedText = _titleAttr;
    _titleHeight = [titleLabel sizeThatFits:size].height;

    if (self.desc) {
        UILabel *descLabel = [[UILabel alloc] init];
        descLabel.numberOfLines = 0;
        _descAttr = [[NSMutableAttributedString alloc] initWithString:self.desc];
        [_descAttr addAttributes:@{NSForegroundColorAttributeName:[UIColor lightGrayColor]} range:NSMakeRange(0, self.desc.length)];
        descLabel.attributedText = _descAttr;
        _descHeight = [descLabel sizeThatFits:size].height;
    }
    _viewHeight = _titleHeight + _descHeight + 30;
}

@end
