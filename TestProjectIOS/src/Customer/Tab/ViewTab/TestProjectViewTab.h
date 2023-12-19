//
//  TestProjectViewTab.h
//  TestProjectIOS
//
//  Created by liwenfan on 2023/1/29.
//

#import <UIKit/UIKit.h>

#import "TestProjectViewModelProtocol.h"

NS_ASSUME_NONNULL_BEGIN
typedef NS_ENUM(NSInteger, TestProjectTabType) {
    TestProjectTab_AutoDivede,
    TestProjectTab_EqualDivede,
};
@class TestProjectViewTab;

/**tabView的数据model遵循的协议**/
@protocol TestProjectTabViewModelProtocol <TestProjectViewModelProtocol>

@optional
//返回item左边的间距
- (CGFloat)tabView:(TestProjectViewTab *)tabView leadingAtIndex:(NSInteger)atIndex;
//返回item右边的间距
- (CGFloat)tabView:(TestProjectViewTab *)tabView trailingAtIndex:(NSInteger)atIndex;

@end

/**tabView的孩子itemView遵循的协议**/
@protocol TestProjectTabChildViewProtocol <TestProjectCreateViewProtocol>

/**孩子itemView被点击选中**/
- (void)tabViewWithSelectItemView:(TestProjectViewTab *)tabView;
/**孩子itemView取消选中**/
- (void)tabViewWithCancelSelectItemView:(TestProjectViewTab *)tabView;
/**
 更新view的约束
 @param tabView :调用者
 @param animated :是否需要动画
 @param completed :动画执行完的回调
 **/
- (void)updateMoveTabView:(TestProjectViewTab *)tabView animated:(BOOL)animated completed:(nullable void(^)(void) )completed;

@end

/**tabView的调用者遵循的协议**/
@protocol TestProjectTabViewProtocol<NSObject>
/**孩子itemView被点击选中**/
- (void)clickTabView:(TestProjectViewTab *)tabView
             atIndex:(NSInteger)atIndex
           viewModel:(id)viewModel;

@end

@interface TestProjectViewTab : UIView

@property (nonatomic, assign) NSInteger currentIndex;

@property (nonatomic, weak) id<TestProjectTabViewProtocol> delegate;
@property (nonatomic, weak) id viewTabItemDelegate;

@property (nonatomic, assign) CGFloat moveViewCenterOffset;
@property (nonatomic, assign) CGFloat moveViewWidthOffset;

- (instancetype)initWithTabType:(TestProjectTabType)tabType;

- (void)resetData:(NSArray<TestProjectTabViewModelProtocol> *)viewModelList atIndex:(NSInteger)atIndex;

- (void)updateDataWithViewModel:(id<TestProjectTabViewModelProtocol>)viewModel atIndex:(NSInteger)atIndex;

- (void)updateData:(NSArray<TestProjectTabViewModelProtocol> *)viewModelList;

/**
 @param moveAtIndex :即将移动到那个index页面
 @param gesState :move的手势的状态
 @param callerViewWidth :moveAtIndex页面的页面宽度
 @param moveCenterXOffset :moveAtIndex页面中心和屏幕中心的偏移量
 */
- (void)moveByCallerGesState:(UIGestureRecognizerState)gesState
             callerViewWidth:(CGFloat)callerViewWidth
           moveCenterXOffset:(CGFloat)moveCenterXOffset
                 moveAtIndex:(NSInteger)moveAtIndex;

@end

NS_ASSUME_NONNULL_END
