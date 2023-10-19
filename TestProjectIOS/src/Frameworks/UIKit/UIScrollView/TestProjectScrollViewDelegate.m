//
//  TestProjectScrollViewDelegate.m
//  TestProjectIOS
//
//  Created by liwenfan on 2023/7/26.
//

#import "TestProjectScrollViewDelegate.h"

@interface TestProjectScrollViewDelegate () <UIScrollViewDelegate>

@property (nonatomic, strong) UIScrollView *childScrollView;
@property (nonatomic, strong) UIView *grandView;

@end

@implementation TestProjectScrollViewDelegate

- (instancetype)initCreate {
    if (self = [super initCreate]) {
        [self.tableView testproject_updateConstraints:^(TestProjectViewConstrainMake * _Nonnull make) {
            make.height.equal(self).offset(-300);
        }];
        self.grandView.backgroundColor = [UIColor grayColor];
        self.childScrollView.contentSize = CGSizeMake([UIScreen mainScreen].bounds.size.width, 500);
    }
    return self;
}

- (UIScrollView *)childScrollView {
    if (!_childScrollView) {
        _childScrollView = [[UIScrollView alloc] init];
        _childScrollView.backgroundColor = [UIColor redColor];
        _childScrollView.delegate = self;
        [self addSubview:_childScrollView];
        [_childScrollView testproject_makeConstraints:^(TestProjectViewConstrainMake * _Nonnull make) {
            make.top.leading.equal(self);
            make.width.equal(self);
            make.height.equal(@300);
        }];
    }
    return _childScrollView;
}

- (UIView *)grandView {
    if (!_grandView) {
        _grandView = [[UIView alloc] init];
        [self.childScrollView addSubview:_grandView];
        [_grandView testproject_makeConstraints:^(TestProjectViewConstrainMake * _Nonnull make) {
            make.top.leading.width.equal(self.childScrollView);
            make.height.equal(@200);
        }];
    }
    return _grandView;
}

#pragma mark - UIScrollViewDelegate
- (NSDictionary *)method_47:(NSInteger)index {
    return @{
        @"dataModel": @{
            @"abstract": @"UIScrollView的UIScrollViewDelegate执行, 在滚动的时候调用，会执行很多次",
            @"title": @"- (void)scrollViewDidScroll:(UIScrollView *)scrollView;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectScrollViewDelegate_scrollViewDidScroll:index],
            }
        },
    };
}

- (NSMutableArray *)TestProjectScrollViewDelegate_scrollViewDidScroll:(NSInteger)index {
    return [self createModelSingleArrayWithIndex:index title:nil block:nil];
}

- (void)scrollViewDidScroll:(UIScrollView *)scrollView {
//    NSLog(@"%@", NSStringFromSelector(_cmd));
//    NSLog(@"%@ offset:%@ tracking:%u dragging:%u decelerating:%u", NSStringFromSelector(_cmd), NSStringFromCGPoint(scrollView.contentOffset), scrollView.tracking, scrollView.dragging, scrollView.decelerating);
}

- (NSDictionary *)method_48:(NSInteger)index {
    return @{
        @"dataModel": @{
            @"abstract": @"UIScrollView的UIScrollViewDelegate执行，在进行缩放，会执行多次",
            @"title": @"- (void)scrollViewDidZoom:(UIScrollView *)scrollView API_AVAILABLE(ios(3.2));",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectScrollViewDelegate_scrollViewDidZoom:index],
            }
        },
    };
}

- (NSMutableArray *)TestProjectScrollViewDelegate_scrollViewDidZoom:(NSInteger)index {
    return [self createModelSingleArrayWithIndex:index title:nil block:nil];
}

- (void)scrollViewDidZoom:(UIScrollView *)scrollView API_AVAILABLE(ios(3.2)) {
    NSLog(@"%@", NSStringFromSelector(_cmd));
}

- (NSDictionary *)method_49:(NSInteger)index {
    return @{
        @"dataModel": @{
            @"abstract": @"UIScrollView的UIScrollViewDelegate执行，UIScrollView开始拖拽，在一轮滚动的结束之前只执行一次",
            @"title": @"- (void)scrollViewWillBeginDragging:(UIScrollView *)scrollView;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectScrollViewDelegate_scrollViewWillBeginDragging:index],
            }
        },
    };
}

