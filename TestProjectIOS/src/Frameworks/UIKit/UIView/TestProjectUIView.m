//
//  TestProjectUIView.m
//  TestProjectIOS
//
//  Created by liwenfan on 2023/3/31.
//

#import "TestProjectUIView.h"

@implementation TestProjectUIChildView

- (void)addSubview:(UIView *)view {
    NSLog(@"%@%@", NSStringFromSelector(_cmd), view);
    [super addSubview:view];
}

- (void)didAddSubview:(UIView *)subview {
    NSLog(@"%@%@", NSStringFromSelector(_cmd), subview);
    [super didAddSubview:subview];
}

- (void)willRemoveSubview:(UIView *)subview {
    NSLog(@"%@%@", NSStringFromSelector(_cmd), subview);
    [super willRemoveSubview:subview];
}

- (void)willMoveToSuperview:(UIView *)newSuperview {
    NSLog(@"%@%@", NSStringFromSelector(_cmd), newSuperview);
    [super willMoveToSuperview:newSuperview];
}

- (void)didMoveToSuperview {
    NSLog(@"%@", NSStringFromSelector(_cmd));
    [super didMoveToSuperview];
}

- (void)willMoveToWindow:(UIWindow *)newWindow {
    NSLog(@"%@%@", NSStringFromSelector(_cmd), newWindow);
    [super willMoveToWindow:newWindow];
}

- (void)didMoveToWindow {
    NSLog(@"%@", NSStringFromSelector(_cmd));
    [super didMoveToWindow];
}

- (void)layoutSubviews {
    NSLog(@"%@", NSStringFromSelector(_cmd));
    [super layoutSubviews];
}

- (void)setNeedsLayout {
    NSLog(@"%@", NSStringFromSelector(_cmd));
    [super setNeedsLayout];
}

- (void)layoutIfNeeded {
    NSLog(@"%@", NSStringFromSelector(_cmd));
    [super layoutIfNeeded];
}

- (void)layoutMarginsDidChange {
    NSLog(@"%@", NSStringFromSelector(_cmd));
    [super layoutMarginsDidChange];
}

- (void)safeAreaInsetsDidChange {
    NSLog(@"%@", NSStringFromSelector(_cmd));
    [super safeAreaInsetsDidChange];
}

- (void)drawRect:(CGRect)rect {
    NSLog(@"%@%@", NSStringFromSelector(_cmd), NSStringFromCGRect(rect));
    [super drawRect:rect];
}

- (void)tintColorDidChange {
    NSLog(@"%@", NSStringFromSelector(_cmd));
    [super tintColorDidChange];
}

@end

@implementation TestProjectUIView

- (NSString *)description {
    return [NSString stringWithFormat:@"%p", self];
}

- (id)setPropertyValueObject:(TestProjectTableViewParams *)params {
    return self.childView;
}

- (instancetype)initCreate {
    if (self = [super initCreate]) {
        [self.tableView testproject_updateConstraints:^(TestProjectViewConstrainMake * _Nonnull make) {
            make.height.equal(self).offset(-30);
        }];
        self.childView.backgroundColor = [UIColor redColor];
        [self.childView addSubview:self.grandChildView];
    }
    return self;
}

- (TestProjectUIChildView *)childview {
    if (!_childView) {
        _childView = [[TestProjectUIChildView alloc] init];
        dispatch_main_queue_work([self addSubview:self->_childView];)
        UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(gotoBack)];
        [_childView addGestureRecognizer:tap];
        CGSize size = [UIScreen mainScreen].bounds.size;
        _childView.frame = CGRectMake(0, 0, size.width, 30);
    }
    return _childView;
}

- (UILabel *)grandChildview {
    if (!_grandChildView) {
        _grandChildView = [[UILabel alloc] init];
        _grandChildView.text = @"t";
        _grandChildView.textColor = [UIColor whiteColor];
        _grandChildView.backgroundColor = [UIColor blueColor];
        _grandChildView.frame = CGRectMake(5, 5, 20, 20);
    }
    return _grandChildView;
}

- (NSMutableArray *)TestProjectUIView_property_effectiveUserInterfaceLayoutDirection:(TestProjectTableViewParams *)params {
    return [self createModelSingleArrayWithParams:params
                                         property:@"effectiveUserInterfaceLayoutDirection"
                                            value:nil
                                        operation:TestProjectCreateModelGetBeforeClickGet
                                            block:nil];
}

- (NSDictionary *)method_11:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"设置获取UIView的属性effectiveUserInterfaceLayoutDirection",
            @"title": @"@property (readonly, nonatomic) UIUserInterfaceLayoutDirection effectiveUserInterfaceLayoutDirection API_AVAILABLE(ios(10.0));",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectUIView_property_effectiveUserInterfaceLayoutDirection:params]
            }
        },
    };
}

- (NSMutableArray *)TestProjectUIView_property_semanticContentAttribute:(TestProjectTableViewParams *)params {
    return [self createModelSingleArrayWithParams:params
                                         property:@"semanticContentAttribute"
                                            value:nil
                                        operation:TestProjectCreateModelGetBeforeClickGet
                                            block:nil];
}

- (NSDictionary *)method_10:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"设置获取UIView的属性semanticContentAttribute",
            @"title": @"@property (nonatomic) UISemanticContentAttribute semanticContentAttribute API_AVAILABLE(ios(9.0));",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectUIView_property_semanticContentAttribute:params]
            }
        },
    };
}

- (NSMutableArray *)TestProjectUIView_property_focusEffect:(TestProjectTableViewParams *)params {
    return [self createModelSingleArrayWithParams:params
                                         property:@"focusEffect"
                                            value:nil
                                        operation:TestProjectCreateModelGetBeforeClickGet
                                            block:nil];
}


