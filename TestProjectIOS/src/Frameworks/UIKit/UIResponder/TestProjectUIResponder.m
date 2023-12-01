//
//  TestProjectUIResponder.m
//  TestProjectIOS
//
//  Created by liwenfan on 2023/5/11.
//

#import "TestProjectUIResponder.h"

@interface TestProjectUIResponder ()

@property (nonatomic, strong) UITextView *textView;
@property (nonatomic, strong) UILabel *descLabel;

@end

@implementation TestProjectUIResponder

- (instancetype)initCreate {
    if (self = [super initCreate]) {
        [self.tableView testproject_updateConstraints:^(TestProjectViewConstrainMake * _Nonnull make) {
            make.height.equal(self).offset(-300);
        }];
        self.descLabel.text = @"点击触摸只会触发touch事件，presses、motion事件不会触发";
    }
    return self;
}

- (UILabel *)descLabel {
    if (!_descLabel) {
        _descLabel = [[UILabel alloc] init];
        _descLabel.numberOfLines = 0;
        [self addSubview:_descLabel];
        [_descLabel testproject_makeConstraints:^(TestProjectViewConstrainMake * _Nonnull make) {
            make.bottom.equal(self.textView.top);
            make.leading.trainling.equal(self);
        }];
    }
    return _descLabel;
}

- (id)setPropertyValueObject:(TestProjectTableViewParams *)params {
    return self;
}

- (UITextView *)textView:(TestProjectTableViewParams *)params {
    if (!_textView) {
        _textView = [[UITextView alloc] init];
        _textView.layer.borderColor = [UIColor redColor].CGColor;
        _textView.layer.borderWidth = 2;
        [self addSubview:_textView];
        [_textView testproject_makeConstraints:^(TestProjectViewConstrainMake * _Nonnull make) {
            make.top.equal(self).offset(100);
            make.leading.trainling.equal(self);
            make.height.equal(@200);
        }];
    }
    return _textView;
}

- (void)showTextWith:(id)touches withEvent:(UIEvent *)event text:(NSString *)text {
    NSString *content = self.textView.text;
    NSString *str = [NSString stringWithFormat:@"touches:%@ event:%@\n", touches, event];
    self.textView.text = [NSString stringWithFormat:@"=====>start:%@\n%@%@=====>end:%@", text, str, content, text];
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    [self showTextWith:touches withEvent:event text:@"began"];
}

- (void)touchesMoved:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    [self showTextWith:touches withEvent:event text:@"moved"];
}

- (void)touchesEnded:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    [self showTextWith:touches withEvent:event text:@"ended"];
}

- (void)touchesCancelled:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    [self showTextWith:touches withEvent:event text:@"cancelled"];
}
//下面这些方法都不会走
//- (void)touchesEstimatedPropertiesUpdated:(NSSet<UITouch *> *)touches:(TestProjectTableViewParams *)params {
//    [self showTextWith:touches withEvent:nil text:@"Updated"];
//}
//
//- (void)pressesBegan:(NSSet<UIPress *> *)presses withEvent:(UIPressesEvent *)event {
//    [self showTextWith:presses withEvent:event text:@"pressesBegan"];
//}
//
//- (void)pressesChanged:(NSSet<UIPress *> *)presses withEvent:(UIPressesEvent *)event {
//    [self showTextWith:presses withEvent:event text:@"pressesChanged"];
//}
//
//- (void)pressesEnded:(NSSet<UIPress *> *)presses withEvent:(UIPressesEvent *)event {
//    [self showTextWith:presses withEvent:event text:@"pressesEnded"];
//}
//
//- (void)pressesCancelled:(NSSet<UIPress *> *)presses withEvent:(UIPressesEvent *)event {
//    [self showTextWith:presses withEvent:event text:@"pressesCancelled"];
//}
//
//- (void)motionBegan:(UIEventSubtype)motion withEvent:(nullable UIEvent *)event API_AVAILABLE(ios(3.0)):(TestProjectTableViewParams *)params {
//    [self showTextWith:@(motion) withEvent:event text:@"motionBegan"];
//}
//
//- (void)motionEnded:(UIEventSubtype)motion withEvent:(nullable UIEvent *)event API_AVAILABLE(ios(3.0)):(TestProjectTableViewParams *)params {
//    [self showTextWith:@(motion) withEvent:event text:@"motionEnded"];
//}
//
//- (void)motionCancelled:(UIEventSubtype)motion withEvent:(nullable UIEvent *)event API_AVAILABLE(ios(3.0)):(TestProjectTableViewParams *)params {
//    [self showTextWith:@(motion) withEvent:event text:@"motionCancelled"];
//}
//
//- (void)remoteControlReceivedWithEvent:(nullable UIEvent *)event API_AVAILABLE(ios(4.0)):(TestProjectTableViewParams *)params {
//    [self showTextWith:nil withEvent:event text:@"remoteControlReceived"];
//}

- (NSMutableArray *)TestProjectResponder_property_editingInteractionConfiguration:(TestProjectTableViewParams *)params {
    return [self createModelSingleArrayWithParams:params
                                         property:@"editingInteractionConfiguration"
                                            value:nil
                                        operation:TestProjectCreateModelGetBeforeClickGet
                                            block:nil];
}

