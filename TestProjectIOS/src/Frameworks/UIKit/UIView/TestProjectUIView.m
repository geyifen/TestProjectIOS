//
//  TestProjectUIView.m
//  TestProjectIOS
//
//  Created by zjrcumac on 2023/3/31.
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

- (id)setPropertyValueObject {
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

- (TestProjectUIChildView *)childView {
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

- (UILabel *)grandChildView {
    if (!_grandChildView) {
        _grandChildView = [[UILabel alloc] init];
        _grandChildView.text = @"t";
        _grandChildView.textColor = [UIColor whiteColor];
        _grandChildView.backgroundColor = [UIColor blueColor];
        _grandChildView.frame = CGRectMake(5, 5, 20, 20);
    }
    return _grandChildView;
}

- (NSDictionary *)method_1 {
    return @{
        @"dataModel": @{
            @"abstract": @"设置获取UIView的属性layerClass",
            @"title": @"@property(class, nonatomic, readonly) Class layerClass;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectUIView_property_layerClass],
            }
        },
    };
}

- (NSDictionary *)method_2 {
    return @{
        @"dataModel": @{
            @"abstract": @"设置获取UIView的属性userInteractionEnabled",
            @"title": @"@property(nonatomic,getter=isUserInteractionEnabled) BOOL userInteractionEnabled;",
            @"isDataModelExpand": @(YES),
            @"desc": @"设置为NO了则当前整个view的页面点击不了了",
            @"dataModel": @{
                @"childItems": [self TestProjectUIView_property_userInteractionEnabled],
            }
        },
    };
}

- (NSDictionary *)method_3 {
    return @{
        @"dataModel": @{
            @"abstract": @"设置获取UIView的属性tag",
            @"title": @"@property(nonatomic)                                 NSInteger tag;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectUIView_property_tag],
            }
        },
    };
}


- (NSDictionary *)method_4 {
    return @{
        @"dataModel": @{
            @"abstract": @"设置获取UIView的属性layer",
            @"title": @"@property(nonatomic,readonly,strong)                 CALayer  *layer;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectUIView_property_layer],
            }
        },
    };
}


- (NSDictionary *)method_5 {
    return @{
        @"dataModel": @{
            @"abstract": @"设置获取UIView的属性canBecomeFocused",
            @"title": @"@property(nonatomic,readonly) BOOL canBecomeFocused API_AVAILABLE(ios(9.0));",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectUIView_property_canBecomeFocused],
            }
        },
    };
}

- (NSDictionary *)method_6 {
    return @{
        @"dataModel": @{
            @"abstract": @"设置获取UIView的属性focused",
            @"title": @"@property (readonly, nonatomic, getter=isFocused) BOOL focused API_AVAILABLE(ios(9.0));",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectUIView_property_focused],
            }
        },
    };
}

- (NSDictionary *)method_7 {
    return @{
        @"dataModel": @{
            @"abstract": @"设置获取UIView的属性focusGroupIdentifier",
            @"title": @"@property (nonatomic, readwrite, nullable, copy) NSString *focusGroupIdentifier API_AVAILABLE(ios(14.0)) API_UNAVAILABLE(tvos, watchos);",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectUIView_property_focusGroupIdentifier],
            }
        },
    };
}

- (NSDictionary *)method_8 {
    return @{
        @"dataModel": @{
            @"abstract": @"设置获取UIView的属性focusGroupPriority",
            @"title": @"@property (nonatomic, readwrite) UIFocusGroupPriority focusGroupPriority API_AVAILABLE(ios(15.0)) API_UNAVAILABLE(tvos, watchos);",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectUIView_property_focusGroupPriority],
            }
        },
    };
}

- (NSDictionary *)method_9 {
    return @{
        @"dataModel": @{
            @"abstract": @"设置获取UIView的属性focusEffect",
            @"title": @"@property (nonatomic, readwrite, nullable, copy) UIFocusEffect *focusEffect API_AVAILABLE(ios(15.0)) API_UNAVAILABLE(tvos, watchos);",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectUIView_property_focusEffect],
            }
        },
    };
}

- (NSDictionary *)method_10 {
    return @{
        @"dataModel": @{
            @"abstract": @"设置获取UIView的属性semanticContentAttribute",
            @"title": @"@property (nonatomic) UISemanticContentAttribute semanticContentAttribute API_AVAILABLE(ios(9.0));",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectUIView_property_semanticContentAttribute],
            }
        },
    };
}

- (NSDictionary *)method_11 {
    return @{
        @"dataModel": @{
            @"abstract": @"设置获取UIView的属性effectiveUserInterfaceLayoutDirection",
            @"title": @"@property (readonly, nonatomic) UIUserInterfaceLayoutDirection effectiveUserInterfaceLayoutDirection API_AVAILABLE(ios(10.0));",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectUIView_property_effectiveUserInterfaceLayoutDirection],
            }
        },
    };
}

- (NSMutableArray *)TestProjectUIView_property_effectiveUserInterfaceLayoutDirection {
    return [self createTableModelSingleArrayWithProperty:@"effectiveUserInterfaceLayoutDirection" value:nil];
}

- (NSMutableArray *)TestProjectUIView_property_semanticContentAttribute {
    return [self createTableModelSingleArrayWithProperty:@"semanticContentAttribute" value:nil];
}

- (NSMutableArray *)TestProjectUIView_property_focusEffect {
    return [self createTableModelSingleArrayWithProperty:@"focusEffect" value:nil];
}

- (NSMutableArray *)TestProjectUIView_property_focusGroupPriority {
    return [self createTableModelSingleArrayWithProperty:@"focusGroupPriority" value:nil];
}

- (NSMutableArray *)TestProjectUIView_property_focusGroupIdentifier {
    return [self createTableModelSingleArrayWithProperty:@"focusGroupIdentifier" value:nil];
}

- (NSMutableArray *)TestProjectUIView_property_focused {
    return [self createTableModelSingleArrayWithProperty:@"focused" value:nil];
}

- (NSMutableArray *)TestProjectUIView_property_canBecomeFocused {
    return [self createTableModelSingleArrayWithProperty:@"canBecomeFocused" value:nil];
}

- (NSMutableArray *)TestProjectUIView_property_layer {
    return [self createTableModelSingleArrayWithProperty:@"layer" value:nil];
}

- (NSMutableArray *)TestProjectUIView_property_tag {
    return [self createTableModelSingleArrayWithProperty:@"tag" value:@(10)];
}

- (NSMutableArray *)TestProjectUIView_property_userInteractionEnabled {
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
        [self createClickSetTableModelWithProperty:@"userInteractionEnabled" value:value title:title block:nil];
    }
    return self.dataMutArr;
}

- (NSMutableArray *)TestProjectUIView_property_layerClass {
    return [self createTableModelSingleArrayWithTitle:[NSString stringWithFormat:@"获取的是UIView的class属性layerClass(%@)", UIView.layerClass] block:nil];
}

@end
