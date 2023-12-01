//
//  TestProjectUIViewHierarchy.m
//  TestProjectIOS
//
//  Created by liwenfan on 2023/5/23.
//

#import "TestProjectUIViewHierarchy.h"

@interface TestProjectUIViewHierarchy ()

@property (nonatomic, strong) UILabel *label1;
@property (nonatomic, strong) UILabel *label2;
@property (nonatomic, strong) UILabel *label3;

@end

@implementation TestProjectUIViewHierarchy

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

- (UILabel *)label1:(TestProjectTableViewParams *)params {
    if (!_label1) {
        _label1 = [self createLabelWithTag:1];
    }
    return _label1;
}

- (UILabel *)label2:(TestProjectTableViewParams *)params {
    if (!_label2) {
        _label2 = [self createLabelWithTag:2];
        _label2.hidden = YES;
    }
    return _label2;
}

- (UILabel *)label3:(TestProjectTableViewParams *)params {
    if (!_label3) {
        _label3 = [self createLabelWithTag:3];
    }
    return _label3;
}

- (NSMutableArray *)TestProjectViewViewHierarchy_layoutIfNeeded:(TestProjectTableViewParams *)params {
    WS(wSelf);
    [self createModelWithParams:params title:@"layoutIfNeeded" methodBlock:^NSString * _Nonnull{
        UIView *view = [[UIView alloc] init];
        view.backgroundColor = [UIColor brownColor];
        [wSelf.childView addSubview:view];
        [view testproject_makeConstraints:^(TestProjectViewConstrainMake * _Nonnull make) {
            make.top.trainling.bottom.equal(wSelf.childView);
            make.width.equal(@20);
        }];
        [wSelf layoutIfNeeded];
        return NSStringFromCGRect(view.frame);
    }];

    [self createModelWithParams:params title:@"no layoutIfNeeded" methodBlock:^NSString * _Nonnull{
        UIView *view = [[UIView alloc] init];
        view.backgroundColor = [UIColor purpleColor];
        [wSelf.childView addSubview:view];
        [view testproject_makeConstraints:^(TestProjectViewConstrainMake * _Nonnull make) {
            make.top.bottom.equal(wSelf.childView);
            make.trainling.equal(wSelf.childView).offset(-30);
            make.width.equal(@20);
        }];
        return NSStringFromCGRect(view.frame);
    }];
    return self.dataMutArr;
}

