//
//  TestProjectSubNavController.m
//  TestProjectIOS
//
//  Created by zjrcumac on 2023/4/11.
//

#import "TestProjectSubNavController.h"
#import "TestProjectIgnoreWarningDefmacro.h"

@implementation TestProjectSubNavViewModel

@end

@interface TestProjectSubNavControllerManager : NSObject <UINavigationBarDelegate>

@end

@implementation TestProjectSubNavControllerManager

- (BOOL)navigationBar:(UINavigationBar *)navigationBar shouldPopItem:(UINavigationItem *)item {
    NSLog(@"UINavigationBarDelegate shouldPopItem :%@", item.title);
    return YES;
}

- (void)navigationBar:(UINavigationBar *)navigationBar didPopItem:(UINavigationItem *)item {
    NSLog(@"UINavigationBarDelegate didPopItem :%@", item.title);

}

- (BOOL)navigationBar:(UINavigationBar *)navigationBar shouldPushItem:(UINavigationItem *)item {
    NSLog(@"UINavigationBarDelegate shouldPushItem :%@", item.title);

    return YES;
}

- (void)navigationBar:(UINavigationBar *)navigationBar didPushItem:(UINavigationItem *)item {
    NSLog(@"UINavigationBarDelegate didPushItem :%@", item.title);
}

@end

@interface TestProjectSubNavController () <UINavigationControllerDelegate>

@property (nonatomic, strong) TestProjectSubNavControllerManager *manager;
@property (nonatomic, strong) UINavigationBarAppearance *appearance;

@end

@implementation TestProjectSubNavController

- (instancetype)init {
    if (self = [super init]) {
        //设置的代理不能在controlle里的viewDidLoad，而且不能是controller自己
        self.navigationBar.delegate = self.manager;
        self.navigationBar.barStyle = UIBarStyleBlack;
    }
    return self;
}

- (BOOL)enableLog {
    return NO;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.delegate = self;
    self.navigationBar.largeContentTitle = @"largeContentTitle";
    self.navigationBar.translucent = YES;
    self.navigationBar.barTintColor = [UIColor purpleColor];
//    self.navigationBar.clipsToBounds = YES;
//    NSLog(@"TestProjectSubNavController %@", NSStringFromSelector(_cmd));
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
//    NSLog(@"TestProjectSubNavController %@", NSStringFromSelector(_cmd));
}

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
    NSLog(@"TestProjectSubNavController %@", NSStringFromSelector(_cmd));
}

- (void)viewWillDisappear:(BOOL)animated {
    [super viewWillDisappear:animated];
    NSLog(@"TestProjectSubNavController %@", NSStringFromSelector(_cmd));
}

- (void)viewDidDisappear:(BOOL)animated {
    [super viewDidDisappear:animated];
    NSLog(@"TestProjectSubNavController %@", NSStringFromSelector(_cmd));
}

- (void)setViewModel:(TestProjectDetailVCModel *)viewModel {
//    NSLog(@"TestProjectSubNavController %@", NSStringFromSelector(_cmd));
    _viewModel = viewModel;
    [self setModelAppeare];
}

- (void)setModelAppeare {
//    self.appearance.backgroundColor = [UIColor yellowColor];
    if (self.viewModel.detailMethod) {
        NSString *selStr = [NSString stringWithFormat:@"get_%@", self.viewModel.detailMethod];
        CancelPerformSelectorLeakWarning([self performSelector:NSSelectorFromString(selStr) withObject:self.viewModel.dataModel];);
    }
    UIBlurEffect *eff = [UIBlurEffect effectWithStyle:UIBlurEffectStyleSystemChromeMaterialLight];
    self.appearance.backgroundEffect = eff;
    if (@available(iOS 13.0, *)) {
        //push 的时候导航栏会闪一下
//        self.navigationBar.standardAppearance = self.appearance;
//        self.navigationBar.scrollEdgeAppearance = self.appearance;
    } else {
        self.navigationBar.barTintColor = [UIColor redColor];
    }

}

- (TestProjectSubNavControllerManager *)manager {
    if (!_manager) {
        _manager = [[TestProjectSubNavControllerManager alloc] init];
    }
    return _manager;
}

- (UINavigationBarAppearance *)appearance {
    if (!_appearance) {
        _appearance = [[UINavigationBarAppearance alloc] init];
        [_appearance configureWithOpaqueBackground];
    }
    return _appearance;
}

