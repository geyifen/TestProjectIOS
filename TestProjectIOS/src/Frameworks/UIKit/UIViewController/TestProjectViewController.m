//
//  TestProjectViewController.m
//  TestProjectIOS
//
//  Created by zjrcumac on 2023/4/6.
//

#import "TestProjectViewController.h"

#import "TestProjectTestVC.h"
#import "TestProjectTestNibVC.h"

@interface TestProjectViewController ()

@property (nonatomic, strong) TestProjectTestVC *tVC;
@property (nonatomic, strong) TestProjectTestNibVC *tNibVC;

@end

@implementation TestProjectViewController

- (TestProjectTestVC *)tVC {
    if (!_tVC) {
        _tVC = [[TestProjectTestVC alloc] init];
    }
    return _tVC;
}

- (TestProjectTestNibVC *)tNibVC {
    if (!_tNibVC) {
        _tNibVC = [[TestProjectTestNibVC alloc] initWithNibName:@"TestProjectTestNibVC" bundle:nil];
    }
    return _tNibVC;
}

- (NSDictionary *)method_1 {
    return @{
        @"@property(null_resettable, nonatomic,strong) UIView *view;":@{
            @"method":@"TestProjectViewController_property_view",
            @"desc":@"获取controller的view \n 只会执行 viewDidLoad"}
    };
}

- (NSDictionary *)method_2 {
    return @{
        @"- (void)loadView;":@{
            @"method":@"TestProjectViewController_loadView",
            @"jumpType": @(TestProjectJumpTypeOfClick),
            @"desc":@"加载view，什么时机也不会调用 \n 暂时不知道玩法"}
    };
}

- (NSDictionary *)method_3 {
    return @{
        @"- (void)loadViewIfNeeded API_AVAILABLE(ios(9.0));":@{
            @"method":@"TestProjectViewController_loadViewIfNeeded",
            @"jumpType": @(TestProjectJumpTypeOfClick),
            @"desc":@"如果有需要的话会加载view \n 只会执行 viewDidLoad"}
    };
}

- (NSDictionary *)method_4 {
    return @{
        @"@property(nullable, nonatomic, readonly, strong) UIView *viewIfLoaded API_AVAILABLE(ios(9.0));":@{
            @"method":@"TestProjectViewController_property_viewIfLoaded",
            @"desc":@"如果view已经加载了，则会返回view， 否则返回null"}
    };
}

- (NSDictionary *)method_5 {
    return @{
        @"@property(nonatomic, readonly, getter=isViewLoaded) BOOL viewLoaded API_AVAILABLE(ios(3.0));":@{
            @"method":@"TestProjectViewController_property_viewLoaded",
            @"desc":@"如果view已经加载了，则会返回true， 否则返回false"}
    };
}

- (NSDictionary *)method_6 {
    return @{
        @"@property(nullable, nonatomic, readonly, copy) NSString *nibName;":@{
            @"method":@"TestProjectViewController_property_nibName",
            @"desc":@"获取controller的nibName \n 只有nib的controller有数据"}
    };
}

- (NSDictionary *)method_7 {
    return @{
        @"@property(nullable, nonatomic, readonly, strong) NSBundle *nibBundle;":@{
            @"method":@"TestProjectViewController_property_nibBundle",
            @"desc":@"获取controller的nibBundle"}
    };
}

- (NSDictionary *)method_8 {
    return @{
        @"@property(nullable, nonatomic, readonly, strong) UIStoryboard *storyboard API_AVAILABLE(ios(5.0));":@{
            @"method":@"TestProjectViewController_property_storyboard",
            @"desc":@"获取controller的storyboard"}
    };
}

- (NSDictionary *)method_9 {
    return @{
        @"@property(nullable, nonatomic,copy) NSString *title;":@{
            @"method":@"TestProjectViewController_property_title",
            @"desc":@"获取controller的title"}
    };
}

