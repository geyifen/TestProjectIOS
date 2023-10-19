//
//  TestProjectScrollView.m
//  TestProjectIOS
//
//  Created by liwenfan on 2023/7/17.
//

#import "TestProjectScrollView.h"

@interface TestProjectChildScrollView : UIScrollView

@end

@implementation TestProjectChildScrollView

- (void)adjustedContentInsetDidChange {
    NSLog(@"%@", NSStringFromSelector(_cmd));
    [super adjustedContentInsetDidChange];
}

- (BOOL)touchesShouldBegin:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event inContentView:(UIView *)view {
    BOOL superRes = [super touchesShouldBegin:touches withEvent:event inContentView:view];
    NSLog(@"%@ superRes:%u touches:%@ event:%@ view:%@", NSStringFromSelector(_cmd), superRes, touches, event, view);
    return NO;
}

- (BOOL)touchesShouldCancelInContentView:(UIView *)view {
    BOOL superRes = [super touchesShouldCancelInContentView:view];
    NSLog(@"%@ superRes:%u view:%@", NSStringFromSelector(_cmd), superRes, view);
    return YES;
}

@end


@interface TestProjectScrollView () <UIScrollViewDelegate>

@property (nonatomic, strong) TestProjectChildScrollView *childScrollView;
@property (nonatomic, strong) UIView *grandView;

@property (nonatomic, strong) TestProjectChildScrollView *rightScrollView;
@property (nonatomic, strong) UIButton *rightGrandView;
@property (nonatomic, strong) UIView *rightSecondGrandView;
@property (nonatomic, strong) UIView *rightFirstGrandView;

@property (nonatomic, strong) UIScrollView *centerScrollView;
@property (nonatomic, strong) UIView *centerGrandView;

@property (nonatomic, strong) UITextField *textField;
@property (nonatomic, strong) UIView *redDotView;


@end

@implementation TestProjectScrollView

- (instancetype)initCreate {
    if (self = [super initCreate]) {
        [self.tableView testproject_updateConstraints:^(TestProjectViewConstrainMake * _Nonnull make) {
            make.height.equal(self).offset(-300);
        }];
        CGFloat width = [UIScreen mainScreen].bounds.size.width/3.0;
        self.childScrollView.delegate = self;
        self.childScrollView.backgroundColor = [UIColor redColor];
        self.grandView.backgroundColor = [UIColor blackColor];
        [self.childScrollView setContentSize:CGSizeMake(width, 500)];
       
        self.rightScrollView.backgroundColor = [UIColor blueColor];
        [self.rightScrollView setContentSize:CGSizeMake(width, 500)];
        self.rightGrandView.backgroundColor = [UIColor yellowColor];
        self.rightSecondGrandView.backgroundColor = [UIColor purpleColor];
        self.rightFirstGrandView.backgroundColor = [UIColor cyanColor];
        self.redDotView.backgroundColor = [UIColor redColor];
        
        self.centerScrollView.backgroundColor = [UIColor brownColor];
        self.centerGrandView.backgroundColor = [UIColor whiteColor];
        [self.centerScrollView setContentSize:CGSizeMake(width, 500)];
        
        self.textField.layer.borderColor = [UIColor blackColor].CGColor;
        self.textField.layer.borderWidth = 2;
    }
    return self;
}

- (TestProjectChildScrollView *)childScrollView {
    if (!_childScrollView) {
        _childScrollView = [[TestProjectChildScrollView alloc] init];
        _childScrollView.backgroundColor = [UIColor redColor];
        [self addSubview:_childScrollView];
        [_childScrollView testproject_makeConstraints:^(TestProjectViewConstrainMake * _Nonnull make) {
            make.top.leading.equal(self);
            make.width.equal(self.rightScrollView);
            make.trainling.equal(self.centerScrollView.leading);
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

- (TestProjectChildScrollView *)rightScrollView {
    if (!_rightScrollView) {
        _rightScrollView = [[TestProjectChildScrollView alloc] init];
        _rightScrollView.delegate = self;
        [self addSubview:_rightScrollView];
        [_rightScrollView testproject_makeConstraints:^(TestProjectViewConstrainMake * _Nonnull make) {
            make.top.trainling.equal(self);
            make.height.equal(@300);
        }];
    }
    return _rightScrollView;
}

- (UIButton *)rightGrandView {
    if (!_rightGrandView) {
        _rightGrandView = [UIButton buttonWithType:UIButtonTypeCustom];
        [_rightGrandView addTarget:self action:@selector(gotoBack) forControlEvents:UIControlEventTouchUpInside];
        [self.rightScrollView addSubview:_rightGrandView];
        [_rightGrandView testproject_makeConstraints:^(TestProjectViewConstrainMake * _Nonnull make) {
            make.trainling.equal(self);
            make.top.equal(self).offset(50);
            make.leading.equal(self.rightScrollView);
            make.height.equal(@100);
        }];
    }
    return _rightGrandView;
}

- (UIView *)rightFirstGrandView {
    if (!_rightFirstGrandView) {
        _rightFirstGrandView = [[UIView alloc] init];
        [self.rightScrollView addSubview:_rightFirstGrandView];
        [_rightFirstGrandView testproject_makeConstraints:^(TestProjectViewConstrainMake * _Nonnull make) {
            make.leading.width.equal(self.rightScrollView);
            make.top.equal(self.rightScrollView);
            make.height.equal(@50);
        }];
    }
    return _rightFirstGrandView;
}

- (UIView *)rightSecondGrandView {
    if (!_rightSecondGrandView) {
        _rightSecondGrandView = [[UIView alloc] init];
        [self.rightScrollView addSubview:_rightSecondGrandView];
        [_rightSecondGrandView testproject_makeConstraints:^(TestProjectViewConstrainMake * _Nonnull make) {
            make.leading.width.equal(self.rightScrollView);
            make.top.equal(self.rightScrollView).offset(200);
            make.height.equal(@50);
        }];
    }
    return _rightSecondGrandView;
}

- (UIView *)redDotView {
    if (!_redDotView) {
        _redDotView = [[UIView alloc] initWithFrame:CGRectMake(120, 60, 4, 4)];
        [self.rightScrollView addSubview:_redDotView];
    }
    return _redDotView;
}

- (UIScrollView *)centerScrollView {
    if (!_centerScrollView) {
        CGFloat width = [UIScreen mainScreen].bounds.size.width;
        _centerScrollView = [[UIScrollView alloc] initWithFrame:CGRectMake(width/3, 0, width/3, 100)];
        [self addSubview:_centerScrollView];
    }
    return _centerScrollView;
}

- (UIView *)centerGrandView {
    if (!_centerGrandView) {
        _centerGrandView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 100, 50)];
        [self.centerScrollView addSubview:_centerGrandView];
    }
    return _centerGrandView;
}

- (UITextField *)textField {
    if (!_textField) {
        _textField = [[UITextField alloc] init];
        [self addSubview:_textField];
        [_textField testproject_makeConstraints:^(TestProjectViewConstrainMake * _Nonnull make) {
            make.top.equal(self).offset(270);
            make.centerX.equal(self);
            make.height.equal(@30);
            make.width.equal(@50);
        }];
    }
    return _textField;
}

- (void)scrollViewDidScroll:(UIScrollView *)scrollView {
    if (self.rightScrollView != scrollView) {
        return;
    }
    NSLog(@"contentOffset:%@", NSStringFromCGPoint(scrollView.contentOffset));
}

- (id)setPropertyValueObject {
    return self.rightScrollView;
}

- (NSDictionary *)method_1:(NSInteger)index {
    return @{
        @"dataModel": @{
            @"abstract": @"执行UIScrollView的方法",
            @"title": @"- (void)addSubview:(UIView *)view;",
            @"isDataModelExpand": @(YES),
            @"desc": @"添加的子View使用的约束必须要用width和height进行约束，否则子View不会显示;必须使用top和leading，使用bottom和training也不会展示",
            @"dataModel": @{
                @"childItems": [self TestProjectScrollView_addSubview:index],
            }
        },
    };
}

- (NSMutableArray *)TestProjectScrollView_addSubview:(NSInteger)index {
    return [self createModelSingleArrayWithIndex:index title:@"addSubview" block:nil];
}


- (NSDictionary *)method_2:(NSInteger)index {
    return @{
        @"dataModel": @{
            @"abstract": @"设置获取UIScrollView的属性contentOffset",
            @"title": @"@property(nonatomic)         CGPoint                      contentOffset;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectScrollView_property_contentOffset:index],
            }
        },
    };
}

- (NSMutableArray *)TestProjectScrollView_property_contentOffset:(NSInteger)index {
    return [self createModelSingleArrayWithIndex:index
                                        property:@"contentOffset"
                                           value:[NSValue valueWithCGPoint:CGPointMake(0, 50)]
                                       operation:TestProjectCreateModelGetBeforClickGetBeforeClickSet
                                           block:nil];
}

- (NSDictionary *)method_3:(NSInteger)index {
    return @{
        @"dataModel": @{
            @"abstract": @"设置获取UIScrollView的属性contentInset",
            @"title": @"@property(nonatomic)         UIEdgeInsets                 contentInset;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectScrollView_property_contentInset:index],
            }
        },
    };
}

