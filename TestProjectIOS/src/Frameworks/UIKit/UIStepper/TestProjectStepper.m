//
//  TestProjectStepper.m
//  TestProjectIOS
//
//  Created by zjrcumac on 2023/7/10.
//

#import "TestProjectStepper.h"

@interface TestProjectStepper () <UITextFieldDelegate>

@property (nonatomic, strong) UIStepper *childStepper;
@property (nonatomic, strong) UITextField *textField;

@end

@implementation TestProjectStepper

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

- (id)setPropertyValueObject {
    return self.childStepper;
}

- (NSDictionary *)method_1:(NSInteger)index {
    return @{
        @"dataModel": @{
            @"abstract": @"获取UIStepper的属性continuous, 暂不知道什么作用",
            @"title": @"@property(nonatomic,getter=isContinuous) BOOL continuous;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectStepper_property_continuous:index],
            }
        },
    };
}

- (NSMutableArray *)TestProjectStepper_property_continuous:(NSInteger)index {
    NSArray *arr = @[@(YES), @(NO)];
    for (NSNumber *value in arr) {
        [self createModelWithIndex:index
                          property:@"continuous"
                             value:value
                         operation:TestProjectCreateModelGetBeforeClickSet
                             block:nil];
    }
    return self.dataMutArr;
}

- (NSDictionary *)method_2:(NSInteger)index {
    return @{
        @"dataModel": @{
            @"abstract": @"获取UIStepper的属性autorepeat, 暂不知道什么作用",
            @"title": @"@property(nonatomic) BOOL autorepeat;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectStepper_property_autorepeat:index],
            }
        },
    };
}

- (NSMutableArray *)TestProjectStepper_property_autorepeat:(NSInteger)index {
    NSArray *arr = @[@(YES), @(NO)];
    for (NSNumber *value in arr) {
        [self createModelWithIndex:index
                          property:@"autorepeat"
                             value:value
                         operation:TestProjectCreateModelGetBeforeClickSet
                             block:nil];
    }
    return self.dataMutArr;
}

- (NSDictionary *)method_3:(NSInteger)index {
    return @{
        @"dataModel": @{
            @"abstract": @"获取UIStepper的属性wraps",
            @"title": @"@property(nonatomic) BOOL wraps;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectStepper_property_wraps:index],
            }
        },
    };
}

- (NSMutableArray *)TestProjectStepper_property_wraps:(NSInteger)index {
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
        [self createModelWithIndex:index
                             title:title
                          property:@"wraps"
                             value:value
                         operation:TestProjectCreateModelGetBeforeClickSet
                             block:nil];
    }
    return self.dataMutArr;
}

- (NSDictionary *)method_4:(NSInteger)index {
    return @{
        @"dataModel": @{
            @"abstract": @"获取UIStepper的属性value，这个直接设置，值的变化不会发生通知",
            @"title": @"@property(nonatomic) double value;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectStepper_property_value:index],
            }
        },
    };
}

- (NSMutableArray *)TestProjectStepper_property_value:(NSInteger)index {
    return [self createModelSingleArrayWithIndex:index
                                        property:@"value"
                                           value:@5
                                       operation:TestProjectCreateModelGetBeforeClickSet
                                           block:nil];
}

- (NSDictionary *)method_5:(NSInteger)index {
    return @{
        @"dataModel": @{
            @"abstract": @"获取UIStepper的属性minimumValue",
            @"title": @"@property(nonatomic) double minimumValue;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectStepper_property_minimumValue:index],
            }
        },
    };
}

- (NSMutableArray *)TestProjectStepper_property_minimumValue:(NSInteger)index {
    return [self createModelSingleArrayWithIndex:index
                                        property:@"minimumValue"
                                           value:@-5
                                       operation:TestProjectCreateModelGetBeforeClickSet
                                           block:nil];
}

- (NSDictionary *)method_6:(NSInteger)index {
    return @{
        @"dataModel": @{
            @"abstract": @"获取UIStepper的属性maximumValue",
            @"title": @"@property(nonatomic) double maximumValue;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectStepper_property_maximumValue:index],
            }
        },
    };
}

