//
//  TestProjectBezierPath.m
//  TestProjectIOS
//
//  Created by zjrcumac on 2023/6/7.
//

#import "TestProjectBezierPath.h"

@interface TestProjectBezierPath ()

@property (nonatomic, strong) UIBezierPath *bezierPath;
@property (nonatomic, strong) CAShapeLayer *shapeLayer;
@property (nonatomic, strong) UIView *childBezierView;
@property (nonatomic, strong) UIView *grandBezierView;
@property (nonatomic, strong) UIView *greatGrandBezierView;

@end

@implementation TestProjectBezierPath

- (instancetype)initCreate {
    if (self = [super initCreate]) {
        [self.tableView testproject_updateConstraints:^(TestProjectViewConstrainMake * _Nonnull make) {
            make.height.equal(self).offset(-300);
        }];
        self.grandBezierView.backgroundColor = [UIColor purpleColor];
        self.childBezierView.backgroundColor = [UIColor redColor];
        self.greatGrandBezierView.backgroundColor = [UIColor yellowColor];
    }
    return self;
}

- (UIView *)childBezierView {
    if (!_childBezierView) {
        _childBezierView = [[UIView alloc] init];
        [self addSubview:_childBezierView];
        [_childBezierView testproject_makeConstraints:^(TestProjectViewConstrainMake * _Nonnull make) {
            make.top.leading.trainling.equal(self);
            make.height.equal(@300);
        }];
    }
    return _childBezierView;
}

- (UIView *)grandBezierView {
    if (!_grandBezierView) {
        _grandBezierView = [[UIView alloc] init];
        [self.childBezierView addSubview:_grandBezierView];
        [_grandBezierView testproject_makeConstraints:^(TestProjectViewConstrainMake * _Nonnull make) {
            make.centerX.centerY.equal(self.childBezierView);
            make.height.width.equal(@200);
        }];
    }
    return _grandBezierView;
}

- (UIView *)greatGrandBezierView {
    if (!_greatGrandBezierView) {
        _greatGrandBezierView = [[UIView alloc] init];
        [self.grandBezierView addSubview:_greatGrandBezierView];
        [_greatGrandBezierView testproject_makeConstraints:^(TestProjectViewConstrainMake * _Nonnull make) {
            make.centerY.equal(self.grandBezierView);
            make.centerX.equal(self.grandBezierView).offset(20);
            make.height.width.equal(@50);
        }];
    }
    return _greatGrandBezierView;
}

- (UIBezierPath *)bezierPath {
    if (!_bezierPath) {
        _bezierPath = [UIBezierPath bezierPathWithOvalInRect:CGRectMake(0, 0, 100, 200)];
        [self.shapeLayer setPath:_bezierPath.CGPath];
        dispatch_main_queue_work(self.grandBezierView.layer.mask = self.shapeLayer;)
    }
    return _bezierPath;
}

- (CAShapeLayer *)shapeLayer {
    if (!_shapeLayer) {
        _shapeLayer = [[CAShapeLayer alloc] initWithLayer:self.layer];
        _shapeLayer.fillColor = [UIColor blueColor].CGColor;
        _shapeLayer.strokeColor = [UIColor cyanColor].CGColor;
    }
    return _shapeLayer;
}

- (id)setPropertyValueObject {
    return self.bezierPath;
}

- (void(^)(void))setBezierPathToView:(UIBezierPath *)bezierPath {
    WS(wSelf);
    return ^(void) {
        [wSelf.shapeLayer setPath:bezierPath.CGPath];
        wSelf.grandBezierView.layer.mask = wSelf.shapeLayer;
    };
}

- (void(^)(void))insertBezierPathToView:(UIBezierPath *)bezierPath key:(NSString *)key value:(id)value {
    WS(wSelf);
    return ^(void) {
        CAShapeLayer *shapeLayer = [[CAShapeLayer alloc] init];
        shapeLayer.path = bezierPath.CGPath;
        shapeLayer.lineWidth = 10;
        shapeLayer.lineDashPhase = 100;
        shapeLayer.fillColor = [UIColor blueColor].CGColor;
        shapeLayer.strokeColor = [UIColor cyanColor].CGColor;
        if (key && value) {
            [shapeLayer setValue:value forKey:key];
        }
        [wSelf.grandBezierView.layer addSublayer:shapeLayer];
    };
}

- (NSDictionary *)method_30:(NSInteger)index {
    return @{
        @"dataModel": @{
            @"abstract": @"执行UIBezierPath的方法, 超出的范围被切掉",
            @"title": @"- (void)addClip;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectBezierPath_addClip:index],
            }
        },
    };
}

- (NSMutableArray *)TestProjectBezierPath_addClip:(NSInteger)index {
    WS(wSelf);
    return [self createModelSingleArrayWithIndex:index title:@"- (void)addClip" block:^{
        [wSelf.bezierPath addClip];
    }];
}