- (NSDictionary *)method_22:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"视图约束刷新",
            @"title": @"- (void)layoutIfNeeded;",
            @"isDataModelExpand": @(YES),
            @"desc": @"添加约束后想立即获取视图的大小可以执行这个方法",
            @"dataModel": @{
                @"childItems": [self TestProjectViewViewHierarchy_layoutIfNeeded:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectViewViewHierarchy_property_keyboardLayoutGuide:(TestProjectTableViewParams *)params {
    return [self createModelSingleArrayWithParams:params
                                         property:@"keyboardLayoutGuide"
                                            value:nil
                                        operation:TestProjectCreateModelGetBeforeClickGet
                                            block:nil];
}

- (NSDictionary *)method_21:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"获取UIView的属性keyboardLayoutGuide，暂不知道怎么用",
            @"title": @"@property(nonatomic,readonly,strong) UIKeyboardLayoutGuide *keyboardLayoutGuide API_AVAILABLE(ios(15.0)) API_UNAVAILABLE(watchos, tvos);",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectViewViewHierarchy_property_keyboardLayoutGuide:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectViewViewHierarchy_property_safeAreaLayoutGuide:(TestProjectTableViewParams *)params {
    return [self createModelSingleArrayWithParams:params
                                         property:@"safeAreaLayoutGuide"
                                            value:nil
                                        operation:TestProjectCreateModelGetBeforeClickGet
                                            block:nil];
}

- (NSDictionary *)method_20:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"获取UIView的属性safeAreaLayoutGuide，暂不知道怎么用",
            @"title": @"@property(nonatomic,readonly,strong) UILayoutGuide *safeAreaLayoutGuide API_AVAILABLE(ios(11.0),tvos(11.0));",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectViewViewHierarchy_property_safeAreaLayoutGuide:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectViewViewHierarchy_property_safeAreaInsets:(TestProjectTableViewParams *)params {
    return [self createModelSingleArrayWithParams:params
                                         property:@"safeAreaInsets"
                                            value:nil
                                        operation:TestProjectCreateModelGetBeforeClickGet
                                            block:nil];
}

- (NSDictionary *)method_19:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"获取UIView的属性safeAreaInsets，暂不知道怎么用",
            @"title": @"@property (nonatomic,readonly) UIEdgeInsets safeAreaInsets API_AVAILABLE(ios(11.0),tvos(11.0));",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectViewViewHierarchy_property_safeAreaInsets:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectViewViewHierarchy_property_readableContentGuide:(TestProjectTableViewParams *)params {
    return [self createModelSingleArrayWithParams:params
                                         property:@"readableContentGuide"
                                            value:nil
                                        operation:TestProjectCreateModelGetBeforeClickGet
                                            block:nil];
}

- (NSDictionary *)method_18:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"获取UIView的属性readableContentGuide，暂不知道怎么用",
            @"title": @"@property (nonatomic, readonly, strong) UILayoutGuide *readableContentGuide  API_AVAILABLE(ios(9.0));",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectViewViewHierarchy_property_readableContentGuide:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectViewViewHierarchy_property_layoutMarginsGuide:(TestProjectTableViewParams *)params {
    return [self createModelSingleArrayWithParams:params
                                         property:@"layoutMarginsGuide"
                                            value:nil
                                        operation:TestProjectCreateModelGetBeforeClickGet
                                            block:nil];
}

- (NSDictionary *)method_17:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"获取UIView的属性layoutMarginsGuide，暂不知道怎么用",
            @"title": @"@property(readonly,strong) UILayoutGuide *layoutMarginsGuide API_AVAILABLE(ios(9.0));",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectViewViewHierarchy_property_layoutMarginsGuide:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectViewViewHierarchy_property_insetsLayoutMarginsFromSafeArea:(TestProjectTableViewParams *)params {
    NSArray *arr = @[@(YES), @(NO)];
    for (NSNumber *num in arr) {
        [self createModelWithParams:params
                           property:@"insetsLayoutMarginsFromSafeArea"
                              value:num
                          operation:TestProjectCreateModelGetBeforeClickSet
                              block:nil];
    }
    return self.dataMutArr;
}

- (NSDictionary *)method_16:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"获取UIView的属性insetsLayoutMarginsFromSafeArea，暂不知道怎么用",
            @"title": @"@property (nonatomic) BOOL insetsLayoutMarginsFromSafeArea API_AVAILABLE(ios(11.0),tvos(11.0));",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectViewViewHierarchy_property_insetsLayoutMarginsFromSafeArea:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectViewViewHierarchy_property_preservesSuperviewLayoutMargins:(TestProjectTableViewParams *)params {
    NSArray *arr = @[@(YES), @(NO)];
    for (NSNumber *num in arr) {
        [self createModelWithParams:params
                           property:@"preservesSuperviewLayoutMargins"
                              value:num
                          operation:TestProjectCreateModelGetBeforeClickSet
                              block:nil];
    }
    return self.dataMutArr;
}

- (NSDictionary *)method_15:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"获取UIView的属性preservesSuperviewLayoutMargins，暂不知道怎么用",
            @"title": @"@property (nonatomic) BOOL preservesSuperviewLayoutMargins API_AVAILABLE(ios(8.0));",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectViewViewHierarchy_property_preservesSuperviewLayoutMargins:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectViewViewHierarchy_property_directionalLayoutMargins:(TestProjectTableViewParams *)params {
    return [self createModelSingleArrayWithParams:params
                                         property:@"directionalLayoutMargins"
                                            value:[NSValue valueWithUIEdgeInsets:UIEdgeInsetsMake(10, 10, 10, 10)]
                                        operation:TestProjectCreateModelGetBeforeClickSet
                                            block:nil];
}

- (NSDictionary *)method_14:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"获取UIView的属性directionalLayoutMargins，暂不知道怎么用",
            @"title": @"@property (nonatomic) NSDirectionalEdgeInsets directionalLayoutMargins API_AVAILABLE(ios(11.0),tvos(11.0));",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectViewViewHierarchy_property_directionalLayoutMargins:params],
            }
        },
    };
}

