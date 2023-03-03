//
//  TestProjectDetailObjectController.m
//  TestProjectIOS
//
//  Created by zjrcumac on 2023/2/22.
//

#import "TestProjectDetailObjectController.h"

#import "TestProjectCategoryHeader.h"

@interface TestProjectDetailObjectController ()

@property (nonatomic, strong) TestProjectTableModel *viewModel;
@property (nonatomic, strong) UILabel *titleLabel;
@property (nonatomic, strong) UILabel *descLabel;
@property (nonatomic, strong) UIScrollView *scrollView;

@end

@implementation TestProjectDetailObjectController

- (instancetype)initWithViewModel:(TestProjectTableModel *)viewModel {
    if (self = [super init]) {
        self.viewModel = viewModel;
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.titleLabel.attributedText = self.viewModel->_titleAttr;
    self.descLabel.attributedText = self.viewModel->_descAttr;
    [self.titleLabel testproject_updateConstraints:^(TestProjectViewConstrainMake * _Nonnull make) {
        make.height.equal(@(self.viewModel->_titleHeight));
    }];
    [self.descLabel testproject_updateConstraints:^(TestProjectViewConstrainMake * _Nonnull make) {
        make.height.equal(@(self.viewModel->_descHeight));
    }];
    
    UIView *lineView = [[UIView alloc] init];
    lineView.backgroundColor = [UIColor lightGrayColor];
    [self.view addSubview:lineView];
    [lineView testproject_makeConstraints:^(TestProjectViewConstrainMake * _Nonnull make) {
        make.height.equal(@2);
        make.leading.trainling.equal(self.view);
        make.top.equal(self.titleLabel.bottom).offset(10);
    }];
    
    Class<TestProjectCreateViewProtocol> viewClass = NSClassFromString(self.viewModel.viewKey);
    if ([viewClass conformsToProtocol:@protocol(TestProjectCreateViewProtocol)]) {
        UIView<TestProjectCreateViewProtocol> *view = [viewClass initCreateByViewModel];
        [view setViewModel:self.viewModel];
        [self.view addSubview:view];
        [view testproject_makeConstraints:^(TestProjectViewConstrainMake * _Nonnull make) {
            make.top.equal(lineView.bottom).offset(10);
            make.bottom.leading.trainling.equal(self.view);
        }];
    }
}

- (UILabel *)titleLabel {
    if (!_titleLabel) {
        _titleLabel = [[UILabel alloc] init];
        _titleLabel.numberOfLines = 0;
        _titleLabel.font = [UIFont systemFontOfSize:20];
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

@end
