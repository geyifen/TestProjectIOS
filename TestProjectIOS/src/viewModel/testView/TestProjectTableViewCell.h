//
//  TestProjectTableViewCell.h
//  TestProjectIOS
//
//  Created by zjrcumac on 2023/2/22.
//

#import <UIKit/UIKit.h>

#import "TestProjectTableModel.h"

NS_ASSUME_NONNULL_BEGIN
@interface TestProjectTableViewCell : UITableViewCell <TestProjectViewProtocol>


@property (nonatomic, strong) TestProjectTableModel *viewModel;

@end

NS_ASSUME_NONNULL_END
