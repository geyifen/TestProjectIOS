//
//  TestProjectViewViewHierarchy.m
//  TestProjectIOS
//
//  Created by zjrcumac on 2023/5/23.
//

#import "TestProjectViewViewHierarchy.h"

@interface TestProjectViewViewHierarchy ()

@property (nonatomic, strong) UILabel *label1;
@property (nonatomic, strong) UILabel *label2;
@property (nonatomic, strong) UILabel *label3;

@end

@implementation TestProjectViewViewHierarchy

- (UILabel *)createLabelWithTag:(NSInteger)tag {
    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(tag * 20, 0, 25, 15)];
    label.tag = tag;
    label.text = [NSString stringWithFormat:@"%ld", tag];
    label.textColor = [UIColor whiteColor];
    label.backgroundColor = [UIColor purpleColor];
    if (tag != 3) {
        dispatch_main_queue_work([self.childView addSubview:label];)
    }
    return label;
}

- (UILabel *)label1 {
    if (!_label1) {
        _label1 = [self createLabelWithTag:1];
    }
    return _label1;
}

- (UILabel *)label2 {
    if (!_label2) {
        _label2 = [self createLabelWithTag:2];
        _label2.hidden = YES;
    }
    return _label2;
}

- (UILabel *)label3 {
    if (!_label3) {
        _label3 = [self createLabelWithTag:3];
    }
    return _label3;
}

- (NSDictionary *)method_1 {
    return @{
        @"dataModel": @{
            @"abstract": @"获取view的父view",
            @"title": @"@property(nullable, nonatomic,readonly) UIView       *superview;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectViewViewHierarchy_property_superview],
            }
        },
    };
}

- (NSDictionary *)method_2 {
    return @{
        @"dataModel": @{
            @"abstract": @"获取view的子view",
            @"title": @"@property(nonatomic,readonly,copy) NSArray<__kindof UIView *> *subviews;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectViewViewHierarchy_property_subviews],
            }
        },
    };
}

- (NSDictionary *)method_3 {
    return @{
        @"dataModel": @{
            @"abstract": @"获取view的window",
            @"title": @"@property(nullable, nonatomic,readonly) UIWindow     *window;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectViewViewHierarchy_property_window],
            }
        },
    };
}

- (NSDictionary *)method_4 {
    return @{
        @"dataModel": @{
            @"abstract": @"从父view移除自己",
            @"title": @"- (void)removeFromSuperview;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectViewViewHierarchy_removeFromSuperview],
            }
        },
    };
}

- (NSDictionary *)method_5 {
    return @{
        @"dataModel": @{
            @"abstract": @"插入subView到某个层级位置",
            @"title": @"- (void)insertSubview:(UIView *)view atIndex:(NSInteger)index;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectViewViewHierarchy_insertSubview_atIndex],
            }
        },
    };
}

- (NSDictionary *)method_6 {
    return @{
        @"dataModel": @{
            @"abstract": @"交换两个subView的层级位置",
            @"title": @"- (void)exchangeSubviewAtIndex:(NSInteger)index1 withSubviewAtIndex:(NSInteger)index2;",
            @"isDataModelExpand": @(YES),
            @"desc": @"如果某个层级的view不存在不会创建新的subView",
            @"dataModel": @{
                @"childItems": [self TestProjectViewViewHierarchy_exchangeSubviewAtIndex_withSubviewAtIndex],
            }
        },
    };
}

- (NSDictionary *)method_7 {
    return @{
        @"dataModel": @{
            @"abstract": @"插入subView到某个subView的下面",
            @"title": @"- (void)insertSubview:(UIView *)view belowSubview:(UIView *)siblingSubview;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectViewViewHierarchy_insertSubview_belowSubview],
            }
        },
    };
}

- (NSDictionary *)method_8 {
    return @{
        @"dataModel": @{
            @"abstract": @"插入subView到某个subView的上面",
            @"title": @"- (void)insertSubview:(UIView *)view aboveSubview:(UIView *)siblingSubview;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectViewViewHierarchy_insertSubview_aboveSubview],
            }
        },
    };
}

- (NSDictionary *)method_9 {
    return @{
        @"dataModel": @{
            @"abstract": @"把某个subView放到最上面",
            @"title": @"- (void)bringSubviewToFront:(UIView *)view;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectViewViewHierarchy_bringSubviewToFront],
            }
        },
    };
}

