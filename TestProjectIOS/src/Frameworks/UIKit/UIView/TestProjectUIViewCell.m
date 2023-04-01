//
//  TestProjectUIViewCell.m
//  TestProjectIOS
//
//  Created by zjrcumac on 2023/3/31.
//

#import "TestProjectUIViewCell.h"

@implementation TestProjectUIViewModel

- (NSString *)viewIdentifier {
    return @"TestProjectUIViewCell";
}

- (CGFloat)viewHeight {
    return self->_titleHeight + self->_descHeight + self.cellViewHeight;
}

@end

@interface TestProjectUIViewCell ()

@property (nonatomic, strong) UIView<TestProjectViewProtocol> *cellView;

@end

@implementation TestProjectUIViewCell

- (void)setViewModel:(TestProjectUIViewModel *)viewModel {
    [super setViewModel:viewModel];
    [self.cellView testproject_updateConstraints:^(TestProjectViewConstrainMake * _Nonnull make) {
        make.height.equal(@(viewModel.cellViewHeight));
    }];
    self.cellView.viewModel = viewModel.cellViewModel;
}

- (UIView *)cellView {
    if (!_cellView && self.viewModel.viewKey) {
        Class cls = NSClassFromString(self.viewModel.viewKey);
        _cellView = [[cls alloc] init];
        [self.contentView addSubview:_cellView];
        [_cellView testproject_makeConstraints:^(TestProjectViewConstrainMake * _Nonnull make) {
            make.bottom.leading.trainling.equal(self);
        }];
    }
    return _cellView;
}

@end