- (NSMutableArray *)TestProjectScrollViewDelegate_scrollViewWillBeginDragging:(NSInteger)index {
    return [self createModelSingleArrayWithIndex:index title:nil block:nil];
}

// called on start of dragging (may require some time and or distance to move)
- (void)scrollViewWillBeginDragging:(UIScrollView *)scrollView {
//    NSLog(@"%@", NSStringFromSelector(_cmd));
//    NSLog(@"%@ offset:%@ tracking:%u dragging:%u decelerating:%u", NSStringFromSelector(_cmd), NSStringFromCGPoint(scrollView.contentOffset), scrollView.tracking, scrollView.dragging, scrollView.decelerating);
}

- (NSDictionary *)method_50:(NSInteger)index {
    return @{
        @"dataModel": @{
            @"abstract": @"UIScrollView的UIScrollViewDelegate执行，UIScrollView即将结束拖拽，在一轮滚动的结束之前只执行一次",
            @"title": @"- (void)scrollViewWillEndDragging:(UIScrollView *)scrollView withVelocity:(CGPoint)velocity targetContentOffset:(inout CGPoint *)targetContentOffset API_AVAILABLE(ios(5.0));",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectScrollViewDelegate_scrollViewWillEndDragging_withVelocity_targetContentOffset:index],
            }
        },
    };
}

- (NSMutableArray *)TestProjectScrollViewDelegate_scrollViewWillEndDragging_withVelocity_targetContentOffset:(NSInteger)index {
    return [self createModelSingleArrayWithIndex:index title:nil block:nil];
}

// called on finger up if the user dragged. velocity is in points/millisecond. targetContentOffset may be changed to adjust where the scroll view comes to rest
- (void)scrollViewWillEndDragging:(UIScrollView *)scrollView withVelocity:(CGPoint)velocity targetContentOffset:(inout CGPoint *)targetContentOffset API_AVAILABLE(ios(5.0)) {
//    NSLog(@"%@ velocity:%@ targetContentOffset:%@", NSStringFromSelector(_cmd), NSStringFromCGPoint(velocity), NSStringFromCGPoint(*targetContentOffset));
//    NSLog(@"%@ offset:%@ tracking:%u dragging:%u decelerating:%u", NSStringFromSelector(_cmd), NSStringFromCGPoint(scrollView.contentOffset), scrollView.tracking, scrollView.dragging, scrollView.decelerating);
}

- (NSDictionary *)method_51:(NSInteger)index {
    return @{
        @"dataModel": @{
            @"abstract": @"UIScrollView的UIScrollViewDelegate执行，UIScrollView结束拖拽并且即将滑行，在一轮滚动的结束之前只执行一次",
            @"title": @"- (void)scrollViewDidEndDragging:(UIScrollView *)scrollView willDecelerate:(BOOL)decelerate;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectScrollViewDelegate_scrollViewDidEndDragging_willDecelerate:index],
            }
        },
    };
}

- (NSMutableArray *)TestProjectScrollViewDelegate_scrollViewDidEndDragging_willDecelerate:(NSInteger)index {
    return [self createModelSingleArrayWithIndex:index title:nil block:nil];
}

// called on finger up if the user dragged. decelerate is true if it will continue moving afterwards
- (void)scrollViewDidEndDragging:(UIScrollView *)scrollView willDecelerate:(BOOL)decelerate {
//    NSLog(@"%@", NSStringFromSelector(_cmd));
//    NSLog(@"%@ offset:%@ tracking:%u dragging:%u decelerating:%u", NSStringFromSelector(_cmd), NSStringFromCGPoint(scrollView.contentOffset), scrollView.tracking, scrollView.dragging, scrollView.decelerating);
}

- (NSDictionary *)method_52:(NSInteger)index {
    return @{
        @"dataModel": @{
            @"abstract": @"UIScrollView的UIScrollViewDelegate执行，UIScrollView开始滑行，在一轮滚动的结束之前只执行一次",
            @"title": @"- (void)scrollViewWillBeginDecelerating:(UIScrollView *)scrollView;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectScrollViewDelegate_scrollViewWillBeginDecelerating:index],
            }
        },
    };
}

