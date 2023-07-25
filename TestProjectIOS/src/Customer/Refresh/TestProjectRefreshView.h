//
//  TestProjectRefreshView.h
//  TestProjectIOS
//
//  Created by zjrcumac on 2023/7/20.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

typedef NS_ENUM(NSInteger, TestProjectRefreshState) {
    /** 普通闲置状态 */
    TestProjectRefreshStateIdle,
    /** 松开就可以进行刷新的状态 */
    TestProjectRefreshStatePulling,
    /** 正在刷新中的状态 */
    TestProjectRefreshStateRefreshing,
    /** 所有数据加载完毕，没有更多的数据了 */
    TestProjectRefreshStateNoMoreData,
    /** 自定义的的状态，可用作自定义进行判断刷新时机 */
    TestProjectRefreshStateCustom,
};

static CGFloat TestProjectRefreshHeaderHeight = 64;
static CGFloat TestProjectRefreshFooterHeight = 44;

typedef void(^TestProjectRefreshingBlock)(void);

@interface TestProjectRefreshView : UIView  {
    __weak UIScrollView *_scrollView;
    /** 记录scrollView刚开始的inset */
    UIEdgeInsets _scrollViewOriginalInset;
}

@property (nonatomic, copy) TestProjectRefreshingBlock refreshingBlock;

@property (nonatomic, assign) TestProjectRefreshState state;

@property (weak, nonatomic, readonly) UIScrollView *scrollView;
/** 记录scrollView刚开始的inset */
@property (assign, nonatomic, readonly) UIEdgeInsets scrollViewOriginalInset;

- (instancetype)initWithRefreshingBlock:(TestProjectRefreshingBlock)refreshingBlock;

- (void)prepareUI;

- (void)scrollViewContentOffsetDidChange:(NSDictionary *)change;
- (void)scrollViewContentSizeDidChange:(NSDictionary *)change;


- (void)beginRefreshing;
- (void)endRefreshing;

@end

@interface TestProjectRefreshHeader : TestProjectRefreshView

@end

@interface TestProjectRefreshFooter : TestProjectRefreshView

/**
 默认是NO，
 设置为YES时，当状态为TestProjectRefreshStateNoMoreData 会在滚动的到底部时候重新设置contentInset
 一般是解决UITableView是UITableViewStylePlain并且有sectionFooterView时滚动停留的位置
 */
@property (nonatomic, assign) BOOL enableNoMoreScrollInsetSet;

- (void)endRefreshingWithNoMoreData;

@end

NS_ASSUME_NONNULL_END
