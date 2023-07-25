//
//  TestProjectSampleRefreshView.m
//  TestProjectIOS
//
//  Created by zjrcumac on 2023/7/24.
//

#import "TestProjectSampleRefreshView.h"

#import "UIColor+TestProject.h"
#import "UIView+TestProject_Constrain.h"

@interface TestProjectSampleRefreshStateView : UIView

@property (nonatomic, strong) NSMutableDictionary *titleStatleDic;
@property (nonatomic, strong) UILabel *titleLabel;
@property (nonatomic, strong) UIImageView *arrowImageView;
@property (nonatomic, strong) UIActivityIndicatorView *indicatorView;
@property (nonatomic, assign) BOOL isHeader;

@end

@implementation TestProjectSampleRefreshStateView

- (instancetype)initWithIsHeader:(BOOL)isHeader {
    if (self = [super init]) {
        self.isHeader = isHeader;
    }
    return self;
}

- (CGFloat)getRotationWithState:(TestProjectRefreshState)state {
    if (self.isHeader) {
        return state == TestProjectRefreshStatePulling ? -M_PI : 0;
    } else {
        return state == TestProjectRefreshStatePulling ? 0 : -M_PI;
    }
}

- (void)setState:(TestProjectRefreshState)state {
    self.titleLabel.text = self.titleStatleDic[@(state)];
    BOOL arrowHidden = NO;
    BOOL indicatorHidden = YES;
    [self.indicatorView stopAnimating];
    CGFloat rotation = [self getRotationWithState:state];
    switch (state) {
        case TestProjectRefreshStateIdle: {
            self.arrowImageView.transform = CGAffineTransformMakeRotation(rotation);
        } break;
        case TestProjectRefreshStatePulling: {
            self.arrowImageView.transform = CGAffineTransformMakeRotation(rotation);
        } break;
        case TestProjectRefreshStateNoMoreData: {
            arrowHidden = YES;
            indicatorHidden = YES;
        } break;
        case TestProjectRefreshStateRefreshing: {
            arrowHidden = YES;
            indicatorHidden = NO;
            [self.indicatorView startAnimating];
        } break;
        default:
            break;
    }
    self.arrowImageView.hidden = arrowHidden;
    self.indicatorView.hidden = indicatorHidden;
}

- (void)setTitle:(NSString *)title forState:(TestProjectRefreshState)state {
    [self.titleStatleDic setObject:title forKey:@(state)];
}

- (NSMutableDictionary *)titleStatleDic {
    if (!_titleStatleDic) {
        _titleStatleDic = [NSMutableDictionary dictionary];
    }
    return _titleStatleDic;
}

- (UILabel *)titleLabel {
    if (!_titleLabel) {
        _titleLabel = [[UILabel alloc] init];
        _titleLabel.font = [UIFont boldSystemFontOfSize:14];
        _titleLabel.textColor = [UIColor colorFromString:@"#CCCCCC"];
        _titleLabel.textAlignment = NSTextAlignmentCenter;
        [self addSubview:_titleLabel];
        [_titleLabel testproject_makeConstraints:^(TestProjectViewConstrainMake * _Nonnull make) {
            make.top.bottom.trainling.equal(self);
        }];
    }
    return _titleLabel;
}

- (UIActivityIndicatorView *)indicatorView {
    if (!_indicatorView) {
        _indicatorView = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:UIActivityIndicatorViewStyleMedium];
        _indicatorView.hidden = YES;
        [self addSubview:_indicatorView];
        [_indicatorView testproject_makeConstraints:^(TestProjectViewConstrainMake * _Nonnull make) {
            make.centerY.equal(self);
            make.trainling.equal(self.titleLabel.leading).offset(-10);
            make.leading.equal(self);
        }];
    }
    return _indicatorView;
}

- (UIImageView *)arrowImageView {
    if (!_arrowImageView) {
        _arrowImageView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"arrow_refresh"]];
        _arrowImageView.hidden = YES;
        [self addSubview:_arrowImageView];
        [_arrowImageView testproject_makeConstraints:^(TestProjectViewConstrainMake * _Nonnull make) {
            make.centerY.equal(self);
            make.trainling.equal(self.titleLabel.leading).offset(-10);
            make.width.equal(@8);
            make.height.equal(@20);
            make.leading.equal(self);
        }];
    }
    return _arrowImageView;
}

@end

@interface TestProjectSampleRefreshHeader ()

@property (nonatomic, strong) TestProjectSampleRefreshStateView *stateView;

@end

@implementation TestProjectSampleRefreshHeader

- (void)prepareUI {
    [super prepareUI];
    [self.stateView setTitle:@"下拉可以刷新" forState:TestProjectRefreshStateIdle];
    [self.stateView setTitle:@"松开立即刷新" forState:TestProjectRefreshStatePulling];
    [self.stateView setTitle:@"正在刷新" forState:TestProjectRefreshStateRefreshing];
    [self.stateView setState:TestProjectRefreshStateIdle];
}

- (void)setState:(TestProjectRefreshState)state {
    [super setState:state];
    [self.stateView setState:state];
}

- (void)setTitle:(NSString *)title forState:(TestProjectRefreshState)state {
    [self.stateView setTitle:title forState:state];
}

- (TestProjectSampleRefreshStateView *)stateView {
    if (!_stateView) {
        _stateView = [[TestProjectSampleRefreshStateView alloc] initWithIsHeader:YES];
        [self addSubview:_stateView];
        [_stateView testproject_makeConstraints:^(TestProjectViewConstrainMake * _Nonnull make) {
            make.top.bottom.equal(self);
            make.centerX.equal(self);
        }];
    }
    return _stateView;
}

@end

@interface TestProjectSampleRefreshFooter ()

@property (nonatomic, strong) TestProjectSampleRefreshStateView *stateView;

@end

@implementation TestProjectSampleRefreshFooter

- (void)prepareUI {
    [super prepareUI];
    [self.stateView setTitle:@"下拉可以刷新" forState:TestProjectRefreshStateIdle];
    [self.stateView setTitle:@"松开立即刷新" forState:TestProjectRefreshStatePulling];
    [self.stateView setTitle:@"正在刷新" forState:TestProjectRefreshStateRefreshing];
    [self.stateView setTitle:@"没有更多内容了" forState:TestProjectRefreshStateNoMoreData];
    self.stateView.state = TestProjectRefreshStateIdle;
}

- (void)setState:(TestProjectRefreshState)state {
    [super setState:state];
    [self.stateView setState:state];
}

- (void)setTitle:(NSString *)title forState:(TestProjectRefreshState)state {
    [self.stateView setTitle:title forState:state];
}

- (TestProjectSampleRefreshStateView *)stateView {
    if (!_stateView) {
        _stateView = [[TestProjectSampleRefreshStateView alloc] initWithIsHeader:NO];
        [self addSubview:_stateView];
        [_stateView testproject_makeConstraints:^(TestProjectViewConstrainMake * _Nonnull make) {
            make.top.bottom.equal(self);
            make.centerX.equal(self);
        }];
    }
    return _stateView;
}

@end