- (NSDictionary *)method_29:(NSInteger)index {
    return @{
        @"dataModel": @{
            @"abstract": @"执行UIBezierPath的方法",
            @"title": @"- (void)setLineDash:(nullable const CGFloat *)pattern count:(NSInteger)count phase:(CGFloat)phase;",
            @"isDataModelExpand": @(YES),
            @"desc": @"通过CAShapeLayer展示的，得用CAShapeLayer的属性lineDashPhase设置，用UIBezierPath的方法设置无效",
            @"dataModel": @{
                @"childItems": [self TestProjectBezierPath_setLineDash_count_phase:index],
            }
        },
    };
}

- (NSMutableArray *)TestProjectBezierPath_setLineDash_count_phase:(NSInteger)index {
    UIBezierPath *bezierPath = [UIBezierPath bezierPath];
    CGPoint point = CGPointMake(50, 30);
    [bezierPath moveToPoint:point];
    [bezierPath addLineToPoint:CGPointMake(20, 100)];
    [bezierPath addLineToPoint:CGPointMake(50, 170)];
    [bezierPath addLineToPoint:CGPointMake(80, 100)];
    
    return [self createModelSingleArrayWithIndex:index title:@"设置lineDashPattern" block:[self insertBezierPathToView:bezierPath key:@"lineDashPattern" value:@[@1, @2, @1, @2, @3, @2]]];
}

- (NSDictionary *)method_28:(NSInteger)index {
    return @{
        @"dataModel": @{
            @"abstract": @"执行UIBezierPath的属性usesEvenOddFillRule, 单双数圈规则是否用于绘制路径，默认是NO",
            @"title": @"@property(nonatomic) BOOL usesEvenOddFillRule;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectBezierPath_property_usesEvenOddFillRule:index],
            }
        },
    };
}

- (NSMutableArray *)TestProjectBezierPath_property_usesEvenOddFillRule:(NSInteger)index {

    NSArray *arr = @[
        @{
            @"title": [NSString stringWithFormat:@"设置的属性是YES"],
            @"value": @YES,
        },
        @{
            @"title": [NSString stringWithFormat:@"设置的属性是NO"],
            @"value": @NO,
        },
    ];
    for (NSDictionary *dic in arr) {
        NSString *title = dic[@"title"];
        NSNumber *value = dic[@"value"];
        UIBezierPath *bezierPath = [UIBezierPath bezierPath];
        CGPoint point = CGPointMake(50, 30);
        [bezierPath moveToPoint:point];
        [bezierPath addLineToPoint:CGPointMake(20, 100)];
        [bezierPath addLineToPoint:CGPointMake(50, 170)];
        [bezierPath addLineToPoint:CGPointMake(80, 100)];
        bezierPath.usesEvenOddFillRule = [value boolValue];
        [self createModelWithIndex:index title:title block:[self insertBezierPathToView:bezierPath key:nil value:nil]];
    }
    return self.dataMutArr;
}

- (NSDictionary *)method_27:(NSInteger)index {
    return @{
        @"dataModel": @{
            @"abstract": @"执行UIBezierPath的属性flatness, 弯曲路径的渲染精度，默认为0.6，越小精度越高，消耗性能越高",
            @"title": @"@property(nonatomic) CGFloat flatness;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectBezierPath_property_flatness:index],
            }
        },
    };
}

- (NSMutableArray *)TestProjectBezierPath_property_flatness:(NSInteger)index {
    UIBezierPath *bezierPath = [UIBezierPath bezierPath];

    bezierPath.flatness = 0.1;
    CGPoint point = CGPointMake(50, 30);
    [bezierPath moveToPoint:point];
    [bezierPath addLineToPoint:CGPointMake(20, 100)];
    [bezierPath addLineToPoint:CGPointMake(50, 170)];
    [bezierPath addLineToPoint:CGPointMake(80, 100)];

    return [self createModelSingleArrayWithIndex:index title:[NSString stringWithFormat:@"path:%@", bezierPath.CGPath] block:[self insertBezierPathToView:bezierPath key:nil value:nil]];
}

- (NSDictionary *)method_26:(NSInteger)index {
    return @{
        @"dataModel": @{
            @"abstract": @"执行UIBezierPath的属性miterLimit, 设置miter的限制",
            @"title": @"@property(nonatomic) CGFloat miterLimit;",
            @"isDataModelExpand": @(YES),
            @"desc": @"通过CAShapeLayer展示的，得用CAShapeLayer的属性miterLimit设置，用UIBezierPath的属性设置无效\n只有当lineJoin为kCALineJoinMiter才有效，为了避免斜接长度过长，可以设置这个属性，当超过这个数值则会以kCALineJoinBevel展示",
            @"dataModel": @{
                @"childItems": [self TestProjectBezierPath_property_miterLimit:index],
            }
        },
    };
}

- (NSMutableArray *)TestProjectBezierPath_property_miterLimit:(NSInteger)index {
    UIBezierPath *bezierPath = [UIBezierPath bezierPath];
    CGPoint point = CGPointMake(50, 30);
    [bezierPath moveToPoint:point];
    [bezierPath addLineToPoint:CGPointMake(20, 100)];
    [bezierPath addLineToPoint:CGPointMake(50, 170)];
    [bezierPath addLineToPoint:CGPointMake(80, 100)];

    return [self createModelSingleArrayWithIndex:index title:[NSString stringWithFormat:@"path:%@", bezierPath.CGPath] block:[self insertBezierPathToView:bezierPath key:@"miterLimit" value:@(10)]];
}

