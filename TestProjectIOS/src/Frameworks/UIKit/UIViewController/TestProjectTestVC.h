//
//  TestProjectTestVC.h
//  TestProjectIOS
//
//  Created by zjrcumac on 2023/4/6.
//

#import "TestProjectDetailObjectController.h"

NS_ASSUME_NONNULL_BEGIN

@interface TestProjectTestVC : TestProjectDetailObjectController

@property (nonatomic, assign) NSInteger atFloor;

@property (nonatomic, copy) void(^returnDataBlock)(id data);

@end

NS_ASSUME_NONNULL_END
