//
//  TestProjectUIViewViewGeometry.m
//  TestProjectIOS
//
//  Created by liwenfan on 2023/5/12.
//

#import "TestProjectUIViewViewGeometry.h"

@implementation TestProjectUIViewViewGeometry

- (UIView *)hitTest:(CGPoint)point withEvent:(UIEvent *)event {
    UIView *view = [super hitTest:point withEvent:event];
    return view;
}
//typedef NS_OPTIONS(NSUInteger, UIViewAutoresizing) {
//    UIViewAutoresizingNone                 = 0,
//    UIViewAutoresizingFlexibleLeftMargin   = 1 << 0,
//    UIViewAutoresizingFlexibleWidth        = 1 << 1,
//    UIViewAutoresizingFlexibleRightMargin  = 1 << 2,
//    UIViewAutoresizingFlexibleTopMargin    = 1 << 3,
//    UIViewAutoresizingFlexibleHeight       = 1 << 4,
//    UIViewAutoresizingFlexibleBottomMargin = 1 << 5
//};

//- (instancetype)initCreate {
//    if (self = [super initCreate]) {
//        [self createBtnWithTag:UIViewAutoresizingNone];
//        [self createBtnWithTag:UIViewAutoresizingFlexibleLeftMargin];
//        [self createBtnWithTag:UIViewAutoresizingFlexibleWidth];
//        [self createBtnWithTag:UIViewAutoresizingFlexibleRightMargin];
//        [self createBtnWithTag:UIViewAutoresizingFlexibleTopMargin];
//        [self createBtnWithTag:UIViewAutoresizingFlexibleHeight];
//        [self createBtnWithTag:UIViewAutoresizingFlexibleBottomMargin];
//    }
//    return self;
//}
//
//- (void)createBtnWithTag:(NSInteger)tag {
//    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
//    btn.backgroundColor = [UIColor yellowColor];
//    btn.frame = CGRectMake(tag * 15, 0, 10, 30);
//    btn.tag = tag;
//    [btn addTarget:self action:@selector(setAutoMask:) forControlEvents:UIControlEventTouchUpInside];
//    [self addSubview:btn];
//}
//
//- (void)setAutoMask:(UIButton *)btn {
//    self.grandChildView.autoresizingMask = btn.tag;
//    self.childView.frame = CGRectMake(btn.tag * 20, 0, btn.tag * 10, btn.tag * 5);
//}

- (NSDictionary *)method_1 {
    return @{
        @"dataModel": @{
            @"abstract": @"设置获取UIView的属性frame",
            @"title": @"@property(nonatomic) CGRect            frame;",
            @"isDataModelExpand": @(YES),
            @"desc": @"改变自己的大小，以及在父view上的位置",
            @"dataModel": @{
                @"childItems": [self TestProjectViewViewGeometry_property_frame],
            }
        },
    };
}

- (NSDictionary *)method_2 {
    return @{
        @"dataModel": @{
            @"abstract": @"设置获取UIView的属性bounds",
            @"title": @"@property(nonatomic) CGRect            bounds;",
            @"isDataModelExpand": @(YES),
            @"desc": @"改变自己的大小，以及自己孩子view在自己上的位置 \n 当x或者y值不为0时，孩子view会距离原点{0,0}产生偏移，为负：向右或者向下偏移；为正：向左或者向上偏移",
            @"dataModel": @{
                @"childItems": [self TestProjectViewViewGeometry_property_bounds],
            }
        },
    };
}

- (NSDictionary *)method_3 {
    return @{
        @"dataModel": @{
            @"abstract": @"设置获取UIView的属性center",
            @"title": @"@property(nonatomic) CGPoint            center;",
            @"isDataModelExpand": @(YES),
            @"desc": @"改变自己在父view上的位置，设置自己的中心位置在父view上的位置",
            @"dataModel": @{
                @"childItems": [self TestProjectViewViewGeometry_property_center],
            }
        },
    };
}

- (NSDictionary *)method_4 {
    return @{
        @"dataModel": @{
            @"abstract": @"设置获取UIView的属性transform",
            @"title": @"@property(nonatomic) CGAffineTransform transform;",
            @"isDataModelExpand": @(YES),
            @"desc": @"作用在UIView上，对UIView进行平移、旋转等操作",
            @"dataModel": @{
                @"childItems": [self TestProjectViewViewGeometry_property_transform],
            }
        },
    };
}

