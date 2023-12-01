//
//  TestProjectUIScrollViewDelegate.m
//  TestProjectIOS
//
//  Created by liwenfan on 2023/7/26.
//

#import "TestProjectUIScrollViewDelegate.h"

@interface TestProjectUIScrollViewDelegate () <UIScrollViewDelegate>

@property (nonatomic, strong) UIScrollView *childScrollView;
@property (nonatomic, strong) UIView *grandView;

@end

@implementation TestProjectUIScrollViewDelegate

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

/* Also see -[UIScrollView adjustedContentInsetDidChange]
 */
- (void)scrollViewDidChangeAdjustedContentInset:(UIScrollView *)scrollView API_AVAILABLE(ios(11.0), tvos(11.0)) {
    NSLog(@"%@", NSStringFromSelector(_cmd));
}

- (NSMutableArray *)TestProjectScrollViewDelegate_scrollViewDidChangeAdjustedContentInset:(TestProjectTableViewParams *)params {
    return [self createModelSingleArrayWithParams:params title:nil block:nil];
}

- (NSDictionary *)method_60:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"UIScrollView的UIScrollViewDelegate执行",
            @"title": @"- (void)scrollViewDidChangeAdjustedContentInset:(UIScrollView *)scrollView API_AVAILABLE(ios(11.0), tvos(11.0));",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectScrollViewDelegate_scrollViewDidChangeAdjustedContentInset:params],
            }
        },
    };
}

- (void)scrollViewDidScrollToTop:(UIScrollView *)scrollView {
    NSLog(@"%@", NSStringFromSelector(_cmd));
}      // called when scrolling animation finished. may be called immediately if already at top

- (NSMutableArray *)TestProjectScrollViewDelegate_scrollViewDidScrollToTop:(TestProjectTableViewParams *)params {
    return [self createModelSingleArrayWithParams:params title:nil block:nil];
}

- (NSDictionary *)method_59:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"UIScrollView的UIScrollViewDelegate执行，滑到顶部结束的回调",
            @"title": @"- (void)scrollViewDidScrollToTop:(UIScrollView *)scrollView;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectScrollViewDelegate_scrollViewDidScrollToTop:params],
            }
        },
    };
}

- (BOOL)scrollViewShouldScrollToTop:(UIScrollView *)scrollView {
    NSLog(@"%@", NSStringFromSelector(_cmd));
    return YES;
}   // return a yes if you want to scroll to the top. if not defined, assumes YES

- (NSMutableArray *)TestProjectScrollViewDelegate_scrollViewShouldScrollToTop:(TestProjectTableViewParams *)params {
    return [self createModelSingleArrayWithParams:params title:nil block:nil];
}

- (NSDictionary *)method_58:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"UIScrollView的UIScrollViewDelegate执行，点击导航栏是否可以滑动到顶部",
            @"title": @"- (BOOL)scrollViewShouldScrollToTop:(UIScrollView *)scrollView;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectScrollViewDelegate_scrollViewShouldScrollToTop:params],
            }
        },
    };
}

- (void)scrollViewDidEndZooming:(UIScrollView *)scrollView withView:(nullable UIView *)view atScale:(CGFloat)scale {
    NSLog(@"%@ view:%@ scale:%f", NSStringFromSelector(_cmd), view, scale);
} // scale between minimum and maximum. called after any 'bounce' animations

- (NSMutableArray *)TestProjectScrollViewDelegate_scrollViewDidEndZooming_withView_atScale:(TestProjectTableViewParams *)params {
    return [self createModelSingleArrayWithParams:params title:nil block:nil];
}

- (NSDictionary *)method_57:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"UIScrollView的UIScrollViewDelegate执行，这个是结束子视图缩放，只会执行一次",
            @"title": @"- (void)scrollViewDidEndZooming:(UIScrollView *)scrollView withView:(nullable UIView *)view atScale:(CGFloat)scale;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectScrollViewDelegate_scrollViewDidEndZooming_withView_atScale:params],
            }
        },
    };
}

- (void)scrollViewWillBeginZooming:(UIScrollView *)scrollView withView:(nullable UIView *)view API_AVAILABLE(ios(3.2)) {
    NSLog(@"%@ view:%@", NSStringFromSelector(_cmd), view);
} // called before the scroll view begins zooming its content

- (NSMutableArray *)TestProjectScrollViewDelegate_scrollViewWillBeginZooming_withView:(TestProjectTableViewParams *)params {
    return [self createModelSingleArrayWithParams:params title:nil block:nil];
}

- (NSDictionary *)method_56:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"UIScrollView的UIScrollViewDelegate执行，开始缩放子视图，只会执行一次",
            @"title": @"- (void)scrollViewWillBeginZooming:(UIScrollView *)scrollView withView:(nullable UIView *)view API_AVAILABLE(ios(3.2));",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectScrollViewDelegate_scrollViewWillBeginZooming_withView:params],
            }
        },
    };
}

