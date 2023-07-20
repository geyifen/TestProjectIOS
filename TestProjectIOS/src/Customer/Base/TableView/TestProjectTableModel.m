//
//  TestProjectTableModel.m
//  TestProjectIOS
//
//  Created by zjrcumac on 2023/2/22.
//

#import "TestProjectTableModel.h"

@implementation TestProjectJumpModel

- (id)copyWithZone:(NSZone *)zone {
    TestProjectJumpModel *m = [[TestProjectJumpModel alloc] init];
    m.jumpMethod = self.jumpMethod;
    return m;
}

@end

@implementation TestProjectTableModel {
    CGFloat _viewHeight;
}

- (instancetype)init {
    if (self = [super init]) {
        self.isTitleExpand = YES;
        self.isDescExpand = YES;
    }
    return self;
}

- (NSString *)viewIdentifier {
    return @"TestProjectBaseTableViewTableCell";
}

- (CGFloat)viewHeight {
    CGFloat viewHeight = _viewHeight;
    if (_titleHeight > 0 && !self.isTitleExpand) {
        viewHeight -= _titleHeight;
    }
    if (_dataViewHeight > 0 && !self.isDataModelExpand) {
        viewHeight -= _dataViewHeight;
    }
    if (_descHeight > 0 && !self.isDescExpand) {
        viewHeight -= _descHeight;
    }
    return viewHeight;
}

- (BOOL)needAutoCalculViewHeight {
    return YES;
}

- (CGFloat)calculDataModelViewHeight {
    CGFloat childViewHeight = 0;
    if (self.childItems.count > 0) {
        for (TestProjectTableModel *tabModel in self.childItems) {
            CGFloat viewHeight = tabModel->_viewHeight;
            if (viewHeight <= 0 && [tabModel viewHeight]) {
                viewHeight += [tabModel viewHeight];
            }
            childViewHeight += viewHeight;
        }
    }
    return childViewHeight;
}

- (void)calculDataViewHeight {
    CGFloat bankHeight = 15;
    CGFloat borderWidth = _isChild ? 60 : 30;
    CGSize size = CGSizeMake([UIScreen mainScreen].bounds.size.width - borderWidth, CGFLOAT_MAX);
    
    if (_abstract) {
        _abstractAttr = [[NSMutableAttributedString alloc] initWithString:self.abstract];
        UIColor *color = self.isChild ? [UIColor purpleColor] : [UIColor redColor];
        [_abstractAttr addAttributes:@{NSFontAttributeName:[UIFont systemFontOfSize:24 weight:UIFontWeightBold], NSForegroundColorAttributeName:color} range:NSMakeRange(0, self.abstract.length)];
    }
    if (_abstractAttr) {
        UILabel *abstractLabel = [[UILabel alloc] init];
        abstractLabel.numberOfLines = 0;
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

    if (self.dataModel && [self.dataModel respondsToSelector:@selector(calculDataModelViewHeight)]) {
        _dataViewHeight = [self.dataModel calculDataModelViewHeight];
        bankHeight += 15;
    }
    
    if (self.descMutAttrStr) {
        _descAttr = self.descMutAttrStr;
    } else if (self.desc) {
        _descAttr = [[NSMutableAttributedString alloc] initWithString:self.desc];
        [_descAttr addAttributes:@{NSForegroundColorAttributeName:[UIColor lightGrayColor], NSFontAttributeName:[UIFont systemFontOfSize:20]} range:NSMakeRange(0, self.desc.length)];
    }

    if (_descAttr) {
        UILabel *descLabel = [[UILabel alloc] init];
        descLabel.numberOfLines = 0;
        descLabel.attributedText = _descAttr;
        _descHeight = [descLabel sizeThatFits:size].height;
        bankHeight += 15;
    }
    bankHeight += 2;
    _viewHeight = _abstractHeight + _titleHeight + _descHeight + _dataViewHeight + bankHeight;
}

@end