- (NSDictionary *)method_25:(NSInteger)index {
    return @{
        @"dataModel": @{
            @"abstract": @"执行UIBezierPath的属性lineJoinStyle，两点的结合处的样式",
            @"title": @"@property(nonatomic) CGLineJoin lineJoinStyle;",
            @"isDataModelExpand": @(YES),
            @"desc": @"通过CAShapeLayer展示的，得用CAShapeLayer的属性lineJoin设置，用UIBezierPath的属性设置无效",
            @"dataModel": @{
                @"childItems": [self TestProjectBezierPath_property_lineJoinStyle:index],
            }
        },
    };
}

- (NSMutableArray *)TestProjectBezierPath_property_lineJoinStyle:(NSInteger)index {
    UIBezierPath *bezierPath = [UIBezierPath bezierPath];
    CGPoint point = CGPointMake(50, 30);
    [bezierPath moveToPoint:point];
    [bezierPath addLineToPoint:CGPointMake(20, 100)];
    [bezierPath addLineToPoint:CGPointMake(50, 170)];
    [bezierPath addLineToPoint:CGPointMake(80, 100)];

    NSArray *arr = @[
        @{
            @"title": [NSString stringWithFormat:@"设置的属性是kCALineJoinMiter, 尖角"],
            @"value": kCALineJoinMiter,
        },
        @{
            @"title": [NSString stringWithFormat:@"设置的属性是kCALineJoinRound, 圆角"],
            @"value": kCALineJoinRound,
        },
        @{
            @"title": [NSString stringWithFormat:@"设置的属性是kCALineJoinBevel, 斜切"],
            @"value": kCALineJoinBevel,
        },
    ];
    for (NSDictionary *dic in arr) {
        NSString *title = dic[@"title"];
        NSString *value = dic[@"value"];
        [self createModelWithIndex:index title:title block:[self insertBezierPathToView:bezierPath key:@"lineJoin" value:value]];
    }
    return self.dataMutArr;
}

- (NSDictionary *)method_24:(NSInteger)index {
    return @{
        @"dataModel": @{
            @"abstract": @"执行UIBezierPath的属性lineCapStyle, 线头的样式",
            @"title": @"@property(nonatomic) CGLineCap lineCapStyle;",
            @"isDataModelExpand": @(YES),
            @"desc": @"通过CAShapeLayer展示的，得用CAShapeLayer的属性lineCap设置，用UIBezierPath的属性设置无效",
            @"dataModel": @{
                @"childItems": [self TestProjectBezierPath_property_lineCapStyle:index],
            }
        },
    };
}

- (NSMutableArray *)TestProjectBezierPath_property_lineCapStyle:(NSInteger)index {
    UIBezierPath *bezierPath = [UIBezierPath bezierPath];
    CGPoint point = CGPointMake(50, 30);
    [bezierPath moveToPoint:point];
    [bezierPath addLineToPoint:CGPointMake(20, 100)];
    [bezierPath addLineToPoint:CGPointMake(50, 170)];
    [bezierPath addLineToPoint:CGPointMake(80, 100)];
//    [bezierPath closePath];

    NSArray *arr = @[
        @{
            @"title": [NSString stringWithFormat:@"设置的属性是kCALineCapButt，方形，一端被切了"],
            @"value": kCALineCapButt,
        },
        @{
            @"title": [NSString stringWithFormat:@"设置的属性是kCALineCapRound，圆角"],
            @"value": kCALineCapRound,
        },
        @{
            @"title": [NSString stringWithFormat:@"设置的属性是kCALineCapSquare，方形，两端一样"],
            @"value": kCALineCapSquare,
        },
    ];
    for (NSDictionary *dic in arr) {
        NSString *title = dic[@"title"];
        NSString *value = dic[@"value"];
        [self createModelWithIndex:index title:title block:[self insertBezierPathToView:bezierPath key:@"lineCap" value:value]];
    }
    return self.dataMutArr;
}

- (NSDictionary *)method_23:(NSInteger)index {
    return @{
        @"dataModel": @{
            @"abstract": @"执行UIBezierPath的属性lineWidth",
            @"title": @"@property(nonatomic) CGFloat lineWidth;",
            @"isDataModelExpand": @(YES),
            @"desc": @"通过CAShapeLayer展示的，得用CAShapeLayer的属性设置，用UIBezierPath的属性设置无效",
            @"dataModel": @{
                @"childItems": [self TestProjectBezierPath_property_lineWidth:index],
            }
        },
    };
}

- (NSMutableArray *)TestProjectBezierPath_property_lineWidth:(NSInteger)index {
    UIBezierPath *bezierPath = [UIBezierPath bezierPath];

    CGPoint point = CGPointMake(50, 20);
    [bezierPath moveToPoint:point];
    [bezierPath addLineToPoint:CGPointMake(20, 100)];
    [bezierPath addLineToPoint:CGPointMake(50, 180)];
    [bezierPath closePath];

    return [self createModelSingleArrayWithIndex:index title:[NSString stringWithFormat:@"path:%@", bezierPath.CGPath] block:[self insertBezierPathToView:bezierPath key:@"lineWidth" value:@(10)]];
}

