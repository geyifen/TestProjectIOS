//
//  TestProjectUIControl.m
//  TestProjectIOS
//
//  Created by liwenfan on 2023/5/29.
//

#import "TestProjectUIControl.h"

@interface TestProjectGrandChidlControl : UIControl

@end

@implementation TestProjectGrandChidlControl

- (void)showAlertView1 {
    [UIAlertController alertWithTitle:nil message:@"我只是个TestProjectGrandChidlControl1" cancelTitle:@"取消" cancelBlock:nil sureTitle:@"确定" sureBlock:nil];
    NSLog(@"我只是个TestProjectGrandChidlControl1");
}

- (void)showAlertView2 {
    [UIAlertController alertWithTitle:nil message:@"我只是个TestProjectGrandChidlControl2" cancelTitle:@"取消" cancelBlock:nil sureTitle:@"确定" sureBlock:nil];
    NSLog(@"我只是个TestProjectGrandChidlControl2");
}

@end

@interface TestProjectChildControl : UIControl

@property (nonatomic, strong) UITextView *textView;

@end

@implementation TestProjectChildControl

- (instancetype)init {
    if (self = [super init]) {
        self.textView.hidden = NO;
    }
    return self;
}

- (UITextView *)textView {
    if (!_textView) {
        _textView = [[UITextView alloc] init];
        _textView.layer.borderColor = [UIColor purpleColor].CGColor;
        _textView.layer.borderWidth = 1;
        [self addSubview:_textView];
        [_textView testproject_makeConstraints:^(TestProjectViewConstrainMake * _Nonnull make) {
            make.top.leading.trainling.equal(self);
            make.height.equal(@150);
        }];
    }
    return _textView;
}

- (void)showTextWith:(id)touches withEvent:(UIEvent *)event text:(NSString *)text {
    NSString *content = self.textView.text;
    NSString *str = [NSString stringWithFormat:@"touches:%@ event:%@\n", touches, event];
    self.textView.text = [NSString stringWithFormat:@"=====>start:%@\n%@%@=====>end:%@", text, str, content, text];
}

- (BOOL)beginTrackingWithTouch:(UITouch *)touch withEvent:(UIEvent *)event {
    [self showTextWith:touch withEvent:event text:@"begin"];
    return YES;
}

- (BOOL)continueTrackingWithTouch:(UITouch *)touch withEvent:(UIEvent *)event {
    [self showTextWith:touch withEvent:event text:@"continue"];
    return YES;
}

- (void)cancelTrackingWithEvent:(UIEvent *)event {
    [self showTextWith:nil withEvent:event text:@"cancel"];
}

- (void)endTrackingWithTouch:(UITouch *)touch withEvent:(UIEvent *)event {
    [self showTextWith:touch withEvent:event text:@"end"];
}

- (void)showAlertView1 {
    [UIAlertController alertWithTitle:nil message:@"我只是个TestProjectChildControl1" cancelTitle:@"取消" cancelBlock:nil sureTitle:@"确定" sureBlock:nil];
    NSLog(@"我只是个TestProjectChildControl1");
}

- (void)showAlertView2 {
    [UIAlertController alertWithTitle:nil message:@"我只是个TestProjectChildControl2" cancelTitle:@"取消" cancelBlock:nil sureTitle:@"确定" sureBlock:nil];
    NSLog(@"我只是个TestProjectChildControl2");
}

//- (void)sendAction:(UIAction *)action {
//    NSLog(@"%@", NSStringFromSelector(_cmd));
//    [super sendAction:action];
//}
//
//- (void)sendActionsForControlEvents:(UIControlEvents)controlEvents {
//    NSLog(@"%@", NSStringFromSelector(_cmd));
//    [super sendActionsForControlEvents:controlEvents];
//}
//
//- (void)sendAction:(SEL)action to:(id)target forEvent:(UIEvent *)event {
//    NSLog(@"%@", NSStringFromSelector(_cmd));
//    [super sendAction:action to:target forEvent:event];
//}

@end

@interface TestProjectUIControl ()