- (NSMutableArray *)TestProjectStepper_property_maximumValue:(NSInteger)index {
    return [self createModelSingleArrayWithIndex:index
                                        property:@"maximumValue"
                                           value:@10
                                       operation:TestProjectCreateModelGetBeforeClickSet
                                           block:nil];
}

- (NSDictionary *)method_7:(NSInteger)index {
    return @{
        @"dataModel": @{
            @"abstract": @"获取UIStepper的属性stepValue, 每次加或者减多少",
            @"title": @"@property(nonatomic) double stepValue;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectStepper_property_stepValue:index],
            }
        },
    };
}

- (NSMutableArray *)TestProjectStepper_property_stepValue:(NSInteger)index {
    return [self createModelSingleArrayWithIndex:index
                                        property:@"stepValue"
                                           value:@5
                                       operation:TestProjectCreateModelGetBeforeClickSet
                                           block:nil];
}

- (NSDictionary *)method_8:(NSInteger)index {
    return @{
        @"dataModel": @{
            @"abstract": @"执行UIStepper的方法setBackgroundImage_forState",
            @"title": @"- (void)setBackgroundImage:(nullable UIImage*)image forState:(UIControlState)state API_AVAILABLE(ios(6.0)) UI_APPEARANCE_SELECTOR;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectStepper_setBackgroundImage_forState:index],
            }
        },
    };
}

- (NSMutableArray *)TestProjectStepper_setBackgroundImage_forState:(NSInteger)index {
    WS(wSelf);
    return [self createModelSingleArrayWithIndex:index title:@"setBackgroundImage_forState" methodBlock:^NSString * _Nonnull{
        [wSelf.childStepper setBackgroundImage:[UIImage imageNamed:@"lyf_2"] forState:UIControlStateNormal];
        return nil;
    }];
}

- (NSDictionary *)method_9:(NSInteger)index {
    return @{
        @"dataModel": @{
            @"abstract": @"执行UIStepper的方法backgroundImageForState:",
            @"title": @"- (nullable UIImage*)backgroundImageForState:(UIControlState)state API_AVAILABLE(ios(6.0)) UI_APPEARANCE_SELECTOR;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectStepper_backgroundImageForState:index],
            }
        },
    };
}

- (NSMutableArray *)TestProjectStepper_backgroundImageForState:(NSInteger)index {
    WS(wSelf);
    return [self createModelSingleArrayWithIndex:index title:@"backgroundImageForState" methodBlock:^NSString * _Nonnull{
        UIImage *image = [wSelf.childStepper backgroundImageForState:UIControlStateNormal];
        return [NSString stringWithFormat:@"%@", image];
    }];
}

- (NSDictionary *)method_10:(NSInteger)index {
    return @{
        @"dataModel": @{
            @"abstract": @"执行UIStepper的方法setDividerImage_forLeftSegmentState_rightSegmentState",
            @"title": @"- (void)setDividerImage:(nullable UIImage*)image forLeftSegmentState:(UIControlState)leftState rightSegmentState:(UIControlState)rightState API_AVAILABLE(ios(6.0)) UI_APPEARANCE_SELECTOR;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectStepper_setDividerImage_forLeftSegmentState_rightSegmentState:index],
            }
        },
    };
}

- (NSMutableArray *)TestProjectStepper_setDividerImage_forLeftSegmentState_rightSegmentState:(NSInteger)index {
    WS(wSelf);
    return [self createModelSingleArrayWithIndex:index title:@"setDividerImage_forLeftSegmentState_rightSegmentState" methodBlock:^NSString * _Nonnull{
        [wSelf.childStepper setDividerImage:[UIImage imageNamed:@"lyf_2"] forLeftSegmentState:UIControlStateNormal rightSegmentState:UIControlStateNormal];
        return nil;
    }];
}

- (NSDictionary *)method_11:(NSInteger)index {
    return @{
        @"dataModel": @{
            @"abstract": @"执行UIStepper的方法dividerImageForLeftSegmentState_rightSegmentState",
            @"title": @"- (nullable UIImage*)dividerImageForLeftSegmentState:(UIControlState)state rightSegmentState:(UIControlState)state API_AVAILABLE(ios(6.0)) UI_APPEARANCE_SELECTOR;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectStepper_dividerImageForLeftSegmentState_rightSegmentState:index],
            }
        },
    };
}

