//
//  TestProjectUISwitch.m
//  TestProjectIOS
//
//  Created by liwenfan on 2023/6/29.
//

#import "TestProjectUISwitch.h"

@interface TestProjectUISwitch ()

@property (nonatomic, strong) UISwitch *childSwitch;

@end

@implementation TestProjectUISwitch

- (instancetype)initCreate {
    if (self = [super initCreate]) {
        [self.tableView testproject_updateConstraints:^(TestProjectViewConstrainMake * _Nonnull make) {
            make.height.equal(self).offset(-50);
        }];
        self.childSwitch.hidden = NO;
    }
    return self;
}

- (UISwitch *)childSwitch {
    if (!_childSwitch) {
        _childSwitch = [[UISwitch alloc] init];
        [self addSubview:_childSwitch];
        [_childSwitch testproject_makeConstraints:^(TestProjectViewConstrainMake * _Nonnull make) {
            make.height.equal(@50);
            make.top.leading.trainling.equal(self);
        }];
    }
    return _childSwitch;
}

- (id)setPropertyValueObject:(TestProjectTableViewParams *)params {
    return self.childSwitch;
}

- (NSMutableArray *)TestProjectSwitch_setOn_animated:(TestProjectTableViewParams *)params {
    NSArray *arr = @[@(YES), @(NO)];
    WS(wSelf);
    for (NSNumber *value in arr) {
        BOOL vB = [value boolValue];
        [self createModelWithParams:params title:[NSString stringWithFormat:@"设置的参数(on)为: %u", vB] block:^{
            [wSelf.childSwitch setOn:vB animated:YES];
        }];
    }
    return self.dataMutArr;
}

- (NSDictionary *)method_8:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"执行UISwitch的方法setOn:animated:",
            @"title": @"- (void)setOn:(BOOL)on animated:(BOOL)animated;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectSwitch_setOn_animated:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectSwitch_property_on:(TestProjectTableViewParams *)params {
    NSArray *arr = @[@(YES), @(NO)];
    for (NSNumber *value in arr) {
        [self createModelWithParams:params
                           property:@"on"
                              value:value
                          operation:TestProjectCreateModelGetBeforeClickSet
                              block:nil];
    }
    return self.dataMutArr;
}

- (NSDictionary *)method_7:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"设置获取UISwitch的属性on",
            @"title": @"@property(nonatomic,getter=isOn) BOOL on;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectSwitch_property_on:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectSwitch_property_style:(TestProjectTableViewParams *)params {
    return [self createModelSingleArrayWithParams:params
                                         property:@"style"
                                            value:nil
                                        operation:TestProjectCreateModelOnlyGet
                                            block:nil];
}

- (NSDictionary *)method_6:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"设置获取UISwitch的属性style",
            @"title": @"@property(nonatomic, readonly) UISwitchStyle style API_AVAILABLE(ios(14.0)) API_UNAVAILABLE(tvos);",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectSwitch_property_style:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectSwitch_property_title:(TestProjectTableViewParams *)params {
    return [self createModelSingleArrayWithParams:params
                                         property:@"title"
                                            value:@"t_switch"
                                        operation:TestProjectCreateModelGetBeforeClickSet
                                            block:nil];
}

- (NSDictionary *)method_5:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"设置获取UISwitch的属性title",
            @"title": @"@property(nullable, nonatomic, copy) NSString *title API_AVAILABLE(ios(14.0)) API_UNAVAILABLE(tvos);",
            @"isDataModelExpand": @(YES),
            @"desc": @"setTitle: on UISwitch is only supported when running Catalyst apps in the Mac Idiom.",
            @"dataModel": @{
                @"childItems": [self TestProjectSwitch_property_title:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectSwitch_property_offImage:(TestProjectTableViewParams *)params {
    return [self createModelSingleArrayWithParams:params
                                         property:@"offImage"
                                            value:[UIImage imageNamed:@"arrow_up"]
                                        operation:TestProjectCreateModelGetBeforeClickSet
                                            block:nil];
}

- (NSDictionary *)method_4:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"设置获取UISwitch的属性offImage",
            @"title": @"@property(nullable, nonatomic, strong) UIImage *offImage API_AVAILABLE(ios(6.0)) UI_APPEARANCE_SELECTOR;",
            @"isDataModelExpand": @(YES),
            @"desc": @"设置无效，暂时不知道作用",
            @"dataModel": @{
                @"childItems": [self TestProjectSwitch_property_offImage:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectSwitch_property_onImage:(TestProjectTableViewParams *)params {
    return [self createModelSingleArrayWithParams:params
                                         property:@"onImage"
                                            value:[UIImage imageNamed:@"arrow_down"]
                                        operation:TestProjectCreateModelGetBeforeClickSet
                                            block:nil];
}

- (NSDictionary *)method_3:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"设置获取UISwitch的属性onImage",
            @"title": @"@property(nullable, nonatomic, strong) UIImage *onImage API_AVAILABLE(ios(6.0)) UI_APPEARANCE_SELECTOR;",
            @"isDataModelExpand": @(YES),
            @"desc": @"设置无效，暂时不知道作用",
            @"dataModel": @{
                @"childItems": [self TestProjectSwitch_property_onImage:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectSwitch_property_thumbTintColor:(TestProjectTableViewParams *)params {
    return [self createModelSingleArrayWithParams:params
                                         property:@"thumbTintColor"
                                            value:[UIColor yellowColor]
                                        operation:TestProjectCreateModelGetBeforeClickSet
                                            block:nil];
}

- (NSDictionary *)method_2:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"设置获取UISwitch的属性thumbTintColor",
            @"title": @"@property(nullable, nonatomic, strong) UIColor *thumbTintColor API_AVAILABLE(ios(6.0)) UI_APPEARANCE_SELECTOR;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectSwitch_property_thumbTintColor:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectSwitch_property_onTintColor:(TestProjectTableViewParams *)params {
    return [self createModelSingleArrayWithParams:params
                                         property:@"onTintColor"
                                            value:[UIColor purpleColor]
                                        operation:TestProjectCreateModelGetBeforeClickSet
                                            block:nil];
}

- (NSDictionary *)method_1:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"设置获取UISwitch的属性onTintColor",
            @"title": @"@property(nullable, nonatomic, strong) UIColor *onTintColor API_AVAILABLE(ios(5.0)) UI_APPEARANCE_SELECTOR;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectSwitch_property_onTintColor:params],
            }
        },
    };
}

@end
