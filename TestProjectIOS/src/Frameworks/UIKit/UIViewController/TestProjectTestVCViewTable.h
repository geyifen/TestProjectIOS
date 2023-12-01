//
//  TestProjectTestVCViewTable.h
//  TestProjectIOS
//
//  Created by liwenfan on 2023/5/4.
//

#import "TestProjectTableViewView.h"

#import "TestProjectTestVC.h"

NS_ASSUME_NONNULL_BEGIN

@interface TestProjectTestVCViewTable : TestProjectTableViewView

@property (nonatomic, weak) TestProjectTestVC *parentVC;
@property (nonatomic, strong) TestProjectTestVC *tVC;

- (TestProjectTableViewModel *)createChildVCTableModelWithParams:(TestProjectTableViewParams *)params
                                                        property:(NSString *)key
                                                           value:(id)value
                                                           title:(NSString *)title;

- (BOOL)isOnlyPush;

- (instancetype)initCreate;

- (void)gotoBack;

@end

NS_ASSUME_NONNULL_END