@property (nonatomic, strong) TestProjectChildControl *childControl;
@property (nonatomic, strong) TestProjectGrandChidlControl *grandChildControl;
@property (nonatomic, strong) UIAction *action1;
@property (nonatomic, strong) UIAction *action2;

@end

@implementation TestProjectUIControl

- (NSString *)description {
    return [NSString stringWithFormat:@"%p", self];
}

- (instancetype)initCreate {
    if (self = [super initCreate]) {
        [self.tableView testproject_updateConstraints:^(TestProjectViewConstrainMake * _Nonnull make) {
            make.height.equal(self).offset(-180);
        }];
        self.grandChildControl.hidden = NO;
    }
    return self;
}

- (TestProjectChildControl *)childControl {
    if (!_childControl) {
        _childControl = [[TestProjectChildControl alloc] init];
        _childControl.backgroundColor = [UIColor redColor];
        [self addSubview:_childControl];
        [_childControl testproject_makeConstraints:^(TestProjectViewConstrainMake * _Nonnull make) {
            make.top.leading.trainling.equal(self);
            make.height.equal(@180);
        }];
    }
    return _childControl;
}

- (TestProjectGrandChidlControl *)grandChildControl {
    if (!_grandChildControl) {
        _grandChildControl = [[TestProjectGrandChidlControl alloc] init];
        _grandChildControl.backgroundColor = [UIColor brownColor];
        [self.childControl addSubview:_grandChildControl];
        [_grandChildControl testproject_makeConstraints:^(TestProjectViewConstrainMake * _Nonnull make) {
            make.width.height.equal(@30);
            make.bottom.trainling.equal(self.childControl);
        }];
    }
    return _grandChildControl;
}

- (UIAction *)action1 {
    if (!_action1) {
        WS(wSelf);
        if (@available(iOS 15.0, *)) {
            _action1 = [UIAction actionWithTitle:@"action1" image:nil identifier:UIActionPasteAndGo handler:^(__kindof UIAction * _Nonnull action) {
                [wSelf.childControl showAlertView1];
            }];
        } else {
            // Fallback on earlier versions
        }
    }
    return _action1;
}

- (UIAction *)action2 {
    if (!_action2) {
        WS(wSelf);
        if (@available(iOS 15.0, *)) {
            _action2 = [UIAction actionWithTitle:@"action2" image:nil identifier:UIActionPasteAndGo handler:^(__kindof UIAction * _Nonnull action) {
                [wSelf gotoBack];
            }];
        } else {
        }
    }
    return _action2;
}

- (id)setPropertyValueObject:(TestProjectTableViewParams *)params {
    return self.childControl;
}

- (NSMutableArray *)TestProjectControl_menuAttachmentPointForConfiguration:(TestProjectTableViewParams *)params {
    WS(wSelf);
    return [self createModelSingleArrayWithParams:params title:@"menuAttachmentPointForConfiguration" methodBlock:^NSString * _Nonnull{
        UIContextMenuConfiguration *config = [[UIContextMenuConfiguration alloc] init];
        if (@available(iOS 16.0, *)) {
            config.badgeCount = 10;
        } else {
            // Fallback on earlier versions
        }
        CGPoint point = CGPointMake(0, 0);
        if (@available(iOS 14.0, *)) {
            point = [wSelf.childControl menuAttachmentPointForConfiguration:config];
        } else {
            // Fallback on earlier versions
        }
        return [NSString stringWithFormat:@"%@", NSStringFromCGPoint(point)];
    }];
}

- (NSDictionary *)method_27:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"执行UIControl方法，暂时不知道什么作用",
            @"title": @"- (CGPoint)menuAttachmentPointForConfiguration:(UIContextMenuConfiguration *)configuration API_AVAILABLE(ios(14.0)) API_UNAVAILABLE(watchos, tvos);",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectControl_menuAttachmentPointForConfiguration:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectControl_property_toolTipInteraction:(TestProjectTableViewParams *)params {
    return [self createModelSingleArrayWithParams:params
                                         property:@"toolTipInteraction"
                                            value:nil
                                        operation:TestProjectCreateModelGetBeforeClickGet
                                            block:nil];
}