- (NSDictionary *)method_5 {
    return @{
        @"dataModel": @{
            @"abstract": @"设置获取UIView的属性transform3D",
            @"title": @"@property(nonatomic) CATransform3D     transform3D API_AVAILABLE(ios(13.0),tvos(13.0));",
            @"isDataModelExpand": @(YES),
            @"desc": @"作用在CALayer上，对CALayer进行平移、旋转等操作",
            @"dataModel": @{
                @"childItems": [self TestProjectViewViewGeometry_property_transform3D],
            }
        },
    };
}

- (NSDictionary *)method_6 {
    return @{
        @"dataModel": @{
            @"abstract": @"设置获取UIView的属性contentScaleFactor，暂不知道什么作用",
            @"title": @"@property(nonatomic) CGFloat           contentScaleFactor API_AVAILABLE(ios(4.0));",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectViewViewGeometry_property_contentScaleFactor],
            }
        },
    };
}

- (NSDictionary *)method_7 {
    return @{
        @"dataModel": @{
            @"abstract": @"设置获取UIView的属性anchorPoint",
            @"title": @"@property(nonatomic) CGPoint anchorPoint API_AVAILABLE(ios(16.0));",
            @"isDataModelExpand": @(YES),
            @"desc": @"改变自己在父view上的位置，设置自己的中心位置在父view上的位置",
            @"dataModel": @{
                @"childItems": [self TestProjectViewViewGeometry_property_anchorPoint],
            }
        },
    };
}

- (NSDictionary *)method_8 {
    return @{
        @"dataModel": @{
            @"abstract": @"设置获取UIView的属性multipleTouchEnabled",
            @"title": @"@property(nonatomic,getter=isMultipleTouchEnabled) BOOL multipleTouchEnabled API_UNAVAILABLE(tvos);",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectViewViewGeometry_property_multipleTouchEnabled],
            }
        },
    };
}

- (NSDictionary *)method_9 {
    return @{
        @"dataModel": @{
            @"abstract": @"设置获取UIView的属性exclusiveTouch",
            @"title": @"@property(nonatomic,getter=isExclusiveTouch) BOOL       exclusiveTouch API_UNAVAILABLE(tvos);",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectViewViewGeometry_property_exclusiveTouch],
            }
        },
    };
}

- (NSDictionary *)method_10 {
    return @{
        @"dataModel": @{
            @"abstract": @"获取UIView的某个点上的view",
            @"title": @"- (nullable UIView *)hitTest:(CGPoint)point withEvent:(nullable UIEvent *)event;",
            @"isDataModelExpand": @(YES),
            @"desc": @"获取的是当前view的最顶层的某个显示的子view，不能是隐藏的或者透明度为0",
            @"dataModel": @{
                @"childItems": [self TestProjectViewViewGeometry_hitTest_withEvent],
            }
        },
    };
}

- (NSDictionary *)method_11 {
    return @{
        @"dataModel": @{
            @"abstract": @"判断某个点上是否在UIView的bounds内",
            @"title": @"- (BOOL)pointInside:(CGPoint)point withEvent:(nullable UIEvent *)event;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectViewViewGeometry_pointInside_withEvent],
            }
        },
    };
}

- (NSDictionary *)method_12 {
    return @{
        @"dataModel": @{
            @"abstract": @"某个点在某个view上的位置",
            @"title": @"- (CGPoint)convertPoint:(CGPoint)point toView:(nullable UIView *)view;",
            @"isDataModelExpand": @(YES),
            @"desc": @"相对调用的view上的点对于不同的toView对应不同的位置 \n 计算的位置是：point - (toView的顶点point - 调用的view的顶点point)",
            @"dataModel": @{
                @"childItems": [self TestProjectViewViewGeometry_convertPoint_toView],
            }
        },
    };
}

- (NSDictionary *)method_13 {
    return @{
        @"dataModel": @{
            @"abstract": @"某个点在某个view上的位置",
            @"title": @"- (CGPoint)convertPoint:(CGPoint)point fromView:(nullable UIView *)view;",
            @"isDataModelExpand": @(YES),
            @"desc": @"相对调用的view上的点对于不同的fromView对应不同的位置 \n 计算的位置是：fromView的顶点距离 + point",
            @"dataModel": @{
                @"childItems": [self TestProjectViewViewGeometry_convertPoint_fromView],
            }
        },
    };
}

