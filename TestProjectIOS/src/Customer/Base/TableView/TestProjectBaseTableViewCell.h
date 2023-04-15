//
//  TestProjectBaseTableViewCell.h
//  TestProjectIOS
//
//  Created by zjrcumac on 2023/2/22.
//

#import <UIKit/UIKit.h>

#import "TestProjectTableModel.h"

NS_ASSUME_NONNULL_BEGIN
@interface TestProjectBaseTableViewCell : UITableViewCell <TestProjectViewProtocol>

@property (nonatomic, strong) TestProjectTableModel *viewModel;
@property (nonatomic, strong) UILabel *titleLabel;
@property (nonatomic, strong) UILabel *descLabel;

@end

NS_ASSUME_NONNULL_END
