//
//  TestProjectRefreshView.m
//  TestProjectIOS
//
//  Created by liwenfan on 2023/7/20.
//

#import "TestProjectRefreshView.h"
#import "TestProjectCategoryHeader.h"

@implementation TestProjectRefreshView

- (instancetype)initWithRefreshingBlock:(TestProjectRefreshingBlock)refreshingBlock {
    if (self = [super init]) {
        self.refreshingBlock = refreshingBlock;
        [self prepareUI];
    }
    return self;
}

- (void)prepareUI {
    self.autoresizingMask = UIViewAutoresizingFlexibleWidth;
}

- (void)willMoveToSuperview:(UIView *)newSuperview {
    [super willMoveToSuperview:newSuperview];
    // 如果不是UIScrollView，不做任何事情
    if (newSuperview && ![newSuperview isKindOfClass:[UIScrollView class]]) return;
    
    // 旧的父控件移除监听
    [self removeObservers];
    
    if (newSuperview) { // 新的父控件
        // 设置宽度
        self.viewWidth = newSuperview.viewWidth;
        // 设置位置
        self.viewX = 0;
        
        // 记录UIScrollView
        _scrollView = (UIScrollView *)newSuperview;
        // 设置永远支持垂直弹簧效果
        _scrollView.alwaysBounceVertical = YES;
        // 添加监听
        [self addObservers];
    }
}

#pragma mark - KVO监听
- (void)addObservers {
    NSKeyValueObservingOptions options = NSKeyValueObservingOptionNew | NSKeyValueObservingOptionOld;
    [self.scrollView addObserver:self forKeyPath:@"contentOffset" options:options context:nil];
    [self.scrollView addObserver:self forKeyPath:@"contentSize" options:options context:nil];
}

- (void)removeObservers {
    [self.superview removeObserver:self forKeyPath:@"contentOffset"];
    [self.superview removeObserver:self forKeyPath:@"contentSize"];;
}

- (void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary *)change context:(void *)context {
    // 遇到这些情况就直接返回
    if (!self.userInteractionEnabled) return;
    
    // 这个就算看不见也需要处理
    if ([keyPath isEqualToString:@"contentSize"]) {
        [self scrollViewContentSizeDidChange:change];
    }
    
    // 看不见
    if (self.hidden) return;
    if ([keyPath isEqualToString:@"contentOffset"]) {
        [self scrollViewContentOffsetDidChange:change];
    }
}

- (void)scrollViewContentOffsetDidChange:(NSDictionary *)change{}
- (void)scrollViewContentSizeDidChange:(NSDictionary *)change{}

- (void)beginRefreshing {
    self.state = TestProjectRefreshStateRefreshing;
}

- (void)endRefreshing {
    self.state = TestProjectRefreshStateIdle;
}

- (void)resetContentInset {
    UIEdgeInsets insets = self.scrollView.viewInset;
    insets.top = self.scrollViewOriginalInset.top;
    insets.bottom = self.scrollViewOriginalInset.bottom;
    [UIView animateWithDuration:0.25 animations:^{
        self.scrollView.viewInset = insets;
    }];
}

@end

@implementation TestProjectRefreshHeader

- (void)prepareUI {
    [super prepareUI];
    self.viewHeight = 64;
}

- (void)layoutSubviews {
    [super layoutSubviews];
    // 设置y值(当自己的高度发生改变了，肯定要重新调整Y值，所以放到layoutSubviews方法中设置y值)
    self.viewY = - self.viewHeight;
}

- (void)scrollViewContentOffsetDidChange:(NSDictionary *)change {
    [super scrollViewContentOffsetDidChange:change];
    // 当前的contentOffset
    CGFloat offsetY = self.scrollView.viewOffsetY;
    if (self.state == TestProjectRefreshStateRefreshing) {
        // sectionHeader停留解决
        CGFloat insetTop = - offsetY > _scrollViewOriginalInset.top ? - offsetY : _scrollViewOriginalInset.top;
        insetTop = insetTop > self.viewHeight + _scrollViewOriginalInset.top ? self.viewHeight + _scrollViewOriginalInset.top : insetTop;
        self.scrollView.viewInsetTop = insetTop;
        return;
    }
    _scrollViewOriginalInset = self.scrollView.viewInset;
    // 头部控件刚好出现的offsetY
    CGFloat happenOffsetY = - self.scrollView.viewInsetTop;
    // 如果是向上滚动到看不见头部控件，直接返回
    if (offsetY > happenOffsetY) return;
    CGFloat normal2pullingOffsetY = happenOffsetY - self.viewHeight;
    if (offsetY < normal2pullingOffsetY) {
        if (self.state == TestProjectRefreshStateIdle) {
            self.state = TestProjectRefreshStatePulling;
        } else if (!self.scrollView.isDragging && self.state == TestProjectRefreshStatePulling) {
            [self beginRefreshing];
        }
    } else {
        if (self.state != TestProjectRefreshStateIdle) {
            self.state = TestProjectRefreshStateIdle;
        }
    }
}

