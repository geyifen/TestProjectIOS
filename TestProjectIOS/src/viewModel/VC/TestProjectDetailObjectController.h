//
//  TestProjectDetailObjectController.h
//  TestProjectIOS
//
//  Created by zjrcumac on 2023/2/22.
//

#import "TestProjectVC.h"

#import "TestProjectTableModel.h"

NS_ASSUME_NONNULL_BEGIN

@interface TestProjectDetailObjectController : TestProjectVC

- (instancetype)initWithViewModel:(TestProjectTableModel *)viewModel;

@end

NS_ASSUME_NONNULL_END
