//
//  TestProjectActivityIndicatorView.m
//  TestProjectIOS
//
//  Created by zjrcumac on 2023/3/31.
//

#import "TestProjectActivityIndicatorView.h"

#import "TestProjectBaseTableViewCell.h"

@interface TestProjectActivityIndicatorViewModel : TestProjectTableModel

@property (nonatomic, assign) UIActivityIndicatorViewStyle style;
@property (nonatomic) BOOL hidesWhenStopped;
@property (readwrite, nonatomic, strong) UIColor *color;
@property (nonatomic, assign) BOOL isAnimated;
@property (nonatomic, assign) CGRect rect;

@end

@implementation TestProjectActivityIndicatorViewModel

- (NSString *)viewIdentifier {
    return @"TestProjectActivityIndicatorCell";
}

- (CGFloat)viewHeight {
    return 200;
}

@end

@interface TestProjectActivityIndicatorCell : TestProjectBaseTableViewCell <TestProjectViewProtocol>

@property (nonatomic, strong) TestProjectActivityIndicatorViewModel *viewModel;
@property (nonatomic, strong) UIActivityIndicatorView *activityIndicatorView;
@property (nonatomic, strong) UIButton *changeColorBtn;
@property (nonatomic, strong) UIButton *startBtn;
@property (nonatomic, strong) UIButton *whenStopBtn;
@property (nonatomic, strong) UILabel *titleLabel;

@end

@implementation TestProjectActivityIndicatorCell

- (void)setViewModel:(TestProjectActivityIndicatorViewModel *)viewModel {
    _viewModel = viewModel;
    if (viewModel.isAnimated && !self.activityIndicatorView.animating) {
        [self.activityIndicatorView startAnimating];
    } else if (!viewModel.isAnimated && self.activityIndicatorView.animating) {
        [self.activityIndicatorView stopAnimating];
    }
    self.titleLabel.text = viewModel.title;
    self.activityIndicatorView.hidesWhenStopped = viewModel.hidesWhenStopped;
    self.activityIndicatorView.color = viewModel.color;
    [self setBtnTitle:self.startBtn];
    [self setBtnTitle:self.whenStopBtn];
    [self setBtnTitle:self.changeColorBtn];
}

- (void)didClickEvent:(UIButton *)btn {
    switch (btn.tag) {
        case 0: {
            self.viewModel.isAnimated = !self.viewModel.isAnimated;
            if (self.viewModel.isAnimated) {
                [self.activityIndicatorView startAnimating];
            } else {
                [self.activityIndicatorView stopAnimating];
            }
        } break;
            
        case 1: {
            self.viewModel.hidesWhenStopped = !self.viewModel.hidesWhenStopped;
            self.activityIndicatorView.hidesWhenStopped = self.viewModel.hidesWhenStopped;
        } break;
            
        case 2: {
            if (self.viewModel.color) {
                self.viewModel.color = nil;
            } else {
                self.viewModel.color = [UIColor redColor];
            }
            self.activityIndicatorView.color = self.viewModel.color;
        } break;
        default:
            break;
    }
    [self setBtnTitle:btn];
}

- (void)setBtnTitle:(UIButton *)btn {
    NSString *text = nil;
    switch (btn.tag) {
        case 0: {
            text = [NSString stringWithFormat:@"当前是否在做动画:%u", self.viewModel.isAnimated];
        } break;
            
        case 1: {
            text = [NSString stringWithFormat:@"当前属性:hidesWhenStopped \n 当停止时是否隐藏:%u", self.viewModel.hidesWhenStopped];
        } break;
            
        case 2: {
            text = [NSString stringWithFormat:@"当前属性:color \n 展示的颜色:%@", self.viewModel.color];
        } break;

        default:
            break;
    }
    [btn setTitle:text forState:UIControlStateNormal];
}

- (UIButton *)startBtn {
    if (!_startBtn) {
        _startBtn = [self createBtnWithTag:0];
        [_startBtn testproject_makeConstraints:^(TestProjectViewConstrainMake * _Nonnull make) {
            make.height.equal(@50);
            make.bottom.leading.equal(self);
        }];
    }
    return _startBtn;
}

- (UIButton *)whenStopBtn {
    if (!_whenStopBtn) {
        _whenStopBtn = [self createBtnWithTag:1];
        [_whenStopBtn testproject_makeConstraints:^(TestProjectViewConstrainMake * _Nonnull make) {
            make.height.leading.equal(self.startBtn);
            make.bottom.equal(self.startBtn.top);
        }];
    }
    return _whenStopBtn;
}