- (NSDictionary *)method_9:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"设置获取UIView的属性focusEffect",
            @"title": @"@property (nonatomic, readwrite, nullable, copy) UIFocusEffect *focusEffect API_AVAILABLE(ios(15.0)) API_UNAVAILABLE(tvos, watchos);",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectUIView_property_focusEffect:params]
            }
        },
    };
}

- (NSMutableArray *)TestProjectUIView_property_focusGroupPriority:(TestProjectTableViewParams *)params {
    return [self createModelSingleArrayWithParams:params
                                         property:@"focusGroupPriority"
                                            value:nil
                                        operation:TestProjectCreateModelGetBeforeClickGet
                                            block:nil];
}

- (NSDictionary *)method_8:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"设置获取UIView的属性focusGroupPriority",
            @"title": @"@property (nonatomic, readwrite) UIFocusGroupPriority focusGroupPriority API_AVAILABLE(ios(15.0)) API_UNAVAILABLE(tvos, watchos);",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectUIView_property_focusGroupPriority:params]
            }
        },
    };
}

- (NSMutableArray *)TestProjectUIView_property_focusGroupIdentifier:(TestProjectTableViewParams *)params {
    return [self createModelSingleArrayWithParams:params
                                         property:@"focusGroupIdentifier"
                                            value:nil
                                        operation:TestProjectCreateModelGetBeforeClickGet
                                            block:nil];
}

- (NSDictionary *)method_7:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"设置获取UIView的属性focusGroupIdentifier",
            @"title": @"@property (nonatomic, readwrite, nullable, copy) NSString *focusGroupIdentifier API_AVAILABLE(ios(14.0)) API_UNAVAILABLE(tvos, watchos);",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectUIView_property_focusGroupIdentifier:params]
            }
        },
    };
}

- (NSMutableArray *)TestProjectUIView_property_focused:(TestProjectTableViewParams *)params {
    return [self createModelSingleArrayWithParams:params
                                         property:@"focused"
                                            value:nil
                                        operation:TestProjectCreateModelGetBeforeClickGet
                                            block:nil];
}

- (NSDictionary *)method_6:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"设置获取UIView的属性focused",
            @"title": @"@property (readonly, nonatomic, getter=isFocused) BOOL focused API_AVAILABLE(ios(9.0));",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectUIView_property_focused:params]
            }
        },
    };
}

- (NSMutableArray *)TestProjectUIView_property_canBecomeFocused:(TestProjectTableViewParams *)params {
    return [self createModelSingleArrayWithParams:params
                                         property:@"canBecomeFocused"
                                            value:nil
                                        operation:TestProjectCreateModelGetBeforeClickGet
                                            block:nil];
}

- (NSDictionary *)method_5:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"设置获取UIView的属性canBecomeFocused",
            @"title": @"@property(nonatomic,readonly) BOOL canBecomeFocused API_AVAILABLE(ios(9.0));",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectUIView_property_canBecomeFocused:params]
            }
        },
    };
}

- (NSMutableArray *)TestProjectUIView_property_layer:(TestProjectTableViewParams *)params {
    return [self createModelSingleArrayWithParams:params
                                         property:@"layer"
                                            value:nil
                                        operation:TestProjectCreateModelGetBeforeClickGet
                                            block:nil];
}

- (NSDictionary *)method_4:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"设置获取UIView的属性layer",
            @"title": @"@property(nonatomic,readonly,strong)                 CALayer  *layer;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectUIView_property_layer:params]
            }
        },
    };
}

- (NSMutableArray *)TestProjectUIView_property_tag:(TestProjectTableViewParams *)params {
    return [self createModelSingleArrayWithParams:params
                                         property:@"tag"
                                            value:nil
                                        operation:TestProjectCreateModelGetBeforeClickGet
                                            block:nil];
}

- (NSDictionary *)method_3:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"设置获取UIView的属性tag",
            @"title": @"@property(nonatomic)                                 NSInteger tag;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectUIView_property_tag:params]
            }
        },
    };
}

- (NSMutableArray *)TestProjectUIView_property_userInteractionEnabled:(TestProjectTableViewParams *)params {
    NSArray *arr = @[
        @{
            @"title": @"设置的是YES，有点击事件",
            @"value": @(YES),
        },
        @{
            @"title": @"设置的是NO，有点击事件",
            @"value": @(NO),
        },
    ];
    for (NSDictionary *dic in arr) {
        NSString *title = dic[@"title"];
        NSNumber *value = dic[@"value"];
        [self createModelWithParams:params
                              title:title
                           property:@"userInteractionEnabled"
                              value:value
                          operation:TestProjectCreateModelGetBeforeClickSet
                              block:nil];
    }
    return self.dataMutArr;
}

- (NSDictionary *)method_2:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"设置获取UIView的属性userInteractionEnabled",
            @"title": @"@property(nonatomic,getter=isUserInteractionEnabled) BOOL userInteractionEnabled;",
            @"isDataModelExpand": @(YES),
            @"desc": @"设置为NO了则当前整个view的页面点击不了了",
            @"dataModel": @{
                @"childItems": [self TestProjectUIView_property_userInteractionEnabled:params]
            }
        },
    };
}

- (NSMutableArray *)TestProjectUIView_class_property_layerClass:(TestProjectTableViewParams *)params {
    return [self createModelSingleArrayWithParams:params title:[NSString stringWithFormat:@"获取的是UIView的class属性layerClass(%@)", UIView.layerClass] block:nil];
}

- (NSDictionary *)method_1:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"设置获取UIView的属性layerClass",
            @"title": @"@property(class, nonatomic, readonly) Class layerClass;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectUIView_class_property_layerClass:params]
            }
        },
    };
}

@end