- (NSMutableArray *)TestProjectScrollView_property_contentInset:(NSInteger)index {
    return [self createModelSingleArrayWithIndex:index
                                        property:@"contentInset"
                                           value:[NSValue valueWithUIEdgeInsets:UIEdgeInsetsMake(5, 10, 15, 10)]
                                       operation:TestProjectCreateModelGetBeforClickGetBeforeClickSet
                                           block:nil];
}

- (NSDictionary *)method_4:(NSInteger)index {
    return @{
        @"dataModel": @{
            @"abstract": @"设置获取UIScrollView的属性adjustedContentInset",
            @"title": @"@property(nonatomic, readonly) UIEdgeInsets adjustedContentInset API_AVAILABLE(ios(11.0),tvos(11.0));",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectScrollView_property_adjustedContentInset:index],
            }
        },
    };
}

- (NSMutableArray *)TestProjectScrollView_property_adjustedContentInset:(NSInteger)index {
    return [self createModelSingleArrayWithIndex:index
                                        property:@"adjustedContentInset"
                                           value:nil
                                       operation:TestProjectCreateModelGetBeforeClickGet
                                           block:nil];
}

- (NSDictionary *)method_5:(NSInteger)index {
    return @{
        @"dataModel": @{
            @"abstract": @"设置获取UIScrollView的属性contentInsetAdjustmentBehavior",
            @"title": @"@property(nonatomic) UIScrollViewContentInsetAdjustmentBehavior contentInsetAdjustmentBehavior API_AVAILABLE(ios(11.0),tvos(11.0));",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectScrollView_property_contentInsetAdjustmentBehavior:index],
            }
        },
    };
}

//typedef NS_ENUM(NSInteger, UIScrollViewContentInsetAdjustmentBehavior) {
//    UIScrollViewContentInsetAdjustmentAutomatic, // Similar to .scrollableAxes, but for backward compatibility will also adjust the top & bottom contentInset when the scroll view is owned by a view controller with automaticallyAdjustsScrollViewInsets = YES inside a navigation controller, regardless of whether the scroll view is scrollable
//    UIScrollViewContentInsetAdjustmentScrollableAxes, // Edges for scrollable axes are adjusted (i.e., contentSize.width/height > frame.size.width/height or alwaysBounceHorizontal/Vertical = YES)
//    UIScrollViewContentInsetAdjustmentNever, // contentInset is not adjusted
//    UIScrollViewContentInsetAdjustmentAlways, // contentInset is always adjusted by the scroll view's safeAreaInsets
//} API_AVAILABLE(ios(11.0),tvos(11.0));

- (NSMutableArray *)TestProjectScrollView_property_contentInsetAdjustmentBehavior:(NSInteger)index {
    NSArray *arr = @[
        @{
            @"title": [NSString stringWithFormat:@"设置的属性值是UIScrollViewContentInsetAdjustmentAutomatic(%ld)", UIScrollViewContentInsetAdjustmentAutomatic],
            @"value": @(UIScrollViewContentInsetAdjustmentAutomatic),
        },
        @{
            @"title": [NSString stringWithFormat:@"设置的属性值是UIScrollViewContentInsetAdjustmentScrollableAxes(%ld)", UIScrollViewContentInsetAdjustmentScrollableAxes],
            @"value": @(UIScrollViewContentInsetAdjustmentScrollableAxes),
        },
        @{
            @"title": [NSString stringWithFormat:@"设置的属性值是UIScrollViewContentInsetAdjustmentNever(%ld)", UIScrollViewContentInsetAdjustmentNever],
            @"value": @(UIScrollViewContentInsetAdjustmentNever),
        },
        @{
            @"title": [NSString stringWithFormat:@"设置的属性值是UIScrollViewContentInsetAdjustmentAlways(%ld)", UIScrollViewContentInsetAdjustmentAlways],
            @"value": @(UIScrollViewContentInsetAdjustmentAlways),
        },
    ];
    for (NSDictionary *dic in arr) {
        NSString *title = dic[@"title"];
        NSNumber *value = dic[@"value"];
        [self createModelWithIndex:index
                             title:title
                          property:@"contentInsetAdjustmentBehavior"
                             value:value
                         operation:TestProjectCreateModelGetBeforeClickSet
                             block:nil];
    }
    return self.dataMutArr;
}

- (NSDictionary *)method_6:(NSInteger)index {
    return @{
        @"dataModel": @{
            @"abstract": @"设置获取UIScrollView的属性automaticallyAdjustsScrollIndicatorInsets",
            @"title": @"@property(nonatomic) BOOL automaticallyAdjustsScrollIndicatorInsets API_AVAILABLE(ios(13.0), tvos(13.0));",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectScrollView_property_automaticallyAdjustsScrollIndicatorInsets:index],
            }
        },
    };
}

- (NSMutableArray *)TestProjectScrollView_property_automaticallyAdjustsScrollIndicatorInsets:(NSInteger)index {
    NSArray *arr = @[
        @{
            @"title": [NSString stringWithFormat:@"设置的属性值是YES"],
            @"value": @(YES),
        },
        @{
            @"title": [NSString stringWithFormat:@"设置的属性值是NO"],
            @"value": @(NO),
        },
    ];
    for (NSDictionary *dic in arr) {
        NSString *title = dic[@"title"];
        NSNumber *value = dic[@"value"];
        [self createModelWithIndex:index
                             title:title
                          property:@"automaticallyAdjustsScrollIndicatorInsets"
                             value:value
                         operation:TestProjectCreateModelGetBeforeClickSet
                             block:nil];
    }
    return self.dataMutArr;
}

- (NSDictionary *)method_7:(NSInteger)index {
    return @{
        @"dataModel": @{
            @"abstract": @"设置获取UIScrollView的属性contentLayoutGuide",
            @"title": @"@property(nonatomic,readonly,strong) UILayoutGuide *contentLayoutGuide API_AVAILABLE(ios(11.0),tvos(11.0));",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectScrollView_property_contentLayoutGuide:index],
            }
        },
    };
}

