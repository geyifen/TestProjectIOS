//
//  TestProjectUITextField.m
//  TestProjectIOS
//
//  Created by liwenfan on 2023/7/14.
//

#import "TestProjectUITextField.h"

@interface TestProjectUITextField () <UITextFieldDelegate>

@property (nonatomic, strong) UITextField *childTextField;

@end

@implementation TestProjectUITextField

- (instancetype)initCreate {
    if (self = [super initCreate]) {
        [self.tableView testproject_updateConstraints:^(TestProjectViewConstrainMake * _Nonnull make) {
            make.height.equal(self).offset(-150);
        }];
        self.childTextField.layer.borderWidth = 5;
        self.childTextField.clipsToBounds = YES;
    }
    return self;
}

- (UITextField *)childTextField {
    if (!_childTextField) {
        _childTextField = [[UITextField alloc] init];
        _childTextField.delegate = self;
        [self addSubview:_childTextField];
        [_childTextField testproject_makeConstraints:^(TestProjectViewConstrainMake * _Nonnull make) {
            make.top.leading.trainling.equal(self);
            make.height.equal(@150);
        }];
    }
    return _childTextField;
}

- (id)setPropertyValueObject:(TestProjectTableViewParams *)params {
    return self.childTextField;
}


- (void)appendText:(NSString *)text {
    self.childTextField.text = [NSString stringWithFormat:@"%@\n%@", text, self.childTextField.text];
}

#pragma mark - UITextFieldDelegate

- (BOOL)textFieldShouldBeginEditing:(UITextField *)textField {
    [self appendText:NSStringFromSelector(_cmd)];
    return YES;
}

- (void)textFieldDidBeginEditing:(UITextField *)textField {
    [self appendText:NSStringFromSelector(_cmd)];
}

- (BOOL)textFieldShouldEndEditing:(UITextField *)textField {
    [self appendText:NSStringFromSelector(_cmd)];
    return YES;
}

- (void)textFieldDidEndEditing:(UITextField *)textField {
    [self appendText:NSStringFromSelector(_cmd)];
}

- (void)textFieldDidEndEditing:(UITextField *)textField reason:(UITextFieldDidEndEditingReason)reason API_AVAILABLE(ios(10.0)) {
    [self appendText:[NSString stringWithFormat:@"%@\nUITextFieldDidEndEditingReason:%ld", NSStringFromSelector(_cmd), reason]];
}