- (nullable UIView *)viewForZoomingInScrollView:(UIScrollView *)scrollView {
    NSLog(@"%@", NSStringFromSelector(_cmd));
    return self.grandView;
}     // return a view that will be scaled. if delegate returns nil, nothing happens

- (NSMutableArray *)TestProjectScrollViewDelegate_viewForZoomingInScrollView:(TestProjectTableViewParams *)params {
    return [self createModelSingleArrayWithParams:params title:nil block:nil];
}

- (NSDictionary *)method_55:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"UIScrollView的UIScrollViewDelegate执行, 这个在缩放视图的时候一直执行，会多次",
            @"title": @"- (nullable UIView *)viewForZoomingInScrollView:(UIScrollView *)scrollView;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectScrollViewDelegate_viewForZoomingInScrollView:params],
            }
        },
    };
}

- (void)scrollViewDidEndScrollingAnimation:(UIScrollView *)scrollView {
    NSLog(@"%@", NSStringFromSelector(_cmd));
} // called when setContentOffset/scrollRectVisible:animated: finishes. not called if not animating

- (NSMutableArray *)TestProjectScrollViewDelegate_scrollViewDidEndScrollingAnimation:(TestProjectTableViewParams *)params {
    return [self createModelSingleArrayWithParams:params title:nil block:nil];
}

- (NSDictionary *)method_54:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"UIScrollView的UIScrollViewDelegate执行",
            @"title": @"- (void)scrollViewDidEndScrollingAnimation:(UIScrollView *)scrollView;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectScrollViewDelegate_scrollViewDidEndScrollingAnimation:params],
            }
        },
    };
}

- (void)scrollViewDidEndDecelerating:(UIScrollView *)scrollView {
//    NSLog(@"%@", NSStringFromSelector(_cmd));
//    NSLog(@"%@ offset:%@ tracking:%u dragging:%u decelerating:%u", NSStringFromSelector(_cmd), NSStringFromCGPoint(scrollView.contentOffset), scrollView.tracking, scrollView.dragging, scrollView.decelerating);
}      // called when scroll view grinds to a halt

- (NSMutableArray *)TestProjectScrollViewDelegate_scrollViewDidEndDecelerating:(TestProjectTableViewParams *)params {
    return [self createModelSingleArrayWithParams:params title:nil block:nil];
}

- (NSDictionary *)method_53:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"UIScrollView的UIScrollViewDelegate执行，UIScrollView结束滑行，在一轮滚动的结束之前只执行一次",
            @"title": @"- (void)scrollViewDidEndDecelerating:(UIScrollView *)scrollView;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectScrollViewDelegate_scrollViewDidEndDecelerating:params],
            }
        },
    };
}

- (void)scrollViewWillBeginDecelerating:(UIScrollView *)scrollView {
//    NSLog(@"%@", NSStringFromSelector(_cmd));
//    NSLog(@"%@ offset:%@ tracking:%u dragging:%u decelerating:%u", NSStringFromSelector(_cmd), NSStringFromCGPoint(scrollView.contentOffset), scrollView.tracking, scrollView.dragging, scrollView.decelerating);
}   // called on finger up as we are moving

- (NSMutableArray *)TestProjectScrollViewDelegate_scrollViewWillBeginDecelerating:(TestProjectTableViewParams *)params {
    return [self createModelSingleArrayWithParams:params title:nil block:nil];
}

- (NSDictionary *)method_52:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"UIScrollView的UIScrollViewDelegate执行，UIScrollView开始滑行，在一轮滚动的结束之前只执行一次",
            @"title": @"- (void)scrollViewWillBeginDecelerating:(UIScrollView *)scrollView;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectScrollViewDelegate_scrollViewWillBeginDecelerating:params],
            }
        },
    };
}

// called on finger up if the user dragged. decelerate is true if it will continue moving afterwards
- (void)scrollViewDidEndDragging:(UIScrollView *)scrollView willDecelerate:(BOOL)decelerate {
//    NSLog(@"%@", NSStringFromSelector(_cmd));
//    NSLog(@"%@ offset:%@ tracking:%u dragging:%u decelerating:%u", NSStringFromSelector(_cmd), NSStringFromCGPoint(scrollView.contentOffset), scrollView.tracking, scrollView.dragging, scrollView.decelerating);
}

- (NSMutableArray *)TestProjectScrollViewDelegate_scrollViewDidEndDragging_willDecelerate:(TestProjectTableViewParams *)params {
    return [self createModelSingleArrayWithParams:params title:nil block:nil];
}