- (NSMutableArray *)TestProjectScrollView_property_contentLayoutGuide:(NSInteger)index {
    return [self createModelSingleArrayWithIndex:index
                                        property:@"contentLayoutGuide"
                                           value:nil
                                       operation:TestProjectCreateModelOnlyClickGet
                                           block:nil];
}

- (NSDictionary *)method_8:(NSInteger)index {
    return @{
        @"dataModel": @{
            @"abstract": @"设置获取UIScrollView的属性frameLayoutGuide",
            @"title": @"@property(nonatomic,readonly,strong) UILayoutGuide *frameLayoutGuide API_AVAILABLE(ios(11.0),tvos(11.0));",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectScrollView_property_frameLayoutGuide:index],
            }
        },
    };
}

- (NSMutableArray *)TestProjectScrollView_property_frameLayoutGuide:(NSInteger)index {
    return [self createModelSingleArrayWithIndex:index
                                        property:@"frameLayoutGuide"
                                           value:nil
                                       operation:TestProjectCreateModelOnlyClickGet
                                           block:nil];
}

- (NSDictionary *)method_9:(NSInteger)index {
    return @{
        @"dataModel": @{
            @"abstract": @"设置获取UIScrollView的属性delegate",
            @"title": @"@property(nullable,nonatomic,weak) id<UIScrollViewDelegate>        delegate;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectScrollView_property_delegate:index],
            }
        },
    };
}

- (NSMutableArray *)TestProjectScrollView_property_delegate:(NSInteger)index {
    return [self createModelSingleArrayWithIndex:index
                                        property:@"delegate"
                                           value:nil
                                       operation:TestProjectCreateModelGetBeforeClickGet
                                           block:nil];
}

- (NSDictionary *)method_10:(NSInteger)index {
    return @{
        @"dataModel": @{
            @"abstract": @"设置获取UIScrollView的属性directionalLockEnabled",
            @"title": @"@property(nonatomic,getter=isDirectionalLockEnabled) BOOL directionalLockEnabled;",
            @"isDataModelExpand": @(YES),
            @"desc": @"尝试锁住scroll的方向",
            @"dataModel": @{
                @"childItems": [self TestProjectScrollView_property_directionalLockEnabled:index],
            }
        },
    };
}

- (NSMutableArray *)TestProjectScrollView_property_directionalLockEnabled:(NSInteger)index {
    NSArray *arr = @[
        @{
            @"title": [NSString stringWithFormat:@"设置的属性值是YES"],
            @"value": @(YES),
        },
        @{
            @"title": [NSString stringWithFormat:@"设置的属性值是NO"],
            @"value": @(NO),
        },
    ];
    for (NSDictionary *dic in arr) {
        NSString *title = dic[@"title"];
        NSNumber *value = dic[@"value"];
        [self createModelWithIndex:index
                             title:title
                          property:@"directionalLockEnabled"
                             value:value
                         operation:TestProjectCreateModelGetBeforeClickSet
                             block:nil];
    }
    return self.dataMutArr;
}

- (NSDictionary *)method_11:(NSInteger)index {
    return @{
        @"dataModel": @{
            @"abstract": @"设置获取UIScrollView的属性bounces，是否设置滚动到顶部或者底部有弹性回弹",
            @"title": @"@property(nonatomic)         BOOL                         bounces;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectScrollView_property_bounces:index],
            }
        },
    };
}

- (NSMutableArray *)TestProjectScrollView_property_bounces:(NSInteger)index {
    NSArray *arr = @[
        @{
            @"title": [NSString stringWithFormat:@"设置的属性值是YES"],
            @"value": @(YES),
        },
        @{
            @"title": [NSString stringWithFormat:@"设置的属性值是NO"],
            @"value": @(NO),
        },
    ];
    for (NSDictionary *dic in arr) {
        NSString *title = dic[@"title"];
        NSNumber *value = dic[@"value"];
        [self createModelWithIndex:index
                             title:title
                          property:@"bounces"
                             value:value
                         operation:TestProjectCreateModelGetBeforeClickSet
                             block:nil];
    }
    return self.dataMutArr;
}

- (NSDictionary *)method_12:(NSInteger)index {
    return @{
        @"dataModel": @{
            @"abstract": @"设置获取UIScrollView的属性alwaysBounceVertical",
            @"title": @"@property(nonatomic)         BOOL                         alwaysBounceVertical;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectScrollView_property_alwaysBounceVertical:index],
            }
        },
    };
}

- (NSMutableArray *)TestProjectScrollView_property_alwaysBounceVertical:(NSInteger)index {
    NSArray *arr = @[
        @{
            @"title": [NSString stringWithFormat:@"设置的属性值是YES"],
            @"value": @(YES),
        },
        @{
            @"title": [NSString stringWithFormat:@"设置的属性值是NO"],
            @"value": @(NO),
        },
    ];
    for (NSDictionary *dic in arr) {
        NSString *title = dic[@"title"];
        NSNumber *value = dic[@"value"];
        [self createModelWithIndex:index
                             title:title
                          property:@"alwaysBounceVertical"
                             value:value
                         operation:TestProjectCreateModelGetBeforeClickSet
                             block:nil];
    }
    return self.dataMutArr;
}

- (NSDictionary *)method_13:(NSInteger)index {
    return @{
        @"dataModel": @{
            @"abstract": @"设置获取UIScrollView的属性alwaysBounceHorizontal",
            @"title": @"@property(nonatomic)         BOOL                         alwaysBounceHorizontal;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectScrollView_property_alwaysBounceHorizontal:index],
            }
        },
    };
}

- (NSMutableArray *)TestProjectScrollView_property_alwaysBounceHorizontal:(NSInteger)index {
    NSArray *arr = @[
        @{
            @"title": [NSString stringWithFormat:@"设置的属性值是YES"],
            @"value": @(YES),
        },
        @{
            @"title": [NSString stringWithFormat:@"设置的属性值是NO"],
            @"value": @(NO),
        },
    ];
    for (NSDictionary *dic in arr) {
        NSString *title = dic[@"title"];
        NSNumber *value = dic[@"value"];
        [self createModelWithIndex:index
                             title:title
                          property:@"alwaysBounceHorizontal"
                             value:value
                         operation:TestProjectCreateModelGetBeforeClickSet
                             block:nil];
    }
    return self.dataMutArr;
}

- (NSDictionary *)method_14:(NSInteger)index {
    return @{
        @"dataModel": @{
            @"abstract": @"设置获取UIScrollView的属性pagingEnabled",
            @"title": @"@property(nonatomic,getter=isPagingEnabled) BOOL          pagingEnabled API_UNAVAILABLE(tvos);",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectScrollView_property_pagingEnabled:index],
            }
        },
    };
}

- (NSMutableArray *)TestProjectScrollView_property_pagingEnabled:(NSInteger)index {
    NSArray *arr = @[
        @{
            @"title": [NSString stringWithFormat:@"设置的属性值是YES"],
            @"value": @(YES),
        },
        @{
            @"title": [NSString stringWithFormat:@"设置的属性值是NO"],
            @"value": @(NO),
        },
    ];
    for (NSDictionary *dic in arr) {
        NSString *title = dic[@"title"];
        NSNumber *value = dic[@"value"];
        [self createModelWithIndex:index
                             title:title
                          property:@"pagingEnabled"
                             value:value
                         operation:TestProjectCreateModelGetBeforeClickSet
                             block:nil];
    }
    return self.dataMutArr;
}