- (NSDictionary *)method_13:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"获取UIView的属性layoutMargins，暂不知道怎么用",
            @"title": @"@property (nonatomic) UIEdgeInsets layoutMargins API_AVAILABLE(ios(8.0));",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectViewViewHierarchy_property_layoutMargins:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectViewViewHierarchy_property_layoutMargins:(TestProjectTableViewParams *)params {
    return [self createModelSingleArrayWithParams:params
                                         property:@"layoutMargins"
                                            value:[NSValue valueWithDirectionalEdgeInsets:NSDirectionalEdgeInsetsMake(10, 10, 10, 10)]
                                        operation:TestProjectCreateModelGetBeforeClickSet
                                            block:nil];
}

- (NSDictionary *)method_12:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"根据tag获取某个子view",
            @"title": @"- (nullable __kindof UIView *)viewWithTag:(NSInteger)tag;",
            @"isDataModelExpand": @(YES),
            @"desc": @"没添加或者隐藏不显示的子view获取不到",
            @"dataModel": @{
                @"childItems": [self TestProjectViewViewHierarchy_viewWithTag:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectViewViewHierarchy_viewWithTag:(TestProjectTableViewParams *)params {
    UILabel *label0 = [self.childView viewWithTag:0];
    UILabel *label3 = [self.childView viewWithTag:3];
    [self createModelWithParams:params title:[NSString stringWithFormat:@"tag为0的view是：%@", label0] block:nil];
    [self createModelWithParams:params title:[NSString stringWithFormat:@"tag为3的view是：%@", label3] block:nil];

    return self.dataMutArr;
}

- (NSDictionary *)method_11:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"判断自己是否添加到某个view上",
            @"title": @"- (BOOL)isDescendantOfView:(UIView *)view;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectViewViewHierarchy_isDescendantOfView:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectViewViewHierarchy_isDescendantOfView:(TestProjectTableViewParams *)params {
    BOOL isDescendant2 = [self.grandChildView isDescendantOfView:self.childView];
    BOOL isDescendant3 = [self.label3 isDescendantOfView:self.childView];
    [self createModelWithParams:params title:[NSString stringWithFormat:@"grandChildView是否添加到view上：%u", isDescendant2] block:nil];
    [self createModelWithParams:params title:[NSString stringWithFormat:@"label3是否添加到view上：%u", isDescendant3] block:nil];
    return self.dataMutArr;
}

- (NSDictionary *)method_10:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"把某个subView放到最下面",
            @"title": @"- (void)sendSubviewToBack:(UIView *)view;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectViewViewHierarchy_sendSubviewToBack:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectViewViewHierarchy_sendSubviewToBack:(TestProjectTableViewParams *)params {
    WS(wSelf);
    [self createModelWithParams:params title:@"childView是否sendSubviewToBack" block:^{
        [wSelf.childView sendSubviewToBack:self.label1];
    }];
    return self.dataMutArr;
}

- (NSDictionary *)method_9:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"把某个subView放到最上面",
            @"title": @"- (void)bringSubviewToFront:(UIView *)view;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectViewViewHierarchy_bringSubviewToFront:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectViewViewHierarchy_bringSubviewToFront:(TestProjectTableViewParams *)params {
    WS(wSelf);
    [self createModelWithParams:params title:@"childView是否bringSubviewToFront" block:^{
        [wSelf.childView bringSubviewToFront:self.label1];
    }];
    return self.dataMutArr;
}

- (NSDictionary *)method_8:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"插入subView到某个subView的上面",
            @"title": @"- (void)insertSubview:(UIView *)view aboveSubview:(UIView *)siblingSubview;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectViewViewHierarchy_insertSubview_aboveSubview:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectViewViewHierarchy_insertSubview_aboveSubview:(TestProjectTableViewParams *)params {
    WS(wSelf);
    [self createModelWithParams:params title:@"childView是否insertAboveSubvieww" block:^{
        [wSelf.childView insertSubview:self.label1 aboveSubview:self.grandChildView];
    }];
    return self.dataMutArr;
}