- (void)get_backgroundColor {
    self.appearance.backgroundColor = [UIColor redColor];
}

- (void)get_configureWithDefaultBackground {
    [self.appearance configureWithDefaultBackground];
}

- (void)get_configureWithOpaqueBackground {
    [self.appearance configureWithOpaqueBackground];
}

- (void)get_configureWithTransparentBackground {
    [self.appearance configureWithTransparentBackground];
    self.appearance.backgroundColor = [UIColor whiteColor];
}

- (void)get_backgroundEffect:(TestProjectSubNavViewModel *)viewModel {
    UIBlurEffect *eff = [UIBlurEffect effectWithStyle:UIBlurEffectStyleSystemChromeMaterialLight];
    self.appearance.backgroundEffect = eff;
}

- (void)get_backgroundImage {
    self.appearance.backgroundImage = [UIImage imageNamed:@"lyf_1"];
}

- (void)get_backgroundImageContentMode:(TestProjectSubNavViewModel *)viewModel {
    [self get_backgroundImage];
    self.appearance.backgroundImageContentMode = viewModel.backgroundImageContentMode;
}

- (void)get_shadowColor {
    [self get_shadowImage];
    [self get_backgroundImage];
    self.appearance.backgroundImageContentMode = UIViewContentModeScaleAspectFit;
    self.appearance.shadowColor = [UIColor purpleColor];
}

- (void)get_shadowImage {
    self.appearance.backgroundColor = [UIColor whiteColor];
    self.appearance.backgroundImage = [[UIImage alloc] init];
    [self.navigationBar setBackgroundImage:[[UIImage alloc] init] forBarMetrics:UIBarMetricsDefault];
    self.appearance.shadowImage = [[UIImage alloc] init];//[UIImage imageNamed:@"lyf_1"];
}

- (void)get_titleTextAttributes {
    self.appearance.titleTextAttributes = @{NSForegroundColorAttributeName:[UIColor redColor]};
}

- (void)get_titlePositionAdjustment {
    UIOffset offset = UIOffsetMake(100, 0);
    self.appearance.titlePositionAdjustment = offset;
}

- (void)get_largeTitleTextAttributes {
    self.appearance.largeTitleTextAttributes = @{NSForegroundColorAttributeName: [UIColor greenColor]};
    self.navigationBar.prefersLargeTitles = YES;
}

- (void)get_buttonAppearance {
    UIBarButtonItemAppearance *barItemAppearance = [[UIBarButtonItemAppearance alloc] initWithStyle:UIBarButtonItemStyleDone];
    self.appearance.buttonAppearance = barItemAppearance;
}

- (void)get_setBackIndicatorImage_transitionMaskImage {
    UIImage *image = [UIImage imageNamed:@"lyf_1"];
    [self.appearance setBackIndicatorImage:image transitionMaskImage:[UIImage new]];
}

- (void)get_tintColor {
    self.navigationBar.tintColor = [UIColor redColor];
}

- (void)get_barTintColor {
    self.navigationBar.barTintColor = [UIColor redColor];
}

#pragma mark - UINavigationControllerDelegate
- (void)navigationController:(UINavigationController *)navigationController willShowViewController:(UIViewController *)viewController animated:(BOOL)animated {
    NSLog(@"UINavigationControllerDelegate--->willShowViewController:%@_%@_%@", navigationController, viewController, viewController.title);
}

- (void)navigationController:(UINavigationController *)navigationController didShowViewController:(UIViewController *)viewController animated:(BOOL)animated {
    NSLog(@"UINavigationControllerDelegate--->didShowViewController:%@_%@_%@", navigationController, viewController, viewController.title);
}

- (UIInterfaceOrientationMask)navigationControllerSupportedInterfaceOrientations:(UINavigationController *)navigationController {
    NSLog(@"UINavigationControllerDelegate--->navigationControllerSupportedInterfaceOrientations:%@", navigationController);
    return UIInterfaceOrientationMaskLandscapeLeft;
}

- (UIInterfaceOrientation)navigationControllerPreferredInterfaceOrientationForPresentation:(UINavigationController *)navigationController {
    NSLog(@"UINavigationControllerDelegate--->navigationControllerPreferredInterfaceOrientationForPresentation:%@", navigationController);
    return UIInterfaceOrientationLandscapeLeft;
}

@end
