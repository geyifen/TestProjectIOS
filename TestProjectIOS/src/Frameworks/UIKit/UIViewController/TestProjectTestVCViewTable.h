//
//  TestProjectTestVCViewTable.h
//  TestProjectIOS
//
//  Created by liwenfan on 2023/5/4.
//

#import "TestProjectViewTable.h"

#import "TestProjectTestVC.h"

NS_ASSUME_NONNULL_BEGIN

@interface TestProjectTestVCViewTable : TestProjectViewTable

@property (nonatomic, weak) TestProjectTestVC *parentVC;
@property (nonatomic, strong) TestProjectTestVC *tVC;

- (TestProjectTableModel *)createChildVCTableModelWithProperty:(NSString *)key value:(id)value title:(NSString *)title;

- (BOOL)isOnlyPush;

- (instancetype)initCreate;

- (void)gotoBack;

@end

NS_ASSUME_NONNULL_END
