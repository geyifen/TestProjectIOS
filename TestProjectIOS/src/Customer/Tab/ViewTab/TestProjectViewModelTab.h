//
//  TestProjectViewModelTab.h
//  TestProjectIOS
//
//  Created by liwenfan on 2023/1/29.
//

#import <Foundation/Foundation.h>

#import "TestProjectViewTab.h"
#import "TestProjectBaseModel.h"

NS_ASSUME_NONNULL_BEGIN

@interface TestProjectViewModelTab : TestProjectBaseModel <TestProjectTabViewModelProtocol>

@property (nonatomic, copy) NSString *title;
@property (nonatomic, copy) NSString *viewKey;
@property (nonatomic, assign) TestProjectTabType tabType;
@property (nonatomic, assign) NSInteger atIndex;
@property (nonatomic, strong) NSMutableArray<TestProjectViewModelTab *> *itemChilds;

@end

NS_ASSUME_NONNULL_END