- (NSDictionary *)method_10 {
    return @{
        @"@property(nullable,nonatomic,weak,readonly) UIViewController *parentViewController;":@{
            @"method":@"TestProjectViewController_property_method:",
            @"jumpModel":@{
                @"jumpMethod":@"parentViewController",
            },
            @"desc":@"获取controller的parentViewController \n push过去的有，present过去的为null"}
    };
}

- (NSDictionary *)method_11 {
    return @{
        @"@property(nullable, nonatomic,readonly) UIViewController *presentedViewController  API_AVAILABLE(ios(5.0));":@{
            @"method":@"TestProjectViewController_property_method:",
            @"jumpModel":@{
                @"jumpMethod":@"presentedViewController",
            },
            @"desc":@"获取controller的presentedViewController \n push过去的为null，present过去的有 \n 两次连续present可以执行"}
    };
}

- (NSDictionary *)method_12 {
    return @{
        @"@property(nullable, nonatomic,readonly) UIViewController *presentingViewController API_AVAILABLE(ios(5.0));":@{
            @"method":@"TestProjectViewController_property_method:",
            @"jumpModel":@{
                @"jumpMethod":@"presentingViewController",
            },
            @"desc":@"获取controller的presentingViewController \n push过去的为null，present过去的有 \n 两次连续present执行不了"}
    };
}

- (NSDictionary *)method_13 {
    return @{
        @"@property(nonatomic,assign) UIModalTransitionStyle modalTransitionStyle API_AVAILABLE(ios(3.0));":@{
            @"method":@"TestProjectViewController_property_modalTransitionStyle",
            @"desc":@"设置controller的present的动画效果 \n push过去的没有动画效果"}
    };
}

- (NSDictionary *)method_14 {
    return @{
        @"@property(nonatomic,assign) UIModalPresentationStyle modalPresentationStyle API_AVAILABLE(ios(3.2));":@{
            @"method":@"TestProjectViewController_property_modalPresentationStyle",
            @"desc":@"设置controller的present的动画效果 \n push过去的没有动画效果"}
    };
}

- (void)alert {
    UIAlertController *alert = [UIAlertController alertControllerWithTitle:nil message:@"选择哪个vc" preferredStyle:UIAlertControllerStyleAlert];
    UIAlertAction *vc = [UIAlertAction actionWithTitle:@"testVC" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        [UIApplication.rootNavController pushViewController:self.tVC animated:YES];
    }];
    [alert addAction:vc];
    UIAlertAction *nibVc = [UIAlertAction actionWithTitle:@"testNibVC" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        [UIApplication.rootNavController pushViewController:self.tNibVC animated:YES];
    }];
    [alert addAction:nibVc];
    [UIApplication.rootCurrentController presentViewController:alert animated:YES completion:nil];
}

- (TestProjectDetailVCModel *)createTabModelWithDesc:(NSString *)desc {
    TestProjectDetailVCModel *m = [[TestProjectDetailVCModel alloc] init];
    m.desc = desc;
    [m calculDataViewHeight];
    [self.dataMutArr addObject:m];
    return m;
}

- (void)operationWithVC:(TestProjectDetailObjectController *)vc isPush:(BOOL)isPush method:(NSString *)method {
    NSString *vcName = NSStringFromClass(vc.class);
    NSString *fromText = isPush ? @"push" : @"present";
    NSString *desc = [NSString stringWithFormat:@"我是通过%@过来的 \n 获取的是%@的属性%@: ", fromText, vcName, method];
    TestProjectDetailVCModel *m = [self createTabModelWithDesc:desc];
    WO(wObjc, m);
    m.clickBlock = ^{
        TestProjectDetailVCModel *vm = [wObjc copy];
        if (method) {
            vm.detailMethod = [NSString stringWithFormat:@"get_%@", method];
        }
        vc.viewModel = vm;
        
        if (isPush) {
            if (UIApplication.rootNavController.presentedViewController) {
                [UIApplication.rootCurrentController dismissViewControllerAnimated:YES completion:nil];
            }
            [UIApplication.rootNavController pushViewController:vc animated:YES];
        } else {
            if (vc.modalTransitionStyle == UIModalTransitionStylePartialCurl) {
                if (UIApplication.rootNavController.presentedViewController) {
                    [UIApplication.rootCurrentController dismissViewControllerAnimated:YES completion:nil];
                }
                [UIApplication.rootNavController pushViewController:vc animated:YES];
            } else {
                [UIApplication.rootCurrentController presentViewController:vc animated:YES completion:nil];
            }
        }
    };
}

