//
//  TestProjectUIStepper.m
//  TestProjectIOS
//
//  Created by liwenfan on 2023/7/10.
//

#import "TestProjectUIStepper.h"

@interface TestProjectUIStepper () <UITextFieldDelegate>

@property (nonatomic, strong) UIStepper *childStepper;
@property (nonatomic, strong) UITextField *textField;

@end

@implementation TestProjectUIStepper

- (UIView *)hitTest:(CGPoint)point withEvent:(UIEvent *)event {
    return [super hitTest:point withEvent:event];
}

- (instancetype)initCreate {
    if (self = [super initCreate]) {
        [self.tableView testproject_updateConstraints:^(TestProjectViewConstrainMake * _Nonnull make) {
            make.height.equal(self).offset(-100);
        }];
        [self.childStepper addTarget:self action:@selector(eventValueChanged) forControlEvents:UIControlEventValueChanged];
        self.textField.hidden = NO;
    }
    return self;
}

- (void)eventValueChanged {
    self.textField.text = [NSString stringWithFormat:@"%f", self.childStepper.value];
}

#pragma mark - UITextFieldDelegate
- (void)textFieldDidEndEditing:(UITextField *)textField {
    self.childStepper.value = [textField.text floatValue];
}

- (UIStepper *)childStepper {
    if (!_childStepper) {
        _childStepper = [[UIStepper alloc] init];
        [self addSubview:_childStepper];
        [_childStepper testproject_makeConstraints:^(TestProjectViewConstrainMake * _Nonnull make) {
            make.top.leading.equal(self);
            make.width.equal(@100);
            make.height.equal(@30);
        }];
    }
    return _childStepper;
}

- (UITextField *)textField {
    if (!_textField) {
        _textField = [[UITextField alloc] init];
        _textField.layer.borderWidth = 2;
        _textField.delegate = self;
        [self addSubview:_textField];
        [_textField testproject_makeConstraints:^(TestProjectViewConstrainMake * _Nonnull make) {
            make.top.trainling.equal(self);
            make.width.equal(@200);
            make.height.equal(@30);
        }];
    }
    return _textField;
}

- (id)setPropertyValueObject:(TestProjectTableViewParams *)params {
    return self.childStepper;
}

- (NSMutableArray *)TestProjectStepper_decrementImageForState:(TestProjectTableViewParams *)params {
    WS(wSelf);
    return [self createModelSingleArrayWithParams:params title:@"decrementImageForState" methodBlock:^NSString * _Nonnull{
        UIImage *image = [wSelf.childStepper decrementImageForState:UIControlStateNormal];
        return [NSString stringWithFormat:@"%@", image];
    }];
}

- (NSDictionary *)method_15:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"执行UIStepper的方法decrementImageForState:",
            @"title": @"- (nullable UIImage *)decrementImageForState:(UIControlState)state API_AVAILABLE(ios(6.0)) UI_APPEARANCE_SELECTOR;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectStepper_decrementImageForState:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectStepper_setDecrementImage_forState:(TestProjectTableViewParams *)params {
    WS(wSelf);
    return [self createModelSingleArrayWithParams:params title:@"setDecrementImage_forState" methodBlock:^NSString * _Nonnull{
        [wSelf.childStepper setDecrementImage:[UIImage imageNamed:@"lyf_2"] forState:UIControlStateNormal];
        return nil;
    }];
}

- (NSDictionary *)method_14:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"执行UIStepper的方法setDecrementImage_forState",
            @"title": @"- (void)setDecrementImage:(nullable UIImage *)image forState:(UIControlState)state API_AVAILABLE(ios(6.0)) UI_APPEARANCE_SELECTOR;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectStepper_setDecrementImage_forState:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectStepper_incrementImageForState:(TestProjectTableViewParams *)params {
    WS(wSelf);
    return [self createModelSingleArrayWithParams:params title:@"incrementImageForState" methodBlock:^NSString * _Nonnull{
        UIImage *image = [wSelf.childStepper incrementImageForState:UIControlStateNormal];
        return [NSString stringWithFormat:@"%@", image];
    }];
}