- (NSDictionary *)method_26:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"设置获取UIControl属性toolTipInteraction",
            @"title": @"@property (nonatomic, readonly, strong, nullable) UIToolTipInteraction *toolTipInteraction API_AVAILABLE(ios(15.0)) API_UNAVAILABLE(watchos, tvos);",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectControl_property_toolTipInteraction:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectControl_property_toolTip:(TestProjectTableViewParams *)params {
    return [self createModelSingleArrayWithParams:params
                                         property:@"toolTip"
                                            value:@"this is tooltip"
                                        operation:TestProjectCreateModelGetBeforeClickGet
                                            block:nil];
}

- (NSDictionary *)method_25:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"设置获取UIControl属性toolTip",
            @"title": @"@property (nonatomic, copy, nullable) NSString *toolTip API_AVAILABLE(ios(15.0)) API_UNAVAILABLE(watchos, tvos);",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectControl_property_toolTip:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectControl_property_showsMenuAsPrimaryAction:(TestProjectTableViewParams *)params {
    NSArray *arr = @[
        @{
            @"title": @"设置的属性值是YES",
            @"value": @(YES),
        },
        @{
            @"title": @"设置的属性值是NO",
            @"value": @(NO),
        },
    ];
    for (NSDictionary *dic in arr) {
        NSString *title = dic[@"title"];
        NSNumber *value = dic[@"value"];
        [self createModelWithParams:params
                              title:title
                           property:@"showsMenuAsPrimaryAction"
                              value:value
                          operation:TestProjectCreateModelGetBeforeClickSet
                              block:nil];
    }
    return self.dataMutArr;
}

- (NSDictionary *)method_24:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"设置获取UIControl属性showsMenuAsPrimaryAction",
            @"title": @"@property (nonatomic, readwrite, assign) BOOL showsMenuAsPrimaryAction API_AVAILABLE(ios(14.0)) API_UNAVAILABLE(watchos, tvos);",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectControl_property_showsMenuAsPrimaryAction:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectControl_property_contextMenuInteractionEnabled:(TestProjectTableViewParams *)params {
    NSArray *arr = @[
        @{
            @"title": @"设置的属性值是YES,设置这个会崩溃，暂不知道怎么用",
            @"value": @(YES),
        },
        @{
            @"title": @"设置的属性值是NO",
            @"value": @(NO),
        },
    ];
    for (NSDictionary *dic in arr) {
        NSString *title = dic[@"title"];
        NSNumber *value = dic[@"value"];
        [self createModelWithParams:params
                              title:title
                           property:@"contextMenuInteractionEnabled"
                              value:value
                          operation:TestProjectCreateModelGetBeforeClickSet
                              block:nil];
    }
    return self.dataMutArr;
}

- (NSDictionary *)method_23:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"设置获取UIControl属性contextMenuInteractionEnabled",
            @"title": @"@property (nonatomic, readwrite, assign, getter = isContextMenuInteractionEnabled) BOOL contextMenuInteractionEnabled API_AVAILABLE(ios(14.0)) API_UNAVAILABLE(watchos, tvos);",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectControl_property_contextMenuInteractionEnabled:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectControl_property_contextMenuInteraction:(TestProjectTableViewParams *)params {
    return [self createModelSingleArrayWithParams:params
                                         property:@"contextMenuInteraction"
                                            value:nil
                                        operation:TestProjectCreateModelGetBeforeClickGet
                                            block:nil];
}

- (NSDictionary *)method_22:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"设置获取UIControl属性contextMenuInteraction",
            @"title": @"@property (nonatomic, readonly, strong, nullable) UIContextMenuInteraction *contextMenuInteraction API_AVAILABLE(ios(14.0)) API_UNAVAILABLE(watchos, tvos);",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectControl_property_contextMenuInteraction:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectControl_sendActionsForControlEvents:(TestProjectTableViewParams *)params {
    WS(wSelf);
    [self createModelWithParams:params title:@"sendActionsForControlEvents" block:^{
        [wSelf.childControl sendActionsForControlEvents:UIControlEventTouchUpInside];
    }];
    return self.dataMutArr;
}