- (NSDictionary *)method_10 {
    return @{
        @"dataModel": @{
            @"abstract": @"把某个subView放到最下面",
            @"title": @"- (void)sendSubviewToBack:(UIView *)view;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectViewViewHierarchy_sendSubviewToBack],
            }
        },
    };
}

- (NSDictionary *)method_11 {
    return @{
        @"dataModel": @{
            @"abstract": @"判断自己是否添加到某个view上",
            @"title": @"- (BOOL)isDescendantOfView:(UIView *)view;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectViewViewHierarchy_isDescendantOfView],
            }
        },
    };
}

- (NSDictionary *)method_12 {
    return @{
        @"dataModel": @{
            @"abstract": @"根据tag获取某个子view",
            @"title": @"- (nullable __kindof UIView *)viewWithTag:(NSInteger)tag;",
            @"isDataModelExpand": @(YES),
            @"desc": @"没添加或者隐藏不显示的子view获取不到",
            @"dataModel": @{
                @"childItems": [self TestProjectViewViewHierarchy_viewWithTag],
            }
        },
    };
}

- (NSDictionary *)method_13 {
    return @{
        @"dataModel": @{
            @"abstract": @"获取UIView的属性layoutMargins，暂不知道怎么用",
            @"title": @"@property (nonatomic) UIEdgeInsets layoutMargins API_AVAILABLE(ios(8.0));",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectViewViewHierarchy_property_layoutMargins],
            }
        },
    };
}

- (NSDictionary *)method_14 {
    return @{
        @"dataModel": @{
            @"abstract": @"获取UIView的属性directionalLayoutMargins，暂不知道怎么用",
            @"title": @"@property (nonatomic) NSDirectionalEdgeInsets directionalLayoutMargins API_AVAILABLE(ios(11.0),tvos(11.0));",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectViewViewHierarchy_property_directionalLayoutMargins],
            }
        },
    };
}

- (NSDictionary *)method_15 {
    return @{
        @"dataModel": @{
            @"abstract": @"获取UIView的属性preservesSuperviewLayoutMargins，暂不知道怎么用",
            @"title": @"@property (nonatomic) BOOL preservesSuperviewLayoutMargins API_AVAILABLE(ios(8.0));",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectViewViewHierarchy_property_preservesSuperviewLayoutMargins],
            }
        },
    };
}

- (NSDictionary *)method_16 {
    return @{
        @"dataModel": @{
            @"abstract": @"获取UIView的属性insetsLayoutMarginsFromSafeArea，暂不知道怎么用",
            @"title": @"@property (nonatomic) BOOL insetsLayoutMarginsFromSafeArea API_AVAILABLE(ios(11.0),tvos(11.0));",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectViewViewHierarchy_property_insetsLayoutMarginsFromSafeArea],
            }
        },
    };
}

- (NSDictionary *)method_17:(NSInteger)index {
    return @{
        @"dataModel": @{
            @"abstract": @"获取UIView的属性layoutMarginsGuide，暂不知道怎么用",
            @"title": @"@property(readonly,strong) UILayoutGuide *layoutMarginsGuide API_AVAILABLE(ios(9.0));",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectViewViewHierarchy_property_layoutMarginsGuide:index],
            }
        },
    };
}

- (NSDictionary *)method_18:(NSInteger)index {
    return @{
        @"dataModel": @{
            @"abstract": @"获取UIView的属性readableContentGuide，暂不知道怎么用",
            @"title": @"@property (nonatomic, readonly, strong) UILayoutGuide *readableContentGuide  API_AVAILABLE(ios(9.0));",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectViewViewHierarchy_property_readableContentGuide:index],
            }
        },
    };
}

- (NSDictionary *)method_19 {
    return @{
        @"dataModel": @{
            @"abstract": @"获取UIView的属性safeAreaInsets，暂不知道怎么用",
            @"title": @"@property (nonatomic,readonly) UIEdgeInsets safeAreaInsets API_AVAILABLE(ios(11.0),tvos(11.0));",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectViewViewHierarchy_property_safeAreaInsets],
            }
        },
    };
}

- (NSDictionary *)method_20:(NSInteger)index {
    return @{
        @"dataModel": @{
            @"abstract": @"获取UIView的属性safeAreaLayoutGuide，暂不知道怎么用",
            @"title": @"@property(nonatomic,readonly,strong) UILayoutGuide *safeAreaLayoutGuide API_AVAILABLE(ios(11.0),tvos(11.0));",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectViewViewHierarchy_property_safeAreaLayoutGuide:index],
            }
        },
    };
}

