//
//  TestProjectTabSectionView.h
//  TestProjectIOS
//
//  Created by zjrcumac on 2023/1/29.
//

#import <UIKit/UIKit.h>

#import "TestProjectTabViewModel.h"

NS_ASSUME_NONNULL_BEGIN

@interface TestProjectTabSectionView : UIView <TestProjectTabChildViewProtocol>

@property (nonatomic, strong) TestProjectTabViewModel *viewModel;

@end

NS_ASSUME_NONNULL_END
