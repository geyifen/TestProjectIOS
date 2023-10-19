//
//  TestProjectTestVC.h
//  TestProjectIOS
//
//  Created by liwenfan on 2023/4/6.
//

#import "TestProjectBaseVC.h"

NS_ASSUME_NONNULL_BEGIN

@interface TestProjectTestVC : TestProjectBaseVC

@property (nonatomic, assign) NSInteger atFloor;
@property (nonatomic, copy) Class childViewClass;

@property (nonatomic, copy) void(^returnDataBlock)(id data);

@end

NS_ASSUME_NONNULL_END