- (NSDictionary *)method_15:(NSInteger)index {
    return @{
        @"dataModel": @{
            @"abstract": @"设置获取UIScrollView的属性scrollEnabled，是否禁止滚动",
            @"title": @"@property(nonatomic,getter=isScrollEnabled) BOOL          scrollEnabled;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectScrollView_property_scrollEnabled:index],
            }
        },
    };
}

- (NSMutableArray *)TestProjectScrollView_property_scrollEnabled:(NSInteger)index {
    NSArray *arr = @[
        @{
            @"title": [NSString stringWithFormat:@"设置的属性值是YES"],
            @"value": @(YES),
        },
        @{
            @"title": [NSString stringWithFormat:@"设置的属性值是NO"],
            @"value": @(NO),
        },
    ];
    for (NSDictionary *dic in arr) {
        NSString *title = dic[@"title"];
        NSNumber *value = dic[@"value"];
        [self createModelWithIndex:index
                             title:title
                          property:@"scrollEnabled"
                             value:value
                         operation:TestProjectCreateModelGetBeforeClickSet
                             block:nil];
    }
    return self.dataMutArr;
}

- (NSDictionary *)method_16:(NSInteger)index {
    return @{
        @"dataModel": @{
            @"abstract": @"设置获取UIScrollView的属性showsVerticalScrollIndicator，垂直方向滚动时是否需要显示滚动条",
            @"title": @"@property(nonatomic)         BOOL                         showsVerticalScrollIndicator;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectScrollView_property_showsVerticalScrollIndicator:index],
            }
        },
    };
}

- (NSMutableArray *)TestProjectScrollView_property_showsVerticalScrollIndicator:(NSInteger)index {
    NSArray *arr = @[
        @{
            @"title": [NSString stringWithFormat:@"设置的属性值是YES"],
            @"value": @(YES),
        },
        @{
            @"title": [NSString stringWithFormat:@"设置的属性值是NO"],
            @"value": @(NO),
        },
    ];
    for (NSDictionary *dic in arr) {
        NSString *title = dic[@"title"];
        NSNumber *value = dic[@"value"];
        [self createModelWithIndex:index
                             title:title
                          property:@"showsVerticalScrollIndicator"
                             value:value
                         operation:TestProjectCreateModelGetBeforeClickSet
                             block:nil];
    }
    return self.dataMutArr;
}

- (NSDictionary *)method_17:(NSInteger)index {
    return @{
        @"dataModel": @{
            @"abstract": @"设置获取UIScrollView的属性showsHorizontalScrollIndicator，水平方向滚动时是否需要显示滚动条",
            @"title": @"@property(nonatomic)         BOOL                         showsHorizontalScrollIndicator;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectScrollView_property_showsHorizontalScrollIndicator:index],
            }
        },
    };
}

- (NSMutableArray *)TestProjectScrollView_property_showsHorizontalScrollIndicator:(NSInteger)index {
    NSArray *arr = @[
        @{
            @"title": [NSString stringWithFormat:@"设置的属性值是YES"],
            @"value": @(YES),
        },
        @{
            @"title": [NSString stringWithFormat:@"设置的属性值是NO"],
            @"value": @(NO),
        },
    ];
    for (NSDictionary *dic in arr) {
        NSString *title = dic[@"title"];
        NSNumber *value = dic[@"value"];
        [self createModelWithIndex:index
                             title:title
                          property:@"showsHorizontalScrollIndicator"
                             value:value
                         operation:TestProjectCreateModelGetBeforeClickSet
                             block:nil];
    }
    return self.dataMutArr;
}

- (NSDictionary *)method_18:(NSInteger)index {
    return @{
        @"dataModel": @{
            @"abstract": @"设置获取UIScrollView的属性indicatorStyle，设置滚动条的样式",
            @"title": @"@property(nonatomic)         UIScrollViewIndicatorStyle   indicatorStyle;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectScrollView_property_indicatorStyle:index],
            }
        },
    };
}

//typedef NS_ENUM(NSInteger, UIScrollViewIndicatorStyle) {
//    UIScrollViewIndicatorStyleDefault,     // Automatically switches appearance based on the user interface style
//    UIScrollViewIndicatorStyleBlack,       // Dark indicator, for use on light backgrounds
//    UIScrollViewIndicatorStyleWhite        // Light indicator, for use on dark backgrounds
//};

- (NSMutableArray *)TestProjectScrollView_property_indicatorStyle:(NSInteger)index {
    NSArray *arr = @[
        @{
            @"title": [NSString stringWithFormat:@"设置的属性值是UIScrollViewIndicatorStyleDefault(%ld)，是黑色的", UIScrollViewIndicatorStyleDefault],
            @"value": @(UIScrollViewIndicatorStyleDefault),
        },
        @{
            @"title": [NSString stringWithFormat:@"设置的属性值是UIScrollViewIndicatorStyleBlack(%ld)，是黑色的", UIScrollViewIndicatorStyleBlack],
            @"value": @(UIScrollViewIndicatorStyleBlack),
        },
        @{
            @"title": [NSString stringWithFormat:@"设置的属性值是UIScrollViewIndicatorStyleWhite(%ld)，是白色的", UIScrollViewIndicatorStyleWhite],
            @"value": @(UIScrollViewIndicatorStyleWhite),
        },
    ];
    for (NSDictionary *dic in arr) {
        NSString *title = dic[@"title"];
        NSNumber *value = dic[@"value"];
        [self createModelWithIndex:index
                             title:title
                          property:@"indicatorStyle"
                             value:value
                         operation:TestProjectCreateModelGetBeforeClickSet
                             block:nil];
    }
    return self.dataMutArr;
}

- (NSDictionary *)method_19:(NSInteger)index {
    return @{
        @"dataModel": @{
            @"abstract": @"设置获取UIScrollView的属性verticalScrollIndicatorInsets，设置垂直方向滚动条的EdgeInsets",
            @"title": @"@property(nonatomic)         UIEdgeInsets                 verticalScrollIndicatorInsets API_AVAILABLE(ios(11.1), tvos(11.1));",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectScrollView_property_verticalScrollIndicatorInsets:index],
            }
        },
    };
}

- (NSMutableArray *)TestProjectScrollView_property_verticalScrollIndicatorInsets:(NSInteger)index {
    return [self createModelSingleArrayWithIndex:index
                                        property:@"verticalScrollIndicatorInsets"
                                           value:[NSValue valueWithUIEdgeInsets:UIEdgeInsetsMake(5, 10, 15, 20)]
                                       operation:TestProjectCreateModelGetBeforeClickSet
                                           block:nil];
}

- (NSDictionary *)method_20:(NSInteger)index {
    return @{
        @"dataModel": @{
            @"abstract": @"设置获取UIScrollView的属性horizontalScrollIndicatorInsets，设置水平方向滚动条的EdgeInsets",
            @"title": @"@property(nonatomic)         UIEdgeInsets                 horizontalScrollIndicatorInsets API_AVAILABLE(ios(11.1), tvos(11.1));",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectScrollView_property_horizontalScrollIndicatorInsets:index],
            }
        },
    };
}

- (NSMutableArray *)TestProjectScrollView_property_horizontalScrollIndicatorInsets:(NSInteger)index {
    return [self createModelSingleArrayWithIndex:index
                                        property:@"horizontalScrollIndicatorInsets"
                                           value:[NSValue valueWithUIEdgeInsets:UIEdgeInsetsMake(5, 10, 15, 20)]
                                       operation:TestProjectCreateModelGetBeforeClickSet
                                           block:nil];
}