- (NSDictionary *)method_14 {
    return @{
        @"dataModel": @{
            @"abstract": @"某个rect在某个view上的rect",
            @"title": @"- (CGRect)convertRect:(CGRect)rect toView:(nullable UIView *)view;",
            @"isDataModelExpand": @(YES),
            @"desc": @"对调用的view上的点对于不同的toView对应不同的位置 \n 计算的point位置是：point - (toView的顶点point - 调用的view的顶点point), size是rect的size",
            @"dataModel": @{
                @"childItems": [self TestProjectViewViewGeometry_convertRect_toView],
            }
        },
    };
}

- (NSDictionary *)method_15 {
    return @{
        @"dataModel": @{
            @"abstract": @"某个rect在某个view上的rect",
            @"title": @"- (CGRect)convertRect:(CGRect)rect fromView:(nullable UIView *)view;",
            @"isDataModelExpand": @(YES),
            @"desc": @"相对调用的view上的点对于不同的fromView对应不同的位置 \n 计算的point位置是：fromView的顶点距离 + point, size是rect的size",
            @"dataModel": @{
                @"childItems": [self TestProjectViewViewGeometry_convertRect_fromView],
            }
        },
    };
}

- (NSDictionary *)method_16 {
    return @{
        @"dataModel": @{
            @"abstract": @"某个视图在父视图上的约束设置",
            @"title": @"@property(nonatomic) UIViewAutoresizing autoresizingMask;",
            @"isDataModelExpand": @(YES),
            @"desc": @"子视图设置该属性，当父视图的frame发生改变时，子视图的约束生效\n只能设置一次，不能在改变",
            @"dataModel": @{
                @"childItems": [self TestProjectViewViewGeometry_property_autoresizingMask],
            }
        },
    };
}

- (NSDictionary *)method_17:(NSInteger)index {
    return @{
        @"dataModel": @{
            @"abstract": @"获取view的合适的size，最适合UILabel的按钮",
            @"title": @"- (CGSize)sizeThatFits:(CGSize)size;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectViewViewGeometry_sizeThatFits:index],
            }
        },
    };
}

- (NSDictionary *)method_18 {
    return @{
        @"dataModel": @{
            @"abstract": @"把view的大小设置到合适的size，最适合UILabel的按钮",
            @"title": @"- (void)sizeToFit;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectViewViewGeometry_sizeToFit],
            }
        },
    };
}

- (NSMutableArray *)TestProjectViewViewGeometry_sizeToFit {
    WS(wSelf);
    [self createTableModelWithTitle:@"是否设置合适的size" block:^{
        [wSelf.grandChildView sizeToFit];
    }];
    return self.dataMutArr;
}

- (NSMutableArray *)TestProjectViewViewGeometry_sizeThatFits:(NSInteger)index {
    __block TestProjectTableViewModel *m;
    WS(wSelf);
    m = [self createTableModelWithTitle:@"获取合适的size" block:^{
        CGSize size = [wSelf.grandChildView sizeThatFits:CGSizeMake(30, 40)];
        m.desc = [NSString stringWithFormat:@"获取的size为:%@", NSStringFromCGSize(size)];
        [m calculDataViewHeight];
        NSInteger atIndex = wSelf.tableView.dataSourceArray.count - index -1;
        TestProjectTableViewModel *vm = [wSelf.tableView.dataSourceArray objectAtIndex:atIndex];
        [vm calculDataViewHeight];
        [wSelf.tableView reloadRowsAtIndexPaths:@[[NSIndexPath indexPathForRow:atIndex inSection:0]] withRowAnimation:UITableViewRowAnimationNone];
    }];
    return self.dataMutArr;
}


//typedef NS_OPTIONS(NSUInteger, UIViewAutoresizing) {
//    UIViewAutoresizingNone                 = 0,
//    UIViewAutoresizingFlexibleLeftMargin   = 1 << 0,
//    UIViewAutoresizingFlexibleWidth        = 1 << 1,
//    UIViewAutoresizingFlexibleRightMargin  = 1 << 2,
//    UIViewAutoresizingFlexibleTopMargin    = 1 << 3,
//    UIViewAutoresizingFlexibleHeight       = 1 << 4,
//    UIViewAutoresizingFlexibleBottomMargin = 1 << 5
//};