- (void)TestProjectViewController_property_modalPresentationStyle {
    NSArray *styles = @[
    @{@(UIModalPresentationFullScreen):@"我是UIModalPresentationFullScreen样式 全屏展示"},
    @{@(UIModalPresentationPageSheet):@"我是UIModalPresentationPageSheet样式 sheet展示"},
    @{@(UIModalPresentationFormSheet):@"我是UIModalPresentationFormSheet样式 sheet展示"},
    @{@(UIModalPresentationCurrentContext):@"我是UIModalPresentationCurrentContext样式 sheet展示"},
    @{@(UIModalPresentationCustom):@"我是UIModalPresentationCustom样式 全屏展示"},
    @{@(UIModalPresentationOverFullScreen):@"我是UIModalPresentationOverFullScreen样式 全屏展示"},
    @{@(UIModalPresentationOverCurrentContext):@"我是UIModalPresentationOverCurrentContext样式 sheet展示"},
    @{@(UIModalPresentationPopover):@"我是UIModalPresentationPopover样式 sheet展示"},
    @{@(UIModalPresentationNone):@"我是UIModalPresentationNone样式 会导致崩溃"},
    @{@(UIModalPresentationAutomatic):@"我是UIModalPresentationAutomatic样式 sheet展示"}, ];
    for (NSDictionary *dic in styles) {
        NSNumber *num = dic.allKeys.firstObject;
        TestProjectDetailVCModel *m = [self createTabModelWithDesc:[NSString stringWithFormat:@"modalTransitionStyle设置的属性是: %@", [dic objectForKey:num]]];
        m.clickBlock = ^{
            UIModalPresentationStyle style = [num integerValue];
            style = style != UIModalPresentationNone?style:UIModalPresentationCustom;
            self.tVC.modalPresentationStyle = style;
            self.tNibVC.modalPresentationStyle = style;
        };
    }
    [self operationWithMethod:nil];
}

- (void)TestProjectViewController_property_modalTransitionStyle {
    NSArray *styles = @[
    @{@(UIModalTransitionStyleCoverVertical):@"我是UIModalTransitionStyleCoverVertical样式 封面垂直"},
    @{@(UIModalTransitionStyleFlipHorizontal):@"我是UIModalTransitionStyleFlipHorizontal样式 横向翻转"},
    @{@(UIModalTransitionStyleCrossDissolve):@"我是UIModalTransitionStyleCrossDissolve样式 交叉溶解"},
    @{@(UIModalTransitionStylePartialCurl):@"我是UIModalTransitionStylePartialCurl样式 部分旋转, 上个页面只能是push过来的，present过来的会崩溃"}, ];
    for (NSDictionary *dic in styles) {
        NSNumber *num = dic.allKeys.firstObject;
        TestProjectDetailVCModel *m = [self createTabModelWithDesc:[NSString stringWithFormat:@"modalTransitionStyle设置的属性是: %@", [dic objectForKey:num]]];
        m.clickBlock = ^{
            self.tVC.modalTransitionStyle = [num integerValue];
            self.tNibVC.modalTransitionStyle = [num integerValue];
        };
    }
    [self operationWithMethod:nil];
}

