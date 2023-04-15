//
//  TestProjectSectionViewTab.h
//  TestProjectIOS
//
//  Created by zjrcumac on 2023/1/29.
//

#import <UIKit/UIKit.h>

#import "TestProjectViewModelTab.h"

NS_ASSUME_NONNULL_BEGIN

@interface TestProjectSectionViewTab : UIView <TestProjectTabChildViewProtocol>

@property (nonatomic, strong) TestProjectViewModelTab *viewModel;

@end

NS_ASSUME_NONNULL_END