- (NSMutableArray *)TestProjectViewViewGeometry_property_autoresizingMask {
    NSArray *arr = @[
        @{
            @"title": [NSString stringWithFormat:@"设置的是UIViewAutoresizingNone(%ld)", UIViewAutoresizingNone],
            @"value": @(UIViewAutoresizingNone),
        },
        @{
            @"title": [NSString stringWithFormat:@"设置的是UIViewAutoresizingFlexibleLeftMargin(%ld): 修改左边的距离，保证右边的距离不变", UIViewAutoresizingFlexibleLeftMargin],
            @"value": @(UIViewAutoresizingFlexibleLeftMargin),
        },
        @{
            @"title": [NSString stringWithFormat:@"设置的是UIViewAutoresizingFlexibleWidth(%ld): 修改视图的宽度，保证左右边的距离不变", UIViewAutoresizingFlexibleWidth],
            @"value": @(UIViewAutoresizingFlexibleWidth),
        },
        @{
            @"title": [NSString stringWithFormat:@"设置的是UIViewAutoresizingFlexibleRightMargin(%ld): 修改右边的距离，保证左边的距离不变", UIViewAutoresizingFlexibleRightMargin],
            @"value": @(UIViewAutoresizingFlexibleRightMargin),
        },
        @{
            @"title": [NSString stringWithFormat:@"设置的是UIViewAutoresizingFlexibleTopMargin(%ld): 修改上边的距离，保证下边的距离不变", UIViewAutoresizingFlexibleTopMargin],
            @"value": @(UIViewAutoresizingFlexibleTopMargin),
        },
        @{
            @"title": [NSString stringWithFormat:@"设置的是UIViewAutoresizingFlexibleHeight(%ld): 修改视图的高度，保证上边和下边的距离不变", UIViewAutoresizingFlexibleHeight],
            @"value": @(UIViewAutoresizingFlexibleHeight),
        },
        @{
            @"title": [NSString stringWithFormat:@"设置的是UIViewAutoresizingFlexibleBottomMargin(%ld): 修改下边的距离，保证上边的距离不变", UIViewAutoresizingFlexibleBottomMargin],
            @"value": @(UIViewAutoresizingFlexibleBottomMargin),
        },
    ];
    NSInteger x = 0;

    for (NSDictionary *dic in arr) {
        NSString *title = dic[@"title"];
        NSNumber *value = dic[@"value"];
        WS(wSelf);
        WO(wObjc, self.grandChildView);
        x += 10;
        [self createTableModelWithTitle:title block:^{
            wObjc.autoresizingMask = [value integerValue];
            wSelf.childView.frame = CGRectMake(x, 0, 30, 30);
        }];
    }
    return self.dataMutArr;
}

- (NSMutableArray *)TestProjectViewViewGeometry_convertRect_fromView {
    [self createTableModelWithTitle:[NSString stringWithFormat:@"self:%p childView:%p grandView:%p", self, self.childView, self.grandChildView] block:nil];

    CGRect rect = CGRectMake(0, 0, 6, 6);
    [self createTableModelWithTitle:[NSString stringWithFormat:@"CGPointMake(6, 6) 是否是在view:%p的bounds内：%@", self, NSStringFromCGRect([self convertRect:rect fromView:self])] block:nil];
    [self createTableModelWithTitle:[NSString stringWithFormat:@"CGPointMake(6, 6) 是否是在view:%p的bounds内：%@", self.childView, NSStringFromCGRect([self convertRect:rect fromView:self.childView])] block:nil];
    [self createTableModelWithTitle:[NSString stringWithFormat:@"CGPointMake(6, 6) 是否是在view:%p的bounds内：%@", self.grandChildView, NSStringFromCGRect([self convertRect:rect fromView:self.grandChildView])] block:nil];
    return self.dataMutArr;
}

- (NSMutableArray *)TestProjectViewViewGeometry_convertRect_toView {
    [self createTableModelWithTitle:[NSString stringWithFormat:@"self:%p childView:%p grandView:%p", self, self.childView, self.grandChildView] block:nil];
    
    CGRect rect = CGRectMake(0, 0, 6, 6);
    [self createTableModelWithTitle:[NSString stringWithFormat:@"CGPointMake(6, 6) 是否是在view:%p的bounds内：%@", self, NSStringFromCGRect([self convertRect:rect toView:self])] block:nil];
    [self createTableModelWithTitle:[NSString stringWithFormat:@"CGPointMake(6, 6) 是否是在view:%p的bounds内：%@", self.childView, NSStringFromCGRect([self convertRect:rect toView:self.childView])] block:nil];
    [self createTableModelWithTitle:[NSString stringWithFormat:@"CGPointMake(6, 6) 是否是在view:%p的bounds内：%@", self.grandChildView, NSStringFromCGRect([self convertRect:rect toView:self.grandChildView])] block:nil];
    return self.dataMutArr;
}

