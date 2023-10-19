//
//  TestProjectBaseTableViewTableCell.h
//  TestProjectIOS
//
//  Created by liwenfan on 2023/2/22.
//

#import <UIKit/UIKit.h>

#import "TestProjectTableModel.h"
#import "TestProjectBaseTableViewCell.h"

NS_ASSUME_NONNULL_BEGIN
@interface TestProjectBaseTableViewTableCell : TestProjectBaseTableViewCell <TestProjectViewProtocol>

@property (nonatomic, strong) TestProjectTableModel *viewModel;
@property (nonatomic, weak) id delegate;

@end

NS_ASSUME_NONNULL_END
