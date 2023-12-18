//
//  TestProjectSectionViewTab.h
//  TestProjectIOS
//
//  Created by liwenfan on 2023/1/29.
//

#import <UIKit/UIKit.h>

#import "TestProjectViewModelTab.h"

NS_ASSUME_NONNULL_BEGIN

@class TestProjectSectionViewTab;

@protocol TestProjectSectionViewTabDelegate <NSObject>

@optional
- (void)didTapSectionViewTabForExpand:(TestProjectSectionViewTab *)sectionViewTab;

@end

@interface TestProjectSectionViewTab : UIView <TestProjectTabChildViewProtocol>

@property (nonatomic, strong) TestProjectViewModelTab *viewModel;
@property (nonatomic, weak) id<TestProjectSectionViewTabDelegate> delegate;


@end

NS_ASSUME_NONNULL_END
