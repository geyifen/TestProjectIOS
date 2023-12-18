//
//  TestProjectTableViewView.h
//  TestProjectIOS
//
//  Created by liwenfan on 2023/2/22.
//

#import <UIKit/UIKit.h>

#import "TestProjectViewModelTableView.h"
#import "TestProjectCustomerHeader.h"
#import "TestProjectTableViewModel.h"
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

@interface TestProjectTableViewView : UIView <TestProjectViewModelTableViewProtocol, TestProjectCreateViewProtocol> {
@public
    TestProjectTableViewModel *_currentSelectTableViewModel;
    TestProjectTableViewParams *_currentSelectTableViewParams;
}

@property (nonatomic, strong) TestProjectViewModelTableView *tableView;
@property (nonatomic, strong) id viewModel;
@property (nonatomic, strong) id compareViewModel;
@property (nonatomic, strong) NSMutableArray *dataMutArr;
@property (nonatomic, weak) id<UITableViewDelegate> delegate;
@property (nonatomic, weak) id<UITableViewDataSource> dataSource;
//预留的选择selectIndex
@property (nonatomic, assign) NSInteger offsetSelectIndex;

- (NSArray<TestProjectMethodModel *> *)viewDataArray;

- (id)setPropertyValueObject:(TestProjectTableViewParams *)params;

- (Class)createTableModelClass:(TestProjectTableViewParams *)params;

- (TestProjectTableViewModel *)createModelWithParams:params
                                               title:(nullable NSString *)title
                                            property:(nullable NSString *)property
                                               value:(nullable id)value
                                           operation:(TestProjectCreateModelOperation)operation
                                               block:(nullable void (^)(void))block;

- (NSMutableArray *)createModelSingleArrayWithParams:(TestProjectTableViewParams *)params
                                               title:(nullable NSString *)title
                                            property:(nullable NSString *)property
                                               value:(nullable id)value
                                           operation:(TestProjectCreateModelOperation)operation
                                               block:(nullable void (^)(void))block;

- (TestProjectTableViewModel *)createModelWithParams:params
                                            property:(nullable NSString *)property
                                               value:(nullable id)value
                                           operation:(TestProjectCreateModelOperation)operation
                                               block:(nullable void(^)(void))block;

- (NSMutableArray *)createModelSingleArrayWithParams:(TestProjectTableViewParams *)params
                                            property:(nullable NSString *)property
                                               value:(nullable id)value
                                           operation:(TestProjectCreateModelOperation)operation
                                               block:(nullable void(^)(void))block;

- (TestProjectTableViewModel *)createModelWithParams:params
                                               title:(nullable NSString *)title
                                         methodBlock:(nullable NSString *(^)(void))methodBlock;

- (NSMutableArray *)createModelSingleArrayWithParams:(TestProjectTableViewParams *)params
                                               title:(nullable NSString *)title
                                         methodBlock:(nullable NSString *(^)(void))methodBlock;

- (TestProjectTableViewModel *)createModelWithParams:params
                                               title:(nullable NSString *)title
                                               block:(nullable void(^)(void))block;

- (NSMutableArray *)createModelSingleArrayWithParams:(TestProjectTableViewParams *)params
                                               title:(nullable NSString *)title
                                               block:(nullable void(^)(void))block;

- (TestProjectTableViewModel *)createModelWithParams:params
                                      attributeTitle:(nullable NSAttributedString *)attributeTitle
                                               block:(nullable void (^)(void))block;

- (NSMutableArray *)createModelSingleArrayWithParams:(TestProjectTableViewParams *)params
                                      attributeTitle:(nullable NSAttributedString *)attributeTitle
                                               block:(nullable void (^)(void))block;

- (TestProjectTableViewModel *)createModelWithParams:params 
                                               title:(nullable NSString *)title
                                       modelKeyValue:(nullable NSDictionary *)modelKeyValue
                                               block:(nullable void(^)(void))block;

- (NSMutableArray *)createModelSingleArrayWithParams:(TestProjectTableViewParams *)params
                                               title:(nullable NSString *)title
                                       modelKeyValue:(nullable NSDictionary *)modelKeyValue
                                               block:(nullable void (^)(void))block;

- (NSMutableArray *)createModelSingleArrayWithParams:(TestProjectTableViewParams *)params
                                       modelKeyValue:(nullable NSDictionary *)modelKeyValue
                                               block:(nullable void (^)(void))block;

- (void)reloadRowWithParams:(TestProjectTableViewParams *)params
                       desc:(NSString *)desc
                      model:(TestProjectTableViewModel *)model;

- (void)reloadCurrentTableViewModelWithDesc:(NSString *)desc;

- (void)addNotificationWithName:(NSString *)name selector:(SEL)selector;

@end

NS_ASSUME_NONNULL_END
