//
//  TestProjectLinkageSideTableViewVC.m
//  TestProjectIOS
//
//  Created by liwenfan on 2023/12/19.
//

#import "TestProjectLinkageSideTableViewVC.h"

#import "TestProjectNestLinkageSideTableView.h"

@interface TestProjectLinkageSideTableViewVC ()

@end

@implementation TestProjectLinkageSideTableViewVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    dispatch_async(dispatch_get_global_queue(0, 0), ^{
        NSMutableArray *mutArr = [NSMutableArray array];
        for (NSInteger i = 0; i < 50; i++) {
            TestProjectLinkageSideTableViewModel *i_viewModel = [[TestProjectLinkageSideTableViewModel alloc] init];
            i_viewModel.rightSideWidth = 80;
            i_viewModel.title = [NSString stringWithFormat:@"title_%ld", i];
            i_viewModel.abstract = [NSString stringWithFormat:@"abstract_%ld", i];
            [i_viewModel calculDataViewHeight:nil];
            [mutArr addObject:i_viewModel];
            if (i < 30 && i > 20) {
                continue;
            }
            NSMutableArray *i_itemChildArr = [NSMutableArray array];
            for (NSInteger j = 0 ; j < 20; j++) {
                TestProjectLinkageSideTableViewModel *j_viewModel = [[TestProjectLinkageSideTableViewModel alloc] init];
                j_viewModel.rightSideWidth = 80;
                j_viewModel.title = [NSString stringWithFormat:@"title_%ld_%ld", i, j];
                j_viewModel.abstract = [NSString stringWithFormat:@"abstract_%ld_%ld", i, j];
                [j_viewModel calculDataViewHeight:nil];

                [i_itemChildArr addObject:j_viewModel];
                if (j < 20 && j > 10) {
                    continue;
                }
                NSMutableArray *j_itemChildArr = [NSMutableArray array];
                for (NSInteger k = 0 ; k < 10; k++) {
                    TestProjectLinkageSideTableViewModel *k_viewModel = [[TestProjectLinkageSideTableViewModel alloc] init];
                    k_viewModel.rightSideWidth = 80;
                    k_viewModel.title = [NSString stringWithFormat:@"title_%ld_%ld_%ld", i, j, k];
                    k_viewModel.abstract = [NSString stringWithFormat:@"abstract_%ld_%ld_%ld", i, j, k];
                    [k_viewModel calculDataViewHeight:nil];

                    [j_itemChildArr addObject:k_viewModel];
                }
                j_viewModel.childItems = j_itemChildArr;
            }
            i_viewModel.childItems = i_itemChildArr;
        }
        dispatch_async(dispatch_get_main_queue(), ^{
            TestProjectLinkageSideTableViewModel *linkageViewModel = [[TestProjectLinkageSideTableViewModel alloc] init];
            linkageViewModel.rightSideWidth = 80;
            linkageViewModel.childItems = mutArr;
            TestProjectNestLinkageSideTableView *nestLinkageSideTableView = [[TestProjectNestLinkageSideTableView alloc] init];
            nestLinkageSideTableView.viewModel = linkageViewModel;
            [self.view addSubview:nestLinkageSideTableView];
            [nestLinkageSideTableView testproject_makeConstraints:^(TestProjectViewConstrainMake * _Nonnull make) {
                make.top.bottom.leading.trainling.equal(self.view);
            }];
        });
    });
}

@end