- (NSMutableArray *)TestProjectViewViewGeometry_convertPoint_fromView {
    [self createTableModelWithTitle:[NSString stringWithFormat:@"self:%p childView:%p grandView:%p", self, self.childView, self.grandChildView] block:nil];
    
    CGPoint point = CGPointMake(6, 6);
    [self createTableModelWithTitle:[NSString stringWithFormat:@"CGPointMake(6, 6) 是否是在view:%p的bounds内：%@", self, NSStringFromCGPoint([self convertPoint:point fromView:self])] block:nil];
    [self createTableModelWithTitle:[NSString stringWithFormat:@"CGPointMake(6, 6) 是否是在view:%p的bounds内：%@", self.childView, NSStringFromCGPoint([self convertPoint:point fromView:self.childView])] block:nil];
    [self createTableModelWithTitle:[NSString stringWithFormat:@"CGPointMake(6, 6) 是否是在view:%p的bounds内：%@", self.grandChildView, NSStringFromCGPoint([self convertPoint:point fromView:self.grandChildView])] block:nil];
    return self.dataMutArr;
}

- (NSMutableArray *)TestProjectViewViewGeometry_convertPoint_toView {
    [self createTableModelWithTitle:[NSString stringWithFormat:@"self:%p childView:%p grandView:%p", self, self.childView, self.grandChildView] block:nil];
    CGPoint point = CGPointMake(6, 6);
    [self createTableModelWithTitle:[NSString stringWithFormat:@"CGPointMake(6, 6) 是否是在view:%p的bounds内：%@", self, NSStringFromCGPoint([self convertPoint:point toView:self])] block:nil];
    [self createTableModelWithTitle:[NSString stringWithFormat:@"CGPointMake(6, 6) 是否是在view:%p的bounds内：%@", self.childView, NSStringFromCGPoint([self convertPoint:point toView:self.childView])] block:nil];
    [self createTableModelWithTitle:[NSString stringWithFormat:@"CGPointMake(6, 6) 是否是在view:%p的bounds内：%@", self.grandChildView, NSStringFromCGPoint([self convertPoint:point toView:self.grandChildView])] block:nil];
    return self.dataMutArr;
}

- (NSMutableArray *)TestProjectViewViewGeometry_pointInside_withEvent {
    [self createTableModelWithTitle:[NSString stringWithFormat:@"self:%p childView:%p grandView:%p", self, self.childView, self.grandChildView] block:nil];
    
    CGPoint point = CGPointMake(6, 6);
    [self pointInside:point withEvent:nil];
    [self createTableModelWithTitle:[NSString stringWithFormat:@"CGPointMake(6, 6) 是否是在view:%p的bounds内：%u", self, [self pointInside:point withEvent:nil]] block:nil];
    [self createTableModelWithTitle:[NSString stringWithFormat:@"CGPointMake(6, 6) 是否是在view:%p的bounds内：%u", self.childView, [self.childView pointInside:point withEvent:nil]] block:nil];
    [self createTableModelWithTitle:[NSString stringWithFormat:@"CGPointMake(6, 6) 是否是在view:%p的bounds内：%u", self.grandChildView, [self.grandChildView pointInside:point withEvent:nil]] block:nil];
    return self.dataMutArr;
}

- (NSMutableArray *)TestProjectViewViewGeometry_hitTest_withEvent {
    [self createTableModelWithTitle:[NSString stringWithFormat:@"self:%p childView:%p grandView:%p", self, self.childView, self.grandChildView] block:nil];
    
    CGPoint point = CGPointMake(6, 6);
    [self createTableModelWithTitle:[NSString stringWithFormat:@"CGPointMake(6, 6) view:%p", [self hitTest:point withEvent:nil]] block:nil];
    [self createTableModelWithTitle:[NSString stringWithFormat:@"CGPointMake(6, 6) view:%p", [self.childView hitTest:point withEvent:nil]] block:nil];
    [self createTableModelWithTitle:[NSString stringWithFormat:@"CGPointMake(6, 6) view:%p", [self.grandChildView hitTest:point withEvent:nil]] block:nil];
    return self.dataMutArr;
}

- (NSMutableArray *)TestProjectViewViewGeometry_property_exclusiveTouch {
    NSArray *arr = @[@(YES), @(NO)];
    for (NSNumber *num in arr) {
        [self createClickSetTableModelWithProperty:@"exclusiveTouch" value:num];
    }
    return self.dataMutArr;
}

