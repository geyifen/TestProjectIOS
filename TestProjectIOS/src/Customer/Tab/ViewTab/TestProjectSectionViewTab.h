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

typedef NS_ENUM(NSInteger, TestProjectPreviewState) {
    //未展开
    TestProjectPreviewStateOfNO,
    //已展开
    TestProjectPreviewStateOfYES,
    //在展开或者收起动画中
    TestProjectPreviewStateOfAnimated,
};

@protocol TestProjectPreviewProtocol <NSObject>

@optional
- (void)didSelectPreviewItem:(id)viewModel;
- (TestProjectPreviewState)optionPreviewForExpand:(id<TestProjectPreviewProtocol>)previewTarget;

@end

@protocol TestProjectSectionViewTabDelegate <NSObject>

@optional
- (TestProjectPreviewState)didTapSectionViewTabForExpand:(TestProjectSectionViewTab *)sectionViewTab;

@end

@interface TestProjectSectionViewTab : UIView <TestProjectTabChildViewProtocol, TestProjectPreviewProtocol>

@property (nonatomic, strong) TestProjectViewModelTab *viewModel;
@property (nonatomic, weak) id<TestProjectSectionViewTabDelegate> delegate;

@end

NS_ASSUME_NONNULL_END
