//
//  TestProjectViewModelTableViewCell.h
//  TestProjectIOS
//
//  Created by liwenfan on 2023/2/22.
//

#import <UIKit/UIKit.h>

#import "TestProjectTableViewModel.h"
#import "TestProjectBaseTableViewCell.h"

NS_ASSUME_NONNULL_BEGIN
@interface TestProjectViewModelTableViewCell : TestProjectBaseTableViewCell <TestProjectViewProtocol>

@property (nonatomic, strong) TestProjectTableViewModel *viewModel;
@property (nonatomic, weak) id delegate;

- (void)addChildView:(UIView *)childView;

@end

NS_ASSUME_NONNULL_END
