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

typedef NS_ENUM(NSInteger, TestProjectCreateModelOperation) {
    //仅能获取属性，没有点击事件
    TestProjectCreateModelOnlyGet,
    //仅能点击之后获取属性
    TestProjectCreateModelOnlyClickGet,
    //仅能设置属性，没有点击事件
    TestProjectCreateModelOnlySet,
    //仅能点击之后设置属性
    TestProjectCreateModelOnlyClickSet,
    //在点击之后设置属性完后再获取属性展示，并且可以在点击之前获取该默认属性
    TestProjectCreateModelGetBeforeClickSet,
    //在点击之后获取属性展示，并且可以在点击之前先获取该默认属性
    TestProjectCreateModelGetBeforeClickGet,
    //在点击之后可以先获取之前属性展示，再重新设置该属性进行展示，，并且可以在点击之前获取该默认属性
    TestProjectCreateModelGetBeforClickGetBeforeClickSet,
};

@interface TestProjectViewTable : UIView <TestProjectBaseTableViewProtocol, TestProjectCreateViewProtocol>

@property (nonatomic, strong) TestProjectBaseTableView *tableView;
@property (nonatomic, strong) id viewModel;
@property (nonatomic, strong) id compareViewModel;
@property (nonatomic, strong) NSMutableArray *dataMutArr;
@property (nonatomic, weak) id delegate;

- (NSArray *)viewDataArray;

- (id)setPropertyValueObject;

- (Class)createTableModelClass;

- (TestProjectTableModel *)createModelWithIndex:(NSInteger)index
                                          title:(nullable NSString *)title
                                       property:(nullable NSString *)property
                                          value:(nullable id)value
                                      operation:(TestProjectCreateModelOperation)operation
                                          block:(nullable void (^)(void))block;

- (NSMutableArray *)createModelSingleArrayWithIndex:(NSInteger)index
                                              title:(nullable NSString *)title
                                           property:(nullable NSString *)property
                                              value:(nullable id)value
                                          operation:(TestProjectCreateModelOperation)operation
                                              block:(nullable void (^)(void))block;

- (TestProjectTableModel *)createModelWithIndex:(NSInteger)index
                                       property:(nullable NSString *)property
                                          value:(nullable id)value
                                      operation:(TestProjectCreateModelOperation)operation
                                          block:(nullable void(^)(void))block;

- (NSMutableArray *)createModelSingleArrayWithIndex:(NSInteger)index
                                           property:(nullable NSString *)property
                                              value:(nullable id)value
                                          operation:(TestProjectCreateModelOperation)operation
                                              block:(nullable void(^)(void))block;

- (TestProjectTableModel *)createModelWithIndex:(NSInteger)index
                                          title:(nullable NSString *)title
                                    methodBlock:(nullable NSString *(^)(void))methodBlock;

- (NSMutableArray *)createModelSingleArrayWithIndex:(NSInteger)index
                                              title:(nullable NSString *)title
                                        methodBlock:(nullable NSString *(^)(void))methodBlock;

- (TestProjectTableModel *)createModelWithIndex:(NSInteger)index
                                          title:(nullable NSString *)title
                                          block:(nullable void(^)(void))block;

- (NSMutableArray *)createModelSingleArrayWithIndex:(NSInteger)index
                                              title:(nullable NSString *)title
                                              block:(nullable void(^)(void))block;

- (TestProjectTableModel *)createModelWithIndex:(NSInteger)index
                                 attributeTitle:(nullable NSAttributedString *)attributeTitle
                                          block:(nullable void (^)(void))block;

- (NSMutableArray *)createModelSingleArrayWithIndex:(NSInteger)index
                                     attributeTitle:(nullable NSAttributedString *)attributeTitle
                                              block:(nullable void (^)(void))block;

- (TestProjectTableModel *)createModelWithIndex:(NSInteger)index
                                          title:(nullable NSString *)title
                                  modelKeyValue:(nullable NSDictionary *)modelKeyValue
                                          block:(nullable void(^)(void))block;

- (NSMutableArray *)createModelSingleArrayWithIndex:(NSInteger)index
                                              title:(nullable NSString *)title
                                      modelKeyValue:(nullable NSDictionary *)modelKeyValue
                                              block:(nullable void (^)(void))block;


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
/**内部根据property和value已经组装title, 在执行的时候会获取property属性组装abstract，在点击的时候会设置对象属性，不会有block回调**/
- (NSMutableArray *)createClickSetSingleArrayTableModelBeforeWithProperty:(NSString *)property
                                                                    value:(id)value;
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
/**内部根据block回调得到描述信息, 点击后更新描述文本,只是对上面的方法返回的是一个单个数据的数组组装而已**/
- (NSMutableArray *)createTableModelSingleArrayWithMethodBlock:(NSString *(^)(void))methodBlock
                                                         title:(NSString *)title
                                                         index:(NSInteger)index;

- (void)addNotificationWithName:(NSString *)name selector:(SEL)selector;

@end

NS_ASSUME_NONNULL_END