- (NSMutableArray *)TestProjectStepper_dividerImageForLeftSegmentState_rightSegmentState:(NSInteger)index {
    WS(wSelf);
    return [self createModelSingleArrayWithIndex:index title:@"dividerImageForLeftSegmentState_rightSegmentState" methodBlock:^NSString * _Nonnull{
        UIImage *image = [wSelf.childStepper dividerImageForLeftSegmentState:UIControlStateNormal rightSegmentState:UIControlStateNormal];
        return [NSString stringWithFormat:@"%@", image];
    }];
}

- (NSDictionary *)method_12:(NSInteger)index {
    return @{
        @"dataModel": @{
            @"abstract": @"执行UIStepper的方法setIncrementImage_forState",
            @"title": @"- (void)setIncrementImage:(nullable UIImage *)image forState:(UIControlState)state API_AVAILABLE(ios(6.0)) UI_APPEARANCE_SELECTOR;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectStepper_setIncrementImage_forState:index],
            }
        },
    };
}

- (NSMutableArray *)TestProjectStepper_setIncrementImage_forState:(NSInteger)index {
    WS(wSelf);
    return [self createModelSingleArrayWithIndex:index title:@"setIncrementImage_forState" methodBlock:^NSString * _Nonnull{
        [wSelf.childStepper setIncrementImage:[UIImage imageNamed:@"lyf_2"] forState:UIControlStateNormal];
        return nil;
    }];
}

- (NSDictionary *)method_13:(NSInteger)index {
    return @{
        @"dataModel": @{
            @"abstract": @"执行UIStepper的方法incrementImageForState:",
            @"title": @"- (nullable UIImage *)incrementImageForState:(UIControlState)state API_AVAILABLE(ios(6.0)) UI_APPEARANCE_SELECTOR;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectStepper_incrementImageForState:index],
            }
        },
    };
}

- (NSMutableArray *)TestProjectStepper_incrementImageForState:(NSInteger)index {
    WS(wSelf);
    return [self createModelSingleArrayWithIndex:index title:@"incrementImageForState" methodBlock:^NSString * _Nonnull{
        UIImage *image = [wSelf.childStepper incrementImageForState:UIControlStateNormal];
        return [NSString stringWithFormat:@"%@", image];
    }];
}

- (NSDictionary *)method_14:(NSInteger)index {
    return @{
        @"dataModel": @{
            @"abstract": @"执行UIStepper的方法setDecrementImage_forState",
            @"title": @"- (void)setDecrementImage:(nullable UIImage *)image forState:(UIControlState)state API_AVAILABLE(ios(6.0)) UI_APPEARANCE_SELECTOR;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectStepper_setDecrementImage_forState:index],
            }
        },
    };
}

- (NSMutableArray *)TestProjectStepper_setDecrementImage_forState:(NSInteger)index {
    WS(wSelf);
    return [self createModelSingleArrayWithIndex:index title:@"setDecrementImage_forState" methodBlock:^NSString * _Nonnull{
        [wSelf.childStepper setDecrementImage:[UIImage imageNamed:@"lyf_2"] forState:UIControlStateNormal];
        return nil;
    }];
}

- (NSDictionary *)method_15:(NSInteger)index {
    return @{
        @"dataModel": @{
            @"abstract": @"执行UIStepper的方法decrementImageForState:",
            @"title": @"- (nullable UIImage *)decrementImageForState:(UIControlState)state API_AVAILABLE(ios(6.0)) UI_APPEARANCE_SELECTOR;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectStepper_decrementImageForState:index],
            }
        },
    };
}

- (NSMutableArray *)TestProjectStepper_decrementImageForState:(NSInteger)index {
    WS(wSelf);
    return [self createModelSingleArrayWithIndex:index title:@"decrementImageForState" methodBlock:^NSString * _Nonnull{
        UIImage *image = [wSelf.childStepper decrementImageForState:UIControlStateNormal];
        return [NSString stringWithFormat:@"%@", image];
    }];
}

@end
