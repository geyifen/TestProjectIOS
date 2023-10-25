//
//  TestProjectUIColorCell.h
//  TestProjectIOS
//
//  Created by 李文凡 on 2023/2/25.
//

#import "TestProjectTableViewModel.h"
#import "TestProjectBaseTableViewCell.h"

@interface TestProjectUIColorModel : TestProjectTableViewModel

@property (nonatomic, strong) UIColor * _Nullable backgroundColor;

@end

NS_ASSUME_NONNULL_BEGIN

@interface TestProjectUIColorCell : TestProjectBaseTableViewCell <TestProjectViewProtocol>

@property (nonatomic, strong) TestProjectUIColorModel *viewModel;

@end

NS_ASSUME_NONNULL_END
