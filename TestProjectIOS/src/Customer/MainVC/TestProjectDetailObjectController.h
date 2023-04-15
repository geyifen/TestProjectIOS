//
//  TestProjectDetailObjectController.h
//  TestProjectIOS
//
//  Created by zjrcumac on 2023/2/22.
//

#import "TestProjectBaseVC.h"

#import "TestProjectTableModel.h"

@protocol TestProjectDetailObjectChildView <TestProjectCreateViewProtocol>

@optional
@property (nonatomic, strong) TestProjectTableModel * _Nullable compareViewModel;

@end

@interface TestProjectDetailVCModel : TestProjectTableModel

@property (nonatomic, copy) NSString * _Nullable detailMethod;

@end

NS_ASSUME_NONNULL_BEGIN

@interface TestProjectDetailObjectController : TestProjectBaseVC

@property (nonatomic, strong) TestProjectDetailVCModel *viewModel;

- (instancetype)initWithViewModel:(TestProjectTableModel *)viewModel;

- (void)reloadViewModel;

@end

NS_ASSUME_NONNULL_END
