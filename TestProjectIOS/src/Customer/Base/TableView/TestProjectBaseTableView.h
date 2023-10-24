//
//  TestProjectBaseTableView.h
//  TestProjectIOS
//
//  Created by liwenfan on 2023/1/29.
//

#import <UIKit/UIKit.h>

#import "TestProjectViewModelProtocol.h"

NS_ASSUME_NONNULL_BEGIN
@protocol TestProjectBaseTableViewProtocol <NSObject>

@optional
/**
 当cell被点击时提供viewModel的方法实现
 当实现了原方法[-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath],此方法就不会实现
 */
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath viewModel:(id)viewModel;
/**获取对应的indexPath viewModel*/
- (id<TestProjectViewModelProtocol>)viewModelAtIndexPath:(NSIndexPath *)indexPath;

@end

/**改tableView的delegate以及dataSource在外部设置是无效的，得使用提供的方法进行实现**/
@interface TestProjectBaseTableView : UITableView

@property (nonatomic, strong) NSMutableArray *dataSourceArray;
@property (nonatomic, strong) NSMutableArray *dataSourceHeaderArray;
@property (nonatomic, strong) NSMutableArray *dataSourceFooterArray;

//tableView返回的numberOfSections不是1层， 默认为NO
@property (nonatomic, assign) BOOL isMultipleSection;

//给cell设置代理
@property (nonatomic, weak) id cellDelegate;
//提供外面原生方法的代理
@property (nonatomic, weak) id<TestProjectBaseTableViewProtocol> tableViewDelegate;

- (instancetype)initWithStyle:(UITableViewStyle)style;

- (instancetype)initWithStyleGrouped;

/**如果想自己实现系统的代理方法，可以通过这个方法进行设置**/
- (instancetype)initWithFrame:(CGRect)frame
                        style:(UITableViewStyle)style
                     delegate:(id<UITableViewDelegate>)delegate
                   dataSource:(id<UITableViewDataSource>)dataSource;

@end


NS_ASSUME_NONNULL_END