- (void)operationWithMethod:(NSString *)method {
    [self operationWithVC:self.tVC isPush:YES method:method];
    [self operationWithVC:self.tNibVC isPush:YES method:method];
    [self operationWithVC:self.tVC isPush:NO method:method];
    [self operationWithVC:self.tNibVC isPush:NO method:method];
    self.tableView.dataSourceArray = self.dataMutArr;
}

- (void)TestProjectViewController_property_method:(TestProjectDetailVCModel *)viewModel {
    [self operationWithMethod:viewModel.jumpModel.jumpMethod];
}

- (void)TestProjectViewController_property_title {
    [self createTabModelWithDesc:[NSString stringWithFormat:@"获取的是TestProjectTestVC的属性title: \n%@ \n 获取的是TestProjectTestNibVC的属性title: \n%@ ", self.tVC.title, self.tNibVC.title]];
    self.tableView.dataSourceArray = self.dataMutArr;
}

- (void)TestProjectViewController_property_storyboard {
    [self createTabModelWithDesc:[NSString stringWithFormat:@"获取的是TestProjectTestVC的属性storyboard: \n%@ \n 获取的是TestProjectTestNibVC的属性storyboard: \n%@ ", self.tVC.storyboard, self.tNibVC.storyboard]];
    self.tableView.dataSourceArray = self.dataMutArr;
}

- (void)TestProjectViewController_property_nibBundle {
    [self createTabModelWithDesc:[NSString stringWithFormat:@"获取的是TestProjectTestVC的属性nibBundle: \n%@ \n 获取的是TestProjectTestNibVC的属性nibBundle: \n%@ ", self.tVC.nibBundle, self.tNibVC.nibBundle]];
    self.tableView.dataSourceArray = self.dataMutArr;
}

- (void)TestProjectViewController_property_nibName {
    [self createTabModelWithDesc:[NSString stringWithFormat:@"获取的是TestProjectTestVC的属性nibName: \n%@ \n 获取的是TestProjectTestNibVC的属性nibName: \n%@ ", self.tVC.nibName, self.tNibVC.nibName]];
    self.tableView.dataSourceArray = self.dataMutArr;
}

- (void)TestProjectViewController_property_viewLoaded {
    NSArray *styles = @[
    @{@(NO):@"我还么有加载了view的"},
    @{@(YES):@"我是已经加载了view的"}, ];
    for (NSDictionary *dic in styles) {
        NSNumber *num = dic.allKeys.firstObject;
        if ([num boolValue]) {
            [self TestProjectViewController_loadViewIfNeeded];
        }
        [self createTabModelWithDesc:[NSString stringWithFormat:@"%@ \n 获取的是TestProjectTestVC的属性viewLoaded: %u \n 获取的是TestProjectTestNibVC的属性viewLoaded: %u ", [dic objectForKey:num], self.tVC.viewLoaded, self.tNibVC.viewLoaded]];
    }
    self.tableView.dataSourceArray = self.dataMutArr;
}


- (void)TestProjectViewController_property_viewIfLoaded {
    [self TestProjectViewController_loadViewIfNeeded];
    [self createTabModelWithDesc:[NSString stringWithFormat:@"获取的是TestProjectTestVC的属性loadView: \n%@ \n 获取的是TestProjectTestNibVC的属性loadView: \n%@ ", self.tVC.viewIfLoaded, self.tNibVC.viewIfLoaded]];
    self.tableView.dataSourceArray = self.dataMutArr;
}

- (void)TestProjectViewController_loadViewIfNeeded {
    [self.tVC loadViewIfNeeded];
    [self.tNibVC loadViewIfNeeded];
}

- (void)TestProjectViewController_loadView {
    [self.tVC loadView];
    [self.tNibVC loadView];
}

- (void)TestProjectViewController_property_view {
    [self createTabModelWithDesc:[NSString stringWithFormat:@"获取的是TestProjectTestVC的属性view: \n%@ \n 获取的是TestProjectTestNibVC的属性view: \n%@ ", self.tVC.view, self.tNibVC.view]];
    self.tableView.dataSourceArray = self.dataMutArr;
}

@end
