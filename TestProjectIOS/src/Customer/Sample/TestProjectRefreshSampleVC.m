//
//  TestProjectRefreshSampleVC.m
//  TestProjectIOS
//
//  Created by zjrcumac on 2023/7/31.
//

#import "TestProjectRefreshSampleVC.h"

#import "TestProjectCustomerHeader.h"

@interface TestProjectRefreshHeaderFooterView : UITableViewHeaderFooterView

@property (nonatomic, strong) UILabel *titleLabel;

@end

@implementation TestProjectRefreshHeaderFooterView

- (UILabel *)titleLabel {
    if (!_titleLabel) {
        _titleLabel = [[UILabel alloc] init];
        _titleLabel.textColor = [UIColor blackColor];
        [self addSubview:_titleLabel];
        [_titleLabel testproject_makeConstraints:^(TestProjectViewConstrainMake * _Nonnull make) {
            make.top.leading.trainling.bottom.equal(self);
        }];
    }
    return _titleLabel;
}

@end

@interface TestProjectRefreshSampleVC () <UITableViewDelegate, UITableViewDataSource>

@property (nonatomic, strong) UITableView *tableView;
@property (nonatomic, strong) UITableView *rightTableView;

@end

@implementation TestProjectRefreshSampleVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self setTableViewProperty:self.tableView];
    [self setTableViewProperty:self.rightTableView];
}

- (void)setTableViewProperty:(UITableView *)tableView {
    WO(wObjc, tableView);
    TestProjectSampleRefreshHeader *refreshHeader = [[TestProjectSampleRefreshHeader alloc] initWithRefreshingBlock:^{
        dispatch_after(dispatch_time(DISPATCH_TIME_NOW, 5 * NSEC_PER_SEC), dispatch_get_main_queue(), ^{
            [wObjc.testProject_header endRefreshing];
        });
    }];
//    refreshHeader.backgroundColor = [UIColor redColor];
    tableView.testProject_header = refreshHeader;
//    tableView.contentInset = UIEdgeInsetsMake(40, 0, 10, 0);
    
    TestProjectSampleRefreshFooter *refreshFooter = [[TestProjectSampleRefreshFooter alloc] initWithRefreshingBlock:^{
        dispatch_after(dispatch_time(DISPATCH_TIME_NOW, 5 * NSEC_PER_SEC), dispatch_get_main_queue(), ^{
            [wObjc.testProject_footer endRefreshingWithNoMoreData];
//            [wObjc.testProject_footer endRefreshing];
        });
    }];
//    refreshFooter.backgroundColor = [UIColor purpleColor];
    if (tableView == self.tableView) {
        refreshFooter.enableNoMoreScrollInsetSet = YES;
    }
    tableView.testProject_footer = refreshFooter;
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 5;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 5;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"UITableViewCell" forIndexPath:indexPath];
    if (!cell) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"UITableViewCell"];
    }
    cell.textLabel.text = [NSString stringWithFormat:@"cell_%@", indexPath];
    return cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 80;
}

- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section {
    TestProjectRefreshHeaderFooterView *headerView = [tableView dequeueReusableHeaderFooterViewWithIdentifier:@"TestProjectRefreshHeaderFooterView"];
    if (!headerView) {
        headerView = [[TestProjectRefreshHeaderFooterView alloc] init];
    }
    headerView.titleLabel.text = [NSString stringWithFormat:@"header_%ld", section];
    return headerView;
}

- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section {
    return 40;
}

- (UIView *)tableView:(UITableView *)tableView viewForFooterInSection:(NSInteger)section {
    TestProjectRefreshHeaderFooterView *footerView = [tableView dequeueReusableHeaderFooterViewWithIdentifier:@"TestProjectRefreshHeaderFooterView"];
    if (!footerView) {
        footerView = [[TestProjectRefreshHeaderFooterView alloc] init];
    }
    footerView.titleLabel.text = [NSString stringWithFormat:@"footer_%ld", section];
    return footerView;
}

- (CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section {
    return 40;
}

- (void)scrollViewDidScroll:(UIScrollView *)scrollView {
//    NSLog(@"contentOffset:%@", NSStringFromCGPoint(scrollView.contentOffset));
//    NSLog(@"adjustedContentInset:%@", NSStringFromUIEdgeInsets(scrollView.adjustedContentInset));
//    NSLog(@"contentInset:%@", NSStringFromUIEdgeInsets(scrollView.contentInset));
}

- (UITableView *)tableView {
    if (!_tableView) {
        _tableView = [[UITableView alloc] initWithFrame:CGRectZero style:UITableViewStylePlain];
        _tableView.dataSource = self;
        _tableView.delegate = self;
        _tableView.estimatedRowHeight = 0;
        _tableView.estimatedSectionFooterHeight = 0;
        _tableView.estimatedSectionHeaderHeight = 0;
        [_tableView registerClass:UITableViewCell.class forCellReuseIdentifier:@"UITableViewCell"];
        [_tableView registerClass:TestProjectRefreshHeaderFooterView.class forHeaderFooterViewReuseIdentifier:@"TestProjectRefreshHeaderFooterView"];
        [self.view addSubview:_tableView];
        [_tableView testproject_makeConstraints:^(TestProjectViewConstrainMake * _Nonnull make) {
            make.top.leading.bottom.equal(self.view);
            make.width.equal(self.rightTableView);
            make.trainling.equal(self.rightTableView.leading);
        }];
    }
    return _tableView;
}

- (UITableView *)rightTableView {
    if (!_rightTableView) {
        _rightTableView = [[UITableView alloc] initWithFrame:CGRectZero style:UITableViewStyleGrouped];
        _rightTableView.dataSource = self;
        _rightTableView.delegate = self;
        _rightTableView.estimatedRowHeight = 0;
        _rightTableView.estimatedSectionFooterHeight = 0;
        _rightTableView.estimatedSectionHeaderHeight = 0;
        _rightTableView.rowHeight = 0;
        _rightTableView.sectionFooterHeight = 0;
        _rightTableView.sectionHeaderHeight = 0;
        UIView *view = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 0, 0.1)];
        view.backgroundColor = [UIColor clearColor];
        _rightTableView.tableFooterView = view;
        [_rightTableView registerClass:UITableViewCell.class forCellReuseIdentifier:@"UITableViewCell"];
        [_rightTableView registerClass:TestProjectRefreshHeaderFooterView.class forHeaderFooterViewReuseIdentifier:@"TestProjectRefreshHeaderFooterView"];
        [self.view addSubview:_rightTableView];
        [_rightTableView testproject_makeConstraints:^(TestProjectViewConstrainMake * _Nonnull make) {
            make.top.bottom.trainling.equal(self.view);
        }];
    }
    return _rightTableView;
}

@end