- (NSDictionary *)method_21:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"设置UIControl的所有执行方法时机",
            @"title": @"- (void)sendActionsForControlEvents:(UIControlEvents)controlEvents;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectControl_sendActionsForControlEvents:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectControl_sendAction:(TestProjectTableViewParams *)params {
    WS(wSelf);
    [self createModelWithParams:params title:@"sendAction" block:^{
        if (@available(iOS 14.0, *)) {
            [wSelf.childControl sendAction:wSelf.action2];
        } else {
            // Fallback on earlier versions
        }
    }];
    return self.dataMutArr;
}

- (NSDictionary *)method_20:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"执行UIControl该方法后会立刻执行UIAction方法",
            @"title": @"- (void)sendAction:(UIAction *)action API_AVAILABLE(ios(14.0));",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectControl_sendAction:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectControl_sendAction_to_forEvent:(TestProjectTableViewParams *)params {
    WS(wSelf);
    [self createModelWithParams:params title:@"sendAction_to_forEvent" block:^{
        [wSelf.childControl sendAction:@selector(showAlertView1) to:wSelf.childControl forEvent:nil];
    }];
    return self.dataMutArr;
}

- (NSDictionary *)method_19:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"执行UIControl该方法后会立刻执行action方法",
            @"title": @"- (void)sendAction:(SEL)action to:(nullable id)target forEvent:(nullable UIEvent *)event;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectControl_sendAction_to_forEvent:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectControl_enumerateEventHandlers:(TestProjectTableViewParams *)params {
    WS(wSelf);
    return [self createModelSingleArrayWithParams:params title:@"actionsForTarget_forControlEvent" methodBlock:^NSString * _Nonnull{
        NSMutableString *mutString = [NSMutableString string];
        if (@available(iOS 14.0, *)) {
            [wSelf.childControl enumerateEventHandlers:^(UIAction * _Nullable actionHandler, id  _Nullable target, SEL  _Nullable action, UIControlEvents controlEvents, BOOL * _Nonnull stop) {
                [mutString appendFormat:@"actionHandler:%@ target:%@ action:%@ controlEvents:%ld stop:%u\n", actionHandler, target, NSStringFromSelector(action), controlEvents, *stop];
            }];
        } else {
            // Fallback on earlier versions
        }
        return mutString;
    }];
}

- (NSDictionary *)method_18:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"设置获取UIControl所有的点击事件的信息",
            @"title": @"- (void)enumerateEventHandlers:(void (NS_NOESCAPE ^)(UIAction * _Nullable actionHandler, id _Nullable target, SEL _Nullable action, UIControlEvents controlEvents, BOOL *stop))iterator API_AVAILABLE(ios(14.0));",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectControl_enumerateEventHandlers:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectControl_actionsForTarget_forControlEvent:(TestProjectTableViewParams *)params {
    WS(wSelf);
    return [self createModelSingleArrayWithParams:params title:@"actionsForTarget_forControlEvent" methodBlock:^NSString * _Nonnull{
        NSArray *arr = [wSelf.childControl actionsForTarget:wSelf.childControl forControlEvent:UIControlEventTouchUpInside];
        return [NSString stringWithFormat:@"%@", arr];
    }];
}

- (NSDictionary *)method_17:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"设置获取UIControl点击事件target执行的方法名称",
            @"title": @"- (nullable NSArray<NSString *> *)actionsForTarget:(nullable id)target forControlEvent:(UIControlEvents)controlEvent;",
            @"isDataModelExpand": @(YES),
            @"desc": @"根据target和controlEvent获取设置的值",
            @"dataModel": @{
                @"childItems": [self TestProjectControl_actionsForTarget_forControlEvent:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectControl_property_allControlEvents:(TestProjectTableViewParams *)params {
    return [self createModelSingleArrayWithParams:params
                                         property:@"allControlEvents"
                                            value:nil
                                        operation:TestProjectCreateModelGetBeforeClickGet
                                            block:nil];
}

- (NSDictionary *)method_16:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"设置获取UIControl属性allControlEvents，获取的是设置的事件触发值的和",
            @"title": @"@property(nonatomic,readonly) UIControlEvents allControlEvents;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectControl_property_allControlEvents:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectControl_property_allTargets:(TestProjectTableViewParams *)params {
    return [self createModelSingleArrayWithParams:params
                                         property:@"allTargets"
                                            value:nil
                                        operation:TestProjectCreateModelGetBeforeClickGet
                                            block:nil];

}

- (NSDictionary *)method_15:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"设置获取UIControl属性allTargets，获取的是设置的target对象属性",
            @"title": @"@property(nonatomic,readonly) NSSet *allTargets;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectControl_property_allTargets:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectControl_removeActionForIdentifier_forControlEvents:(TestProjectTableViewParams *)params {
    WS(wSelf);
    [self createModelWithParams:params title:@"移除UIActionPasteAndGo标识的UIAction事件" block:^{
        if (@available(iOS 15.0, *)) {
            [wSelf.childControl removeActionForIdentifier:UIActionPasteAndGo forControlEvents:UIControlEventTouchUpInside];
        } else {
            // Fallback on earlier versions
        }
    }];
    return self.dataMutArr;
}