- (BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string {
    [self appendText:[NSString stringWithFormat:@"%@\nRange:%@\n%@", NSStringFromSelector(_cmd), NSStringFromRange(range), string]];
    return YES;
}

- (void)textFieldDidChangeSelection:(UITextField *)textField {
    [self appendText:NSStringFromSelector(_cmd)];
}

- (BOOL)textFieldShouldClear:(UITextField *)textField {
    [self appendText:NSStringFromSelector(_cmd)];
    return YES;
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField {
    [self appendText:NSStringFromSelector(_cmd)];
    return YES;
}

/**
 * @abstract Asks the delegate for the menu to be shown for the specified text range.
 *
 * @param textField                   The text field requesting the menu.
 * @param range                            The characters range for which the menu is presented for.
 * @param suggestedActions   The actions and commands that the system suggests.
 *
 * @return Return a UIMenu describing the desired menu hierarchy. Return @c nil to present the default system menu.
 */
- (nullable UIMenu *)textField:(UITextField *)textField editMenuForCharactersInRange:(NSRange)range suggestedActions:(NSArray<UIMenuElement *> *)suggestedActions API_AVAILABLE(ios(16.0)) {
    [self appendText:[NSString stringWithFormat:@"%@\nRange:%@\nsuggestedActions:%@", NSStringFromSelector(_cmd), NSStringFromRange(range), suggestedActions]];
    return [UIMenu menuWithTitle:@"menuT" image:nil identifier:UIMenuFile options:UIMenuOptionsDisplayInline children:suggestedActions];
}

/**
 * @abstract Called when the text field is about to present the edit menu.
 *
 * @param textField    The text field displaying the menu.
 * @param animator      Appearance animator. Add animations to this object to run them alongside the appearance transition.
 */
- (void)textField:(UITextField *)textField willPresentEditMenuWithAnimator:(id<UIEditMenuInteractionAnimating>)animator API_AVAILABLE(ios(16.0)) API_UNAVAILABLE(tvos, watchos) {
    [self appendText:NSStringFromSelector(_cmd)];
}

/**
 * @abstract Called when the text field is about to dismiss the edit menu.
 *
 * @param textField    The text field displaying the menu.
 * @param animator      Dismissal animator. Add animations to this object to run them alongside the dismissal transition.
 */
- (void)textField:(UITextField *)textField willDismissEditMenuWithAnimator:(id<UIEditMenuInteractionAnimating>)animator API_AVAILABLE(ios(16.0)) API_UNAVAILABLE(tvos, watchos) {
    [self appendText:NSStringFromSelector(_cmd)];
}

- (NSMutableArray *)TestProjectTextField_property_adjustsFontSizeToFitWidth:(TestProjectTableViewParams *)params {
    NSArray *arr = @[
        @{
            @"title": @"设置的属性是YES",
            @"value": @(YES),
        },
        @{
            @"title": @"设置的属性是NO",
            @"value": @(NO),
        },
    ];
    for (NSDictionary *dic in arr) {
        NSString *title = dic[@"title"];
        NSNumber *value = dic[@"value"];
        [self createModelWithParams:params
                              title:title
                           property:@"adjustsFontSizeToFitWidth"
                              value:value
                          operation:TestProjectCreateModelGetBeforeClickSet
                              block:nil];
    }
    return self.dataMutArr;
}

- (NSDictionary *)method_11:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"设置获取UITextField的属性adjustsFontSizeToFitWidth",
            @"title": @"@property(nonatomic)        BOOL                    adjustsFontSizeToFitWidth;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectTextField_property_adjustsFontSizeToFitWidth:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectTextField_property_clearsOnBeginEditing:(TestProjectTableViewParams *)params {
    NSArray *arr = @[
        @{
            @"title": @"设置的属性是YES, 当开始编辑的时候会把内容清空",
            @"value": @(YES),
        },
        @{
            @"title": @"设置的属性是NO, 当开始编辑的时候会保留之前的内容",
            @"value": @(NO),
        },
    ];
    for (NSDictionary *dic in arr) {
        NSString *title = dic[@"title"];
        NSNumber *value = dic[@"value"];
        [self createModelWithParams:params
                              title:title
                           property:@"clearsOnBeginEditing"
                              value:value
                          operation:TestProjectCreateModelGetBeforeClickSet
                              block:nil];
    }
    return self.dataMutArr;
}

- (NSDictionary *)method_10:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"设置获取UITextField的属性clearsOnBeginEditing",
            @"title": @"@property(nonatomic)        BOOL                    clearsOnBeginEditing;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectTextField_property_clearsOnBeginEditing:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectTextField_property_attributedPlaceholder:(TestProjectTableViewParams *)params {
    return [self createModelSingleArrayWithParams:params
                                         property:@"attributedPlaceholder"
                                            value:[[NSAttributedString alloc] initWithString:@"我是个attributedPlaceholder" attributes:@{NSBackgroundColorAttributeName:[UIColor redColor]}]
                                        operation:TestProjectCreateModelGetBeforeClickSet
                                            block:nil];
}

- (NSDictionary *)method_9:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"设置获取UITextField的属性attributedPlaceholder",
            @"title": @"@property(nullable, nonatomic,copy)   NSAttributedString     *attributedPlaceholder API_AVAILABLE(ios(6.0));",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectTextField_property_attributedPlaceholder:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectTextField_property_placeholder:(TestProjectTableViewParams *)params {
    return [self createModelSingleArrayWithParams:params
                                         property:@"placeholder"
                                            value:@"我是个placeholder"
                                        operation:TestProjectCreateModelGetBeforeClickSet
                                            block:nil];
}

- (NSDictionary *)method_8:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"设置获取UITextField的属性text",
            @"title": @"@property(nullable, nonatomic,copy)   NSString               *placeholder;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectTextField_property_placeholder:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectTextField_property_defaultTextAttributes:(TestProjectTableViewParams *)params {
    return [self createModelSingleArrayWithParams:params
                                         property:@"defaultTextAttributes"
                                            value:@{NSBackgroundColorAttributeName:[UIColor purpleColor]}
                                        operation:TestProjectCreateModelGetBeforeClickSet
                                            block:nil];
}

- (NSDictionary *)method_7:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"设置获取UITextField的属性defaultTextAttributes",
            @"title": @"@property(nonatomic,copy)   NSDictionary<NSAttributedStringKey,id> *defaultTextAttributes API_AVAILABLE(ios(7.0));",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectTextField_property_defaultTextAttributes:params],
            }
        },
    };
}

//typedef NS_ENUM(NSInteger, UITextBorderStyle) {
//    UITextBorderStyleNone,
//    UITextBorderStyleLine,
//    UITextBorderStyleBezel,
//    UITextBorderStyleRoundedRect
//};

