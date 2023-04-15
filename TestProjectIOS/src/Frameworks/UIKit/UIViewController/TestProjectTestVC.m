//
//  TestProjectTestVC.m
//  TestProjectIOS
//
//  Created by zjrcumac on 2023/4/6.
//

#import "TestProjectTestVC.h"

#import "TestProjectSubNavController.h"

@interface TestProjectTestVC ()

@property (nonatomic, strong) TestProjectSubNavController *subNavController;
@property (nonatomic, strong) TestProjectTestVC *childTVC;
@property (nonatomic, strong) UITextField *textField;

@end

@implementation TestProjectTestVC

- (NSString *)title {
    return [NSString stringWithFormat:@"%ld_TestProjectTestVC", self.atFloor];
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
    NSLog(@"TestProjectTestVC %@", NSStringFromSelector(_cmd));
    NSLog(@"disablesAutomaticKeyboardDismissal:%u", self.disablesAutomaticKeyboardDismissal);
}

- (void)viewWillDisappear:(BOOL)animated {
    [super viewWillDisappear:animated];
    NSLog(@"TestProjectTestVC %@", NSStringFromSelector(_cmd));
}

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
    NSLog(@"TestProjectTestVC %@", NSStringFromSelector(_cmd));
}

- (void)viewDidDisappear:(BOOL)animated {
    [super viewDidDisappear:animated];
    NSLog(@"TestProjectTestVC %@", NSStringFromSelector(_cmd));
}

- (void)viewWillLayoutSubviews {
    [super viewWillLayoutSubviews];
    NSLog(@"TestProjectTestVC %@", NSStringFromSelector(_cmd));
}

- (void)viewDidLayoutSubviews {
    [super viewDidLayoutSubviews];
    NSLog(@"TestProjectTestVC %@", NSStringFromSelector(_cmd));
}

- (void)viewLayoutMarginsDidChange {
    [super viewLayoutMarginsDidChange];
    NSLog(@"TestProjectTestVC %@", NSStringFromSelector(_cmd));
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
    NSLog(@"TestProjectTestVC %@", NSStringFromSelector(_cmd));
    NSLog(@"parentViewController:%@", self.parentViewController);
    if (@available(iOS 15.0, *)) {
        NSLog(@"focusGroupIdentifier:%@", self.focusGroupIdentifier);
    }
    if (@available(iOS 16.0, *)) {
        NSLog(@"interactionActivityTrackingBaseName:%@", self.interactionActivityTrackingBaseName);
    }
    NSLog(@"beingPresented:%u", self.beingPresented);
    NSLog(@"beingDismissed:%u", self.beingDismissed);
    NSLog(@"movingToParentViewController:%u", self.movingToParentViewController);
    NSLog(@"movingFromParentViewController:%u", self.movingFromParentViewController);

//    [self setEditing:YES animated:YES];
    [self createBtn];
//    self.navigationController.hidesBarsWhenKeyboardAppears = YES;
//    self.navigationController.hidesBarsOnSwipe = YES;
}

- (void)createBtn {
    NSArray *textList = @[@"push", @"popToRoot", @"present", @"pop", @"popToSecond", @"dismiss", @"", @"setVCs", @""];
    for (NSInteger i = 0; i < textList.count; i++) {
        UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
        btn.tag = i;
        [btn addTarget:self action:@selector(didClickEvent:) forControlEvents:UIControlEventTouchUpInside];
        [btn setTitle:textList[i] forState:UIControlStateNormal];
        [btn setBackgroundColor:[UIColor redColor]];
        CGFloat bottom_offset = (-60 * (int)(i / 3)) - UIApplication.safe_bottom;
        [self.view addSubview:btn];
        NSInteger j = i % 3;
        [btn testproject_makeConstraints:^(TestProjectViewConstrainMake * _Nonnull make) {
            make.width.equal(j == 1 ? @120 : @100);
            make.height.equal(@50);
            make.bottom.equal(self.view).offset(bottom_offset);
            if (j == 0) {
                make.leading.equal(self.view);
            } else if (j == 1) {
                make.leading.equal(self.view).offset(110);
            } else {
                make.trainling.equal(self.view);
            }
        }];
    }
}