- (NSDictionary *)method_22:(NSInteger)index {
    return @{
        @"dataModel": @{
            @"abstract": @"执行UIBezierPath的方法, 是否包含某个点",
            @"title": @"- (BOOL)containsPoint:(CGPoint)point;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectBezierPath_containsPoint:index],
            }
        },
    };
}

- (NSMutableArray *)TestProjectBezierPath_containsPoint:(NSInteger)index {
    NSArray *arr = @[
        @{
            @"title": [NSString stringWithFormat:@"CGPointMake(0, 0)"],
            @"value": [NSValue valueWithCGPoint:CGPointMake(50, 0)],
        },
        @{
            @"title": [NSString stringWithFormat:@"CGPointMake(50, 100)"],
            @"value": [NSValue valueWithCGPoint:CGPointMake(50, 100)],
        },
        @{
            @"title": [NSString stringWithFormat:@"CGPointMake(100, 0)"],
            @"value": [NSValue valueWithCGPoint:CGPointMake(100, 0)],
        },
    ];
    for (NSDictionary *dic in arr) {
        NSString *title = dic[@"title"];
        NSValue *value = dic[@"value"];
        CGPoint point = value.CGPointValue;
        BOOL res = [self.bezierPath containsPoint:point];
        [self createModelWithIndex:index title:[NSString stringWithFormat:@"%@是否包含在path中：%u", title, res] block:nil];
    }
    return self.dataMutArr;
}

- (NSDictionary *)method_21:(NSInteger)index {
    return @{
        @"dataModel": @{
            @"abstract": @"执行UIBezierPath的属性currentPoint",
            @"title": @"@property(nonatomic,readonly) CGPoint currentPoint;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectBezierPath_property_currentPoint:index],
            }
        },
    };
}

- (NSMutableArray *)TestProjectBezierPath_property_currentPoint:(NSInteger)index {
    return [self createModelSingleArrayWithIndex:index
                                        property:@"currentPoint"
                                           value:nil
                                       operation:TestProjectCreateModelOnlyGet
                                           block:nil];
}

- (NSDictionary *)method_20:(NSInteger)index {
    return @{
        @"dataModel": @{
            @"abstract": @"执行UIBezierPath的属性bounds",
            @"title": @"@property(nonatomic,readonly) CGRect bounds;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectBezierPath_property_bounds:index],
            }
        },
    };
}

- (NSMutableArray *)TestProjectBezierPath_property_bounds:(NSInteger)index {
    return [self createModelSingleArrayWithIndex:index
                                        property:@"bounds"
                                           value:nil
                                       operation:TestProjectCreateModelOnlyGet
                                           block:nil];
}

- (NSDictionary *)method_19:(NSInteger)index {
    return @{
        @"dataModel": @{
            @"abstract": @"执行UIBezierPath的属性empty, 是否是空的",
            @"title": @"@property(readonly,getter=isEmpty) BOOL empty;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectBezierPath_property_empty:index],
            }
        },
    };
}

- (NSMutableArray *)TestProjectBezierPath_property_empty:(NSInteger)index {
    return [self createModelSingleArrayWithIndex:index
                                        property:@"empty"
                                           value:nil
                                       operation:TestProjectCreateModelOnlyGet
                                           block:nil];
}

- (NSDictionary *)method_18:(NSInteger)index {
    return @{
        @"dataModel": @{
            @"abstract": @"执行UIBezierPath的方法, 设置path的CGAffineTransform",
            @"title": @"- (void)applyTransform:(CGAffineTransform)transform;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectBezierPath_applyTransform:index],
            }
        },
    };
}

- (NSMutableArray *)TestProjectBezierPath_applyTransform:(NSInteger)index {
    UIBezierPath *bezierPath = [UIBezierPath bezierPath];
    CGPoint point = CGPointMake(0, 0);
    [bezierPath moveToPoint:point];
    [bezierPath addLineToPoint:CGPointMake(100, 100)];
    [bezierPath addLineToPoint:CGPointMake(100, 0)];
    CGAffineTransform form = CGAffineTransformMakeScale(2, 1);
    [bezierPath applyTransform:form];
    [bezierPath closePath];
    return [self createModelSingleArrayWithIndex:index title:[NSString stringWithFormat:@"path:%@", bezierPath.CGPath] block:[self setBezierPathToView:bezierPath]];
}

- (NSDictionary *)method_17:(NSInteger)index {
    return @{
        @"dataModel": @{
            @"abstract": @"执行UIBezierPath的方法, 反转线路，点从后面开始绘制",
            @"title": @"- (UIBezierPath *)bezierPathByReversingPath API_AVAILABLE(ios(6.0));",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectBezierPath_bezierPathByReversingPath:index],
            }
        },
    };
}

- (NSMutableArray *)TestProjectBezierPath_bezierPathByReversingPath:(NSInteger)index {
    UIBezierPath *bezierPath = [UIBezierPath bezierPath];
    CGPoint point = CGPointMake(0, 0);
    [bezierPath moveToPoint:point];
    [bezierPath addLineToPoint:CGPointMake(100, 100)];
    [bezierPath addLineToPoint:CGPointMake(100, 0)];

    bezierPath = [bezierPath bezierPathByReversingPath];

    return [self createModelSingleArrayWithIndex:index title:[NSString stringWithFormat:@"path:%@", bezierPath.CGPath] block:[self setBezierPathToView:bezierPath]];
}

