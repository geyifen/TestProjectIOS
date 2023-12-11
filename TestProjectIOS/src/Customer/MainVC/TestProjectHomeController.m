//
//  TestProjectHomeController.m
//  TestProjectIOS
//
//  Created by liwenfan on 2023/1/31.
//

#import "TestProjectHomeController.h"

#import "TestProjectCategoryHeader.h"
#import "TestProjectOCController.h"

#import "TestProjectViewModelTableView.h"
#import "TestProjectTableViewModel.h"
#import "TestProjectViewModelTableViewCell.h"

#import "TestProjectUsrHeader.h"

@interface TestProjectHomeController ()

@end

@implementation TestProjectHomeController

- (NSString *)title {
    return @"home";
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeContactAdd];
    [btn addTarget:self action:@selector(click) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
    [btn testproject_makeConstraints:^(TestProjectViewConstrainMake * _Nonnull make) {
        make.top.leading.equal(self.view);
        make.width.height.equal(@100);
    }];
    [self click];
    [self testRunMath];
}

- (void)click {
    TestProjectOCController *ocVC = [[TestProjectOCController alloc] init];
    [self.tabBarController.navigationController pushViewController:ocVC animated:YES];
}

- (void)testRunMath {
    CancelUnusedValue(
    {
//    self.dispatchData = [[TestProjectDispatchData alloc] init];
//    [[TestProjectDispatchBlock alloc] init];
//    [[TestProjectDispatchGroup alloc] init];
//    self.dispatchIO = [[TestProjectDispatchIO alloc] init];
//    [[TestProjectDispatchObject alloc] init];
//    [self testDispatchOnce1];
    }
    {
//        TestProjectDispatchQueue *dispatchQueue = [[TestProjectDispatchQueue alloc] init];
//        [[TestProjectDispatchSemaphore alloc] init];
        //必须设置为属性，否则不持有导致timer不走
//        self.dispatchSource =
//        [[TestProjectDispatchSource alloc] init];
        [[TestProjectMath alloc] init];
//        [[TestProjectObjc alloc] init];
//        [[TestProjectPThread alloc] init];
//        [[TestProjectSignal alloc] init];
//        [[TestProjectString alloc] init];
    }
    {
//    UIButton *btn1 = [UIButton buttonWithType:UIButtonTypeCustom];
//    [btn1 setBackgroundColor:[UIColor redColor]];
//    btn1.frame = CGRectMake(0, 100, 100, 50);
//    [btn1 setTitle:@"点击" forState:UIControlStateNormal];
//    [btn1 addTarget:self action:@selector(clickEvent1) forControlEvents:UIControlEventTouchUpInside];
//    [self.view addSubview:btn1];
////
//    UIButton *btn2 = [UIButton buttonWithType:UIButtonTypeCustom];
//    [btn2 setBackgroundColor:[UIColor blueColor]];
//    btn2.frame = CGRectMake(0, 200, 100, 50);
//    [btn2 setTitle:@"点击" forState:UIControlStateNormal];
//    [btn2 addTarget:self action:@selector(clickEvent2) forControlEvents:UIControlEventTouchUpInside];
//    [self.view addSubview:btn2];
    }
    )

}

@end

