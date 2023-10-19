//
//  TestProjectBaseTableViewTableCell.m
//  TestProjectIOS
//
//  Created by liwenfan on 2023/2/22.
//

#import "TestProjectBaseTableViewTableCell.h"

#import "TestProjectCategoryHeader.h"
#import "TestProjectViewModelProtocol.h"
#import "TestProjectViewTable.h"

@interface TestProjectBaseTableViewTableCell ()

@property (nonatomic, strong) UIView *bottomLineView;
@property (nonatomic, strong) UILabel *titleLabel;
@property (nonatomic, strong) UILabel *descLabel;
@property (nonatomic, strong) UILabel *abstractLabel;
@property (nonatomic, strong) UIButton *dataModelExpandBtn;
@property (nonatomic, strong) UIButton *titleExpandBtn;
@property (nonatomic, strong) UIButton *descExpandBtn;
@property (nonatomic, strong) UIButton *compareBtn;
@property (nonatomic, strong) TestProjectViewTable *dataModelView;
@property (nonatomic, strong) TestProjectTableModel *dataModel;
@property (nonatomic, strong) UILabel *canClickLabel;

@end

@implementation TestProjectBaseTableViewTableCell

- (void)setViewModel:(TestProjectTableModel *)viewModel {
    _viewModel = viewModel;
    self.abstractLabel.attributedText = viewModel->_abstractAttr;
    self.titleLabel.attributedText = viewModel->_titleAttr;
    self.descLabel.attributedText = viewModel->_descAttr;
    self.dataModelView.viewModel = viewModel.dataModel;
    self.dataModelExpandBtn.selected = viewModel.isDataModelExpand;
    self.dataModel = viewModel.dataModel;
    self.compareBtn.hidden = !self.dataModel.compareViewModel;
    self.titleExpandBtn.selected = viewModel.isTitleExpand;
    self.descExpandBtn.selected = viewModel.isDescExpand;
    self.canClickLabel.hidden = !viewModel.clickBlock;
    CGFloat dataViewHeight = viewModel->_dataViewHeight;
    self.dataModelExpandBtn.hidden = dataViewHeight <= 0;
    if (!viewModel.isDataModelExpand) {
        dataViewHeight = 0;
    }
    
    CGFloat titleHeight = viewModel->_titleHeight;
    self.titleExpandBtn.hidden = titleHeight <= 0;
    if (!viewModel.isTitleExpand) {
        titleHeight = 0;
    }
    
    CGFloat descHeight = viewModel->_descHeight;
    self.descExpandBtn.hidden = descHeight <= 0;
    if (!viewModel.isDescExpand) {
        descHeight = 0;
    }
    
    if (descHeight > 0) {
        [self.descLabel testproject_updateConstraints:^(TestProjectViewConstrainMake * _Nonnull make) {
            make.height.equal(@(descHeight));
            make.bottom.equal(self.bottomLineView.top).offset(-15);
        }];
    } else {
        [self.descLabel testproject_updateConstraints:^(TestProjectViewConstrainMake * _Nonnull make) {
            make.height.equal(@(descHeight));
            make.bottom.equal(self.bottomLineView.top).offset(0);
        }];
    }
    
    if (titleHeight > 0) {
        [self.titleLabel testproject_updateConstraints:^(TestProjectViewConstrainMake * _Nonnull make) {
            make.height.equal(@(titleHeight));
            make.bottom.equal(self.descLabel.top).offset(-15);
        }];
    } else {
        [self.titleLabel testproject_updateConstraints:^(TestProjectViewConstrainMake * _Nonnull make) {
            make.height.equal(@(titleHeight));
            make.bottom.equal(self.descLabel.top).offset(0);
        }];
    }
    
    if (dataViewHeight > 0) {
        [self.dataModelView testproject_updateConstraints:^(TestProjectViewConstrainMake * _Nonnull make) {
            make.height.equal(@(dataViewHeight));
            make.top.equal(self.abstractLabel.bottom).offset(15);
        }];
    } else {
        [self.dataModelView testproject_updateConstraints:^(TestProjectViewConstrainMake * _Nonnull make) {
            make.height.equal(@(dataViewHeight));
            make.top.equal(self.abstractLabel.bottom).offset(0);
        }];
    }
    
    if (viewModel->_abstractHeight > 0) {
        [self.abstractLabel testproject_updateConstraints:^(TestProjectViewConstrainMake * _Nonnull make) {
            make.height.equal(@(viewModel->_abstractHeight));
        }];
    } else {
        [self.abstractLabel testproject_updateConstraints:^(TestProjectViewConstrainMake * _Nonnull make) {
            make.height.equal(@(viewModel->_abstractHeight));
        }];
    }
}