- (NSDictionary *)method_16:(NSInteger)index {
    return @{
        @"dataModel": @{
            @"abstract": @"执行UIBezierPath的方法, 拼接UIBezierPath",
            @"title": @"- (void)appendPath:(UIBezierPath *)bezierPath;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectBezierPath_appendPath:index],
            }
        },
    };
}

- (NSMutableArray *)TestProjectBezierPath_appendPath:(NSInteger)index {
    UIBezierPath *bezierPath = [UIBezierPath bezierPath];
    CGPoint point = CGPointMake(0, 0);
    [bezierPath moveToPoint:point];

    [bezierPath addArcWithCenter:CGPointMake(100, 100) radius:50 startAngle:0 endAngle:2 * M_PI clockwise:YES];
    [bezierPath closePath];

    UIBezierPath *bezierPath1 = [UIBezierPath bezierPath];
    [bezierPath1 moveToPoint:point];
    [bezierPath1 addLineToPoint:CGPointMake(200, 200)];
    [bezierPath1 addLineToPoint:CGPointMake(0, 200)];

    [bezierPath appendPath:bezierPath1];

    return [self createModelSingleArrayWithIndex:index title:[NSString stringWithFormat:@"path:%@", bezierPath.CGPath] block:[self setBezierPathToView:bezierPath]];
}

- (NSDictionary *)method_15:(NSInteger)index {
    return @{
        @"dataModel": @{
            @"abstract": @"执行UIBezierPath的方法, 移除所有的位置信息",
            @"title": @"- (void)removeAllPoints;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectBezierPath_removeAllPoints:index],
            }
        },
    };
}

- (NSMutableArray *)TestProjectBezierPath_removeAllPoints:(NSInteger)index {
    UIBezierPath *bezierPath = [UIBezierPath bezierPath];
    CGPoint point = CGPointMake(0, 0);
    [bezierPath moveToPoint:point];

    [bezierPath addArcWithCenter:CGPointMake(100, 100) radius:50 startAngle:0 endAngle:2 * M_PI clockwise:YES];
    [bezierPath closePath];

    [bezierPath removeAllPoints];

    return [self createModelSingleArrayWithIndex:index title:[NSString stringWithFormat:@"path:%@", bezierPath.CGPath] block:[self setBezierPathToView:bezierPath]];
}

- (NSDictionary *)method_14:(NSInteger)index {
    return @{
        @"dataModel": @{
            @"abstract": @"执行UIBezierPath的方法, 关闭path绘制，后面的则不会进行添加, 而且如果首尾两个点位没有重合会自动连接起来",
            @"title": @"- (void)closePath;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectBezierPath_closePath:index],
            }
        },
    };
}

- (NSMutableArray *)TestProjectBezierPath_closePath:(NSInteger)index {
    UIBezierPath *bezierPath = [UIBezierPath bezierPath];
    CGPoint point = CGPointMake(0, 0);
    [bezierPath moveToPoint:point];
    [bezierPath addLineToPoint:CGPointMake(100, 100)];
    [bezierPath addLineToPoint:CGPointMake(0, 100)];
    [bezierPath addLineToPoint:CGPointMake(100, 0)];

    [bezierPath closePath];
    [bezierPath addLineToPoint:CGPointMake(200, 100)];

    return [self createModelSingleArrayWithIndex:index title:[NSString stringWithFormat:@"path:%@", bezierPath.CGPath] block:[self setBezierPathToView:bezierPath]];
}

- (NSDictionary *)method_13:(NSInteger)index {
    return @{
        @"dataModel": @{
            @"abstract": @"执行UIBezierPath的方法, 根据传入的参数设置圆形",
            @"title": @"- (void)addArcWithCenter:(CGPoint)center radius:(CGFloat)radius startAngle:(CGFloat)startAngle endAngle:(CGFloat)endAngle clockwise:(BOOL)clockwise API_AVAILABLE(ios(4.0));",
            @"isDataModelExpand": @(YES),
            @"desc": @"@param center:设置圆的中心点\n@param radius:半径\n@param startAngle:开始角度位置\n@param endAngle:结束角度位置半径\n@param clockwise:是否是顺时针\n",
            @"dataModel": @{
                @"childItems": [self TestProjectBezierPath_addArcWithCenter_radius_startAngle_endAngle_clockwise:index],
            }
        },
    };
}

- (NSMutableArray *)TestProjectBezierPath_addArcWithCenter_radius_startAngle_endAngle_clockwise:(NSInteger)index {
    UIBezierPath *bezierPath = [UIBezierPath bezierPath];
    CGPoint point = CGPointMake(0, 0);
    [bezierPath moveToPoint:point];

    [bezierPath addArcWithCenter:CGPointMake(100, 100) radius:50 startAngle:0 endAngle:2 * M_PI clockwise:YES];
    [bezierPath closePath];

    return [self createModelSingleArrayWithIndex:index title:[NSString stringWithFormat:@"path:%@", bezierPath.CGPath] block:[self setBezierPathToView:bezierPath]];
}

