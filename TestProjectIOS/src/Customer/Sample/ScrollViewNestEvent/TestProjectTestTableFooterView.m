//
//  TestProjectTestTableFooterView.m
//  TestProjectIOS
//
//  Created by liwenfan on 2023/10/20.
//

#import "TestProjectTestTableFooterView.h"

@implementation TestProjectTestTableFooterView

- (instancetype)init {
    if (self = [super init]) {
        [self.tabScrollController.view testproject_makeConstraints:^(TestProjectViewConstrainMake * _Nonnull make) {
            make.top.leading.trainling.bottom.equal(self);
        }];
    }
    return self;
}

- (void)updateData {
    NSMutableArray *tabMutArr = [NSMutableArray array];
    for (NSInteger i = 0; i < 10; i++) {
        TestProjectViewModelTab *tabModel = [[TestProjectViewModelTab alloc] init];
        tabModel.title = [NSString stringWithFormat:@"tab_%ld", i];
        [tabMutArr addObject:tabModel];
    }
    [self.tabScrollController resetData:[tabMutArr copy]];
}

- (TestProjectScrollTabController *)tabScrollController {
    if (!_tabScrollController) {
        _tabScrollController = [[TestProjectScrollTabController alloc] initWithTabType:TestProjectTab_AutoDivede];
        [self addSubview:_tabScrollController.view];
    }
    return _tabScrollController;
}

@end