- (NSMutableArray *)TestProjectTextField_property_borderStyle:(TestProjectTableViewParams *)params {
    NSArray *arr = @[
        @{
            @"title": [NSString stringWithFormat:@"设置的属性是UITextBorderStyleNone(%ld)", UITextBorderStyleNone],
            @"value": @(UITextBorderStyleNone),
        },
        @{
            @"title": [NSString stringWithFormat:@"设置的属性是UITextBorderStyleLine(%ld)", UITextBorderStyleLine],
            @"value": @(UITextBorderStyleLine),
        },
        @{
            @"title": [NSString stringWithFormat:@"设置的属性是UITextBorderStyleBezel(%ld)", UITextBorderStyleBezel],
            @"value": @(UITextBorderStyleBezel),
        },
        @{
            @"title": [NSString stringWithFormat:@"设置的属性是UITextBorderStyleRoundedRect(%ld)", UITextBorderStyleRoundedRect],
            @"value": @(UITextBorderStyleRoundedRect),
        },
    ];
    for (NSDictionary *dic in arr) {
        NSString *title = dic[@"title"];
        NSNumber *value = dic[@"value"];
        [self createModelWithParams:params
                              title:title
                           property:@"borderStyle"
                              value:value
                          operation:TestProjectCreateModelGetBeforeClickSet
                              block:nil];
    }
    return self.dataMutArr;
}

- (NSDictionary *)method_6:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"设置获取UITextField的属性borderStyle, 暂时不知道作用",
            @"title": @"@property(nonatomic)        UITextBorderStyle       borderStyle;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectTextField_property_borderStyle:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectTextField_property_textAlignment:(TestProjectTableViewParams *)params {
    NSArray *arr = @[
        @{
            @"title": [NSString stringWithFormat:@"设置的属性是NSTextAlignmentLeft(%ld)，居左展示", NSTextAlignmentLeft],
            @"value": @(NSTextAlignmentLeft),
        },
        @{
            @"title": [NSString stringWithFormat:@"设置的属性是NSTextAlignmentCenter(%ld)，居中展示", NSTextAlignmentCenter],
            @"value": @(NSTextAlignmentCenter),
        },
        @{
            @"title": [NSString stringWithFormat:@"设置的属性是NSTextAlignmentRight(%ld)，居右展示", NSTextAlignmentRight],
            @"value": @(NSTextAlignmentRight),
        },
        @{
            @"title": [NSString stringWithFormat:@"设置的属性是NSTextAlignmentJustified(%ld)，居两边展示，中间空出", NSTextAlignmentJustified],
            @"value": @(NSTextAlignmentJustified),
        },
        @{
            @"title": [NSString stringWithFormat:@"设置的属性是NSTextAlignmentNatural(%ld)，居左展示", NSTextAlignmentNatural],
            @"value": @(NSTextAlignmentNatural),
        },
    ];
    for (NSDictionary *dic in arr) {
        NSString *title = dic[@"title"];
        NSNumber *value = dic[@"value"];
        [self createModelWithParams:params
                              title:title
                           property:@"textAlignment"
                              value:value
                          operation:TestProjectCreateModelGetBeforeClickSet
                              block:nil];
    }
    return self.dataMutArr;
}

- (NSDictionary *)method_5:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"设置获取UITextField的属性textAlignment",
            @"title": @"@property(nonatomic)        NSTextAlignment         textAlignment;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectTextField_property_textAlignment:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectTextField_property_font:(TestProjectTableViewParams *)params {
    return [self createModelSingleArrayWithParams:params
                                         property:@"font"
                                            value:[UIFont systemFontOfSize:30]
                                        operation:TestProjectCreateModelGetBeforeClickSet
                                            block:nil];
}

- (NSDictionary *)method_4:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"设置获取UITextField的属性font",
            @"title": @"@property(nullable, nonatomic,strong) UIFont                 *font;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectTextField_property_font:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectTextField_property_textColor:(TestProjectTableViewParams *)params {
    return [self createModelSingleArrayWithParams:params
                                         property:@"textColor"
                                            value:[UIColor brownColor]
                                        operation:TestProjectCreateModelGetBeforeClickSet
                                            block:nil];
}

- (NSDictionary *)method_3:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"设置获取UITextField的属性textColor",
            @"title": @"@property(nullable, nonatomic,strong) UIColor                *textColor;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectTextField_property_textColor:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectTextField_property_attributedText:(TestProjectTableViewParams *)params {
    return [self createModelSingleArrayWithParams:params
                                         property:@"attributedText"
                                            value:[[NSAttributedString alloc] initWithString:@"我是个attributedText" attributes:@{NSBackgroundColorAttributeName:[UIColor yellowColor]}]
                                        operation:TestProjectCreateModelGetBeforeClickSet
                                            block:nil];
}

- (NSDictionary *)method_2:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"设置获取UITextField的属性attributedText",
            @"title": @"@property(nullable, nonatomic,copy)   NSAttributedString     *attributedText API_AVAILABLE(ios(6.0));",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectTextField_property_attributedText:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectTextField_property_text:(TestProjectTableViewParams *)params {
    return [self createModelSingleArrayWithParams:params
                                         property:@"text"
                                            value:nil
                                        operation:TestProjectCreateModelOnlyClickGet
                                            block:nil];
}

- (NSDictionary *)method_1:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"设置获取UITextField的属性text",
            @"title": @"@property(nullable, nonatomic,copy)   NSString               *text;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectTextField_property_text:params],
            }
        },
    };
}

@end