- (NSDictionary *)method_51:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"UIScrollView的UIScrollViewDelegate执行，UIScrollView结束拖拽并且即将滑行，在一轮滚动的结束之前只执行一次",
            @"title": @"- (void)scrollViewDidEndDragging:(UIScrollView *)scrollView willDecelerate:(BOOL)decelerate;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectScrollViewDelegate_scrollViewDidEndDragging_willDecelerate:params],
            }
        },
    };
}

// called on finger up if the user dragged. velocity is in points/millisecond. targetContentOffset may be changed to adjust where the scroll view comes to rest
- (void)scrollViewWillEndDragging:(UIScrollView *)scrollView withVelocity:(CGPoint)velocity targetContentOffset:(inout CGPoint *)targetContentOffset API_AVAILABLE(ios(5.0)) {
//    NSLog(@"%@ velocity:%@ targetContentOffset:%@", NSStringFromSelector(_cmd), NSStringFromCGPoint(velocity), NSStringFromCGPoint(*targetContentOffset));
//    NSLog(@"%@ offset:%@ tracking:%u dragging:%u decelerating:%u", NSStringFromSelector(_cmd), NSStringFromCGPoint(scrollView.contentOffset), scrollView.tracking, scrollView.dragging, scrollView.decelerating);
}

- (NSMutableArray *)TestProjectScrollViewDelegate_scrollViewWillEndDragging_withVelocity_targetContentOffset:(TestProjectTableViewParams *)params {
    return [self createModelSingleArrayWithParams:params title:nil block:nil];
}

- (NSDictionary *)method_50:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"UIScrollView的UIScrollViewDelegate执行，UIScrollView即将结束拖拽，在一轮滚动的结束之前只执行一次",
            @"title": @"- (void)scrollViewWillEndDragging:(UIScrollView *)scrollView withVelocity:(CGPoint)velocity targetContentOffset:(inout CGPoint *)targetContentOffset API_AVAILABLE(ios(5.0));",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectScrollViewDelegate_scrollViewWillEndDragging_withVelocity_targetContentOffset:params],
            }
        },
    };
}

// called on start of dragging (may require some time and or distance to move)
- (void)scrollViewWillBeginDragging:(UIScrollView *)scrollView {
//    NSLog(@"%@", NSStringFromSelector(_cmd));
//    NSLog(@"%@ offset:%@ tracking:%u dragging:%u decelerating:%u", NSStringFromSelector(_cmd), NSStringFromCGPoint(scrollView.contentOffset), scrollView.tracking, scrollView.dragging, scrollView.decelerating);
}

- (NSMutableArray *)TestProjectScrollViewDelegate_scrollViewWillBeginDragging:(TestProjectTableViewParams *)params {
    return [self createModelSingleArrayWithParams:params title:nil block:nil];
}

- (NSDictionary *)method_49:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"UIScrollView的UIScrollViewDelegate执行，UIScrollView开始拖拽，在一轮滚动的结束之前只执行一次",
            @"title": @"- (void)scrollViewWillBeginDragging:(UIScrollView *)scrollView;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectScrollViewDelegate_scrollViewWillBeginDragging:params],
            }
        },
    };
}

- (void)scrollViewDidZoom:(UIScrollView *)scrollView API_AVAILABLE(ios(3.2)) {
    NSLog(@"%@", NSStringFromSelector(_cmd));
}

- (NSMutableArray *)TestProjectScrollViewDelegate_scrollViewDidZoom:(TestProjectTableViewParams *)params {
    return [self createModelSingleArrayWithParams:params title:nil block:nil];
}

- (NSDictionary *)method_48:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"UIScrollView的UIScrollViewDelegate执行，在进行缩放，会执行多次",
            @"title": @"- (void)scrollViewDidZoom:(UIScrollView *)scrollView API_AVAILABLE(ios(3.2));",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectScrollViewDelegate_scrollViewDidZoom:params],
            }
        },
    };
}

- (void)scrollViewDidScroll:(UIScrollView *)scrollView {
//    NSLog(@"%@", NSStringFromSelector(_cmd));
//    NSLog(@"%@ offset:%@ tracking:%u dragging:%u decelerating:%u", NSStringFromSelector(_cmd), NSStringFromCGPoint(scrollView.contentOffset), scrollView.tracking, scrollView.dragging, scrollView.decelerating);
}

- (NSMutableArray *)TestProjectScrollViewDelegate_scrollViewDidScroll:(TestProjectTableViewParams *)params {
    return [self createModelSingleArrayWithParams:params title:nil block:nil];
}

- (NSDictionary *)method_47:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"UIScrollView的UIScrollViewDelegate执行, 在滚动的时候调用，会执行很多次",
            @"title": @"- (void)scrollViewDidScroll:(UIScrollView *)scrollView;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectScrollViewDelegate_scrollViewDidScroll:params],
            }
        },
    };
}

@end