- (NSDictionary *)method_14:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"给UIControl根据UIActionIdentifier移除UIAction事件",
            @"title": @"- (void)removeActionForIdentifier:(UIActionIdentifier)actionIdentifier forControlEvents:(UIControlEvents)controlEvents API_AVAILABLE(ios(14.0));",
            @"isDataModelExpand": @(YES),
            @"desc": @"根据UIActionIdentifier标识的UIAction一次行移除相同的UIActionIdentifier标识的UIAction事件",
            @"dataModel": @{
                @"childItems": [self TestProjectControl_removeActionForIdentifier_forControlEvents:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectControl_removeAction_forControlEvents:(TestProjectTableViewParams *)params {
    WS(wSelf);
    [self createModelWithParams:params title:@"给wSelf.childControl移除UIAction1事件" block:^{
        if (@available(iOS 14.0, *)) {
            [wSelf.childControl removeAction:wSelf.action1 forControlEvents:UIControlEventTouchUpInside];
        } else {
            // Fallback on earlier versions
        }
    }];
    [self createModelWithParams:params title:@"给wSelf移除UIAction事件" block:^{
        if (@available(iOS 14.0, *)) {
            [wSelf.childControl removeAction:wSelf.action2 forControlEvents:UIControlEventTouchUpInside];
        } else {
            // Fallback on earlier versions
        }
    }];
    return self.dataMutArr;
}

- (NSDictionary *)method_13:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"给UIControl移除UIAction事件",
            @"title": @"- (void)removeAction:(UIAction *)action forControlEvents:(UIControlEvents)controlEvents API_AVAILABLE(ios(14.0));",
            @"isDataModelExpand": @(YES),
            @"desc": @"根据UIAction一次行移除相同的UIAction事件",
            @"dataModel": @{
                @"childItems": [self TestProjectControl_removeAction_forControlEvents:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectControl_addAction_forControlEvents:(TestProjectTableViewParams *)params {
    WS(wSelf);
    if (@available(iOS 15.0, *)) {
        [self createModelWithParams:params title:@"给wSelf.childControl添加UIAction1事件" block:^{
            [wSelf.childControl addAction:wSelf.action1 forControlEvents:UIControlEventTouchUpInside];
        }];
        [self createModelWithParams:params title:@"给wSelf添加UIAction事件" block:^{
            [wSelf.childControl addAction:wSelf.action2 forControlEvents:UIControlEventTouchUpInside];
        }];
    } else {
        // Fallback on earlier versions
    }
    return self.dataMutArr;
}

- (NSDictionary *)method_12:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"给UIControl添加UIAction事件",
            @"title": @"- (void)addAction:(UIAction *)action forControlEvents:(UIControlEvents)controlEvents API_AVAILABLE(ios(14.0));",
            @"isDataModelExpand": @(YES),
            @"desc": @"只能添加一个UIAction，后面的会替换前面的UIAction",
            @"dataModel": @{
                @"childItems": [self TestProjectControl_addAction_forControlEvents:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectControl_removeTarget_action_forControlEvents:(TestProjectTableViewParams *)params {
    WS(wSelf);
    [self createModelWithParams:params title:@"给wSelf.childControl移除事件1" block:^{
        [wSelf.childControl removeTarget:wSelf.grandChildControl action:@selector(showAlertView1) forControlEvents:UIControlEventTouchUpInside];
    }];
    [self createModelWithParams:params title:@"给wSelf.grandChildControl移除事件2" block:^{
        [wSelf.childControl removeTarget:wSelf.grandChildControl action:@selector(showAlertView2) forControlEvents:UIControlEventTouchUpInside];
    }];
    [self createModelWithParams:params title:@"给wSelf.childControl移除事件1" block:^{
        [wSelf.childControl removeTarget:wSelf.childControl action:@selector(showAlertView1) forControlEvents:UIControlEventTouchUpInside];
    }];
    [self createModelWithParams:params title:@"给wSelf.childControl移除事件2" block:^{
        [wSelf.childControl removeTarget:wSelf.childControl action:@selector(showAlertView2) forControlEvents:UIControlEventTouchUpInside];
    }];
    [self createModelWithParams:params title:@"给wSelf移除事件" block:^{
        [wSelf.childControl removeTarget:wSelf action:@selector(gotoBack) forControlEvents:UIControlEventTouchUpInside];
    }];
    return self.dataMutArr;
}

- (NSDictionary *)method_11:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"给UIControl移除点击事件",
            @"title": @"- (void)removeTarget:(nullable id)target action:(nullable SEL)action forControlEvents:(UIControlEvents)controlEvents;",
            @"isDataModelExpand": @(YES),
            @"desc": @"根据target一次行移除相同的target事件",
            @"dataModel": @{
                @"childItems": [self TestProjectControl_removeTarget_action_forControlEvents:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectControl_addTarget_action_forControlEvents:(TestProjectTableViewParams *)params {
    WS(wSelf);
    [self createModelWithParams:params title:@"给wSelf.grandChildControl添加事件1" block:^{
        [wSelf.childControl addTarget:wSelf.grandChildControl action:@selector(showAlertView1) forControlEvents:UIControlEventTouchUpInside];
    }];
    [self createModelWithParams:params title:@"给wSelf.grandChildControl添加事件2" block:^{
        [wSelf.grandChildControl addTarget:wSelf.grandChildControl action:@selector(showAlertView2) forControlEvents:UIControlEventTouchUpInside];
    }];
    [self createModelWithParams:params title:@"给wSelf.childControl添加事件1" block:^{
        [wSelf.childControl addTarget:wSelf.childControl action:@selector(showAlertView1) forControlEvents:UIControlEventTouchUpInside];
    }];
    [self createModelWithParams:params title:@"给wSelf.childControl添加事件2" block:^{
        [wSelf.childControl addTarget:wSelf.childControl action:@selector(showAlertView2) forControlEvents:UIControlEventTouchUpInside];
    }];
    [self createModelWithParams:params title:@"给wSelf添加事件" block:^{
        [wSelf.childControl addTarget:wSelf action:@selector(gotoBack) forControlEvents:UIControlEventTouchUpInside];
    }];
    return self.dataMutArr;
}

- (NSDictionary *)method_10:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"给UIControl添加点击事件",
            @"title": @"- (void)addTarget:(nullable id)target action:(SEL)action forControlEvents:(UIControlEvents)controlEvents;",
            @"isDataModelExpand": @(YES),
            @"desc": @"可以添加多个target或者action",
            @"dataModel": @{
                @"childItems": [self TestProjectControl_addTarget_action_forControlEvents:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectControl_property_touchInside:(TestProjectTableViewParams *)params {
    return [self createModelSingleArrayWithParams:params
                                         property:@"touchInside"
                                            value:nil
                                        operation:TestProjectCreateModelGetBeforeClickGet
                                            block:nil];
}

- (NSDictionary *)method_9:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"设置获取UIControl的属性touchInside",
            @"title": @"@property(nonatomic,readonly,getter=isTouchInside) BOOL touchInside;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectControl_property_touchInside:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectControl_property_tracking:(TestProjectTableViewParams *)params {
    return [self createModelSingleArrayWithParams:params
                                         property:@"tracking"
                                            value:nil
                                        operation:TestProjectCreateModelGetBeforeClickGet
                                            block:nil];
}

- (NSDictionary *)method_8:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"设置获取UIControl的属性tracking",
            @"title": @"@property(nonatomic,readonly,getter=isTracking) BOOL tracking;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectControl_property_tracking:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectControl_property_state:(TestProjectTableViewParams *)params {
    return [self createModelSingleArrayWithParams:params
                                         property:@"state"
                                            value:nil
                                        operation:TestProjectCreateModelGetBeforeClickGet
                                            block:nil];
}

- (NSDictionary *)method_7:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"设置获取UIControl的属性state",
            @"title": @"@property(nonatomic,readonly) UIControlState state;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectControl_property_state:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectControl_property_effectiveContentHorizontalAlignment:(TestProjectTableViewParams *)params {
    return [self createModelSingleArrayWithParams:params
                                         property:@"effectiveContentHorizontalAlignment"
                                            value:nil
                                        operation:TestProjectCreateModelGetBeforeClickGet
                                            block:nil];
}

- (NSDictionary *)method_6:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"设置获取UIControl的属性effectiveContentHorizontalAlignment",
            @"title": @"@property(nonatomic, readonly) UIControlContentHorizontalAlignment effectiveContentHorizontalAlignment;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectControl_property_effectiveContentHorizontalAlignment:params],
            }
        },
    };
}

//typedef NS_ENUM(NSInteger, UIControlContentHorizontalAlignment) {
//    UIControlContentHorizontalAlignmentCenter = 0,
//    UIControlContentHorizontalAlignmentLeft   = 1,
//    UIControlContentHorizontalAlignmentRight  = 2,
//    UIControlContentHorizontalAlignmentFill   = 3,
//    UIControlContentHorizontalAlignmentLeading  API_AVAILABLE(ios(11.0), tvos(11.0)) = 4,
//    UIControlContentHorizontalAlignmentTrailing API_AVAILABLE(ios(11.0), tvos(11.0)) = 5,
//};

- (NSMutableArray *)TestProjectControl_property_contentHorizontalAlignment:(TestProjectTableViewParams *)params {
    NSArray *arr = @[
        @{
            @"title": [NSString stringWithFormat:@"设置的是UIControlContentHorizontalAlignmentCenter(%ld)", UIControlContentVerticalAlignmentCenter],
            @"value": @(UIControlContentHorizontalAlignmentCenter),
        },
        @{
            @"title": [NSString stringWithFormat:@"设置的是UIControlContentHorizontalAlignmentLeft(%ld)", UIControlContentHorizontalAlignmentLeft],
            @"value": @(UIControlContentHorizontalAlignmentLeft),
        },
        @{
            @"title": [NSString stringWithFormat:@"设置的是UIControlContentHorizontalAlignmentRight(%ld)", UIControlContentHorizontalAlignmentRight],
            @"value": @(UIControlContentHorizontalAlignmentRight),
        },
        @{
            @"title": [NSString stringWithFormat:@"设置的是UIControlContentHorizontalAlignmentFill(%ld)", UIControlContentHorizontalAlignmentFill],
            @"value": @(UIControlContentHorizontalAlignmentFill),
        },
        @{
            @"title": [NSString stringWithFormat:@"设置的是UIControlContentHorizontalAlignmentLeading(%ld)", UIControlContentHorizontalAlignmentLeading],
            @"value": @(UIControlContentHorizontalAlignmentLeading),
        },
        @{
            @"title": [NSString stringWithFormat:@"设置的是UIControlContentHorizontalAlignmentTrailing(%ld)", UIControlContentHorizontalAlignmentTrailing],
            @"value": @(UIControlContentHorizontalAlignmentTrailing),
        },
    ];
    for (NSDictionary *dic in arr) {
        NSString *title = dic[@"title"];
        NSNumber *value = dic[@"value"];
        [self createModelWithParams:params
                              title:title
                           property:@"contentHorizontalAlignment"
                              value:value
                          operation:TestProjectCreateModelGetBeforeClickSet
                              block:nil];
    }
    return self.dataMutArr;
}

- (NSDictionary *)method_5:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"设置获取UIControl的属性contentHorizontalAlignment",
            @"title": @"@property(nonatomic) UIControlContentHorizontalAlignment contentHorizontalAlignment;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectControl_property_contentHorizontalAlignment:params],
            }
        },
    };
}