- (NSDictionary *)method_12:(NSInteger)index {
    return @{
        @"dataModel": @{
            @"abstract": @"执行UIBezierPath的方法, 根据传入的参数设置弧线",
            @"title": @"- (void)addQuadCurveToPoint:(CGPoint)endPoint controlPoint:(CGPoint)controlPoint;",
            @"isDataModelExpand": @(YES),
            @"desc": @"@param endPoint:要到哪个点进行结束\n@param controlPoint:到第一个控制点进行转弯\n",
            @"dataModel": @{
                @"childItems": [self TestProjectBezierPath_addQuadCurveToPoint_controlPoint:index],
            }
        },
    };
}

- (NSMutableArray *)TestProjectBezierPath_addQuadCurveToPoint_controlPoint:(NSInteger)index {
    UIBezierPath *bezierPath = [UIBezierPath bezierPath];
    CGPoint point = CGPointMake(0, 0);
    [bezierPath moveToPoint:point];

    [bezierPath addQuadCurveToPoint:CGPointMake(100, 100) controlPoint:CGPointMake(100, 20)];
    [bezierPath closePath];

    return [self createModelSingleArrayWithIndex:index title:[NSString stringWithFormat:@"path:%@", bezierPath.CGPath] block:[self setBezierPathToView:bezierPath]];
}

- (NSDictionary *)method_11:(NSInteger)index {
    return @{
        @"dataModel": @{
            @"abstract": @"执行UIBezierPath的方法, 根据传入的参数设置曲线",
            @"title": @"- (void)addCurveToPoint:(CGPoint)endPoint controlPoint1:(CGPoint)controlPoint1 controlPoint2:(CGPoint)controlPoint2;",
            @"isDataModelExpand": @(YES),
            @"desc": @"@param endPoint:要到哪个点进行结束\n@param controlPoint1:到第一个控制点进行转弯\n@param controlPoint2:到第二个控制点进行转弯\n",
            @"dataModel": @{
                @"childItems": [self TestProjectBezierPath_addCurveToPoint_controlPoint1_controlPoint2:index],
            }
        },
    };
}

- (NSMutableArray *)TestProjectBezierPath_addCurveToPoint_controlPoint1_controlPoint2:(NSInteger)index {
    UIBezierPath *bezierPath = [UIBezierPath bezierPath];
    CGPoint point = CGPointMake(0, 0);
    [bezierPath moveToPoint:point];

    [bezierPath addCurveToPoint:CGPointMake(100, 100) controlPoint1:CGPointMake(0, 50) controlPoint2:CGPointMake(0, 100)];
    [bezierPath closePath];

    return [self createModelSingleArrayWithIndex:index title:[NSString stringWithFormat:@"path:%@", bezierPath.CGPath] block:[self setBezierPathToView:bezierPath]];
}

- (NSDictionary *)method_10:(NSInteger)index {
    return @{
        @"dataModel": @{
            @"abstract": @"执行UIBezierPath的方法, 根据CGPoint绘制直线，必须要有三个CGPoint才能绘制",
            @"title": @"- (void)addLineToPoint:(CGPoint)point;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectBezierPath_addLineToPoint:index],
            }
        },
    };
}

- (NSMutableArray *)TestProjectBezierPath_addLineToPoint:(NSInteger)index {
    UIBezierPath *bezierPath = [UIBezierPath bezierPath];
    CGPoint point = CGPointMake(20, 15);
    CGPoint point1 = CGPointMake(20, 30);
    CGPoint point2 = CGPointMake(30, 40);
    [bezierPath moveToPoint:point];
    [bezierPath addLineToPoint:point1];
    [bezierPath addLineToPoint:point2];
    [bezierPath closePath];

    return [self createModelSingleArrayWithIndex:index title:[NSString stringWithFormat:@"path:%@", bezierPath.CGPath] block:[self setBezierPathToView:bezierPath]];
}

- (NSDictionary *)method_9:(NSInteger)index {
    return @{
        @"dataModel": @{
            @"abstract": @"执行UIBezierPath的方法, 开始从某个点开始绘制",
            @"title": @"- (void)moveToPoint:(CGPoint)point;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectBezierPath_moveToPoint:index],
            }
        },
    };
}

- (NSMutableArray *)TestProjectBezierPath_moveToPoint:(NSInteger)index {
    UIBezierPath *bezierPath = [UIBezierPath bezierPath];
    CGPoint point = CGPointMake(20, 15);
    [bezierPath moveToPoint:point];
    [bezierPath addLineToPoint:CGPointMake(20, 30)];
    [bezierPath addLineToPoint:CGPointMake(30, 15)];
    [bezierPath closePath];

    return [self createModelSingleArrayWithIndex:index title:[NSString stringWithFormat:@"path:%@", bezierPath.CGPath] block:[self setBezierPathToView:bezierPath]];
}

- (NSDictionary *)method_8:(NSInteger)index {
    return @{
        @"dataModel": @{
            @"abstract": @"执行UIBezierPath的方法, 获取CGPathRef",
            @"title": @"- (CGPathRef)CGPath NS_RETURNS_INNER_POINTER CF_RETURNS_NOT_RETAINED;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectBezierPath_CGPath:index],
            }
        },
    };
}