- (NSDictionary *)method_13:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"执行UIStepper的方法incrementImageForState:",
            @"title": @"- (nullable UIImage *)incrementImageForState:(UIControlState)state API_AVAILABLE(ios(6.0)) UI_APPEARANCE_SELECTOR;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectStepper_incrementImageForState:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectStepper_setIncrementImage_forState:(TestProjectTableViewParams *)params {
    WS(wSelf);
    return [self createModelSingleArrayWithParams:params title:@"setIncrementImage_forState" methodBlock:^NSString * _Nonnull{
        [wSelf.childStepper setIncrementImage:[UIImage imageNamed:@"lyf_2"] forState:UIControlStateNormal];
        return nil;
    }];
}

- (NSDictionary *)method_12:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"执行UIStepper的方法setIncrementImage_forState",
            @"title": @"- (void)setIncrementImage:(nullable UIImage *)image forState:(UIControlState)state API_AVAILABLE(ios(6.0)) UI_APPEARANCE_SELECTOR;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectStepper_setIncrementImage_forState:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectStepper_dividerImageForLeftSegmentState_rightSegmentState:(TestProjectTableViewParams *)params {
    WS(wSelf);
    return [self createModelSingleArrayWithParams:params title:@"dividerImageForLeftSegmentState_rightSegmentState" methodBlock:^NSString * _Nonnull{
        UIImage *image = [wSelf.childStepper dividerImageForLeftSegmentState:UIControlStateNormal rightSegmentState:UIControlStateNormal];
        return [NSString stringWithFormat:@"%@", image];
    }];
}

- (NSDictionary *)method_11:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"执行UIStepper的方法dividerImageForLeftSegmentState_rightSegmentState",
            @"title": @"- (nullable UIImage*)dividerImageForLeftSegmentState:(UIControlState)state rightSegmentState:(UIControlState)state API_AVAILABLE(ios(6.0)) UI_APPEARANCE_SELECTOR;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectStepper_dividerImageForLeftSegmentState_rightSegmentState:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectStepper_setDividerImage_forLeftSegmentState_rightSegmentState:(TestProjectTableViewParams *)params {
    WS(wSelf);
    return [self createModelSingleArrayWithParams:params title:@"setDividerImage_forLeftSegmentState_rightSegmentState" methodBlock:^NSString * _Nonnull{
        [wSelf.childStepper setDividerImage:[UIImage imageNamed:@"lyf_2"] forLeftSegmentState:UIControlStateNormal rightSegmentState:UIControlStateNormal];
        return nil;
    }];
}

- (NSDictionary *)method_10:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"执行UIStepper的方法setDividerImage_forLeftSegmentState_rightSegmentState",
            @"title": @"- (void)setDividerImage:(nullable UIImage*)image forLeftSegmentState:(UIControlState)leftState rightSegmentState:(UIControlState)rightState API_AVAILABLE(ios(6.0)) UI_APPEARANCE_SELECTOR;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectStepper_setDividerImage_forLeftSegmentState_rightSegmentState:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectStepper_backgroundImageForState:(TestProjectTableViewParams *)params {
    WS(wSelf);
    return [self createModelSingleArrayWithParams:params title:@"backgroundImageForState" methodBlock:^NSString * _Nonnull{
        UIImage *image = [wSelf.childStepper backgroundImageForState:UIControlStateNormal];
        return [NSString stringWithFormat:@"%@", image];
    }];
}

- (NSDictionary *)method_9:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"执行UIStepper的方法backgroundImageForState:",
            @"title": @"- (nullable UIImage*)backgroundImageForState:(UIControlState)state API_AVAILABLE(ios(6.0)) UI_APPEARANCE_SELECTOR;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectStepper_backgroundImageForState:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectStepper_setBackgroundImage_forState:(TestProjectTableViewParams *)params {
    WS(wSelf);
    return [self createModelSingleArrayWithParams:params title:@"setBackgroundImage_forState" methodBlock:^NSString * _Nonnull{
        [wSelf.childStepper setBackgroundImage:[UIImage imageNamed:@"lyf_2"] forState:UIControlStateNormal];
        return nil;
    }];
}

