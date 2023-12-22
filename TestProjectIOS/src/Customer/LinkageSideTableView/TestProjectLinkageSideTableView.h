//
//  TestProjectLinkageSideTableView.h
//  TestProjectIOS
//
//  Created by liwenfan on 2023/12/18.
//

#import <UIKit/UIKit.h>

#import "TestProjectLinkageSideTableViewModel.h"

@class TestProjectLinkageSideTableView;

@protocol TestProjectLinkageSideTableViewDelegate <NSObject>

@optional
- (UIView *_Nonnull)didTapLinkageSideTableView:(TestProjectLinkageSideTableView *_Nonnull)linkageSideTableView
                                       atIndex:(NSInteger)atIndex
                                     viewModel:(id _Nonnull )viewModel;

@end

NS_ASSUME_NONNULL_BEGIN

@interface TestProjectLinkageSideTableView : UIView

@property (nonatomic, strong) TestProjectLinkageSideTableViewModel *viewModel;
@property (nonatomic, weak) id delegate;

@end

NS_ASSUME_NONNULL_END
