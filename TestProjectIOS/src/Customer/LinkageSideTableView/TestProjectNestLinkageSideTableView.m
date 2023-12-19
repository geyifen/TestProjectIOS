//
//  TestProjectNestLinkageSideTableView.m
//  TestProjectIOS
//
//  Created by zjrcumac on 2023/12/18.
//

#import "TestProjectNestLinkageSideTableView.h"

#import "TestProjectLinkageSideTableView.h"

@interface TestProjectNestLinkageSideTableView () <TestProjectLinkageSideTableViewDelegate>

@property (nonatomic, strong) TestProjectLinkageSideTableView *linkageSideTableView;

@end

@implementation TestProjectNestLinkageSideTableView

- (void)setViewModel:(TestProjectLinkageSideTableViewModel *)viewModel {
    _viewModel = viewModel;
    self.linkageSideTableView.viewModel = viewModel;
}

#pragma mark - TestProjectLinkageSideTableViewDelegate
- (UIView *)didTapLinkageSideTableView:(TestProjectLinkageSideTableView *)linkageSideTableView atIndex:(NSInteger)atIndex viewModel:(TestProjectTableViewModel *)viewModel {
    if (viewModel.childItems.count > 0) {
        TestProjectNestLinkageSideTableView *nestView = [[TestProjectNestLinkageSideTableView alloc] init];
        nestView.viewModel = (TestProjectLinkageSideTableViewModel *)viewModel;
        return nestView;
    } else {
        UIView *view = [[UIView alloc] init];
        view.backgroundColor = [UIColor redColor];
        return view;
    }
}

- (TestProjectLinkageSideTableView *)linkageSideTableView {
    if (!_linkageSideTableView) {
        _linkageSideTableView = [[TestProjectLinkageSideTableView alloc] init];
        _linkageSideTableView.delegate = self;
        [self addSubview:_linkageSideTableView];
        [_linkageSideTableView testproject_makeConstraints:^(TestProjectViewConstrainMake * _Nonnull make) {
            make.top.leading.bottom.trainling.equal(self);
        }];
    }
    return _linkageSideTableView;
}

@end