- (NSDictionary *)method_21:(NSInteger)index {
    return @{
        @"dataModel": @{
            @"abstract": @"获取UIView的属性keyboardLayoutGuide，暂不知道怎么用",
            @"title": @"@property(nonatomic,readonly,strong) UIKeyboardLayoutGuide *keyboardLayoutGuide API_AVAILABLE(ios(15.0)) API_UNAVAILABLE(watchos, tvos);",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectViewViewHierarchy_property_keyboardLayoutGuide:index],
            }
        },
    };
}

- (NSDictionary *)method_22:(NSInteger)index {
    return @{
        @"dataModel": @{
            @"abstract": @"视图约束刷新",
            @"title": @"- (void)layoutIfNeeded;",
            @"isDataModelExpand": @(YES),
            @"desc": @"添加约束后想立即获取视图的大小可以执行这个方法",
            @"dataModel": @{
                @"childItems": [self TestProjectViewViewHierarchy_layoutIfNeeded:index],
            }
        },
    };
}

- (NSMutableArray *)TestProjectViewViewHierarchy_layoutIfNeeded:(NSInteger)index {
    WS(wSelf);
    [self createTableModelWithMethodBlock:^NSString * _Nonnull{
        UIView *view = [[UIView alloc] init];
        view.backgroundColor = [UIColor brownColor];
        [wSelf.childView addSubview:view];
        [view testproject_makeConstraints:^(TestProjectViewConstrainMake * _Nonnull make) {
            make.top.trainling.bottom.equal(wSelf.childView);
            make.width.equal(@20);
        }];
        [wSelf layoutIfNeeded];
        return NSStringFromCGRect(view.frame);
    } title:@"layoutIfNeeded" index:index];

    [self createTableModelWithMethodBlock:^NSString * _Nonnull{
        UIView *view = [[UIView alloc] init];
        view.backgroundColor = [UIColor purpleColor];
        [wSelf.childView addSubview:view];
        [view testproject_makeConstraints:^(TestProjectViewConstrainMake * _Nonnull make) {
            make.top.bottom.equal(wSelf.childView);
            make.trainling.equal(wSelf.childView).offset(-30);
            make.width.equal(@20);
        }];
        return NSStringFromCGRect(view.frame);
    } title:@"no layoutIfNeeded" index:index];
    return self.dataMutArr;
}

- (NSMutableArray *)TestProjectViewViewHierarchy_property_keyboardLayoutGuide:(NSInteger)index {
    return [self createTableModelSingleArrayWithProperty:@"keyboardLayoutGuide" index:index];
}

- (NSMutableArray *)TestProjectViewViewHierarchy_property_safeAreaLayoutGuide:(NSInteger)index {
    return [self createTableModelSingleArrayWithProperty:@"safeAreaLayoutGuide" index:index];
}

- (NSMutableArray *)TestProjectViewViewHierarchy_property_safeAreaInsets {
    return [self createTableModelSingleArrayWithProperty:@"safeAreaInsets" value:nil];
}

- (NSMutableArray *)TestProjectViewViewHierarchy_property_readableContentGuide:(NSInteger)index {
    return [self createTableModelSingleArrayWithProperty:@"readableContentGuide" index:index];
}

- (NSMutableArray *)TestProjectViewViewHierarchy_property_layoutMarginsGuide:(NSInteger)index {
    return [self createTableModelSingleArrayWithProperty:@"layoutMarginsGuide" index:index];
}

- (NSMutableArray *)TestProjectViewViewHierarchy_property_insetsLayoutMarginsFromSafeArea {
    NSArray *arr = @[@(YES), @(NO)];
    for (NSNumber *num in arr) {
        [self createClickSetTableModelWithProperty:@"insetsLayoutMarginsFromSafeArea" value:num];
    }
    return self.dataMutArr;
}

- (NSMutableArray *)TestProjectViewViewHierarchy_property_preservesSuperviewLayoutMargins {
    NSArray *arr = @[@(YES), @(NO)];
    for (NSNumber *num in arr) {
        [self createClickSetTableModelWithProperty:@"preservesSuperviewLayoutMargins" value:num];
    }
    return self.dataMutArr;
}

