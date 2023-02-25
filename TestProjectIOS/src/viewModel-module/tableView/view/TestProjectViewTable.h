//
//  TestProjectViewTable.h
//  TestProjectIOS
//
//  Created by zjrcumac on 2023/2/22.
//

#import <UIKit/UIKit.h>

#import "TestProjectTableView.h"
#import "TestProjectCategoryHeader.h"

NS_ASSUME_NONNULL_BEGIN

@interface TestProjectViewTable : UIView <TestProjectTableViewProtocol, TestProjectCreateViewProtocol>

@property (nonatomic, strong) TestProjectTableView *tableView;
@property (nonatomic, strong) id viewModel;

- (NSArray *)viewDataArray;

@end

NS_ASSUME_NONNULL_END
