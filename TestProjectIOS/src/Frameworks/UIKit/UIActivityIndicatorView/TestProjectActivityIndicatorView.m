//
//  TestProjectActivityIndicatorView.m
//  TestProjectIOS
//
//  Created by zjrcumac on 2023/3/31.
//

#import "TestProjectActivityIndicatorView.h"

#import "TestProjectUIViewCell.h"

@interface TestProjectActivityIndicatorViewModel : NSObject

@property (nonatomic, assign) UIActivityIndicatorViewStyle style;
@property (nonatomic) BOOL hidesWhenStopped;
@property (readwrite, nonatomic, strong) UIColor *color;
@property (nonatomic, assign) BOOL isAnimated;
@property (nonatomic, assign) CGRect rect;

@end

@implementation TestProjectActivityIndicatorViewModel

@end

@interface TestProjectActivityIndicatorCellView : UIView <TestProjectViewProtocol>

@property (nonatomic, strong) TestProjectActivityIndicatorViewModel *viewModel;
@property (nonatomic, strong) UIActivityIndicatorView *activityIndicatorView;
@property (nonatomic, strong) UIButton *changeColorBtn;
@property (nonatomic, strong) UIButton *startBtn;
@property (nonatomic, strong) UIButton *whenStopBtn;

@end

@implementation TestProjectActivityIndicatorCellView

- (void)setViewModel:(TestProjectActivityIndicatorViewModel *)viewModel {
    _viewModel = viewModel;
    if (viewModel.isAnimated && !self.activityIndicatorView.animating) {
        [self.activityIndicatorView startAnimating];
    } else if (!viewModel.isAnimated && self.activityIndicatorView.animating) {
        [self.activityIndicatorView stopAnimating];
    }
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

@end

@implementation TestProjectActivityIndicatorView

- (NSDictionary *)method_1 {
    return @{
        @"- (instancetype)initWithActivityIndicatorStyle:(UIActivityIndicatorViewStyle)style NS_DESIGNATED_INITIALIZER;":@{
            @"method":@"TestProjectActivityIndicatorView_initWithName",
            @"desc":@"通过style设置转圈视图"}
    };
}

- (NSDictionary *)method_2 {
    return @{
        @"- (instancetype)initWithFrame:(CGRect)frame NS_DESIGNATED_INITIALIZER;":@{
            @"method":@"TestProjectActivityIndicatorView_initWithFrame",
            @"desc":@"通过frame设置转圈视图 \n 样式还是中等的，设置frame无效"}
    };
}

- (TestProjectUIViewModel *)createViewModelWith:(TestProjectActivityIndicatorViewModel *)vm {
    TestProjectUIViewModel *m = [[TestProjectUIViewModel alloc] init];
    m.viewKey = @"TestProjectActivityIndicatorCellView";
    m.cellViewModel = vm;
    m.cellViewHeight = 200;
    [self.dataMutArr addObject:m];
    return m;
}

- (void)TestProjectActivityIndicatorView_initWithName {
    NSArray *styles = @[
    @{@(UIActivityIndicatorViewStyleMedium):@"样式是中等的"},
    @{@(UIActivityIndicatorViewStyleLarge):@"样式是大的"}, ];
    for (NSDictionary *dic in styles) {
        NSNumber *num = dic.allKeys.firstObject;
        TestProjectActivityIndicatorViewModel *vm = [[TestProjectActivityIndicatorViewModel alloc] init];
        vm.style = (UIActivityIndicatorViewStyle)[num integerValue];
        
        TestProjectUIViewModel *m = [self createViewModelWith:vm];
        m.title = [dic objectForKey:num];
        [m calculDataViewHeight];
    }
    self.tableView.dataSourceArray = self.dataMutArr;
}

- (void)TestProjectActivityIndicatorView_initWithFrame {
    TestProjectActivityIndicatorViewModel *vm = [[TestProjectActivityIndicatorViewModel alloc] init];
    vm.rect = CGRectMake(0, 0, 1, 1);
    
    TestProjectUIViewModel *m = [self createViewModelWith:vm];
    m.title = [NSString stringWithFormat:@"当前的frame：%@", NSStringFromCGRect(vm.rect)];
    [m calculDataViewHeight];
    self.tableView.dataSourceArray = self.dataMutArr;
}

@end
