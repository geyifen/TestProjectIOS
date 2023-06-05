//
//  TestProjectViewTable.h
//  TestProjectIOS
//
//  Created by zjrcumac on 2023/2/22.
//

#import <UIKit/UIKit.h>

#import "TestProjectBaseTableView.h"
#import "TestProjectCustomerHeader.h"
#import "TestProjectTableModel.h"
#import "TestProjectConfig.h"

NS_ASSUME_NONNULL_BEGIN

@interface TestProjectViewTable : UIView <TestProjectBaseTableViewProtocol, TestProjectCreateViewProtocol>

@property (nonatomic, strong) TestProjectBaseTableView *tableView;
@property (nonatomic, strong) id viewModel;
@property (nonatomic, strong) id compareViewModel;
@property (nonatomic, strong) NSMutableArray *dataMutArr;
@property (nonatomic, weak) id delegate;

- (NSArray *)viewDataArray;

- (id)setPropertyValueObject;

- (Class)createTableModelClass;
/**内部根据property和value已经组装title，在点击的时候会设置对象属性，不会有block回调**/
- (TestProjectTableModel *)createClickSetTableModelWithProperty:(NSString *)property
                                                          value:(nullable id)value;
/**内部根据property和value已经组装title，在点击的时候会设置对象属性，不会有block回调,只是对上面的方法返回的是一个单个数据的数组组装而已**/
- (NSMutableArray *)createClickSetSingleArrayTableModelWithProperty:(NSString *)property
                                                              value:(id)value;
/**内部根据property和value已经组装title，在点击的时候会设置对象属性，会有block回调**/
- (TestProjectTableModel *)createClickSetTableModelWithProperty:(NSString *)property
                                                          value:(id)value
                                                          block:(nullable void(^)(void))block;
/**在点击的时候会设置对象属性，会有block回调**/
- (TestProjectTableModel *)createClickSetTableModelWithProperty:(NSString *)property
                                                          value:(id)value
                                                          title:(NSString *)title
                                                          block:(nullable void(^)(void))block;
/**在点击的时候会有block回调**/
- (TestProjectTableModel *)createTableModelWithTitle:(NSString *)title
                                               block:(nullable void(^)(void))block;
/**在点击的时候会有block回调，只是对上面的方法返回的是一个单个数据的数组组装而已**/
- (NSMutableArray *)createTableModelSingleArrayWithTitle:(NSString *)title
                                                   block:(nullable void(^)(void) )block;
/**内部根据property和value已经组装title**/
- (TestProjectTableModel *)createTableModelWithProperty:(NSString *)property
                                                  value:(id _Nullable)value;
/**内部根据property和value已经组装title,只是对上面的方法返回的是一个单个数据的数组组装而已**/
- (NSMutableArray *)createTableModelSingleArrayWithProperty:(NSString *)property
                                                      value:(id _Nullable)value;
/**内部根据property已经组装title, 点击后更新描述文本**/
- (NSMutableArray *)createTableModelSingleArrayWithProperty:(NSString *)property
                                                      index:(NSInteger)index;
/**内部根据block回调得到描述信息, 点击后更新描述文本**/
- (TestProjectTableModel *)createTableModelWithMethodBlock:(NSString *(^)(void))methodBlock
                                                     title:(NSString *)title
                                                     index:(NSInteger)index;

@end

NS_ASSUME_NONNULL_END