- (NSMutableArray *)TestProjectViewViewGeometry_property_multipleTouchEnabled {
    NSArray *arr = @[@(YES), @(NO)];
    for (NSNumber *num in arr) {
        [self createClickSetTableModelWithProperty:@"multipleTouchEnabled" value:num];
    }
    return self.dataMutArr;
}

- (NSMutableArray *)TestProjectViewViewGeometry_property_anchorPoint {
    NSArray *arr = @[
        @{
            @"title": [NSString stringWithFormat:@"设置的值是：%@, 中心点是在右下角", NSStringFromCGPoint(CGPointMake(1, 1))],
            @"value": [NSValue valueWithCGPoint:CGPointMake(1, 1)],
        },
        @{
            @"title": [NSString stringWithFormat:@"设置的值是：%@, 中心点是自己的右方中心点", NSStringFromCGPoint(CGPointMake(1, 0.5))],
            @"value": [NSValue valueWithCGPoint:CGPointMake(1, 0.5)],
        },
        @{
            @"title": [NSString stringWithFormat:@"设置的值是：%@, 中心点是自己的右上角", NSStringFromCGPoint(CGPointMake(1, 0))],
            @"value": [NSValue valueWithCGPoint:CGPointMake(1, 0)],
        },
        @{
            @"title": [NSString stringWithFormat:@"设置的值是：%@, 中心点自己的下方右中心点", NSStringFromCGPoint(CGPointMake(0.5, 1))],
            @"value": [NSValue valueWithCGPoint:CGPointMake(0.5, 1)],
        },
        @{
            @"title": [NSString stringWithFormat:@"设置的值是：%@, 中心点是自己的下方中心点", NSStringFromCGPoint(CGPointMake(0, 1))],
            @"value": [NSValue valueWithCGPoint:CGPointMake(0, 1)],
        },
        @{
            @"title": [NSString stringWithFormat:@"设置的值是：%@, 中心点是在自己的下方右方中心点", NSStringFromCGPoint(CGPointMake(0.5, 0.5))],
            @"value": [NSValue valueWithCGPoint:CGPointMake(0.5, 0.5)],
        },
        @{
            @"title": [NSString stringWithFormat:@"设置的值是：%@, 中心点是在自己的右方中心点", NSStringFromCGPoint(CGPointMake(0.5, 0))],
            @"value": [NSValue valueWithCGPoint:CGPointMake(0.5, 0)],
        },
        @{
            @"title": [NSString stringWithFormat:@"设置的值是：%@, 中心点是在自己的下方中心点", NSStringFromCGPoint(CGPointMake(0, 0.5))],
            @"value": [NSValue valueWithCGPoint:CGPointMake(0, 0.5)],
        },
        @{
            @"title": [NSString stringWithFormat:@"设置的值是：%@, 中心点为自己的中心点", NSStringFromCGPoint(CGPointMake(0, 0))],
            @"value": [NSValue valueWithCGPoint:CGPointMake(0, 0)],
        },
    ];
    for (NSDictionary *dic in arr) {
        NSString *title = dic[@"title"];
        NSValue *value = dic[@"value"];
        [self createClickSetTableModelWithProperty:@"anchorPoint" value:value];
    }
    return self.dataMutArr;
}

- (NSMutableArray *)TestProjectViewViewGeometry_property_contentScaleFactor {
    return [self createClickSetSingleArrayTableModelWithProperty:@"contentScaleFactor" value:@-10];
}

