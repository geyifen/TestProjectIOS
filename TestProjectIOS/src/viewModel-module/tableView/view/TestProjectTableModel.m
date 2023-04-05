//
//  TestProjectTableModel.m
//  TestProjectIOS
//
//  Created by zjrcumac on 2023/2/22.
//

#import "TestProjectTableModel.h"

@implementation TestProjectJumpModel

@end

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
    if (self.titleMutAttrStr) {
        _titleAttr = self.titleMutAttrStr;
    } else if (self.title) {
        _titleAttr = [[NSMutableAttributedString alloc] initWithString:self.title];
        [_titleAttr addAttributes:@{NSFontAttributeName:[UIFont systemFontOfSize:23], NSForegroundColorAttributeName:[UIColor blackColor]} range:NSMakeRange(0, self.title.length)];
    }
    if (_titleAttr) {
        titleLabel.attributedText = _titleAttr;
        _titleHeight = [titleLabel sizeThatFits:size].height;
    }

    if (self.descMutAttrStr) {
        _descAttr = self.descMutAttrStr;
    } else if (self.desc) {
        _descAttr = [[NSMutableAttributedString alloc] initWithString:self.desc];
        [_descAttr addAttributes:@{NSForegroundColorAttributeName:[UIColor lightGrayColor], NSFontAttributeName:[UIFont systemFontOfSize:18]} range:NSMakeRange(0, self.desc.length)];
    }
    if (_descAttr) {
        UILabel *descLabel = [[UILabel alloc] init];
        descLabel.numberOfLines = 0;
        descLabel.attributedText = _descAttr;
        _descHeight = [descLabel sizeThatFits:size].height;
    }
    _viewHeight = _titleHeight + _descHeight + 30;
}

@end