- (NSMutableArray *)TestProjectViewViewHierarchy_insertSubview_belowSubview:(TestProjectTableViewParams *)params {
    WS(wSelf);
    [self createModelWithParams:params title:@"childView是否insertBelowSubvieww" block:^{
        [wSelf.childView insertSubview:self.label1 belowSubview:self.grandChildView];
    }];
    return self.dataMutArr;
}

- (NSDictionary *)method_7:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"插入subView到某个subView的下面",
            @"title": @"- (void)insertSubview:(UIView *)view belowSubview:(UIView *)siblingSubview;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectViewViewHierarchy_insertSubview_belowSubview:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectViewViewHierarchy_exchangeSubviewAtIndex_withSubviewAtIndex:(TestProjectTableViewParams *)params {
    WS(wSelf);
    [self createModelWithParams:params title:@"childView是否exchangeSubView" block:^{
        [wSelf.childView exchangeSubviewAtIndex:0 withSubviewAtIndex:1];
    }];
    return self.dataMutArr;
}

- (NSDictionary *)method_6:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"交换两个subView的层级位置",
            @"title": @"- (void)exchangeSubviewAtIndex:(NSInteger)index1 withSubviewAtIndex:(NSInteger)index2;",
            @"isDataModelExpand": @(YES),
            @"desc": @"如果某个层级的view不存在不会创建新的subView",
            @"dataModel": @{
                @"childItems": [self TestProjectViewViewHierarchy_exchangeSubviewAtIndex_withSubviewAtIndex:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectViewViewHierarchy_insertSubview_atIndex:(TestProjectTableViewParams *)params {
    WS(wSelf);
    [self createModelWithParams:params title:@"childView是否insertSubView" block:^{
        [wSelf.childView insertSubview:wSelf.label1 atIndex:0];
    }];
    return self.dataMutArr;
}

- (NSDictionary *)method_5:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"插入subView到某个层级位置",
            @"title": @"- (void)insertSubview:(UIView *)view atIndex:(NSInteger)index;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectViewViewHierarchy_insertSubview_atIndex:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectViewViewHierarchy_removeFromSuperview:(TestProjectTableViewParams *)params {
    WS(wSelf);
    [self createModelWithParams:params title:@"是否移除childView" block:^{
        [wSelf.childView removeFromSuperview];
    }];
    return self.dataMutArr;
}

- (NSDictionary *)method_4:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"从父view移除自己",
            @"title": @"- (void)removeFromSuperview;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectViewViewHierarchy_removeFromSuperview:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectViewViewHierarchy_property_window:(TestProjectTableViewParams *)params {
    return [self createModelSingleArrayWithParams:params
                                         property:@"window"
                                            value:nil
                                        operation:TestProjectCreateModelGetBeforeClickGet
                                            block:nil];
}

- (NSDictionary *)method_3:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"获取view的window",
            @"title": @"@property(nullable, nonatomic,readonly) UIWindow     *window;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectViewViewHierarchy_property_window:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectViewViewHierarchy_property_subviews:(TestProjectTableViewParams *)params {
    return [self createModelSingleArrayWithParams:params
                                         property:@"subviews"
                                            value:nil
                                        operation:TestProjectCreateModelGetBeforeClickGet
                                            block:nil];
}

- (NSDictionary *)method_2:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"获取view的子view",
            @"title": @"@property(nonatomic,readonly,copy) NSArray<__kindof UIView *> *subviews;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectViewViewHierarchy_property_subviews:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectViewViewHierarchy_property_superview:(TestProjectTableViewParams *)params {
    return [self createModelSingleArrayWithParams:params
                                         property:@"superview"
                                            value:nil
                                        operation:TestProjectCreateModelGetBeforeClickGet
                                            block:nil];
}

- (NSDictionary *)method_1:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"获取view的父view",
            @"title": @"@property(nullable, nonatomic,readonly) UIView       *superview;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectViewViewHierarchy_property_superview:params],
            }
        },
    };
}

@end