//typedef NS_ENUM(NSInteger, UIControlContentVerticalAlignment) {
//    UIControlContentVerticalAlignmentCenter        = 0,
//    UIControlContentVerticalAlignmentTop           = 1,
//    UIControlContentVerticalAlignmentBottom        = 2,
//    UIControlContentVerticalAlignmentFill          = 3,
//};

- (NSMutableArray *)TestProjectControl_property_contentVerticalAlignment:(TestProjectTableViewParams *)params {
    NSArray *arr = @[
        @{
            @"title": [NSString stringWithFormat:@"设置的是UIControlContentVerticalAlignmentCenter(%ld)", UIControlContentVerticalAlignmentCenter],
            @"value": @(UIControlContentVerticalAlignmentCenter),
        },
        @{
            @"title": [NSString stringWithFormat:@"设置的是UIControlContentVerticalAlignmentTop(%ld)", UIControlContentVerticalAlignmentTop],
            @"value": @(UIControlContentVerticalAlignmentTop),
        },
        @{
            @"title": [NSString stringWithFormat:@"设置的是UIControlContentVerticalAlignmentBottom(%ld)", UIControlContentVerticalAlignmentBottom],
            @"value": @(UIControlContentVerticalAlignmentBottom),
        },
        @{
            @"title": [NSString stringWithFormat:@"设置的是UIControlContentVerticalAlignmentFill(%ld)", UIControlContentVerticalAlignmentFill],
            @"value": @(UIControlContentVerticalAlignmentFill),
        },
    ];
    for (NSDictionary *dic in arr) {
        NSString *title = dic[@"title"];
        NSNumber *value = dic[@"value"];
        [self createModelWithParams:params
                              title:title
                           property:@"contentVerticalAlignment"
                              value:value
                          operation:TestProjectCreateModelGetBeforeClickSet
                              block:nil];
    }
    return self.dataMutArr;
}