- (NSMutableArray *)TestProjectViewViewHierarchy_property_directionalLayoutMargins {
    return [self createClickSetSingleArrayTableModelWithProperty:@"directionalLayoutMargins" value:[NSValue valueWithUIEdgeInsets:UIEdgeInsetsMake(10, 10, 10, 10)]];
}

- (NSMutableArray *)TestProjectViewViewHierarchy_property_layoutMargins {
    return [self createClickSetSingleArrayTableModelWithProperty:@"layoutMargins" value:[NSValue valueWithDirectionalEdgeInsets:NSDirectionalEdgeInsetsMake(10, 10, 10, 10)]];
}

- (NSMutableArray *)TestProjectViewViewHierarchy_viewWithTag {
    UILabel *label0 = [self.childView viewWithTag:0];
    UILabel *label3 = [self.childView viewWithTag:3];
    [self createTableModelWithTitle:[NSString stringWithFormat:@"tag为0的view是：%@", label0] block:nil];
    [self createTableModelWithTitle:[NSString stringWithFormat:@"tag为3的view是：%@", label3] block:nil];

    return self.dataMutArr;
}

- (NSMutableArray *)TestProjectViewViewHierarchy_isDescendantOfView {
    BOOL isDescendant2 = [self.grandChildView isDescendantOfView:self.childView];
    BOOL isDescendant3 = [self.label3 isDescendantOfView:self.childView];
    [self createTableModelWithTitle:[NSString stringWithFormat:@"grandChildView是否添加到view上：%u", isDescendant2] block:nil];
    [self createTableModelWithTitle:[NSString stringWithFormat:@"label3是否添加到view上：%u", isDescendant3] block:nil];
    return self.dataMutArr;
}

- (NSMutableArray *)TestProjectViewViewHierarchy_sendSubviewToBack {
    WS(wSelf);
    [self createTableModelWithTitle:@"childView是否sendSubviewToBack" block:^{
        [wSelf.childView sendSubviewToBack:self.label1];
    }];
    return self.dataMutArr;
}

- (NSMutableArray *)TestProjectViewViewHierarchy_bringSubviewToFront {
    WS(wSelf);
    [self createTableModelWithTitle:@"childView是否bringSubviewToFront" block:^{
        [wSelf.childView bringSubviewToFront:self.label1];
    }];
    return self.dataMutArr;
}

- (NSMutableArray *)TestProjectViewViewHierarchy_insertSubview_aboveSubview {
    WS(wSelf);
    [self createTableModelWithTitle:@"childView是否insertAboveSubvieww" block:^{
        [wSelf.childView insertSubview:self.label1 aboveSubview:self.grandChildView];
    }];
    return self.dataMutArr;
}

- (NSMutableArray *)TestProjectViewViewHierarchy_insertSubview_belowSubview {
    WS(wSelf);
    [self createTableModelWithTitle:@"childView是否insertBelowSubvieww" block:^{
        [wSelf.childView insertSubview:self.label1 belowSubview:self.grandChildView];
    }];
    return self.dataMutArr;
}

- (NSMutableArray *)TestProjectViewViewHierarchy_exchangeSubviewAtIndex_withSubviewAtIndex {
    WS(wSelf);
    [self createTableModelWithTitle:@"childView是否exchangeSubView" block:^{
        [wSelf.childView exchangeSubviewAtIndex:0 withSubviewAtIndex:1];
    }];
    return self.dataMutArr;
}

- (NSMutableArray *)TestProjectViewViewHierarchy_insertSubview_atIndex {
    WS(wSelf);
    [self createTableModelWithTitle:@"childView是否insertSubView" block:^{
        [wSelf.childView insertSubview:wSelf.label1 atIndex:0];
    }];
    return self.dataMutArr;
}

- (NSMutableArray *)TestProjectViewViewHierarchy_removeFromSuperview {
    WS(wSelf);
    [self createTableModelWithTitle:@"是否移除childView" block:^{
        [wSelf.childView removeFromSuperview];
    }];
    return self.dataMutArr;
}

- (NSMutableArray *)TestProjectViewViewHierarchy_property_window {
    return [self createTableModelSingleArrayWithProperty:@"window" value:nil];
}

- (NSMutableArray *)TestProjectViewViewHierarchy_property_subviews {
    return [self createTableModelSingleArrayWithProperty:@"subviews" value:nil];
}

- (NSMutableArray *)TestProjectViewViewHierarchy_property_superview {
    return [self createTableModelSingleArrayWithProperty:@"superview" value:nil];
}

@end