- (NSDictionary *)method_21:(NSInteger)index {
    return @{
        @"dataModel": @{
            @"abstract": @"设置获取UIScrollView的属性scrollIndicatorInsets，设置水平和垂直方向滚动条的EdgeInsets",
            @"title": @"@property(nonatomic)         UIEdgeInsets                 scrollIndicatorInsets;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectScrollView_property_scrollIndicatorInsets:index],
            }
        },
    };
}

- (NSMutableArray *)TestProjectScrollView_property_scrollIndicatorInsets:(NSInteger)index {
    return [self createModelSingleArrayWithIndex:index
                                        property:@"scrollIndicatorInsets"
                                           value:[NSValue valueWithUIEdgeInsets:UIEdgeInsetsMake(5, 10, 15, 20)]
                                       operation:TestProjectCreateModelGetBeforeClickSet
                                           block:nil];
}

- (NSDictionary *)method_22:(NSInteger)index {
    return @{
        @"dataModel": @{
            @"abstract": @"设置获取UIScrollView的属性decelerationRate",
            @"title": @"@property(nonatomic)         UIScrollViewDecelerationRate decelerationRate API_AVAILABLE(ios(3.0));",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectScrollView_property_decelerationRate:index],
            }
        },
    };
}

- (NSMutableArray *)TestProjectScrollView_property_decelerationRate:(NSInteger)index {
    NSArray *arr = @[
        @{
            @"title": [NSString stringWithFormat:@"设置的属性值是UIScrollViewDecelerationRateNormal(%f)", UIScrollViewDecelerationRateNormal],
            @"value": @(UIScrollViewDecelerationRateNormal),
        },
        @{
            @"title": [NSString stringWithFormat:@"设置的属性值是UIScrollViewDecelerationRateFast(%f)", UIScrollViewDecelerationRateFast],
            @"value": @(UIScrollViewDecelerationRateFast),
        },
    ];
    for (NSDictionary *dic in arr) {
        NSString *title = dic[@"title"];
        NSNumber *value = dic[@"value"];
        [self createModelWithIndex:index
                             title:title
                          property:@"decelerationRate"
                             value:value
                         operation:TestProjectCreateModelGetBeforeClickSet
                             block:nil];
    }
    return self.dataMutArr;
}

- (NSDictionary *)method_23:(NSInteger)index {
    return @{
        @"dataModel": @{
            @"abstract": @"设置获取UIScrollView的属性indexDisplayMode",
            @"title": @"@property(nonatomic)         UIScrollViewIndexDisplayMode indexDisplayMode API_AVAILABLE(tvos(10.2));",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectScrollView_property_indexDisplayMode:index],
            }
        },
    };
}

//typedef NS_ENUM(NSInteger, UIScrollViewIndexDisplayMode) {
//    UIScrollViewIndexDisplayModeAutomatic,    // the index will show or hide automatically as needed
//    UIScrollViewIndexDisplayModeAlwaysHidden, // the index will never be displayed
//} API_AVAILABLE(tvos(10.2));

- (NSMutableArray *)TestProjectScrollView_property_indexDisplayMode:(NSInteger)index {
    NSArray *arr = @[
        @{
            @"title": [NSString stringWithFormat:@"设置的属性值是UIScrollViewIndexDisplayModeAutomatic(%ld)", UIScrollViewIndexDisplayModeAutomatic],
            @"value": @(UIScrollViewIndexDisplayModeAutomatic),
        },
        @{
            @"title": [NSString stringWithFormat:@"设置的属性值是UIScrollViewIndexDisplayModeAlwaysHidden(%ld)", UIScrollViewIndexDisplayModeAlwaysHidden],
            @"value": @(UIScrollViewIndexDisplayModeAlwaysHidden),
        },
    ];
    for (NSDictionary *dic in arr) {
        NSString *title = dic[@"title"];
        NSNumber *value = dic[@"value"];
        [self createModelWithIndex:index
                             title:title
                          property:@"indexDisplayMode"
                             value:value
                         operation:TestProjectCreateModelGetBeforeClickSet
                             block:nil];
    }
    return self.dataMutArr;
}

- (NSDictionary *)method_24:(NSInteger)index {
    return @{
        @"dataModel": @{
            @"abstract": @"执行UIScrollView的方法，设置滚动到的位置",
            @"title": @"- (void)setContentOffset:(CGPoint)contentOffset animated:(BOOL)animated;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectScrollView_setContentOffset_animated:index],
            }
        },
    };
}

- (NSMutableArray *)TestProjectScrollView_setContentOffset_animated:(NSInteger)index {
    NSArray *arr = @[
        @{
            @"title": @"x超出范围，可以滚动",
            @"value": [NSValue valueWithCGPoint:CGPointMake(-1, 50)],
        },
        @{
            @"title": @"可以滚动",
            @"value": [NSValue valueWithCGPoint:CGPointMake(0, 50)],
        },
        @{
            @"title": @"y超出范围，可以滚动",
            @"value": [NSValue valueWithCGPoint:CGPointMake(0, 600)],
        },
    ];
    WS(wSelf);
    for (NSDictionary *dic in arr) {
        NSString *title = dic[@"title"];
        NSValue *value = dic[@"value"];
        CGPoint point = value.CGPointValue;
        [self createModelWithIndex:index title:[NSString stringWithFormat:@"设置的滚动位置：%@，%@", NSStringFromCGPoint(point), title] block:^{
            [wSelf.rightScrollView setContentOffset:point animated:YES];
        }];
    }
    return self.dataMutArr;
}

- (NSDictionary *)method_25:(NSInteger)index {
    return @{
        @"dataModel": @{
            @"abstract": @"执行UIScrollView的方法，设置滚动到的位置，如果UIScrollView的范围没有在这个rect范围内则不会滚动或者rect在可视的范围内也不会滚动",
            @"title": @"- (void)scrollRectToVisible:(CGRect)rect animated:(BOOL)animated;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectScrollView_scrollRectToVisible_animated:index],
            }
        },
    };
}

- (NSMutableArray *)TestProjectScrollView_scrollRectToVisible_animated:(NSInteger)index {
    NSArray *arr = @[
        @{
            @"title": @"x超出范围，不可以滚动",
            @"value": [NSValue valueWithCGRect:CGRectMake(-1, 150, 50, 50)],
        },
        @{
            @"title": @"在可视的范围，不可以滚动",
            @"value": [NSValue valueWithCGRect:CGRectMake(0, 250, 50, 50)],
        },
        @{
            @"title": @"可以滚动",
            @"value": [NSValue valueWithCGRect:CGRectMake(0, 250, 50, 51)],
        },
        @{
            @"title": @"可以滚动",
            @"value": [NSValue valueWithCGRect:CGRectMake(0, 350, 50, 50)],
        },
        @{
            @"title": @"width超出范围，不可以滚动",
            @"value": [NSValue valueWithCGRect:CGRectMake(0, 150, 500, 50)],
        },
    ];
    WS(wSelf);
    for (NSDictionary *dic in arr) {
        NSString *title = dic[@"title"];
        NSValue *value = dic[@"value"];
        CGRect rect = value.CGRectValue;
        [self createModelWithIndex:index title:[NSString stringWithFormat:@"设置的滚动位置：%@，%@", NSStringFromCGRect(rect), title] block:^{
            [wSelf.rightScrollView scrollRectToVisible:rect animated:YES];
        }];
    }
    return self.dataMutArr;
}

- (NSDictionary *)method_26:(NSInteger)index {
    return @{
        @"dataModel": @{
            @"abstract": @"执行UIScrollView的方法，静止时滚动条会显示，执行完后会继续隐藏",
            @"title": @"- (void)flashScrollIndicators;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectScrollView_flashScrollIndicators:index],
            }
        },
    };
}

