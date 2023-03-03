//
//  TestProjectTabViewModel.h
//  TestProjectIOS
//
//  Created by zjrcumac on 2023/1/29.
//

#import <Foundation/Foundation.h>

#import "TestProjectTabView.h"

NS_ASSUME_NONNULL_BEGIN

@interface TestProjectTabViewModel : NSObject <TestProjectTabViewModelProtocol>

@property (nonatomic, copy) NSString *title;
@property (nonatomic, assign) TestProjectTabType tabType;
@property (nonatomic, strong) NSMutableArray<TestProjectTabViewModel *> *childItems;
@property (nonatomic, copy) NSString *viewKey;
@property (nonatomic, strong) UIColor *backgroundColor;

@end

NS_ASSUME_NONNULL_END