- (void)setState:(TestProjectRefreshState)state {
    TestProjectRefreshState oldState = self.state;
    if (state == self.state) {
        return;
    }
    [super setState:state];
    if (state == TestProjectRefreshStateIdle) {
        if (oldState != TestProjectRefreshStateRefreshing) {
            return;
        }
        [self resetContentInset];
    } else if (state == TestProjectRefreshStateRefreshing) {
        CGFloat top = self.scrollViewOriginalInset.top + self.viewHeight;
        [UIView animateWithDuration:0.25 animations:^{
            self.scrollView.viewInsetTop = top;
            CGPoint offset = self.scrollView.contentOffset;
            offset.y = -top;
            [self.scrollView setContentOffset:offset];
        }];
        if (self.refreshingBlock) {
            self.refreshingBlock();
        }
    }
}

@end

@interface TestProjectRefreshFooter ()

@property (nonatomic, assign) CGFloat canScrollMaxOffsetY;
@property (nonatomic, assign) BOOL hasHappen;

@end

@implementation TestProjectRefreshFooter

- (void)prepareUI {
    [super prepareUI];
    self.viewHeight = 44;
}

- (void)scrollViewContentSizeDidChange:(NSDictionary *)change {
    [super scrollViewContentSizeDidChange:change];
    CGFloat scrollViewContentSizeHeight = self.scrollView.viewContentSizeHeight;
    CGFloat scrollViewHeight = self.scrollView.viewHeight;
    // 设置位置
    self.viewY = scrollViewContentSizeHeight;
    self.canScrollMaxOffsetY = scrollViewContentSizeHeight > scrollViewHeight ? scrollViewContentSizeHeight : scrollViewHeight;
}

- (void)scrollViewContentOffsetDidChange:(NSDictionary *)change {
    [super scrollViewContentOffsetDidChange:change];
    //当前的contentOffset
    CGFloat offsetY = self.scrollView.viewOffsetY;
    // 底部控件刚好出现的offsetY
    CGFloat happenOffsetY = self.scrollView.viewInsetBottom + self.canScrollMaxOffsetY - self.scrollView.viewHeight;
    if (self.state == TestProjectRefreshStateNoMoreData) {
        if (!self.enableNoMoreScrollInsetSet) {
            return;
        }
        if (offsetY < happenOffsetY && _scrollViewOriginalInset.bottom != self.scrollView.viewInsetBottom) {
            [self setScrollViewInset];
        }
        if (offsetY >= happenOffsetY) {
            [self setScrollViewInset];
        }
        return;
    }
    
    if (self.state == TestProjectRefreshStateRefreshing) {
        [self setScrollViewInset];
        return;
    }
    _scrollViewOriginalInset = self.scrollView.viewInset;

    // 如果是向下滚动到看不见底部控件，直接返回
    if (offsetY < happenOffsetY) {
        return;
    }

    CGFloat normal2pullingOffsetY = happenOffsetY + self.viewHeight;
    if (offsetY > normal2pullingOffsetY) {
        if (self.state == TestProjectRefreshStateIdle) {
            self.state = TestProjectRefreshStatePulling;
        } else if (!self.scrollView.isDragging && self.state == TestProjectRefreshStatePulling) {
            [self beginRefreshing];
        }
    } else {
        if (self.state != TestProjectRefreshStateIdle) {
            self.state = TestProjectRefreshStateIdle;
        }
    }
//    NSLog(@"offsetY:%f happenOffsetY:%f normal2pullingOffsetY:%f state:%ld", offsetY, happenOffsetY, normal2pullingOffsetY, self.state);
}

- (void)setState:(TestProjectRefreshState)state {
    TestProjectRefreshState oldState = self.state;
    if (state == self.state) {
        return;
    }
    [super setState:state];
    if (state == TestProjectRefreshStateIdle) {
        if (oldState != TestProjectRefreshStateRefreshing) {
            return;
        }
        [self resetContentInset];
    } else if (state == TestProjectRefreshStateRefreshing) {
        CGFloat bottom = self.scrollViewOriginalInset.bottom + self.viewHeight;
        CGPoint offset = self.scrollView.contentOffset;
        offset.y = self.canScrollMaxOffsetY + bottom - self.scrollView.viewHeight;
        [UIView animateWithDuration:0.25 animations:^{
            self.scrollView.viewInsetBottom = bottom;
            [self.scrollView setContentOffset:offset];
        }];
        if (self.refreshingBlock) {
            self.refreshingBlock();
        }
    }
}

- (void)setScrollViewInset {
    // sectionFooter停留解决
    CGFloat offsetY = self.scrollView.viewOffsetY;
    CGFloat offsetBottomY = offsetY + self.scrollView.viewHeight - self.canScrollMaxOffsetY;
    CGFloat insetBottom = offsetBottomY > _scrollViewOriginalInset.bottom ? offsetBottomY : _scrollViewOriginalInset.bottom;
    insetBottom = insetBottom > self.viewHeight + _scrollViewOriginalInset.bottom ? self.viewHeight + _scrollViewOriginalInset.bottom : insetBottom;
    self.scrollView.viewInsetBottom = insetBottom;
//    NSLog(@"offsetY:%f offsetBottomY:%f insetBottom:%f", offsetY, offsetBottomY, insetBottom);
}

- (void)endRefreshingWithNoMoreData {
    self.state = TestProjectRefreshStateNoMoreData;
}

@end