- (NSDictionary *)method_8:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"设置获取UIResponder的属性editingInteractionConfiguration",
            @"title": @"@property (nonatomic, readonly) UIEditingInteractionConfiguration editingInteractionConfiguration API_AVAILABLE(ios(13.0));",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectResponder_property_editingInteractionConfiguration:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectResponder_property_undoManager:(TestProjectTableViewParams *)params {
    return [self createModelSingleArrayWithParams:params
                                         property:@"undoManager"
                                            value:nil
                                        operation:TestProjectCreateModelGetBeforeClickGet
                                            block:nil];
}

- (NSDictionary *)method_7:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"设置获取UIResponder的属性undoManager",
            @"title": @"@property(nullable, nonatomic,readonly) NSUndoManager *undoManager API_AVAILABLE(ios(3.0));",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectResponder_property_undoManager:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectResponder_property_isFirstResponder:(TestProjectTableViewParams *)params {
    __block TestProjectTableViewModel *m;
    WS(wSelf);
    m = [self createModelWithParams:params title:@"点击之后获取该属性" block:^{
        m.desc = [NSString stringWithFormat:@"获取的isFirstResponder为:%u", wSelf.isFirstResponder];
        [m calculDataViewHeight];
        NSInteger atIndex = wSelf.tableView.dataSourceArray.count - params.selectIndex -1;
        TestProjectTableViewModel *vm = [wSelf.tableView.dataSourceArray objectAtIndex:atIndex];
        [vm calculDataViewHeight];
        [wSelf.tableView reloadRowsAtIndexPaths:@[[NSIndexPath indexPathForRow:atIndex inSection:0]] withRowAnimation:UITableViewRowAnimationNone];
    }];
    return self.dataMutArr;
}

- (NSDictionary *)method_6:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"设置获取UIResponder的属性isFirstResponder",
            @"title": @"@property(nonatomic, readonly) BOOL isFirstResponder;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectResponder_property_isFirstResponder:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectResponder_resignFirstResponder:(TestProjectTableViewParams *)params {
    WS(wSelf);
    return [self createModelSingleArrayWithParams:params title:@"注册第一响应者" block:^{
        BOOL res = [wSelf resignFirstResponder];
        [UIAlertController alertWithTitle:@"注册第一响应者" message:[NSString stringWithFormat:@"是否成功:%u", res] cancelTitle:@"取消" cancelBlock:nil sureTitle:nil sureBlock:nil];
    }];
}

- (NSDictionary *)method_5:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"执行UIResponder的方法：注册第一响应者",
            @"title": @"- (BOOL)resignFirstResponder;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectResponder_resignFirstResponder:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectResponder_property_canResignFirstResponder:(TestProjectTableViewParams *)params {
    return [self createModelSingleArrayWithParams:params
                                         property:@"canResignFirstResponder"
                                            value:nil
                                        operation:TestProjectCreateModelGetBeforeClickGet
                                            block:nil];
}

- (NSDictionary *)method_4:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"设置获取UIResponder的属性canResignFirstResponder(是否能够注册第一响应者)",
            @"title": @"@property(nonatomic, readonly) BOOL canResignFirstResponder;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectResponder_property_canResignFirstResponder:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectResponder_becomeFirstResponder:(TestProjectTableViewParams *)params {
    WS(wSelf);
    return [self createModelSingleArrayWithParams:params title:@"变成第一响应者" block:^{
        BOOL res = [wSelf becomeFirstResponder];
        [UIAlertController alertWithTitle:@"变成第一响应者" message:[NSString stringWithFormat:@"是否成功:%u", res] cancelTitle:@"取消" cancelBlock:nil sureTitle:nil sureBlock:nil];
    }];
}

- (NSDictionary *)method_3:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"执行UIResponder的方法：变成第一响应者",
            @"title": @"- (BOOL)becomeFirstResponder;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectResponder_becomeFirstResponder:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectResponder_property_canBecomeFirstResponder:(TestProjectTableViewParams *)params {
    return [self createModelSingleArrayWithParams:params
                                         property:@"canBecomeFirstResponder"
                                            value:nil
                                        operation:TestProjectCreateModelGetBeforeClickGet
                                            block:nil];
}

- (NSDictionary *)method_2:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"设置获取UIResponder的属性canBecomeFirstResponder(是否能变成第一响应者)",
            @"title": @"@property(nonatomic, readonly) BOOL canBecomeFirstResponder;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectResponder_property_canBecomeFirstResponder:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectResponder_property_nextResponder:(TestProjectTableViewParams *)params {
    return [self createModelSingleArrayWithParams:params
                                         property:@"nextResponder"
                                            value:nil
                                        operation:TestProjectCreateModelGetBeforeClickGet
                                            block:nil];
}

- (NSDictionary *)method_1:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"设置获取UIResponder的属性nextResponder(下一个响应者)",
            @"title": @"@property(nonatomic, readonly, nullable) UIResponder *nextResponder;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectResponder_property_nextResponder:params],
            }
        },
    };
}

@end
