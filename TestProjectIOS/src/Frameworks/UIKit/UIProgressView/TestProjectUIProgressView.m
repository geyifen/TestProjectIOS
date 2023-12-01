//
//  TestProjectUIProgressView.m
//  TestProjectIOS
//
//  Created by liwenfan on 2023/7/3.
//

#import "TestProjectUIProgressView.h"

@interface TestProjectUIProgressView ()

@property (nonatomic, strong) UIProgressView *childProgressView;

@end

@implementation TestProjectUIProgressView

- (instancetype)initCreate {
    if (self = [super initCreate]) {
        [self.tableView testproject_updateConstraints:^(TestProjectViewConstrainMake * _Nonnull make) {
            make.height.equal(self).offset(-100);
        }];
        self.childProgressView.hidden = NO;
    }
    return self;
}

- (UIProgressView *)childProgressView {
    if (!_childProgressView) {
        _childProgressView = [[UIProgressView alloc] init];
        [self addProgressView:_childProgressView];
        [_childProgressView testproject_makeConstraints:^(TestProjectViewConstrainMake * _Nonnull make) {
            make.top.leading.equal(self);
            make.height.equal(@30);
            make.width.equal(@100);
        }];
    }
    return _childProgressView;
}

- (void)addProgressView:(UIProgressView *)progressView {
    if ([self isDescendantOfView:progressView]) {
        [self bringSubviewToFront:progressView];
    } else {
        [self addSubview:progressView];
    }
}

- (id)setPropertyValueObject:(TestProjectTableViewParams *)params {
    return self.childProgressView;
}

- (NSMutableArray *)TestProjectSwitch_property_observedProgress:(TestProjectTableViewParams *)params {
    WS(wSelf);
    return [self createModelSingleArrayWithParams:params
                                            title:@"设置信息为[NSProgress currentProgress]"
                                     methodBlock:^NSString * _Nonnull{
        NSProgress *progress = [NSProgress currentProgress];
        wSelf.childProgressView.observedProgress = progress;
        return [NSString stringWithFormat:@"%@", progress];
    }];
}

- (NSDictionary *)method_9:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"设置获取UIProgressView的属性observedProgress，暂时不知道什么作用",
            @"title": @"@property(nonatomic, strong, nullable) NSProgress *observedProgress API_AVAILABLE(ios(9.0));",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectSwitch_property_observedProgress:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectSwitch_setProgress_animated:(TestProjectTableViewParams *)params {
    WS(wSelf);
    return [self createModelSingleArrayWithParams:params
                                            title:@"设置进度条的进度为0.75"
                                            block:^{
        [wSelf.childProgressView setProgress:0.75 animated:YES];
    }];
}

- (NSDictionary *)method_8:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"执行UIProgressView的方法setProgress:animated:",
            @"title": @"- (void)setProgress:(float)progress animated:(BOOL)animated API_AVAILABLE(ios(5.0));",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectSwitch_setProgress_animated:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectSwitch_property_trackImage:(TestProjectTableViewParams *)params {
    return [self createModelSingleArrayWithParams:params
                                         property:@"trackImage"
                                            value:[UIImage imageNamed:@"lyf_3"]
                                        operation:TestProjectCreateModelGetBeforeClickSet
                                            block:nil];
}