- (void)didClickEvent:(UIButton *)btn {
    switch (btn.tag) {
        case 0: {
            [self operationVC:YES];
        } break;
        case 1: {
            NSArray *popVC = [self.navigationController popToRootViewControllerAnimated:YES];
            if (self.returnDataBlock) {
                self.returnDataBlock(popVC);
            }
        } break;
        case 2: {
            [self operationVC:NO];
        } break;
        case 3: {
            UIViewController *controller = [self.navigationController popViewControllerAnimated:YES];
            if (self.returnDataBlock) {
                self.returnDataBlock(controller);
            }
        } break;
        case 4: {
            NSArray *childVC = self.navigationController.childViewControllers;
            if (childVC.count < 2) {
                return;
            }
            NSArray *popVC = [self.navigationController popToViewController:[childVC objectAtIndex:1] animated:YES];
            if (self.returnDataBlock) {
                self.returnDataBlock(popVC);
            }
        } break;
        case 5: {
            [self dismissViewControllerAnimated:YES completion:nil];
        } break;
        case 7: {
            NSArray *childVC = self.navigationController.childViewControllers;
            if (childVC.count < 2) {
                return;
            }
            [self.navigationController setViewControllers:@[childVC[1]]];
        } break;
        default:
            break;
    }
}

- (TestProjectTestVC *)childTVC {
    if (!_childTVC) {
        _childTVC = [[TestProjectTestVC alloc] init];
    }
    return _childTVC;
}

- (TestProjectSubNavController *)subNavController {
    if (!_subNavController) {
        _subNavController = [[TestProjectSubNavController alloc] initWithRootViewController:self.childTVC];
    }
    return _subNavController;
}

- (UITextField *)textField {
    if (!_textField) {
        _textField = [[UITextField alloc] init];
        [self.view addSubview:_textField];
        [_textField testproject_makeConstraints:^(TestProjectViewConstrainMake * _Nonnull make) {
            make.leading.equal(self.view).offset(15);
            make.trainling.equal(self.view).offset(-15);
            make.top.equal(self.view).offset(100);
            make.height.equal(@50);
        }];
    }
    return _textField;
}

- (void)operationVC:(BOOL)isPush {
    self.childTVC.definesPresentationContext = NO;
    self.childTVC.providesPresentationContextTransitionStyle = NO;
    self.childTVC.restoresFocusAfterTransition = NO;
    self.childTVC.atFloor = self.atFloor + 1;
    self.childTVC.viewModel = [self.viewModel copy];
    self.childTVC.returnDataBlock = self.returnDataBlock;
    
    UIViewController *navVC = self.childTVC;

    if (!isPush && ![self.navigationController isMemberOfClass:[TestProjectSubNavController class]]) {
        navVC = self.subNavController;
    }

    if (isPush) {
        [self.navigationController pushViewController:navVC animated:YES];
    } else {
        [self presentViewController:navVC animated:YES completion:nil];
    }
}

- (void)createReturnDataBlock:(NSString *)desc {
    if (self.returnDataBlock) {
        return;
    }
    WS(wSelf);
    self.returnDataBlock = ^(id data) {
        SS(sSelf);
        sSelf.viewModel.desc = [NSString stringWithFormat:@"%@ \n 通过%@得到的数据：\n%@ \n%@", sSelf.viewModel.desc, desc, data, sSelf.title];
        [sSelf.viewModel calculDataViewHeight];
        NSLog(@"%@_%@_%@", sSelf, sSelf.title, sSelf.navigationController);
        [sSelf reloadViewModel];
    };
}

- (void)get_popToRootViewControllerAnimated {
    [self createReturnDataBlock:@"popToRootViewControllerAnimated"];
}

- (void)get_popViewControllerAnimated {
    [self createReturnDataBlock:@"popViewControllerAnimated"];
}

- (void)get_popToViewController_animated {
    [self createReturnDataBlock:@"popToViewController_animated"];
}

- (void)get_setNavigationBarHidden_animated {
    if (self.navigationController && ![self.navigationController isMemberOfClass:[TestProjectSubNavController class]]) {
        [self.subNavController setNavigationBarHidden:YES animated:YES];
    }
}

- (void)get_navigationBar {
    [self createReturnDataBlock:@"navigationBar"];
}

- (void)get_setToolbarHidden_animated {
    if (self.navigationController && ![self.navigationController isMemberOfClass:[TestProjectSubNavController class]]) {
        [self.subNavController setToolbarHidden:YES animated:YES];
    }
}

- (void)get_hidesBarsOnTap {
    self.navigationController.hidesBarsOnTap = YES;
}

- (void)get_hidesBottomBarWhenPushed {
    self.hidesBottomBarWhenPushed = YES;
}

- (void)get_setSubNavigationController:(TestProjectDetailVCModel *)viewModel {
    if (self.navigationController && ![self.navigationController isMemberOfClass:[TestProjectSubNavController class]]) {
        self.subNavController.viewModel = viewModel.childTableModel.dataModel;
    }
}


@end