- (NSMutableArray *)TestProjectScrollView_flashScrollIndicators:(NSInteger)index {
    WS(wSelf);
    return [self createModelSingleArrayWithIndex:index title:@"flashScrollIndicators" block:^{
        [wSelf.rightScrollView flashScrollIndicators];
    }];
}

- (NSDictionary *)method_27:(NSInteger)index {
    return @{
        @"dataModel": @{
            @"abstract": @"设置获取UIScrollView的属性tracking，用户开始touch，可能还没有moving距离",
            @"title": @"@property(nonatomic,readonly,getter=isTracking)     BOOL tracking;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectScrollView_property_tracking:index],
            }
        },
    };
}

- (NSMutableArray *)TestProjectScrollView_property_tracking:(NSInteger)index {
    return [self createModelSingleArrayWithIndex:index title:nil block:nil];
}

- (NSDictionary *)method_28:(NSInteger)index {
    return @{
        @"dataModel": @{
            @"abstract": @"设置获取UIScrollView的属性dragging，用户开始moving一点距离",
            @"title": @"@property(nonatomic,readonly,getter=isDragging)     BOOL dragging;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectScrollView_property_dragging:index],
            }
        },
    };
}

- (NSMutableArray *)TestProjectScrollView_property_dragging:(NSInteger)index {
    return [self createModelSingleArrayWithIndex:index title:nil block:nil];
}

- (NSDictionary *)method_29:(NSInteger)index {
    return @{
        @"dataModel": @{
            @"abstract": @"设置获取UIScrollView的属性decelerating，用户没有在dragging，但仍然在moving时返回YES",
            @"title": @"@property(nonatomic,readonly,getter=isDecelerating) BOOL decelerating;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectScrollView_property_decelerating:index],
            }
        },
    };
}

- (NSMutableArray *)TestProjectScrollView_property_decelerating:(NSInteger)index {
    return [self createModelSingleArrayWithIndex:index title:nil block:nil];
}

- (NSDictionary *)method_30:(NSInteger)index {
    return @{
        @"dataModel": @{
            @"abstract": @"设置获取UIScrollView的属性delaysContentTouches",
            @"title": @"@property(nonatomic) BOOL delaysContentTouches;",
            @"isDataModelExpand": @(YES),
            @"desc": @"判断当触摸到在UIScrollView中的子视图上，是否要立即执行- (BOOL)touchesShouldCancelInContentView:(UIView *)view;默认为YES，是会有一个极短的NSTimer时间",
            @"dataModel": @{
                @"childItems": [self TestProjectScrollView_property_delaysContentTouches:index],
            }
        },
    };
}

- (NSMutableArray *)TestProjectScrollView_property_delaysContentTouches:(NSInteger)index {
    NSArray *arr = @[
        @{
            @"title": [NSString stringWithFormat:@"设置的属性值是YES"],
            @"value": @(YES),
        },
        @{
            @"title": [NSString stringWithFormat:@"设置的属性值是NO"],
            @"value": @(NO),
        },
    ];
    for (NSDictionary *dic in arr) {
        NSString *title = dic[@"title"];
        NSNumber *value = dic[@"value"];
        [self createModelWithIndex:index
                             title:title
                          property:@"delaysContentTouches"
                             value:value
                         operation:TestProjectCreateModelGetBeforeClickSet
                             block:nil];
    }
    return self.dataMutArr;
}

- (NSDictionary *)method_31:(NSInteger)index {
    return @{
        @"dataModel": @{
            @"abstract": @"设置获取UIScrollView的属性canCancelContentTouches",
            @"title": @"@property(nonatomic) BOOL canCancelContentTouches;",
            @"isDataModelExpand": @(YES),
            @"desc": @"判断当触摸到在UIScrollView中的子视图上，是否要立即执行- (BOOL)touchesShouldCancelInContentView:(UIView *)view;默认为YES，是会有一个极短的NSTimer时间",
            @"dataModel": @{
                @"childItems": [self TestProjectScrollView_property_canCancelContentTouches:index],
            }
        },
    };
}

- (NSMutableArray *)TestProjectScrollView_property_canCancelContentTouches:(NSInteger)index {
    NSArray *arr = @[
        @{
            @"title": [NSString stringWithFormat:@"设置的属性值是YES"],
            @"value": @(YES),
        },
        @{
            @"title": [NSString stringWithFormat:@"设置的属性值是NO"],
            @"value": @(NO),
        },
    ];
    for (NSDictionary *dic in arr) {
        NSString *title = dic[@"title"];
        NSNumber *value = dic[@"value"];
        [self createModelWithIndex:index
                             title:title
                          property:@"canCancelContentTouches"
                             value:value
                         operation:TestProjectCreateModelGetBeforeClickSet
                             block:nil];
    }
    return self.dataMutArr;
}

- (NSDictionary *)method_32:(NSInteger)index {
    return @{
        @"dataModel": @{
            @"abstract": @"设置获取UIScrollView的属性dragging，用户开始moving一点距离",
            @"title": @"- (BOOL)touchesShouldBegin:(NSSet<UITouch *> *)touches withEvent:(nullable UIEvent *)event inContentView:(UIView *)view;",
            @"isDataModelExpand": @(YES),
            @"desc":@"如果touchesShouldCancelInContentView:返回NO，则该方法不执行且UIScrollView不会执行滚动；\n该方法返回NO则子视图的触摸事件不会发生，否则有机会会发生的",
            @"dataModel": @{
                @"childItems": [self TestProjectScrollView_load_touchesShouldBegin_withEvent_inContentView:index],
            }
        },
    };
}

- (NSMutableArray *)TestProjectScrollView_load_touchesShouldBegin_withEvent_inContentView:(NSInteger)index {
    return [self createModelSingleArrayWithIndex:index title:nil block:nil];
}

- (NSDictionary *)method_33:(NSInteger)index {
    return @{
        @"dataModel": @{
            @"abstract": @"孩子类重载UIScrollView的方法",
            @"title": @"- (BOOL)touchesShouldCancelInContentView:(UIView *)view;",
            @"isDataModelExpand": @(YES),
            @"desc": @"当触摸在子视图上，如果子视图有触摸事件，则super返回的是NO；\n如果返回的是NO，则UIScrollView不执行touchesShouldBegin:withEvent:inContentView:该方法，否则执行,但子视图上的触摸事件则不会执行",
            @"dataModel": @{
                @"childItems": [self TestProjectScrollView_load_touchesShouldCancelInContentView:index],
            }
        },
    };
}

- (NSMutableArray *)TestProjectScrollView_load_touchesShouldCancelInContentView:(NSInteger)index {
    return [self createModelSingleArrayWithIndex:index title:nil block:nil];
}

- (NSDictionary *)method_34:(NSInteger)index {
    return @{
        @"dataModel": @{
            @"abstract": @"获取设置UIScrollView的属性minimumZoomScale, 设置要缩放的子视图最小的缩放比例",
            @"title": @"@property(nonatomic) CGFloat minimumZoomScale;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectScrollView_property_minimumZoomScale:index],
            }
        },
    };
}

- (NSMutableArray *)TestProjectScrollView_property_minimumZoomScale:(NSInteger)index {
    NSArray *arr = @[
        @{
            @"title": @"要设置最小的缩放比例是0.2",
            @"value": @0.2,
        },
        @{
            @"title": @"要设置最小的缩放比例是0.6",
            @"value": @0.6,
        },
        @{
            @"title": @"要设置最小的缩放比例是1.0",
            @"value": @1.0,
        },
        @{
            @"title": @"要设置最小的缩放比例是2.0",
            @"value": @2.0,
        },
    ];
    for (NSDictionary *dic in arr) {
        NSString *title = dic[@"title"];
        NSNumber *value = dic[@"value"];
        [self createModelWithIndex:index
                             title:title
                          property:@"minimumZoomScale"
                             value:value
                         operation:TestProjectCreateModelGetBeforClickGetBeforeClickSet
                             block:nil];
    }
    return self.dataMutArr;
}

