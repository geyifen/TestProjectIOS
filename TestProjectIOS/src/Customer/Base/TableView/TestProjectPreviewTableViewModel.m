//
//  TestProjectPreviewTableViewModel.m
//  TestProjectIOS
//
//  Created by zjrcumac on 2023/12/21.
//

#import "TestProjectPreviewTableViewModel.h"

@implementation TestProjectPreviewTableViewModel

- (void)calculDataViewHeight:(TestProjectTableViewParams *)params {
    CGFloat bankHeight = 15;
    CGFloat borderWidth = self.isChild ? 60 : 30;
    CGSize size = CGSizeMake([self calculTextMaxWidth] - borderWidth, CGFLOAT_MAX);
    
    if (self.abstract) {
        _abstractAttr = [[NSMutableAttributedString alloc] initWithString:self.abstract];
        UIColor *color = self.isChild ? [UIColor purpleColor] : [UIColor redColor];
        [_abstractAttr addAttributes:@{NSFontAttributeName:[UIFont systemFontOfSize:24 weight:UIFontWeightBold], NSForegroundColorAttributeName:color} range:NSMakeRange(0, self.abstract.length)];
    }
    if (_abstractAttr) {
        UILabel *abstractLabel = [[UILabel alloc] init];
        abstractLabel.numberOfLines = 0;
        abstractLabel.lineBreakMode = NSLineBreakByCharWrapping;

        abstractLabel.attributedText = _abstractAttr;
        _abstractHeight = [abstractLabel sizeThatFits:size].height;
        bankHeight += 15;
    }
    
    if (self.titleMutAttrStr) {
        _titleAttr = self.titleMutAttrStr;
    } else if (self.title) {
        _titleAttr = [[NSMutableAttributedString alloc] initWithString:self.title];
        UIColor *color = self.isChild ? [UIColor purpleColor] : [UIColor blackColor];
        [_titleAttr addAttributes:@{NSFontAttributeName:[UIFont systemFontOfSize:22 weight:UIFontWeightMedium], NSForegroundColorAttributeName:color} range:NSMakeRange(0, self.title.length)];
    }
    
    if (_titleAttr) {
        UILabel *titleLabel = [[UILabel alloc] init];
        titleLabel.numberOfLines = 0;
        titleLabel.attributedText = _titleAttr;
        _titleHeight = [titleLabel sizeThatFits:size].height;
        bankHeight += 15;
    }
    _viewHeight = _abstractHeight + _titleHeight + bankHeight;
}

@end