- (NSDictionary *)method_8:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"执行UIStepper的方法setBackgroundImage_forState",
            @"title": @"- (void)setBackgroundImage:(nullable UIImage*)image forState:(UIControlState)state API_AVAILABLE(ios(6.0)) UI_APPEARANCE_SELECTOR;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectStepper_setBackgroundImage_forState:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectStepper_property_stepValue:(TestProjectTableViewParams *)params {
    return [self createModelSingleArrayWithParams:params
                                         property:@"stepValue"
                                            value:@5
                                        operation:TestProjectCreateModelGetBeforeClickSet
                                            block:nil];
}

- (NSDictionary *)method_7:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"获取UIStepper的属性stepValue, 每次加或者减多少",
            @"title": @"@property(nonatomic) double stepValue;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectStepper_property_stepValue:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectStepper_property_maximumValue:(TestProjectTableViewParams *)params {
    return [self createModelSingleArrayWithParams:params
                                         property:@"maximumValue"
                                            value:@10
                                        operation:TestProjectCreateModelGetBeforeClickSet
                                            block:nil];
}

- (NSDictionary *)method_6:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"获取UIStepper的属性maximumValue",
            @"title": @"@property(nonatomic) double maximumValue;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectStepper_property_maximumValue:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectStepper_property_minimumValue:(TestProjectTableViewParams *)params {
    return [self createModelSingleArrayWithParams:params
                                         property:@"minimumValue"
                                            value:@-5
                                        operation:TestProjectCreateModelGetBeforeClickSet
                                            block:nil];
}

- (NSDictionary *)method_5:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"获取UIStepper的属性minimumValue",
            @"title": @"@property(nonatomic) double minimumValue;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectStepper_property_minimumValue:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectStepper_property_value:(TestProjectTableViewParams *)params {
    return [self createModelSingleArrayWithParams:params
                                         property:@"value"
                                            value:@5
                                        operation:TestProjectCreateModelGetBeforeClickSet
                                            block:nil];
}

- (NSDictionary *)method_4:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"获取UIStepper的属性value，这个直接设置，值的变化不会发生通知",
            @"title": @"@property(nonatomic) double value;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectStepper_property_value:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectStepper_property_wraps:(TestProjectTableViewParams *)params {
    NSArray *arr = @[
        @{
            @"title": @"设置的属性值是YES, 当小于最小时，值会变成最大的；当大于最大的时，值会变成最小值",
            @"value": @(YES),
        },
        @{
            @"title": @"设置的属性值是NO, 当小于最小时，变小按钮不可点击；当大于最大的时，变大按钮不可点击",
            @"value": @(NO),
        },
    ];
    for (NSDictionary *dic in arr) {
        NSString *title = dic[@"title"];
        NSNumber *value = dic[@"value"];
        [self createModelWithParams:params
                              title:title
                           property:@"wraps"
                              value:value
                          operation:TestProjectCreateModelGetBeforeClickSet
                              block:nil];
    }
    return self.dataMutArr;
}

- (NSDictionary *)method_3:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"获取UIStepper的属性wraps",
            @"title": @"@property(nonatomic) BOOL wraps;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectStepper_property_wraps:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectStepper_property_autorepeat:(TestProjectTableViewParams *)params {
    NSArray *arr = @[@(YES), @(NO)];
    for (NSNumber *value in arr) {
        [self createModelWithParams:params
                           property:@"autorepeat"
                              value:value
                          operation:TestProjectCreateModelGetBeforeClickSet
                              block:nil];
    }
    return self.dataMutArr;
}

- (NSDictionary *)method_2:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"获取UIStepper的属性autorepeat, 暂不知道什么作用",
            @"title": @"@property(nonatomic) BOOL autorepeat;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectStepper_property_autorepeat:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectStepper_property_continuous:(TestProjectTableViewParams *)params {
    NSArray *arr = @[@(YES), @(NO)];
    for (NSNumber *value in arr) {
        [self createModelWithParams:params
                           property:@"continuous"
                              value:value
                          operation:TestProjectCreateModelGetBeforeClickSet
                              block:nil];
    }
    return self.dataMutArr;
}

- (NSDictionary *)method_1:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"获取UIStepper的属性continuous, 暂不知道什么作用",
            @"title": @"@property(nonatomic,getter=isContinuous) BOOL continuous;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectStepper_property_continuous:params],
            }
        },
    };
}

@end