- (NSDictionary *)method_35:(NSInteger)index {
    return @{
        @"dataModel": @{
            @"abstract": @"获取设置UIScrollView的属性maximumZoomScale, 设置要缩放的子视图最大的缩放比例",
            @"title": @"@property(nonatomic) CGFloat maximumZoomScale;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectScrollView_property_maximumZoomScale:index],
            }
        },
    };
}

- (NSMutableArray *)TestProjectScrollView_property_maximumZoomScale:(NSInteger)index {
    NSArray *arr = @[
        @{
            @"title": @"要设置最大的缩放比例是1.0",
            @"value": @1.0,
        },
        @{
            @"title": @"要设置最大的缩放比例是1.2",
            @"value": @1.2,
        },
        @{
            @"title": @"要设置最大的缩放比例是1.6",
            @"value": @1.6,
        },
        @{
            @"title": @"要设置最大的缩放比例是2.0",
            @"value": @2.0,
        },
        @{
            @"title": @"要设置最大的缩放比例是4.0",
            @"value": @4.0,
        },
    ];
    for (NSDictionary *dic in arr) {
        NSString *title = dic[@"title"];
        NSNumber *value = dic[@"value"];
        [self createModelWithIndex:index
                             title:title
                          property:@"maximumZoomScale"
                             value:value
                         operation:TestProjectCreateModelGetBeforClickGetBeforeClickSet
                             block:nil];
    }
    return self.dataMutArr;
}

- (NSDictionary *)method_36:(NSInteger)index {
    return @{
        @"dataModel": @{
            @"abstract": @"获取设置UIScrollView的属性zoomScale, 设置要缩放的子视图正常比例",
            @"title": @"@property(nonatomic) CGFloat zoomScale API_AVAILABLE(ios(3.0));",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectScrollView_property_zoomScale:index],
            }
        },
    };
}

- (NSMutableArray *)TestProjectScrollView_property_zoomScale:(NSInteger)index {
    NSArray *arr = @[
        @{
            @"title": @"要设置正常的缩放比例是1.2",
            @"value": @1.2,
        },
        @{
            @"title": @"要设置正常的缩放比例是1.6",
            @"value": @1.6,
        },
        @{
            @"title": @"要设置正常的缩放比例是2.0",
            @"value": @2.0,
        },
        @{
            @"title": @"要设置正常的缩放比例是4.0",
            @"value": @4.0,
        },
    ];
    for (NSDictionary *dic in arr) {
        NSString *title = dic[@"title"];
        NSNumber *value = dic[@"value"];
        [self createModelWithIndex:index
                             title:title
                          property:@"zoomScale"
                             value:value
                         operation:TestProjectCreateModelGetBeforClickGetBeforeClickSet
                             block:nil];
    }
    return self.dataMutArr;
}

- (NSDictionary *)method_37:(NSInteger)index {
    return @{
        @"dataModel": @{
            @"abstract": @"执行UIScrollView的方法, 设置子视图的缩放比例",
            @"title": @"- (void)setZoomScale:(CGFloat)scale animated:(BOOL)animated API_AVAILABLE(ios(3.0));",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectScrollView_setZoomScale_animated:index],
            }
        },
    };
}

- (NSMutableArray *)TestProjectScrollView_setZoomScale_animated:(NSInteger)index {
    NSArray *arr = @[
        @{
            @"title": @"要设置正常的缩放比例是0.2",
            @"value": @0.2,
        },
        @{
            @"title": @"要设置正常的缩放比例是0.6",
            @"value": @0.6,
        },
        @{
            @"title": @"要设置正常的缩放比例是1.0",
            @"value": @1.0,
        },
        @{
            @"title": @"要设置正常的缩放比例是1.2",
            @"value": @1.2,
        },
        @{
            @"title": @"要设置正常的缩放比例是1.6",
            @"value": @1.6,
        },
    ];
    WS(wSelf);
    for (NSDictionary *dic in arr) {
        NSString *title = dic[@"title"];
        NSNumber *value = dic[@"value"];
        [self createModelWithIndex:index title:title block:^{
            [wSelf.rightScrollView setZoomScale:value.floatValue animated:YES];
        }];
    }
    return self.dataMutArr;
}

- (NSDictionary *)method_38:(NSInteger)index {
    return @{
        @"dataModel": @{
            @"abstract": @"执行UIScrollView的方法",
            @"title": @"- (void)zoomToRect:(CGRect)rect animated:(BOOL)animated API_AVAILABLE(ios(3.0));",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectScrollView_zoomToRect_animated:index],
            }
        },
    };
}

- (NSMutableArray *)TestProjectScrollView_zoomToRect_animated:(NSInteger)index {
    NSArray *arr = @[
        @{
            @"value": [NSValue valueWithCGRect:CGRectMake(120, 60, 4, 4)],
        },
        @{
            @"value": [NSValue valueWithCGRect:CGRectMake(0, 0, 10, 10)],
        },
        @{
            @"value": [NSValue valueWithCGRect:CGRectMake(0, 0, 100, 50)],
        },
    ];
    WS(wSelf);
    for (NSDictionary *dic in arr) {
        NSValue *value = dic[@"value"];
        CGRect rect = value.CGRectValue;
        [self createModelWithIndex:index title:[NSString stringWithFormat:@"要设置的范围是:%@", NSStringFromCGRect(rect)] block:^{
            [wSelf.rightScrollView zoomToRect:rect animated:YES];
        }];
    }
    return self.dataMutArr;
}

- (NSDictionary *)method_39:(NSInteger)index {
    return @{
        @"dataModel": @{
            @"abstract": @"设置获取UIScrollView的属性bouncesZoom",
            @"title": @"@property(nonatomic) BOOL  bouncesZoom;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectScrollView_property_bouncesZoom:index],
            }
        },
    };
}

- (NSMutableArray *)TestProjectScrollView_property_bouncesZoom:(NSInteger)index {
    NSArray *arr = @[
        @{
            @"title": [NSString stringWithFormat:@"设置的属性值是YES"],
            @"value": @(YES),
        },
        @{
            @"title": [NSString stringWithFormat:@"设置的属性值是NO"],
            @"value": @(NO),
        },
    ];
    for (NSDictionary *dic in arr) {
        NSString *title = dic[@"title"];
        NSNumber *value = dic[@"value"];
        [self createModelWithIndex:index
                             title:title
                          property:@"bouncesZoom"
                             value:value
                         operation:TestProjectCreateModelGetBeforeClickSet
                             block:nil];
    }
    return self.dataMutArr;
}

- (NSDictionary *)method_40:(NSInteger)index {
    return @{
        @"dataModel": @{
            @"abstract": @"设置获取UIScrollView的属性zooming",
            @"title": @"@property(nonatomic,readonly,getter=isZooming)       BOOL zooming;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectScrollView_property_zooming:index],
            }
        },
    };
}

- (NSMutableArray *)TestProjectScrollView_property_zooming:(NSInteger)index {
    return [self createModelSingleArrayWithIndex:index
                                        property:@"zooming"
                                           value:nil
                                       operation:TestProjectCreateModelGetBeforeClickGet
                                           block:nil];
}

