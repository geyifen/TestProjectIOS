//
//  TestProjectNestScrollTabController.h
//  TestProjectIOS
//
//  Created by zjrcumac on 2023/2/8.
//

#import "TestProjectBaseVC.h"

#import "TestProjectViewModelTab.h"

NS_ASSUME_NONNULL_BEGIN

@interface TestProjectNestScrollTabController : TestProjectBaseVC

@property (nonatomic, copy) NSString *pageTitle;

- (instancetype)initWithTabType:(TestProjectTabType)tabType viewModelList:(NSMutableArray *)viewModelList;

@property (nonatomic, assign) NSInteger atIndex;

@end

NS_ASSUME_NONNULL_END
