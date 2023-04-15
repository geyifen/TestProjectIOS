//
//  TestProjectDetailObjectController.m
//  TestProjectIOS
//
//  Created by zjrcumac on 2023/2/22.
//

#import "TestProjectDetailObjectController.h"

#import "TestProjectCategoryHeader.h"
#import "TestProjectIgnoreWarningDefmacro.h"

@implementation TestProjectDetailVCModel

- (id)copyWithZone:(nullable NSZone *)zone {
    TestProjectDetailVCModel *m = [[TestProjectDetailVCModel alloc] init];
    m.title = self.title;
    m.desc = self.desc;
    m.detailMethod = self.detailMethod;
    if (self.childTableModel) {
        m.childTableModel = [self.childTableModel copy];
    }
    return m;
}

@end

@interface TestProjectDetailObjectController ()

@property (nonatomic, strong) UILabel *titleLabel;
@property (nonatomic, strong) UILabel *descLabel;
@property (nonatomic, strong) UIView *lineView;
@property (nonatomic, strong) UIScrollView *scrollView;

@property (nonatomic, strong) TestProjectTableModel * _Nullable compareViewModel;
@property (nonatomic, strong) UILabel *compareTitleLabel;
@property (nonatomic, strong) UILabel *compareDescLabel;

@end

@implementation TestProjectDetailObjectController