- (UIButton *)createExpandBtn {
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    [btn setImage:[UIImage imageNamed:@"arrow_down"] forState:UIControlStateSelected];
    [btn setImage:[UIImage imageNamed:@"arrow_up"] forState:UIControlStateNormal];
    return btn;
}

- (void)dataModelExpandReloadData {
    self.viewModel.isDataModelExpand = !self.viewModel.isDataModelExpand;
    [self.delegate performSelector:@selector(reloadData:) withObject:self.viewModel];
}

- (void)titleExpandReloadData {
    self.viewModel.isTitleExpand = !self.viewModel.isTitleExpand;
    [self.delegate performSelector:@selector(reloadData:) withObject:self.viewModel];
}

- (void)descExpandReloadData {
    self.viewModel.isDescExpand = !self.viewModel.isDescExpand;
    [self.delegate performSelector:@selector(reloadData:) withObject:self.viewModel];
}

- (void)compare {
    self.compareBtn.selected = !self.compareBtn.selected;
    [self.delegate performSelector:@selector(compareViewModel:select:) withObject:self.dataModel.compareViewModel withObject:@(self.compareBtn.selected)];
}

- (UILabel *)abstractLabel {
    if (!_abstractLabel) {
        _abstractLabel = [[UILabel alloc] init];
        _abstractLabel.numberOfLines = 0;
        [self addSubview:_abstractLabel];
        [_abstractLabel testproject_makeConstraints:^(TestProjectViewConstrainMake * _Nonnull make) {
            make.leading.equal(self).offset(15);
            make.trainling.equal(self).offset(-15);
            make.top.equal(self).offset(15);
        }];
    }
    return _abstractLabel;
}

- (UILabel *)titleLabel {
    if (!_titleLabel) {
        _titleLabel = [[UILabel alloc] init];
        _titleLabel.numberOfLines = 0;
        [self addSubview:_titleLabel];
        [_titleLabel testproject_makeConstraints:^(TestProjectViewConstrainMake * _Nonnull make) {
            make.leading.trainling.equal(self.abstractLabel);
        }];
    }
    return _titleLabel;
}

- (TestProjectViewTable *)dataModelView {
    if (!_dataModelView) {
        _dataModelView = [TestProjectViewTable initCreateByViewModel];
        _dataModelView.layer.borderWidth = 0.5;
        _dataModelView.layer.borderColor = [UIColor redColor].CGColor;
//        _dataModelView.delegate = self;
        [self addSubview:_dataModelView];
        [_dataModelView testproject_makeConstraints:^(TestProjectViewConstrainMake * _Nonnull make) {
            make.leading.trainling.equal(self.abstractLabel);
        }];
    }
    return _dataModelView;
}

- (UILabel *)descLabel {
    if (!_descLabel) {
        _descLabel = [[UILabel alloc] init];
        _descLabel.textColor = [UIColor lightGrayColor];
        _descLabel.numberOfLines = 0;
        [self addSubview:_descLabel];
        [_descLabel testproject_makeConstraints:^(TestProjectViewConstrainMake * _Nonnull make) {
            make.leading.trainling.equal(self.abstractLabel);
        }];
    }
    return _descLabel;
}