- (NSDictionary *)method_7:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"设置获取UIProgressView的属性trackImage",
            @"title": @"@property(nonatomic, strong, nullable) UIImage* trackImage         API_AVAILABLE(ios(5.0)) UI_APPEARANCE_SELECTOR;",
            @"isDataModelExpand": @(YES),
            @"desc": @"优先级比trackTintColor同等, 后设置的会替换先设置的",
            @"dataModel": @{
                @"childItems": [self TestProjectSwitch_property_trackImage:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectSwitch_property_progressImage:(TestProjectTableViewParams *)params {
    return [self createModelSingleArrayWithParams:params
                                         property:@"progressImage"
                                            value:[UIImage imageNamed:@"lyf_2"]
                                        operation:TestProjectCreateModelGetBeforeClickSet
                                            block:nil];
}

- (NSDictionary *)method_6:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"设置获取UIProgressView的属性progressImage",
            @"title": @"@property(nonatomic, strong, nullable) UIImage* progressImage      API_AVAILABLE(ios(5.0)) UI_APPEARANCE_SELECTOR;",
            @"isDataModelExpand": @(YES),
            @"desc": @"优先级比progressTintColor同等, 后设置的会替换先设置的",
            @"dataModel": @{
                @"childItems": [self TestProjectSwitch_property_progressImage:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectSwitch_property_trackTintColor:(TestProjectTableViewParams *)params {
    return [self createModelSingleArrayWithParams:params
                                         property:@"trackTintColor"
                                            value:[UIColor yellowColor]
                                        operation:TestProjectCreateModelGetBeforeClickSet
                                            block:nil];
}

- (NSDictionary *)method_5:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"设置获取UIProgressView的属性trackTintColor",
            @"title": @"@property(nonatomic, strong, nullable) UIColor* trackTintColor     API_AVAILABLE(ios(5.0)) UI_APPEARANCE_SELECTOR;",
            @"isDataModelExpand": @(YES),
            @"desc": @"优先级比trackImage同等, 后设置的会替换先设置的",
            @"dataModel": @{
                @"childItems": [self TestProjectSwitch_property_trackTintColor:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectSwitch_property_progressTintColor:(TestProjectTableViewParams *)params {
    return [self createModelSingleArrayWithParams:params
                                         property:@"progressTintColor"
                                            value:[UIColor purpleColor]
                                        operation:TestProjectCreateModelGetBeforeClickSet
                                            block:nil];
}

- (NSDictionary *)method_4:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"设置获取UIProgressView的属性progressTintColor",
            @"title": @"@property(nonatomic, strong, nullable) UIColor* progressTintColor  API_AVAILABLE(ios(5.0)) UI_APPEARANCE_SELECTOR;",
            @"isDataModelExpand": @(YES),
            @"desc": @"优先级比progressImage同等, 后设置的会替换先设置的",
            @"dataModel": @{
                @"childItems": [self TestProjectSwitch_property_progressTintColor:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectSwitch_property_progress:(TestProjectTableViewParams *)params {
    NSArray *arr = @[@0.0, @0.25, @0.5, @0.75, @1];
    for (NSNumber *num in arr) {
        [self createModelWithParams:params
                           property:@"progress"
                              value:num
                          operation:TestProjectCreateModelGetBeforeClickSet
                              block:nil];
    }
    return self.dataMutArr;
}

- (NSDictionary *)method_3:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"设置获取UIProgressView的属性progress, 设置进度条",
            @"title": @"@property(nonatomic) float progress;",
            @"isDataModelExpand": @(YES),
            @"desc": @"设置0.5以下的(除了0以外的)，都会变成0.5",
            @"dataModel": @{
                @"childItems": [self TestProjectSwitch_property_progress:params],
            }
        },
    };
}

//typedef NS_ENUM(NSInteger, UIProgressViewStyle) {
//    UIProgressViewStyleDefault,     // normal progress bar
//    UIProgressViewStyleBar API_UNAVAILABLE(tvos),     // for use in a toolbar
//};

- (NSMutableArray *)TestProjectSwitch_alloc_initWithProgressViewStyle:(TestProjectTableViewParams *)params {
    NSArray *arr = @[
        @{
            @"title": [NSString stringWithFormat:@"设置的属性值是UIProgressViewStyleDefault(%ld), 设置的颜色不是透明的", UIProgressViewStyleDefault],
            @"value": @(UIProgressViewStyleDefault),
        },
        @{
            @"title": [NSString stringWithFormat:@"设置的属性值是UIProgressViewStyleBar(%ld), 设置的颜色是透明的", UIProgressViewStyleBar],
            @"value": @(UIProgressViewStyleBar),
        },
    ];
    WS(wSelf);
    for (NSDictionary *dic in arr) {
        NSString *title = dic[@"title"];
        UIProgressViewStyle style = [dic[@"value"] integerValue];
        [self createModelWithParams:params title:title block:^{
            UIProgressView *progressView = [[UIProgressView alloc] initWithProgressViewStyle:style];
//            progressView.backgroundColor = [UIColor redColor];
            [wSelf addProgressView:progressView];
        }];
    }
    return self.dataMutArr;
}

- (NSDictionary *)method_2:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"通过UIProgressViewStyle创建UIProgressView",
            @"title": @"- (instancetype)initWithProgressViewStyle:(UIProgressViewStyle)style;",
            @"isDataModelExpand": @(YES),
            @"desc": @"设置的高度无效",
            @"dataModel": @{
                @"childItems": [self TestProjectSwitch_alloc_initWithProgressViewStyle:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectSwitch_alloc_initWithFrame:(TestProjectTableViewParams *)params {
    CGRect rect = CGRectMake(50, 0, 130, 30);
    WS(wSelf);
    return [self createModelSingleArrayWithParams:params title:[NSString stringWithFormat:@"frame是:%@", NSStringFromCGRect(rect)] block:^{
        UIProgressView *progressView = [[UIProgressView alloc] initWithFrame:rect];
        [wSelf addProgressView:progressView];
    }];
}

- (NSDictionary *)method_1:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"通过frame创建UIProgressView",
            @"title": @"- (instancetype)initWithFrame:(CGRect)frame NS_DESIGNATED_INITIALIZER;",
            @"isDataModelExpand": @(YES),
            @"desc": @"设置的高度无效",
            @"dataModel": @{
                @"childItems": [self TestProjectSwitch_alloc_initWithFrame:params],
            }
        },
    };
}

@end