- (instancetype)initWithViewModel:(TestProjectDetailVCModel *)viewModel {
    if (self = [super init]) {
        self.viewModel = viewModel;
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    if ([self.viewModel isKindOfClass:[TestProjectDetailVCModel class]]) {
        if (self.viewModel.detailMethod) {
            CancelPerformSelectorLeakWarning([self performSelector:NSSelectorFromString(self.viewModel.detailMethod) withObject:self.viewModel];);
        }
        [self.viewModel calculDataViewHeight];
        [self prepareViewForModel];
    } else {
        [self prepareViewForModel];
    }
}

- (void)prepareViewForModel {
    if (!self.viewModel) {
        return;
    }
    [self reloadViewModel];
    Class<TestProjectCreateViewProtocol> viewClass = NSClassFromString(self.viewModel.viewKey);
    if ([viewClass conformsToProtocol:@protocol(TestProjectCreateViewProtocol)]) {
        UIView<TestProjectDetailObjectChildView> *view = (UIView<TestProjectDetailObjectChildView> *)[viewClass initCreateByViewModel];
        [view setViewModel:self.viewModel];
        [self.view addSubview:view];
        [view testproject_makeConstraints:^(TestProjectViewConstrainMake * _Nonnull make) {
            make.top.equal(self.lineView.bottom).offset(10);
            make.bottom.leading.trainling.equal(self.view);
        }];
        if ([view respondsToSelector:@selector(compareViewModel)] && view.compareViewModel) {
            self.compareViewModel = view.compareViewModel;
            UIButton *button = [UIButton buttonWithType:UIButtonTypeInfoLight];
            [button addTarget:self action:@selector(handleTapCompareViewModelEvent:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:button];
            [button testproject_makeConstraints:^(TestProjectViewConstrainMake * _Nonnull make) {
                make.height.width.equal(@50);
                make.trainling.equal(self.view);
                make.bottom.equal(self.view).offset(-20);
            }];
        }
    }
}

- (void)reloadViewModel {
    self.titleLabel.attributedText = self.viewModel->_titleAttr;
    self.descLabel.attributedText = self.viewModel->_descAttr;
    [self.titleLabel testproject_updateConstraints:^(TestProjectViewConstrainMake * _Nonnull make) {
        make.height.equal(@(self.viewModel->_titleHeight));
    }];
    [self.descLabel testproject_updateConstraints:^(TestProjectViewConstrainMake * _Nonnull make) {
        make.height.equal(@(self.viewModel->_descHeight));
    }];
}

- (void)handleTapCompareViewModelEvent:(UIButton *)btn {
    btn.selected = !btn.selected;
    if (btn.selected) {
        [self.compareDescLabel testproject_updateConstraints:^(TestProjectViewConstrainMake * _Nonnull make) {
            make.height.equal(@(self.compareViewModel->_descHeight));
        }];
        [self.compareTitleLabel testproject_updateConstraints:^(TestProjectViewConstrainMake * _Nonnull make) {
            make.height.equal(@(self.compareViewModel->_titleHeight));
        }];
        [self.scrollView testproject_updateConstraints:^(TestProjectViewConstrainMake * _Nonnull make) {
            make.height.equal(@(self.titleLabel.viewBottomY));
        }];
    } else {
        [self.compareDescLabel testproject_updateConstraints:^(TestProjectViewConstrainMake * _Nonnull make) {
            make.height.equal(@(0));
        }];
        [self.compareTitleLabel testproject_updateConstraints:^(TestProjectViewConstrainMake * _Nonnull make) {
            make.height.equal(@(0));
        }];
        [self.scrollView testproject_updateConstraints:^(TestProjectViewConstrainMake * _Nonnull make) {
            make.height.equal(@0);
        }];
    }
}

- (UILabel *)titleLabel {
    if (!_titleLabel) {
        _titleLabel = [[UILabel alloc] init];
        _titleLabel.numberOfLines = 0;
        [self.view addSubview:_titleLabel];
        [_titleLabel testproject_makeConstraints:^(TestProjectViewConstrainMake * _Nonnull make) {
            make.leading.trainling.equal(self.descLabel);
            make.top.equal(self.descLabel.bottom).offset(10);
        }];
    }
    return _titleLabel;
}

- (UILabel *)descLabel {
    if (!_descLabel) {
        _descLabel = [[UILabel alloc] init];
        _descLabel.textColor = [UIColor lightGrayColor];
        _descLabel.numberOfLines = 0;
        [self.view addSubview:_descLabel];
        [_descLabel testproject_makeConstraints:^(TestProjectViewConstrainMake * _Nonnull make) {
            make.top.equal(self.view).offset(10);
            make.leading.equal(self.view).offset(15);
            make.trainling.equal(self.view).offset(-15);
        }];
    }
    return _descLabel;
}

- (UIScrollView *)scrollView {
    if (!_scrollView) {
        _scrollView = [[UIScrollView alloc] init];
        _scrollView.backgroundColor = [UIColor whiteColor];
        [self.view addSubview:_scrollView];
        [_scrollView testproject_makeConstraints:^(TestProjectViewConstrainMake * _Nonnull make) {
            make.top.leading.trainling.equal(self.view);
        }];
    }
    return _scrollView;
}

- (void)viewDidLayoutSubviews {
    if (_scrollView) {
        [_scrollView setContentOffset:CGPointZero];
        [_scrollView setContentSize:CGSizeMake([UIScreen mainScreen].bounds.size.width, _compareViewModel->_descHeight + _compareViewModel->_titleHeight)];
    }
}

- (UILabel *)compareTitleLabel {
    if (!_compareTitleLabel) {
        _compareTitleLabel = [[UILabel alloc] init];
        _compareTitleLabel.numberOfLines = 0;
        _compareTitleLabel.backgroundColor = [UIColor whiteColor];
        _compareTitleLabel.attributedText = self.compareViewModel->_titleAttr;
        [self.scrollView addSubview:_compareTitleLabel];
        [_compareTitleLabel testproject_makeConstraints:^(TestProjectViewConstrainMake * _Nonnull make) {
            make.leading.trainling.equal(self.compareDescLabel);
            make.top.equal(self.compareDescLabel.bottom).offset(10);
        }];
    }
    return _compareTitleLabel;
}

- (UILabel *)compareDescLabel {
    if (!_compareDescLabel) {
        _compareDescLabel = [[UILabel alloc] init];
        _compareDescLabel.textColor = [UIColor lightGrayColor];
        _compareDescLabel.attributedText = self.compareViewModel->_descAttr;
        _compareDescLabel.numberOfLines = 0;
        _compareDescLabel.backgroundColor = [UIColor whiteColor];
        [self.scrollView addSubview:_compareDescLabel];
        [_compareDescLabel testproject_makeConstraints:^(TestProjectViewConstrainMake * _Nonnull make) {
            make.top.equal(self.scrollView);
            make.leading.equal(self.view).offset(15);
            make.trainling.equal(self.view).offset(-15);
        }];
    }
    return _compareDescLabel;
}

- (UIView *)lineView {
    if (!_lineView) {
        _lineView = [[UIView alloc] init];
        _lineView.backgroundColor = [UIColor lightGrayColor];
        [self.view addSubview:_lineView];
        [_lineView testproject_makeConstraints:^(TestProjectViewConstrainMake * _Nonnull make) {
            make.height.equal(@2);
            make.leading.trainling.equal(self.view);
            make.top.equal(self.titleLabel.bottom).offset(10);
        }];
    }
    return _lineView;
}

- (void)reloadDataWith:(id)data {
    self.viewModel.desc = [NSString stringWithFormat:@"%@ %@ self.title:%@", self.viewModel.desc, data, self.title];
}

- (void)get_parentViewController {
    [self reloadDataWith:self.parentViewController];
}

- (void)get_presentedViewController {
    [self reloadDataWith:self.parentViewController];
    self.viewModel.desc = [NSString stringWithFormat:@"%@ %@", self.viewModel.desc, self.presentedViewController];
}

- (void)get_presentingViewController {
    [self reloadDataWith:self.presentingViewController];
}

- (void)get_topViewController {
    [self reloadDataWith:self.navigationController.topViewController];
}

- (void)get_visibleViewController {
    [self reloadDataWith:self.navigationController.visibleViewController];
}

- (void)get_viewControllers {
    [self reloadDataWith:self.navigationController.viewControllers];
}

- (void)get_toolbar {
    [self reloadDataWith:self.navigationController.toolbar];
}

- (void)get_navigationItem {
    [self reloadDataWith:self.navigationItem];
}

- (void)get_navigationController {
    [self reloadDataWith:self.navigationController];
}

- (void)get_topItem {
    [self reloadDataWith:self.navigationController.navigationBar.topItem];
}

- (void)get_backItem {
    [self reloadDataWith:self.navigationController.navigationBar.backItem];
}

- (void)get_items {
    [self reloadDataWith:self.navigationController.navigationBar.items];
}

@end