- (NSDictionary *)method_4:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"设置获取UIControl的属性contentVerticalAlignment",
            @"title": @"@property(nonatomic) UIControlContentVerticalAlignment contentVerticalAlignment;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectControl_property_contentVerticalAlignment:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectControl_property_highlighted:(TestProjectTableViewParams *)params {
    return [self createModelSingleArrayWithParams:params
                                         property:@"highlighted"
                                            value:nil
                                        operation:TestProjectCreateModelGetBeforeClickGet
                                            block:nil];
}

- (NSDictionary *)method_3:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"设置获取UIControl的属性highlighted",
            @"title": @"@property(nonatomic,getter=isHighlighted) BOOL highlighted;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectControl_property_highlighted:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectControl_property_selected:(TestProjectTableViewParams *)params {
    return [self createModelSingleArrayWithParams:params
                                         property:@"selected"
                                            value:nil
                                        operation:TestProjectCreateModelGetBeforeClickGet
                                            block:nil];
}

- (NSDictionary *)method_2:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"设置获取UIControl的属性selected",
            @"title": @"@property(nonatomic,getter=isSelected) BOOL selected;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectControl_property_selected:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectControl_property_enabled:(TestProjectTableViewParams *)params {
    NSArray *arr = @[
        @{
            @"title": @"设置的是YES，可以点击触摸",
            @"value": @"YES",
        },
        @{
            @"title": @"设置的是NO，不可以点击触摸",
            @"value": @(NO),
        },
    ];
    for (NSDictionary *dic in arr) {
        NSString *title = dic[@"title"];
        NSNumber *value = dic[@"value"];
        [self createModelWithParams:params
                              title:title
                           property:@"enabled"
                              value:value
                          operation:TestProjectCreateModelGetBeforeClickSet
                              block:nil];
    }
    return self.dataMutArr;
}

- (NSDictionary *)method_1:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"设置获取UIControl的属性enabled",
            @"title": @"@property(nonatomic,getter=isEnabled) BOOL enabled;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectControl_property_enabled:params],
            }
        },
    };
}

@end