- (NSDictionary *)method_41:(NSInteger)index {
    return @{
        @"dataModel": @{
            @"abstract": @"设置获取UIScrollView的属性zoomBouncing",
            @"title": @"@property(nonatomic,readonly,getter=isZoomBouncing)  BOOL zoomBouncing;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectScrollView_property_zoomBouncing:index],
            }
        },
    };
}

- (NSMutableArray *)TestProjectScrollView_property_zoomBouncing:(NSInteger)index {
    return [self createModelSingleArrayWithIndex:index
                                        property:@"zoomBouncing"
                                           value:nil
                                       operation:TestProjectCreateModelGetBeforeClickGet
                                           block:nil];
}

- (NSDictionary *)method_42:(NSInteger)index {
    return @{
        @"dataModel": @{
            @"abstract": @"设置获取UIScrollView的属性scrollsToTop",
            @"title": @"@property(nonatomic) BOOL  scrollsToTop API_UNAVAILABLE(tvos);",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectScrollView_property_scrollsToTop:index],
            }
        },
    };
}

- (NSMutableArray *)TestProjectScrollView_property_scrollsToTop:(NSInteger)index {
    NSArray *arr = @[
        @{
            @"title": [NSString stringWithFormat:@"设置的属性值是YES"],
            @"value": @(YES),
        },
        @{
            @"title": [NSString stringWithFormat:@"设置的属性值是NO"],
            @"value": @(NO),
        },
    ];
    for (NSDictionary *dic in arr) {
        NSString *title = dic[@"title"];
        NSNumber *value = dic[@"value"];
        [self createModelWithIndex:index
                             title:title
                          property:@"scrollsToTop"
                             value:value
                         operation:TestProjectCreateModelGetBeforeClickSet
                             block:nil];
    }
    return self.dataMutArr;
}

- (NSDictionary *)method_43:(NSInteger)index {
    return @{
        @"dataModel": @{
            @"abstract": @"设置获取UIScrollView的属性panGestureRecognizer",
            @"title": @"@property(nonatomic, readonly) UIPanGestureRecognizer *panGestureRecognizer API_AVAILABLE(ios(5.0));",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectScrollView_property_panGestureRecognizer:index],
            }
        },
    };
}

- (NSMutableArray *)TestProjectScrollView_property_panGestureRecognizer:(NSInteger)index {
    return [self createModelSingleArrayWithIndex:index
                                        property:@"panGestureRecognizer"
                                           value:nil
                                       operation:TestProjectCreateModelGetBeforeClickGet
                                           block:nil];
}

- (NSDictionary *)method_44:(NSInteger)index {
    return @{
        @"dataModel": @{
            @"abstract": @"设置获取UIScrollView的属性pinchGestureRecognizer",
            @"title": @"@property(nullable, nonatomic, readonly) UIPinchGestureRecognizer *pinchGestureRecognizer API_AVAILABLE(ios(5.0));",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectScrollView_property_pinchGestureRecognizer:index],
            }
        },
    };
}

- (NSMutableArray *)TestProjectScrollView_property_pinchGestureRecognizer:(NSInteger)index {
    return [self createModelSingleArrayWithIndex:index
                                        property:@"pinchGestureRecognizer"
                                           value:nil
                                       operation:TestProjectCreateModelGetBeforeClickGet
                                           block:nil];
}

- (NSDictionary *)method_45:(NSInteger)index {
    return @{
        @"dataModel": @{
            @"abstract": @"设置获取UIScrollView的属性keyboardDismissMode",
            @"title": @"@property(nonatomic) UIScrollViewKeyboardDismissMode keyboardDismissMode API_AVAILABLE(ios(7.0));",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectScrollView_property_keyboardDismissMode:index],
            }
        },
    };
}

//typedef NS_ENUM(NSInteger, UIScrollViewKeyboardDismissMode) {
//    UIScrollViewKeyboardDismissModeNone,
//    UIScrollViewKeyboardDismissModeOnDrag,      // dismisses the keyboard when a drag begins
//    UIScrollViewKeyboardDismissModeInteractive, // the keyboard follows the dragging touch off screen, and may be pulled upward again to cancel the dismiss
//    UIScrollViewKeyboardDismissModeOnDragWithAccessory,       // dismisses both keyboard and accessory in the style of UIScrollViewKeyboardDismissModeOnDrag
//    UIScrollViewKeyboardDismissModeInteractiveWithAccessory   // dismisses both keyboard and accessory in the style of UIScrollViewKeyboardDismissModeInteractive
//} API_AVAILABLE(ios(7.0));

- (NSMutableArray *)TestProjectScrollView_property_keyboardDismissMode:(NSInteger)index {
    NSArray *arr = @[
        @{
            @"title": [NSString stringWithFormat:@"设置的属性值是UIScrollViewKeyboardDismissModeNone(%ld)，无效果，键盘不消失", UIScrollViewKeyboardDismissModeNone],
            @"value": @(UIScrollViewKeyboardDismissModeNone),
        },
        @{
            @"title": [NSString stringWithFormat:@"设置的属性值是UIScrollViewKeyboardDismissModeOnDrag(%ld)，在拖拽的时候键盘会消失", UIScrollViewKeyboardDismissModeOnDrag],
            @"value": @(UIScrollViewKeyboardDismissModeOnDrag),
        },
        @{
            @"title": [NSString stringWithFormat:@"设置的属性值是UIScrollViewKeyboardDismissModeInteractive(%ld)，无效果，键盘不消失", UIScrollViewKeyboardDismissModeInteractive],
            @"value": @(UIScrollViewKeyboardDismissModeInteractive),
        },
        @{
            @"title": [NSString stringWithFormat:@"设置的属性值是UIScrollViewKeyboardDismissModeOnDragWithAccessory(%ld)，在拖拽的时候键盘会消失", UIScrollViewKeyboardDismissModeOnDragWithAccessory],
            @"value": @(UIScrollViewKeyboardDismissModeOnDragWithAccessory),
        },
        @{
            @"title": [NSString stringWithFormat:@"设置的属性值是UIScrollViewKeyboardDismissModeInteractiveWithAccessory(%ld)，无效果，键盘不消失", UIScrollViewKeyboardDismissModeInteractiveWithAccessory],
            @"value": @(UIScrollViewKeyboardDismissModeInteractiveWithAccessory),
        },
    ];
    for (NSDictionary *dic in arr) {
        NSString *title = dic[@"title"];
        NSNumber *value = dic[@"value"];
        [self createModelWithIndex:index
                             title:title
                          property:@"keyboardDismissMode"
                             value:value
                         operation:TestProjectCreateModelGetBeforeClickSet
                             block:nil];
    }
    return self.dataMutArr;
}

- (NSDictionary *)method_46:(NSInteger)index {
    return @{
        @"dataModel": @{
            @"abstract": @"设置获取UIScrollView的属性refreshControl, 设置系统刷新组件",
            @"title": @"@property (nonatomic, strong, nullable) UIRefreshControl *refreshControl API_AVAILABLE(ios(10.0)) API_UNAVAILABLE(tvos);",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectScrollView_property_refreshControl:index],
            }
        },
    };
}

- (NSMutableArray *)TestProjectScrollView_property_refreshControl:(NSInteger)index {
    UIRefreshControl *control = [[UIRefreshControl alloc] initWithFrame:CGRectMake(0, 0, 100, 50)];
    control.attributedTitle = [[NSAttributedString alloc] initWithString:@"刷新控件"];
    return [self createModelSingleArrayWithIndex:index
                                        property:@"refreshControl"
                                           value:control
                                       operation:TestProjectCreateModelGetBeforeClickSet
                                           block:nil];
}

@end