- (NSMutableArray *)TestProjectViewViewGeometry_property_transform3D {
    CATransform3D transform3D = CATransform3DMakeAffineTransform(CGAffineTransformMake(1, 0, 0, 1, 0, 0));
    if (@available(iOS 16.0, *)) {
        NSArray *arr = @[
            @{
                @"title": @"设置的是CATransform3DMakeAffineTransform(CGAffineTransformMake(1, 0, 0, 1, 30, 30))，平移",
                @"value": [NSValue valueWithCATransform3D:CATransform3DMakeAffineTransform(CGAffineTransformMake(1, 0, 0, 1, 30, 30))],
            },
            @{
                @"title": @"设置的是CATransform3DMakeTranslation(10, 20, 30)，平移",
                @"value": [NSValue valueWithCATransform3D:CATransform3DMakeTranslation(10, 20, 30)],
            },
            @{
                @"title": @"设置的是CATransform3DMakeScale(0.5, 0.5, 0.5)，缩放",
                @"value": [NSValue valueWithCATransform3D:CATransform3DMakeScale(0.5, 0.5, 0.5)],
            },
            @{
                @"title": @"设置的是CATransform3DMakeRotation(0.5, 0.5, 0.5, 0.5)，旋转",
                @"value": [NSValue valueWithCATransform3D:CATransform3DMakeRotation(0.5, 0.5, 0.5, 0.5)],
            },
            @{
                @"title": @"设置的是CATransform3DScale(CATransform3DMakeAffineTransform(CGAffineTransformMake(1, 0, 0, 1, 0, 0)), 0.5, 0.5, 1)，缩放",
                @"value": [NSValue valueWithCATransform3D:CATransform3DScale(transform3D, 0.5, 0.5, 1)],
            },
            @{
                @"title": @"设置的是CATransform3DConcat(CGAffineTransformMake(1, 0, 0, 1, -30, 0), CATransform3DMakeAffineTransform(CGAffineTransformMake(1, 0, 0, 1, 30, 30))) 拼接两个CATransform3D",
                @"value": [NSValue valueWithCATransform3D:CATransform3DConcat(CATransform3DMakeAffineTransform(CGAffineTransformMake(1, 0, 0, 1, -30, 0)), CATransform3DMakeAffineTransform(CGAffineTransformMake(1, 0, 0, 1, 30, 30)))],
            },
            @{
                @"title": @"设置的是CATransform3DInvert(CGAffineTransformMake(1, 0, 0, 1, 10, 20))，只会倒转ty数值，20会变成-20",
                @"value": [NSValue valueWithCATransform3D:CATransform3DInvert(CATransform3DMakeAffineTransform(CGAffineTransformMake(1, 0, 0, 1, 10, 20)))],
            },
            @{
                @"title": @"设置的是CATransform3DRotate(CGAffineTransformMake(1, 0, 0, 1, 0, 0), 0.5, 0.5, 0.5, 1)，缩放",
                @"value": [NSValue valueWithCATransform3D:CATransform3DRotate(transform3D, 0.5, 0.5, 0.5, 1)],
            },
            @{
                @"title": @"设置的是CATransform3DTranslate(CGAffineTransformMake(1, 0, 0, 1, 0, 0), 0.5, 0.5, 1)，平移",
                @"value": [NSValue valueWithCATransform3D:CATransform3DTranslate(transform3D, 30, 0.5, 1)],
            },
        ];
        for (NSDictionary *dic in arr) {
            NSValue *value = dic[@"value"];
            CGAffineTransform transform = CATransform3DGetAffineTransform(value.CATransform3DValue);
            NSString *title = [NSString stringWithFormat:@"%@ %@", dic[@"title"], [NSValue valueWithCGAffineTransform:transform]];
            [self createClickSetTableModelWithProperty:@"transform3D" value:value title:title block:nil];
        }
    } else {
        // Fallback on earlier versions
    }
    CGAffineTransform transform = CATransform3DGetAffineTransform(transform3D);
    [self createTableModelWithTitle:[NSString stringWithFormat:@"通过CATransform3DGetAffineTransform(CATransform3DMakeAffineTransform(CGAffineTransformMake(1, 0, 0, 1, 0, 0)))获取CGAffineTransform: %@", [NSValue valueWithCGAffineTransform:transform]] block:nil];
    [self createTableModelWithTitle:[NSString stringWithFormat:@"通过CATransform3DIsAffine(CATransform3DMakeAffineTransform(CGAffineTransformMake(1, 0, 0, 1, 0, 0)))判断是不是CGAffineTransform: %u", CATransform3DIsAffine(transform3D)] block:nil];
    [self createTableModelWithTitle:[NSString stringWithFormat:@"通过CATransform3DIsIdentity(CATransform3DMakeAffineTransform(CGAffineTransformMake(1, 0, 0, 1, 0, 0)))判断是不是CATransform3DIdentity: %u", CATransform3DIsIdentity(transform3D)] block:nil];
    
    [self createTableModelWithTitle:[NSString stringWithFormat:@"通过CATransform3DEqualToTransform(CATransform3DMakeAffineTransform(CGAffineTransformMake(1, 0, 0, 1, 0, 0)))判断是不是同一个CATransform3D: %u", CATransform3DEqualToTransform(transform3D, CATransform3DMakeAffineTransform(transform))] block:nil];

    return self.dataMutArr;
}

