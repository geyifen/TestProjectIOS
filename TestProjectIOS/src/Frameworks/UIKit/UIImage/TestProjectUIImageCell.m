//
//  TestProjectUIImageCell.m
//  TestProjectIOS
//
//  Created by liwenfan on 2023/10/25.
//

#import "TestProjectUIImageCell.h"

#import "TestProjectCustomerHeader.h"

@implementation TestProjectUIImageModel

- (NSString *)viewIdentifier {
    return @"TestProjectUIImageCell";
}

- (CGFloat)calculCustomerViewHeight:(TestProjectTableViewParams *)params {
    if (!params) {
        return [super calculCustomerViewHeight:params];
    }
    return 30;
}

@end

@interface TestProjectUIImageCell ()

@property (nonatomic, strong) UIImageView *subImageView;

@end

@implementation TestProjectUIImageCell

- (void)setViewModel:(TestProjectUIImageModel *)viewModel {
    [super setViewModel:viewModel];
    self.subImageView.image = viewModel.image;
}

- (void)addCustomerChildView:(UIView *)superView
                   viewModel:(TestProjectTableViewModel *)viewModel {
    [superView addSubview:self.subImageView];
    [self.subImageView testproject_makeConstraints:^(TestProjectViewConstrainMake * _Nonnull make) {
        make.centerX.centerY.equal(superView);
        make.height.width.equal(@(viewModel->_customerViewHeight));
    }];
}

- (UIImageView *)subImageView {
    if (!_subImageView) {
        _subImageView = [[UIImageView alloc] init];
    }
    return _subImageView;
}

@end

