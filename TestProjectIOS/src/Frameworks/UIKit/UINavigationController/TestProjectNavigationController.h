//
//  TestProjectNavigationController.h
//  TestProjectIOS
//
//  Created by zjrcumac on 2023/4/10.
//

#import "TestProjectViewTable.h"
#import "TestProjectTestVC.h"

NS_ASSUME_NONNULL_BEGIN

@interface TestProjectViewTableController : TestProjectViewTable

@property (nonatomic, strong) TestProjectTestVC *tVC;

- (TestProjectDetailVCModel *)createTabModelWithDesc:(NSString *)desc;
- (TestProjectDetailVCModel *)createTabModelWithDesc:(NSString *)desc title:(NSString *)title;
- (void)TestProjectNavigationController_property_method:(TestProjectDetailVCModel *)viewModel;
- (void)operationWithVC:(TestProjectDetailObjectController *)vc
                 isPush:(BOOL)isPush
                 method:(NSString *)method
              viewModel:(TestProjectTableModel *)viewModel;

@end

@interface TestProjectNavigationController : TestProjectViewTableController

@end

NS_ASSUME_NONNULL_END