- (UIButton *)changeColorBtn {
    if (!_changeColorBtn) {
        _changeColorBtn = [self createBtnWithTag:2];
        [_changeColorBtn testproject_makeConstraints:^(TestProjectViewConstrainMake * _Nonnull make) {
            make.height.leading.equal(self.startBtn);
            make.bottom.equal(self.whenStopBtn.top);
        }];
    }
    return _changeColorBtn;
}

- (UIButton *)createBtnWithTag:(NSInteger)tag {
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    btn.tag = tag;
    [btn addTarget:self action:@selector(didClickEvent:) forControlEvents:UIControlEventTouchUpInside];
    [btn setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
    btn.titleLabel.numberOfLines = 0;
    [self addSubview:btn];
    return btn;
}

- (UIActivityIndicatorView *)activityIndicatorView {
    if (!_activityIndicatorView) {
        if (CGRectEqualToRect(CGRectZero, self.viewModel.rect)) {
            _activityIndicatorView = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:self.viewModel.style];
        } else {
            _activityIndicatorView = [[UIActivityIndicatorView alloc] initWithFrame:self.viewModel.rect];
        }
        [self addSubview:_activityIndicatorView];
        [_activityIndicatorView testproject_makeConstraints:^(TestProjectViewConstrainMake * _Nonnull make) {
            make.width.height.equal(@50);
            make.trainling.centerY.equal(self);
        }];
    }
    return _activityIndicatorView;
}

- (UILabel *)titleLabel {
    if (!_titleLabel) {
        _titleLabel = [[UILabel alloc] init];
        _titleLabel.textColor = [UIColor blackColor];
        [self addSubview:_titleLabel];
        [_titleLabel testproject_makeConstraints:^(TestProjectViewConstrainMake * _Nonnull make) {
            make.height.equal(@20);
            make.leading.equal(self);
            make.top.equal(self).offset(15);
        }];
    }
    return _titleLabel;
}

@end

@implementation TestProjectActivityIndicatorView

- (NSDictionary *)method_1 {
    return @{
        @"dataModel": @{
            @"abstract": @"通过frame设置转圈视图",
            @"title": @"- (instancetype)initWithFrame:(CGRect)frame NS_DESIGNATED_INITIALIZER;",
            @"desc": @"设置frame无效,样式还是中等的",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"modelClass": TestProjectActivityIndicatorViewModel.class,
                @"childItems": [self TestProjectActivityIndicatorView_initWithFrame],
            }
        },
    };
}

- (NSDictionary *)method_2 {
    return @{
        @"dataModel": @{
            @"abstract": @"通过style设置转圈视图",
            @"title": @"- (instancetype)initWithActivityIndicatorStyle:(UIActivityIndicatorViewStyle)style NS_DESIGNATED_INITIALIZER;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"modelClass": TestProjectActivityIndicatorViewModel.class,
                @"childItems": [self TestProjectActivityIndicatorView_initWithActivityIndicatorStyle],
            }
        },
    };
}

- (NSMutableArray *)TestProjectActivityIndicatorView_initWithActivityIndicatorStyle {
    NSArray *styles = @[
        @{
            @"title": @"样式是中等的",
            @"style": @(UIActivityIndicatorViewStyleMedium),
        },
        @{
            @"title": @"样式是大的",
            @"style": @(UIActivityIndicatorViewStyleLarge),
        },
    ];
    for (NSDictionary *dic in styles) {
        NSString *title = dic[@"title"];
        UIActivityIndicatorViewStyle style = [dic[@"style"] integerValue];

        TestProjectActivityIndicatorViewModel *m = [[TestProjectActivityIndicatorViewModel alloc] init];
        m.title = [NSString stringWithFormat:@"我是通过style创建的，%@", title];
        m.style = style;
        [self.dataMutArr addObject:m];
    }
    return self.dataMutArr;
}

- (NSMutableArray *)TestProjectActivityIndicatorView_initWithFrame {
    TestProjectActivityIndicatorViewModel *m = [[TestProjectActivityIndicatorViewModel alloc] init];
    m.rect = CGRectMake(0, 0, 1, 1);
    m.title = [NSString stringWithFormat:@"我是通过frame创建的，当前的frame：%@", NSStringFromCGRect(m.rect)];
    [self.dataMutArr addObject:m];
    return self.dataMutArr;
}

@end
