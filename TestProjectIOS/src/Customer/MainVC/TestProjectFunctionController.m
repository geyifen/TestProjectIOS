//
//  TestProjectFunctionController.m
//  TestProjectIOS
//
//  Created by liwenfan on 2023/7/31.
//

#import "TestProjectFunctionController.h"

#import "TestProjectViewTable.h"

@interface TestProjectFunctionController ()

@property (nonatomic, strong) TestProjectViewTable *viewTable;

@end

@implementation TestProjectFunctionController

- (NSString *)title {
    return @"function";
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self createModelWithTitle:@"瀑布流布局" vcClassName:@"TestProjectWaterfallLayoutVC"];
    [self createModelWithTitle:@"UICollectionView拖动" vcClassName:@"TestProjectCollectionViewDragVC"];
    [self createModelWithTitle:@"页面刷新功能" vcClassName:@"TestProjectRefreshSampleVC"];
    self.viewTable.tableView.dataSourceArray = self.viewTable.dataMutArr;
    [self.viewTable.tableView reloadData];
}

- (TestProjectViewTable *)viewTable {
    if (!_viewTable) {
        _viewTable = [TestProjectViewTable initCreateByViewModel];
        [self.view addSubview:_viewTable];
        [_viewTable testproject_makeConstraints:^(TestProjectViewConstrainMake * _Nonnull make) {
            make.top.bottom.leading.trainling.equal(self.view);
        }];
    }
    return _viewTable;
}

- (void)createModelWithTitle:(NSString *)title vcClassName:(NSString *)vcClassName {
    [self.viewTable createModelWithIndex:0 title:title block:^{
        Class vcClass = NSClassFromString(vcClassName);
        UIViewController *vc = [[vcClass alloc] init];
        vc.title = title;
        [UIApplication.rootNavController pushViewController:vc animated:YES];
    }];
}

@end
