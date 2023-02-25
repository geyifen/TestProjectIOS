//
//  TestProjectNestScrollTabController.h
//  TestProjectIOS
//
//  Created by zjrcumac on 2023/2/8.
//

#import "TestProjectVC.h"

#import "TestProjectTabViewModel.h"

NS_ASSUME_NONNULL_BEGIN

@interface TestProjectNestScrollTabController : TestProjectVC

- (instancetype)initWithTabType:(TestProjectTabType)tabType viewModelList:(NSMutableArray *)viewModelList;

@end

NS_ASSUME_NONNULL_END
