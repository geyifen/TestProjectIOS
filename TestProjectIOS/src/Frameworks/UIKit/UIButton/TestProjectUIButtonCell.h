//
//  TestProjectUIButtonCell.h
//  TestProjectIOS
//
//  Created by zjrcumac on 2023/6/1.
//

#import "TestProjectBaseTableViewCell.h"

NS_ASSUME_NONNULL_BEGIN

@interface TestProjectUIButtonCellModel : TestProjectTableModel

@property (nonatomic, strong) UIButton *chidlButton;
@property (nonatomic, assign) BOOL isFrameCreate;

@end

@interface TestProjectUIButtonCell : TestProjectBaseTableViewCell <TestProjectViewProtocol>

@property (nonatomic, strong) TestProjectUIButtonCellModel *viewModel;

@end

NS_ASSUME_NONNULL_END
