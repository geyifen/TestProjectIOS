//
//  TestProjectUIImageCell.h
//  TestProjectIOS
//
//  Created by zjrcumac on 2023/10/25.
//

#import "TestProjectViewModelTableViewCell.h"

NS_ASSUME_NONNULL_BEGIN

@interface TestProjectUIImageModel : TestProjectTableViewModel

@property (nonatomic, strong) UIImage *image;

@end

@interface TestProjectUIImageCell : TestProjectBaseTableViewCell <TestProjectViewProtocol>

@property (nonatomic, strong) TestProjectUIImageModel *viewModel;

@end

NS_ASSUME_NONNULL_END