- (NSMutableArray *)TestProjectViewViewGeometry_property_transform {
    if (@available(iOS 16.0, *)) {
        NSArray *arr = @[
            @{
                @"title": @"设置的是CGAffineTransformMake(1, 0, 0, 1, 30, 30)，平移",
                @"value": [NSValue valueWithCGAffineTransform:CGAffineTransformMake(1, 0, 0, 1, 30, 30)],
            },
            @{
                @"title": @"设置的是CGAffineTransformTranslate(CGAffineTransformMake(1, 0, 0, 1, 0, 0), 10, 10)，平移",
                @"value": [NSValue valueWithCGAffineTransform:CGAffineTransformTranslate(CGAffineTransformMake(1, 0, 0, 1, 0, 0), 10, 10)],
            },
            @{
                @"title": @"设置的是CGAffineTransformMakeTranslation(10, 1)，平移",
                @"value": [NSValue valueWithCGAffineTransform:CGAffineTransformMakeTranslation(10, 10)],
            },
            @{
                @"title": @"设置的是CGAffineTransformMake(0.5, 0, 0, 0.5, 0, 0)，缩放",
                @"value": [NSValue valueWithCGAffineTransform:CGAffineTransformMake(0.5, 0, 0, 0.5, 0, 0)],
            },
            @{
                @"title": @"设置的是CGAffineTransformScale(CGAffineTransformMake(1, 0, 0, 1, 0, 0), 0.5, 0.5)，缩放",
                @"value": [NSValue valueWithCGAffineTransform:CGAffineTransformScale(CGAffineTransformMake(1, 0, 0, 1, 0, 0), 0.5, 0.5)],
            },
            @{
                @"title": @"设置的是CGAffineTransformMakeScale(0.5, 0.5)，缩放",
                @"value": [NSValue valueWithCGAffineTransform:CGAffineTransformMakeScale(0.5, 0.5)],
            },
            @{
                @"title": @"设置的是CGAffineTransformMake(0.5, 0, 0, 0.5, 0, 0)，旋转",
                @"value": [NSValue valueWithCGAffineTransform:CGAffineTransformMake(-0.5, -0.5, -0.5, 0.5, 0, 0)],
            },
            @{
                @"title": @"设置的是CGAffineTransformMake(0.5, 0, 0, 0.5, 0, 0)，旋转",
                @"value": [NSValue valueWithCGAffineTransform:CGAffineTransformRotate(CGAffineTransformMake(1, 0, 0, 1, 0, 0), 0.5)],
            },
            @{
                @"title": @"设置的是CGAffineTransformMakeRotation(0.5)，旋转",
                @"value": [NSValue valueWithCGAffineTransform:CGAffineTransformMakeRotation(0.5)],
            },
            @{
                @"title": @"设置的是CGAffineTransformMakeWithComponents(CGAffineTransformDecompose(CGAffineTransformMake(1, 0, 0, 1, 30, 30))), 通过CGAffineTransformMakeWithComponents配置进行设置",
                @"value": [NSValue valueWithCGAffineTransform:CGAffineTransformMakeWithComponents(CGAffineTransformDecompose(CGAffineTransformMake(1, 0, 0, 1, 30, 30)))],
            },
        ];
        for (NSDictionary *dic in arr) {
            NSValue *value = dic[@"value"];
            NSString *title = [NSString stringWithFormat:@"%@ %@", dic[@"title"], value];
            [self createClickSetTableModelWithProperty:@"transform" value:value title:title block:nil];
        }
    } else {
        // Fallback on earlier versions
    }
    return self.dataMutArr;
}

- (NSMutableArray *)TestProjectViewViewGeometry_property_center {
    CGPoint point = CGPointMake(20, 20);
    return [self createClickSetSingleArrayTableModelWithProperty:@"center" value:[NSValue valueWithCGPoint:point]];
}

- (NSMutableArray *)TestProjectViewViewGeometry_property_bounds {
    CGRect bounds = CGRectMake(20, 10, 30, 30);
    return [self createClickSetSingleArrayTableModelWithProperty:@"bounds" value:[NSValue valueWithCGRect:bounds]];
}

- (NSMutableArray *)TestProjectViewViewGeometry_property_frame {
    CGRect frame = CGRectMake(30, 30, 30, 30);
    return [self createClickSetSingleArrayTableModelWithProperty:@"frame" value:[NSValue valueWithCGRect:frame]];
}

@end