- (NSMutableArray *)TestProjectBezierPath_CGPath:(NSInteger)index {
    WS(wSelf);
    return [self createModelSingleArrayWithIndex:index title:@"CGPath" methodBlock:^NSString * _Nonnull{
        CGPathRef pathRef = [wSelf.bezierPath CGPath];
        return [NSString stringWithFormat:@"%@", pathRef];
    }];
}

- (NSDictionary *)method_7:(NSInteger)index {
    return @{
        @"dataModel": @{
            @"abstract": @"执行UIBezierPath的class方法, 通过CGPathRef创建",
            @"title": @"+ (instancetype)bezierPathWithCGPath:(CGPathRef)CGPath;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectBezierPath_class_bezierPathWithCGPath:index],
            }
        },
    };
}

- (NSMutableArray *)TestProjectBezierPath_class_bezierPathWithCGPath:(NSInteger)index {
    CGMutablePathRef pathRef = CGPathCreateMutable();
    CGPathAddRect(pathRef, NULL, CGRectMake(0, 0, 10, 10));
    
//    CGPoint point[4] = {
//        CGPointMake(0, 0),
//        CGPointMake(0, 12),
//        CGPointMake(5, 12),
//        CGPointMake(5, 0),
//    };
//    CGAffineTransform tran[] = {CGAffineTransformIdentity};
//    CGPathAddLines(pathRef, tran, point, 4);
    
    UIBezierPath *path = [UIBezierPath bezierPathWithCGPath:pathRef];
    CGPathRelease(pathRef);
    return [self createModelSingleArrayWithIndex:index title:[NSString stringWithFormat:@"pathRef:%@", path.CGPath] block:[self setBezierPathToView:path]];
}

- (NSDictionary *)method_6:(NSInteger)index {
    return @{
        @"dataModel": @{
            @"abstract": @"执行UIBezierPath的class方法, 生成一个圆弧形状",
            @"title": @"+ (instancetype)bezierPathWithArcCenter:(CGPoint)center radius:(CGFloat)radius startAngle:(CGFloat)startAngle endAngle:(CGFloat)endAngle clockwise:(BOOL)clockwise;",
            @"isDataModelExpand": @(YES),
            @"desc": @"@param center: 中心点位置\n@param radius: 半径\n@param startAngle: 起始弧度位置\n@param endAngle: 结束弧度位置\n@param clockwise: 是顺时针还是逆时针\n",
            @"dataModel": @{
                @"childItems": [self TestProjectBezierPath_class_bezierPathWithArcCenter_radius_startAngle_endAngle_clockwise:index],
            }
        },
    };
}

- (NSMutableArray *)TestProjectBezierPath_class_bezierPathWithArcCenter_radius_startAngle_endAngle_clockwise:(NSInteger)index {
    CGPoint point = CGPointMake(10, 10);
    CGFloat radius = 8;
    CGFloat startAngle = 0;
    CGFloat endAngle = M_PI_2;
    NSArray *arr = @[
        @{
            @"title": [NSString stringWithFormat:@"设置的属性值是YES, 顺时针"],
            @"value": @(YES),
        },
        @{
            @"title": [NSString stringWithFormat:@"设置的属性值是NO, 逆时针"],
            @"value": @(NO),
        },
    ];
    for (NSDictionary *dic in arr) {
        NSString *title = dic[@"title"];
        BOOL clockwise = [dic[@"value"] boolValue];
        [self createModelWithIndex:index title:[NSString stringWithFormat:@"%@ point:%@ radius:%f startAngle:%f endAngle:%f", title, NSStringFromCGPoint(point), radius, startAngle, endAngle] block:[self setBezierPathToView:[UIBezierPath bezierPathWithArcCenter:point radius:radius startAngle:startAngle endAngle:endAngle clockwise:clockwise]]];
    }
    return self.dataMutArr;
}

- (NSDictionary *)method_5:(NSInteger)index {
    return @{
        @"dataModel": @{
            @"abstract": @"执行UIBezierPath的class方法, 生成一个矩形，可以自定义一个圆角并且可以指定切哪几个圆角",
            @"title": @"+ (instancetype)bezierPathWithRoundedRect:(CGRect)rect byRoundingCorners:(UIRectCorner)corners cornerRadii:(CGSize)cornerRadii;",
            @"isDataModelExpand": @(YES),
            @"desc": @"@param cornerRadii:设置width有用",
            @"dataModel": @{
                @"childItems": [self TestProjectBezierPath_class_bezierPathWithRoundedRect_byRoundingCorners_cornerRadii:index],
            }
        },
    };
}

//typedef NS_OPTIONS(NSUInteger, UIRectCorner) {
//    UIRectCornerTopLeft     = 1 << 0,
//    UIRectCornerTopRight    = 1 << 1,
//    UIRectCornerBottomLeft  = 1 << 2,
//    UIRectCornerBottomRight = 1 << 3,
//    UIRectCornerAllCorners  = ~0UL
//};

