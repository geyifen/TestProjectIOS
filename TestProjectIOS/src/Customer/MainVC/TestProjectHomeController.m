//
//  TestProjectHomeController.m
//  TestProjectIOS
//
//  Created by liwenfan on 2023/1/31.
//

#import "TestProjectHomeController.h"

#import "TestProjectCategoryHeader.h"
#import "TestProjectOCController.h"

#import "TestProjectBaseTableView.h"
#import "TestProjectTableModel.h"
#import "TestProjectBaseTableViewTableCell.h"

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
}

- (void)click {
    TestProjectOCController *ocVC = [[TestProjectOCController alloc] init];
    [self.tabBarController.navigationController pushViewController:ocVC animated:YES];
}

@end