- (NSMutableArray *)TestProjectScrollViewDelegate_scrollViewWillBeginDecelerating:(NSInteger)index {
    return [self createModelSingleArrayWithIndex:index title:nil block:nil];
}

- (void)scrollViewWillBeginDecelerating:(UIScrollView *)scrollView {
//    NSLog(@"%@", NSStringFromSelector(_cmd));
//    NSLog(@"%@ offset:%@ tracking:%u dragging:%u decelerating:%u", NSStringFromSelector(_cmd), NSStringFromCGPoint(scrollView.contentOffset), scrollView.tracking, scrollView.dragging, scrollView.decelerating);
}   // called on finger up as we are moving

- (NSDictionary *)method_53:(NSInteger)index {
    return @{
        @"dataModel": @{
            @"abstract": @"UIScrollView的UIScrollViewDelegate执行，UIScrollView结束滑行，在一轮滚动的结束之前只执行一次",
            @"title": @"- (void)scrollViewDidEndDecelerating:(UIScrollView *)scrollView;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectScrollViewDelegate_scrollViewDidEndDecelerating:index],
            }
        },
    };
}

- (NSMutableArray *)TestProjectScrollViewDelegate_scrollViewDidEndDecelerating:(NSInteger)index {
    return [self createModelSingleArrayWithIndex:index title:nil block:nil];
}

- (void)scrollViewDidEndDecelerating:(UIScrollView *)scrollView {
//    NSLog(@"%@", NSStringFromSelector(_cmd));
//    NSLog(@"%@ offset:%@ tracking:%u dragging:%u decelerating:%u", NSStringFromSelector(_cmd), NSStringFromCGPoint(scrollView.contentOffset), scrollView.tracking, scrollView.dragging, scrollView.decelerating);
}      // called when scroll view grinds to a halt

- (NSDictionary *)method_54:(NSInteger)index {
    return @{
        @"dataModel": @{
            @"abstract": @"UIScrollView的UIScrollViewDelegate执行",
            @"title": @"- (void)scrollViewDidEndScrollingAnimation:(UIScrollView *)scrollView;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectScrollViewDelegate_scrollViewDidEndScrollingAnimation:index],
            }
        },
    };
}

- (NSMutableArray *)TestProjectScrollViewDelegate_scrollViewDidEndScrollingAnimation:(NSInteger)index {
    return [self createModelSingleArrayWithIndex:index title:nil block:nil];
}

- (void)scrollViewDidEndScrollingAnimation:(UIScrollView *)scrollView {
    NSLog(@"%@", NSStringFromSelector(_cmd));
} // called when setContentOffset/scrollRectVisible:animated: finishes. not called if not animating

- (NSDictionary *)method_55:(NSInteger)index {
    return @{
        @"dataModel": @{
            @"abstract": @"UIScrollView的UIScrollViewDelegate执行, 这个在缩放视图的时候一直执行，会多次",
            @"title": @"- (nullable UIView *)viewForZoomingInScrollView:(UIScrollView *)scrollView;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectScrollViewDelegate_viewForZoomingInScrollView:index],
            }
        },
    };
}

- (NSMutableArray *)TestProjectScrollViewDelegate_viewForZoomingInScrollView:(NSInteger)index {
    return [self createModelSingleArrayWithIndex:index title:nil block:nil];
}

- (nullable UIView *)viewForZoomingInScrollView:(UIScrollView *)scrollView {
    NSLog(@"%@", NSStringFromSelector(_cmd));
    return self.grandView;
}     // return a view that will be scaled. if delegate returns nil, nothing happens

- (NSDictionary *)method_56:(NSInteger)index {
    return @{
        @"dataModel": @{
            @"abstract": @"UIScrollView的UIScrollViewDelegate执行，开始缩放子视图，只会执行一次",
            @"title": @"- (void)scrollViewWillBeginZooming:(UIScrollView *)scrollView withView:(nullable UIView *)view API_AVAILABLE(ios(3.2));",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectScrollViewDelegate_scrollViewWillBeginZooming_withView:index],
            }
        },
    };
}