- (NSMutableArray *)TestProjectBezierPath_class_bezierPathWithRoundedRect_byRoundingCorners_cornerRadii:(NSInteger)index {
    CGRect rect = CGRectMake(5, 5, 20, 30);
    CGSize radius = CGSizeMake(10, 1);
    NSArray *arr = @[
        @{
            @"title": [NSString stringWithFormat:@"设置的属性值是UIRectCornerTopLeft(%ld), 切左上角", UIRectCornerTopLeft],
            @"value": @(UIRectCornerTopLeft),
        },
        @{
            @"title": [NSString stringWithFormat:@"设置的属性值是UIRectCornerTopRight(%ld), 切右上角", UIRectCornerTopRight],
            @"value": @(UIRectCornerTopRight),
        },
        @{
            @"title": [NSString stringWithFormat:@"设置的属性值是UIRectCornerBottomLeft(%ld), 切左下角", UIRectCornerBottomLeft],
            @"value": @(UIRectCornerBottomLeft),
        },
        @{
            @"title": [NSString stringWithFormat:@"设置的属性值是UIRectCornerBottomRight(%ld), 切右下角", UIRectCornerBottomRight],
            @"value": @(UIRectCornerBottomRight),
        },
        @{
            @"title": [NSString stringWithFormat:@"设置的属性值是UIRectCornerAllCorners(%ld), 切所有角", UIRectCornerAllCorners],
            @"value": @(UIRectCornerAllCorners),
        },
    ];
    for (NSDictionary *dic in arr) {
        NSString *title = dic[@"title"];
        UIRectCorner corner = [dic[@"value"] integerValue];
        [self createModelWithIndex:index title:[NSString stringWithFormat:@"%@ rect:%@ size:%@", title, NSStringFromCGRect(rect), NSStringFromCGSize(radius)] block:[self setBezierPathToView:[UIBezierPath bezierPathWithRoundedRect:rect byRoundingCorners:corner cornerRadii:radius]]];
    }
    return self.dataMutArr;
}

- (NSDictionary *)method_4:(NSInteger)index {
    return @{
        @"dataModel": @{
            @"abstract": @"执行UIBezierPath的class方法, 生成一个矩形，可以自定义一个圆角",
            @"title": @"+ (instancetype)bezierPathWithRoundedRect:(CGRect)rect cornerRadius:(CGFloat)cornerRadius;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectBezierPath_class_bezierPathWithRoundedRect_cornerRadius:index],
            }
        },
    };
}

- (NSMutableArray *)TestProjectBezierPath_class_bezierPathWithRoundedRect_cornerRadius:(NSInteger)index {
    CGRect rect = CGRectMake(5, 5, 20, 30);
    CGFloat radius = 8;
    return [self createModelSingleArrayWithIndex:index title:[NSString stringWithFormat:@"初始化的rect:%@, 圆角为:%f", NSStringFromCGRect(rect), radius] block:[self setBezierPathToView:[UIBezierPath bezierPathWithRoundedRect:rect cornerRadius:radius]]];
}


- (NSDictionary *)method_3:(NSInteger)index {
    return @{
        @"dataModel": @{
            @"abstract": @"执行UIBezierPath的class方法, 生成一个椭圆形的形状",
            @"title": @"+ (instancetype)bezierPathWithOvalInRect:(CGRect)rect;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectBezierPath_class_bezierPathWithOvalInRect:index],
            }
        },
    };
}

- (NSMutableArray *)TestProjectBezierPath_class_bezierPathWithOvalInRect:(NSInteger)index {
    CGRect rect = CGRectMake(5, 5, 20, 30);
    return [self createModelSingleArrayWithIndex:index title:[NSString stringWithFormat:@"初始化的rect:%@", NSStringFromCGRect(rect)] block:[self setBezierPathToView:[UIBezierPath bezierPathWithOvalInRect:rect]]];
}

- (NSDictionary *)method_2:(NSInteger)index {
    return @{
        @"dataModel": @{
            @"abstract": @"执行UIBezierPath的class方法，生成一个矩形",
            @"title": @"+ (instancetype)bezierPathWithRect:(CGRect)rect;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectBezierPath_class_bezierPathWithRect:index],
            }
        },
    };
}

- (NSMutableArray *)TestProjectBezierPath_class_bezierPathWithRect:(NSInteger)index {
    CGRect rect = CGRectMake(5, 5, 20, 30);
    return [self createModelSingleArrayWithIndex:index title:[NSString stringWithFormat:@"初始化的rect:%@", NSStringFromCGRect(rect)] block:[self setBezierPathToView:[UIBezierPath bezierPathWithRect:rect]]];
}

- (NSDictionary *)method_1:(NSInteger)index {
    return @{
        @"dataModel": @{
            @"abstract": @"执行UIBezierPath的class方法, class初始化",
            @"title": @"+ (instancetype)bezierPath;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectBezierPath_class_bezierPath:index],
            }
        },
    };
}

- (NSMutableArray *)TestProjectBezierPath_class_bezierPath:(NSInteger)index {
    return [self createModelSingleArrayWithIndex:index title:@"class初始化" block:[self setBezierPathToView:[UIBezierPath bezierPath]]];
}

@end
