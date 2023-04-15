//
//  TestProjectBaseTableView.h
//  TestProjectIOS
//
//  Created by zjrcumac on 2023/1/29.
//

#import <UIKit/UIKit.h>

#import "TestProjectViewModelProtocol.h"

NS_ASSUME_NONNULL_BEGIN
@protocol TestProjectBaseTableViewProtocol <UITableViewDelegate>

@optional
/**
 当cell被点击时提供viewModel的方法实现
 当实现了原方法[-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath],此方法就不会实现
 */
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath viewModel:(id)viewModel;
/**获取对应的indexPath viewModel*/
- (id<TestProjectViewModelProtocol>)viewModelAtIndexPath:(NSIndexPath *)indexPath;

/**UITableViewDataSource的协议*/
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section;
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath;
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView;
- (nullable NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section;
- (nullable NSString *)tableView:(UITableView *)tableView titleForFooterInSection:(NSInteger)section;
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath;
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath;
- (nullable NSArray<NSString *> *)sectionIndexTitlesForTableView:(UITableView *)tableView;
- (NSInteger)tableView:(UITableView *)tableView sectionForSectionIndexTitle:(NSString *)title atIndex:(NSInteger)index;
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath;
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)sourceIndexPath toIndexPath:(NSIndexPath *)destinationIndexPath;

@end

@interface TestProjectBaseTableView : UITableView

@property (nonatomic, strong) NSMutableArray *dataSourceArray;
@property (nonatomic, strong) NSMutableArray *dataSourceHeaderArray;
@property (nonatomic, strong) NSMutableArray *dataSourceFooterArray;

//tableView返回的numberOfSections不是1层， 默认为NO
@property (nonatomic, assign) BOOL isMultipleSection;

//给cell设置代理
@property (nonatomic, weak) id cellDelegate;
//提供外面原生方法的代理,如果想自己实现原来的方法可以遵循这个代理
@property (nonatomic, weak) id<TestProjectBaseTableViewProtocol> tableViewDelegate;

- (instancetype)initWithStyle:(UITableViewStyle)style;

- (instancetype)initWithStyleGrouped;

@end


NS_ASSUME_NONNULL_END
