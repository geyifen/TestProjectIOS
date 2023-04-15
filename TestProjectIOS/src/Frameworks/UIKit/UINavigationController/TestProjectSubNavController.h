//
//  TestProjectSubNavController.h
//  TestProjectIOS
//
//  Created by zjrcumac on 2023/4/11.
//

#import "TestProjectBaseNavigationController.h"

#import "TestProjectDetailObjectController.h"

NS_ASSUME_NONNULL_BEGIN

@interface TestProjectSubNavViewModel : TestProjectBaseModel

@property (nonatomic, assign) UIBlurEffectStyle style;
@property (nonatomic, assign) UIViewContentMode backgroundImageContentMode;

@end

@interface TestProjectSubNavController : TestProjectBaseNavigationController

@property (nonatomic, strong) TestProjectDetailVCModel *viewModel;

@end

NS_ASSUME_NONNULL_END