- (UIView *)bottomLineView {
    if (!_bottomLineView) {
        _bottomLineView = [[UIView alloc] init];
        _bottomLineView.backgroundColor = [UIColor lightGrayColor];
        [self addSubview:_bottomLineView];
        [self.bottomLineView testproject_makeConstraints:^(TestProjectViewConstrainMake * _Nonnull make) {
            make.leading.trainling.equal(self.abstractLabel);
            make.bottom.equal(self);
            make.height.equal(@2);
        }];
    }
    return _bottomLineView;
}

- (UIButton *)dataModelExpandBtn {
    if (!_dataModelExpandBtn) {
        _dataModelExpandBtn = [self createExpandBtn];
        [_dataModelExpandBtn addTarget:self action:@selector(dataModelExpandReloadData) forControlEvents:UIControlEventTouchUpInside];

        [self addSubview:_dataModelExpandBtn];
        [_dataModelExpandBtn testproject_makeConstraints:^(TestProjectViewConstrainMake * _Nonnull make) {
            make.top.equal(self.dataModelView);
            make.height.width.equal(@15);
            make.trainling.equal(self);
        }];
    }
    return _dataModelExpandBtn;
}

- (UIButton *)titleExpandBtn {
    if (!_titleExpandBtn) {
        _titleExpandBtn = [self createExpandBtn];
        [_titleExpandBtn addTarget:self action:@selector(titleExpandReloadData) forControlEvents:UIControlEventTouchUpInside];

        [self addSubview:_titleExpandBtn];
        [_titleExpandBtn testproject_makeConstraints:^(TestProjectViewConstrainMake * _Nonnull make) {
            make.top.equal(self.titleLabel).offset(30);
            make.height.width.equal(@15);
            make.leading.equal(self);
        }];
    }
    return _titleExpandBtn;
}

- (UIButton *)descExpandBtn {
    if (!_descExpandBtn) {
        _descExpandBtn = [self createExpandBtn];
        [_descExpandBtn addTarget:self action:@selector(descExpandReloadData) forControlEvents:UIControlEventTouchUpInside];

        [self addSubview:_descExpandBtn];
        [_descExpandBtn testproject_makeConstraints:^(TestProjectViewConstrainMake * _Nonnull make) {
            make.top.equal(self.descLabel).offset(-15);
            make.height.width.equal(@15);
            make.trainling.equal(self);
        }];
    }
    return _descExpandBtn;
}

- (UIButton *)compareBtn {
    if (!_compareBtn) {
        _compareBtn = [UIButton buttonWithType:UIButtonTypeInfoLight];
        [_compareBtn addTarget:self action:@selector(compare) forControlEvents:UIControlEventTouchUpInside];
        [self addSubview:_compareBtn];
        [_compareBtn testproject_makeConstraints:^(TestProjectViewConstrainMake * _Nonnull make) {
            make.top.equal(self.dataModelView);
            make.height.width.equal(@15);
            make.leading.equal(self);
        }];
    }
    return _compareBtn;
}

- (UILabel *)canClickLabel {
    if (!_canClickLabel) {
        _canClickLabel = [[UILabel alloc] init];
        _canClickLabel.text = @"click";
        _canClickLabel.clipsToBounds = YES;
        _canClickLabel.textAlignment = NSTextAlignmentCenter;
        _canClickLabel.font = [UIFont systemFontOfSize:10];
        _canClickLabel.layer.cornerRadius = 15;
        _canClickLabel.backgroundColor = [[UIColor redColor] colorWithAlphaComponent:0.3];
        [self addSubview:_canClickLabel];
        [_canClickLabel testproject_makeConstraints:^(TestProjectViewConstrainMake * _Nonnull make) {
            make.height.width.equal(@30);
            make.top.centerX.equal(self);
        }];
    }
    return _canClickLabel;
}

@end
