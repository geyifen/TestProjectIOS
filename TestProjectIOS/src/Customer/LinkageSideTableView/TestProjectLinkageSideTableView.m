//
//  TestProjectLinkageSideTableView.m
//  TestProjectIOS
//
//  Created by liwenfan on 2023/12/18.
//

#import "TestProjectLinkageSideTableView.h"

#import "TestProjectViewModelTableView.h"

@interface TestProjectLinkageSideTableView () <TestProjectViewModelTableViewProtocol>

@property (nonatomic, strong) TestProjectViewModelTableView *mainTableView;
@property (nonatomic, strong) NSMutableDictionary *sideTableViewDic;
@property (nonatomic, weak) UIView *currentView;
@property (nonatomic, copy) NSString *currentKey;

@end

@implementation TestProjectLinkageSideTableView

- (void)setViewModel:(TestProjectLinkageSideTableViewModel *)viewModel {
    _viewModel = viewModel;
    [self.mainTableView testproject_updateConstraints:^(TestProjectViewConstrainMake * _Nonnull make) {
        make.width.equal(@(viewModel.rightSideWidth));
    }];
    self.mainTableView.dataSourceArray = viewModel.childItems;
    [self didSelectAtIndex:0 viewModel:viewModel.childItems.firstObject];
}

- (NSString *)getKeyWithViewModel:(id)viewModel {
    return [NSString stringWithFormat:@"%p", viewModel];
}

- (void)didSelectAtIndex:(NSInteger)atIndex viewModel:(id)viewModel {
    NSString *key = [self getKeyWithViewModel:viewModel];
    if ([key isEqualToString:self.currentKey]) {
        return;
    }
    self.currentView.hidden = YES;
    UIView *view = [self.sideTableViewDic objectForKey:key];
    if (!view) {
        if (self.delegate && [self.delegate respondsToSelector:@selector(didTapLinkageSideTableView:atIndex:viewModel:)]) {
            view = [self.delegate didTapLinkageSideTableView:self atIndex:atIndex viewModel:viewModel];
        } else {
            view = [[UIView alloc] init];
        }
        [self addSubview:view];
        [view testproject_makeConstraints:^(TestProjectViewConstrainMake * _Nonnull make) {
            make.top.bottom.trainling.equal(self);
            make.leading.equal(self.mainTableView.trainling);
        }];
        [self.sideTableViewDic setObject:view forKey:key];
    }
    self.currentKey = key;
    self.currentView = view;
    self.currentView.hidden = NO;
}

#pragma mark - TestProjectViewModelTableViewProtocol
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath viewModel:(id)viewModel {
    [self didSelectAtIndex:indexPath.row viewModel:viewModel];
}

- (TestProjectViewModelTableView *)mainTableView {
    if (!_mainTableView) {
        _mainTableView = [[TestProjectViewModelTableView alloc] initWithStyleGrouped];
        _mainTableView.tableViewDelegate = self;
        [self addSubview:_mainTableView];
        [_mainTableView testproject_makeConstraints:^(TestProjectViewConstrainMake * _Nonnull make) {
            make.top.bottom.leading.equal(self);
        }];
    }
    return _mainTableView;
}

- (NSMutableDictionary *)sideTableViewDic {
    if (!_sideTableViewDic) {
        _sideTableViewDic = [NSMutableDictionary dictionary];
    }
    return _sideTableViewDic;
}

@end
