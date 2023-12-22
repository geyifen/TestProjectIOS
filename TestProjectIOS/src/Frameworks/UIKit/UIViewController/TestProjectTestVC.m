//
//  TestProjectTestVC.m
//  TestProjectIOS
//
//  Created by liwenfan on 2023/4/6.
//

#import "TestProjectTestVC.h"

#import "TestProjectTestVCViewTable.h"
#import "TestProjectSectionViewTab.h"

@interface TestProjectTestVC () <TestProjectPreviewProtocol>

@property (nonatomic, strong) TestProjectTestVCViewTable *childView;
@property (nonatomic, strong) UIButton *arrowRightBtn;

@end

@implementation TestProjectTestVC

- (NSString *)title {
    return [NSString stringWithFormat:@"%ld_TestProjectTestVC", _atFloor];
}

- (NSString *)description {
    return self.title;
}

- (instancetype)init {
    if (self = [super init]) {
    }
    return self;
}

- (void)awakeFromNib {
    [super awakeFromNib];
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    NSLog(@"TestProjectTestVC %@ %p", NSStringFromSelector(_cmd), self);
    NSLog(@"disablesAutomaticKeyboardDismissal:%u", self.disablesAutomaticKeyboardDismissal);
}

- (void)viewWillDisappear:(BOOL)animated {
    [super viewWillDisappear:animated];
    NSLog(@"TestProjectTestVC %@ %p", NSStringFromSelector(_cmd), self);
}

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
    NSLog(@"TestProjectTestVC %@ %p", NSStringFromSelector(_cmd), self);
}

- (void)viewDidDisappear:(BOOL)animated {
    [super viewDidDisappear:animated];
    NSLog(@"TestProjectTestVC %@ %p", NSStringFromSelector(_cmd), self);
}

- (void)viewWillLayoutSubviews {
    [super viewWillLayoutSubviews];
    NSLog(@"TestProjectTestVC %@ %p", NSStringFromSelector(_cmd), self);
}

- (void)viewDidLayoutSubviews {
    [super viewDidLayoutSubviews];
    NSLog(@"TestProjectTestVC %@ %p", NSStringFromSelector(_cmd), self);
}

- (void)viewLayoutMarginsDidChange {
    [super viewLayoutMarginsDidChange];
    NSLog(@"TestProjectTestVC %@ %p", NSStringFromSelector(_cmd), self);
}

//- (BOOL)viewRespectsSystemMinimumLayoutMargins {
//    NSLog(@"TestProjectTestVC %@", NSStringFromSelector(_cmd));
//    return [super viewRespectsSystemMinimumLayoutMargins];
//}

- (BOOL)enableLog {
    return NO;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self.view addSubview:self.childView];
    [self.childView testproject_makeConstraints:^(TestProjectViewConstrainMake * _Nonnull make) {
        make.top.bottom.leading.trainling.equal(self.view);
    }];
    NSLog(@"TestProjectTestVC %@", NSStringFromSelector(_cmd));
    UIBarButtonItem *bItem = [[UIBarButtonItem alloc] initWithCustomView:self.arrowRightBtn];
    self.navigationItem.rightBarButtonItems = @[bItem];
}

- (void)didTapSectionViewTabForExpand {
    if (![self.childView respondsToSelector:@selector(optionPreviewForExpand:)]) {
        return;
    }
    TestProjectPreviewState tabViewState = [((UIView <TestProjectPreviewProtocol>*)self.childView)  optionPreviewForExpand:self];
    if (tabViewState == TestProjectPreviewStateOfYES) {
        [self.arrowRightBtn setImage:[UIImage systemImageNamed:@"chevron.forward"] forState:UIControlStateNormal];
    } else if (tabViewState == TestProjectPreviewStateOfNO) {
        [self.arrowRightBtn setImage:[UIImage systemImageNamed:@"chevron.down"] forState:UIControlStateNormal];
    }
}

#pragma mark - TestProjectPreviewProtocol
- (void)didSelectPreviewItem:(id)viewModel {
    [self.arrowRightBtn setImage:[UIImage systemImageNamed:@"chevron.forward"] forState:UIControlStateNormal];
}

- (TestProjectTestVCViewTable *)childView {
    if (!_childView) {
        _childView = [[self.childViewClass alloc] initCreate];
        _childView.parentVC = self;
    }
    return _childView;
}

- (UIButton *)arrowRightBtn {
    if (!_arrowRightBtn) {
        _arrowRightBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        UIImage *image = [UIImage systemImageNamed:@"chevron.forward"];
        [_arrowRightBtn setImage:image forState:UIControlStateNormal];
        [_arrowRightBtn addTarget:self action:@selector(didTapSectionViewTabForExpand) forControlEvents:UIControlEventTouchUpInside];
        [_arrowRightBtn testproject_makeConstraints:^(TestProjectViewConstrainMake * _Nonnull make) {
            make.height.width.equal(@30);
        }];
    }
    return _arrowRightBtn;
}

@end
