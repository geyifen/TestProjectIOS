//
//  TestProjectBaseChildTableViewCell.h
//  TestProjectIOS
//
//  Created by liwenfan on 2023/11/6.
//

#import "TestProjectBaseTableViewCell.h"

NS_ASSUME_NONNULL_BEGIN

@interface TestProjectBaseChildTableViewCell : TestProjectBaseTableViewCell <TestProjectViewProtocol>

@property (nonatomic, strong) TestProjectTableViewModel *viewModel;

- (void)addChildView:(UIView *)childView;

@end

NS_ASSUME_NONNULL_END