- (NSMutableArray *)TestProjectScrollViewDelegate_scrollViewWillBeginZooming_withView:(NSInteger)index {
    return [self createModelSingleArrayWithIndex:index title:nil block:nil];
}

- (void)scrollViewWillBeginZooming:(UIScrollView *)scrollView withView:(nullable UIView *)view API_AVAILABLE(ios(3.2)) {
    NSLog(@"%@ view:%@", NSStringFromSelector(_cmd), view);
} // called before the scroll view begins zooming its content

- (NSDictionary *)method_57:(NSInteger)index {
    return @{
        @"dataModel": @{
            @"abstract": @"UIScrollView的UIScrollViewDelegate执行，这个是结束子视图缩放，只会执行一次",
            @"title": @"- (void)scrollViewDidEndZooming:(UIScrollView *)scrollView withView:(nullable UIView *)view atScale:(CGFloat)scale;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectScrollViewDelegate_scrollViewDidEndZooming_withView_atScale:index],
            }
        },
    };
}

- (NSMutableArray *)TestProjectScrollViewDelegate_scrollViewDidEndZooming_withView_atScale:(NSInteger)index {
    return [self createModelSingleArrayWithIndex:index title:nil block:nil];
}

- (void)scrollViewDidEndZooming:(UIScrollView *)scrollView withView:(nullable UIView *)view atScale:(CGFloat)scale {
    NSLog(@"%@ view:%@ scale:%f", NSStringFromSelector(_cmd), view, scale);
} // scale between minimum and maximum. called after any 'bounce' animations

- (NSDictionary *)method_58:(NSInteger)index {
    return @{
        @"dataModel": @{
            @"abstract": @"UIScrollView的UIScrollViewDelegate执行，点击导航栏是否可以滑动到顶部",
            @"title": @"- (BOOL)scrollViewShouldScrollToTop:(UIScrollView *)scrollView;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectScrollViewDelegate_scrollViewShouldScrollToTop:index],
            }
        },
    };
}

- (NSMutableArray *)TestProjectScrollViewDelegate_scrollViewShouldScrollToTop:(NSInteger)index {
    return [self createModelSingleArrayWithIndex:index title:nil block:nil];
}

- (BOOL)scrollViewShouldScrollToTop:(UIScrollView *)scrollView {
    NSLog(@"%@", NSStringFromSelector(_cmd));
    return YES;
}   // return a yes if you want to scroll to the top. if not defined, assumes YES

- (NSDictionary *)method_59:(NSInteger)index {
    return @{
        @"dataModel": @{
            @"abstract": @"UIScrollView的UIScrollViewDelegate执行，滑到顶部结束的回调",
            @"title": @"- (void)scrollViewDidScrollToTop:(UIScrollView *)scrollView;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectScrollViewDelegate_scrollViewDidScrollToTop:index],
            }
        },
    };
}

- (NSMutableArray *)TestProjectScrollViewDelegate_scrollViewDidScrollToTop:(NSInteger)index {
    return [self createModelSingleArrayWithIndex:index title:nil block:nil];
}

- (void)scrollViewDidScrollToTop:(UIScrollView *)scrollView {
    NSLog(@"%@", NSStringFromSelector(_cmd));
}      // called when scrolling animation finished. may be called immediately if already at top

- (NSDictionary *)method_60:(NSInteger)index {
    return @{
        @"dataModel": @{
            @"abstract": @"UIScrollView的UIScrollViewDelegate执行",
            @"title": @"- (void)scrollViewDidChangeAdjustedContentInset:(UIScrollView *)scrollView API_AVAILABLE(ios(11.0), tvos(11.0));",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectScrollViewDelegate_scrollViewDidChangeAdjustedContentInset:index],
            }
        },
    };
}

- (NSMutableArray *)TestProjectScrollViewDelegate_scrollViewDidChangeAdjustedContentInset:(NSInteger)index {
    return [self createModelSingleArrayWithIndex:index title:nil block:nil];
}

/* Also see -[UIScrollView adjustedContentInsetDidChange]
 */
- (void)scrollViewDidChangeAdjustedContentInset:(UIScrollView *)scrollView API_AVAILABLE(ios(11.0), tvos(11.0)) {
    NSLog(@"%@", NSStringFromSelector(_cmd));
}


@end
