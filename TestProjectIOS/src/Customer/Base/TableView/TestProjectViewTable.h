//
//  TestProjectViewTable.h
//  TestProjectIOS
//
//  Created by zjrcumac on 2023/2/22.
//

#import <UIKit/UIKit.h>

#import "TestProjectBaseTableView.h"
#import "TestProjectCategoryHeader.h"
#import "TestProjectDetailObjectController.h"
#import "UIApplication+TestProject.h"

NS_ASSUME_NONNULL_BEGIN

@interface TestProjectViewTable : UIView <TestProjectBaseTableViewProtocol, TestProjectDetailObjectChildView>

@property (nonatomic, strong) TestProjectBaseTableView *tableView;
@property (nonatomic, strong) id viewModel;
@property (nonatomic, strong) id compareViewModel;
@property (nonatomic, strong) NSMutableArray *dataMutArr;

- (NSArray *)viewDataArray;

@end

NS_ASSUME_NONNULL_END
