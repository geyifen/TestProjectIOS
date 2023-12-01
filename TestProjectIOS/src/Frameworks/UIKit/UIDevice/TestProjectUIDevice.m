//
//  TestProjectUIDevice.m
//  TestProjectIOS
//
//  Created by liwenfan on 2023/6/19.
//

#import "TestProjectUIDevice.h"

@interface TestProjectUIDevice ()

@property (nonatomic, strong) UIDevice *childDevice;
@property (nonatomic, strong) UITextView *textView;

@end

@implementation TestProjectUIDevice

- (instancetype)init {
    if (self = [super init]) {
        [self.tableView testproject_makeConstraints:^(TestProjectViewConstrainMake * _Nonnull make) {
            make.height.equal(self).offset(-100);
        }];
        self.textView.layer.borderWidth = 1;
        self.textView.layer.borderColor = [UIColor redColor].CGColor;
    }
    return self;
}

- (UIDevice *)childDevice {
    if (!_childDevice) {
        _childDevice = [UIDevice currentDevice];
    }
    return _childDevice;
}

- (UITextView *)textView:(TestProjectTableViewParams *)params {
    if (!_textView) {
        _textView = [[UITextView alloc] init];
        [self addSubview:_textView];
        [_textView testproject_makeConstraints:^(TestProjectViewConstrainMake * _Nonnull make) {
            make.top.trainling.leading.equal(self);
            make.height.equal(@100);
        }];
    }
    return _textView;
}

- (id)setPropertyValueObject:(TestProjectTableViewParams *)params {
    return self.childDevice;
}

- (void)dealloc:(TestProjectTableViewParams *)params {
    [[NSNotificationCenter defaultCenter] removeObserver:self];
}

- (void)deviceProximityStateDidChange:(NSNotification *)noti {
    [self appendText:[NSString stringWithFormat:@"设备感应距离发生改变了:\n%@", noti]];
}

- (NSMutableArray *)TestProjectDevice_notify_UIDeviceProximityStateDidChangeNotification:(TestProjectTableViewParams *)params {
    WS(wSelf);
    return [self createModelSingleArrayWithParams:params title:@"添加设备感应距离发生改变通知" block:^{
        [wSelf addNotificationWithName:UIDeviceProximityStateDidChangeNotification selector:@selector(deviceProximityStateDidChange:)];
    }];
}

- (NSDictionary *)method_20:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"添加UIDevice的通知，当前设备感应距离发生改变",
            @"title": @"UIDeviceProximityStateDidChangeNotification",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectDevice_notify_UIDeviceProximityStateDidChangeNotification:params],
            }
        },
    };
}

- (void)deviceBatteryLevelDidChange:(NSNotification *)noti {
    [self appendText:[NSString stringWithFormat:@"设备电池量改变了:\n%@", noti]];
}

- (NSMutableArray *)TestProjectDevice_notify_UIDeviceBatteryLevelDidChangeNotification:(TestProjectTableViewParams *)params {
    WS(wSelf);
    return [self createModelSingleArrayWithParams:params title:@"添加设备电池量改变通知" block:^{
        [wSelf addNotificationWithName:UIDeviceBatteryLevelDidChangeNotification selector:@selector(deviceBatteryLevelDidChange:)];
    }];
}

- (NSDictionary *)method_19:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"添加UIDevice的通知，当前设备电池量发生改变",
            @"title": @"UIDeviceBatteryLevelDidChangeNotification",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectDevice_notify_UIDeviceBatteryLevelDidChangeNotification:params],
            }
        },
    };
}

- (void)deviceBatteryStateDidChange:(NSNotification *)noti {
    [self appendText:[NSString stringWithFormat:@"设备电池状态改变了:\n%@", noti]];
}

- (NSMutableArray *)TestProjectDevice_notify_UIDeviceBatteryStateDidChangeNotification:(TestProjectTableViewParams *)params {
    WS(wSelf);
    return [self createModelSingleArrayWithParams:params title:@"添加设备电池状态改变通知" block:^{
        [wSelf addNotificationWithName:UIDeviceBatteryStateDidChangeNotification selector:@selector(deviceBatteryStateDidChange:)];
    }];
}

- (NSDictionary *)method_18:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"添加UIDevice的通知，当前设备电池状态发生改变",
            @"title": @"UIDeviceBatteryStateDidChangeNotification",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectDevice_notify_UIDeviceBatteryStateDidChangeNotification:params],
            }
        },
    };
}

- (void)deviceOrientationDidChange:(NSNotification *)noti {
    [self appendText:[NSString stringWithFormat:@"设备方向改变了:\n%@", noti]];
}

- (void)appendText:(NSString *)text {
    NSString *str = self.textView.text;
    self.textView.text = [NSString stringWithFormat:@"%@\n%@", text, str];
}

- (NSMutableArray *)TestProjectDevice_notify_UIDeviceOrientationDidChangeNotification:(TestProjectTableViewParams *)params {
    WS(wSelf);
    return [self createModelSingleArrayWithParams:params title:@"添加设备方向改变通知" block:^{
        [wSelf addNotificationWithName:UIDeviceOrientationDidChangeNotification selector:@selector(deviceOrientationDidChange:)];
    }];
}

- (NSDictionary *)method_17:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"添加UIDevice的通知，当前设备屏幕发生旋转",
            @"title": @"UIDeviceOrientationDidChangeNotification",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectDevice_notify_UIDeviceOrientationDidChangeNotification:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectDevice_property_userInterfaceIdiom:(TestProjectTableViewParams *)params {
    return [self createModelSingleArrayWithParams:params
                                         property:@"userInterfaceIdiom"
                                            value:nil
                                        operation:TestProjectCreateModelGetBeforeClickGet
                                            block:nil];
}

- (NSDictionary *)method_16:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"设置获取UIDevice属性userInterfaceIdiom",
            @"title": @"@property(nonatomic,readonly) UIUserInterfaceIdiom userInterfaceIdiom API_AVAILABLE(ios(3.2));",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectDevice_property_userInterfaceIdiom:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectDevice_property_multitaskingSupported:(TestProjectTableViewParams *)params {
    return [self createModelSingleArrayWithParams:params
                                         property:@"multitaskingSupported"
                                            value:nil
                                        operation:TestProjectCreateModelGetBeforeClickGet
                                            block:nil];
}

- (NSDictionary *)method_15:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"设置获取UIDevice属性multitaskingSupported",
            @"title": @"@property(nonatomic,readonly,getter=isMultitaskingSupported) BOOL multitaskingSupported API_AVAILABLE(ios(4.0));",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectDevice_property_multitaskingSupported:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectDevice_property_proximityState:(TestProjectTableViewParams *)params {
    return [self createModelSingleArrayWithParams:params
                                         property:@"proximityState"
                                            value:nil
                                        operation:TestProjectCreateModelGetBeforeClickGet
                                            block:nil];
}

- (NSDictionary *)method_14:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"设置获取UIDevice属性proximityState",
            @"title": @"@property(nonatomic,readonly)                            BOOL proximityState API_AVAILABLE(ios(3.0));",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectDevice_property_proximityState:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectDevice_property_proximityMonitoringEnabled:(TestProjectTableViewParams *)params {
    return [self createModelSingleArrayWithParams:params
                                         property:@"proximityMonitoringEnabled"
                                            value:nil
                                        operation:TestProjectCreateModelGetBeforeClickGet
                                            block:nil];
}

- (NSDictionary *)method_13:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"设置获取UIDevice属性proximityMonitoringEnabled",
            @"title": @"@property(nonatomic,getter=isProximityMonitoringEnabled) BOOL proximityMonitoringEnabled API_AVAILABLE(ios(3.0));",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectDevice_property_proximityMonitoringEnabled:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectDevice_property_batteryLevel:(TestProjectTableViewParams *)params {
    return [self createModelSingleArrayWithParams:params
                                         property:@"batteryLevel"
                                            value:nil
                                        operation:TestProjectCreateModelGetBeforeClickGet
                                            block:nil];
}

- (NSDictionary *)method_12:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"设置获取UIDevice属性batteryLevel",
            @"title": @"@property(nonatomic,readonly) float                         batteryLevel API_AVAILABLE(ios(3.0)) API_UNAVAILABLE(tvos);",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectDevice_property_batteryLevel:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectDevice_property_batteryState:(TestProjectTableViewParams *)params {
    return [self createModelSingleArrayWithParams:params
                                         property:@"batteryState"
                                            value:nil
                                        operation:TestProjectCreateModelGetBeforeClickGet
                                            block:nil];
}

- (NSDictionary *)method_11:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"设置获取UIDevice属性batteryState",
            @"title": @"@property(nonatomic,readonly) UIDeviceBatteryState          batteryState API_AVAILABLE(ios(3.0)) API_UNAVAILABLE(tvos);",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectDevice_property_batteryState:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectDevice_property_batteryMonitoringEnabled:(TestProjectTableViewParams *)params {
    return [self createModelSingleArrayWithParams:params
                                         property:@"batteryMonitoringEnabled"
                                            value:nil
                                        operation:TestProjectCreateModelGetBeforeClickGet
                                            block:nil];
}

- (NSDictionary *)method_10:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"设置获取UIDevice属性batteryMonitoringEnabled",
            @"title": @"@property(nonatomic,getter=isBatteryMonitoringEnabled) BOOL batteryMonitoringEnabled API_AVAILABLE(ios(3.0)) API_UNAVAILABLE(tvos);",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectDevice_property_batteryMonitoringEnabled:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectDevice_property_generatesDeviceOrientationNotifications:(TestProjectTableViewParams *)params {
    return [self createModelSingleArrayWithParams:params
                                         property:@"generatesDeviceOrientationNotifications"
                                            value:nil
                                        operation:TestProjectCreateModelGetBeforeClickGet
                                            block:nil];
}

- (NSDictionary *)method_9:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"设置获取UIDevice属性generatesDeviceOrientationNotifications",
            @"title": @"@property(nonatomic,readonly,getter=isGeneratingDeviceOrientationNotifications) BOOL generatesDeviceOrientationNotifications API_UNAVAILABLE(tvos);",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectDevice_property_generatesDeviceOrientationNotifications:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectDevice_property_identifierForVendor:(TestProjectTableViewParams *)params {
    return [self createModelSingleArrayWithParams:params
                                         property:@"identifierForVendor"
                                            value:nil
                                        operation:TestProjectCreateModelGetBeforeClickGet
                                            block:nil];
}

- (NSDictionary *)method_8:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"设置获取UIDevice属性identifierForVendor",
            @"title": @"@property(nullable, nonatomic,readonly,strong) NSUUID      *identifierForVendor API_AVAILABLE(ios(6.0));",
            @"isDataModelExpand": @(YES),
            @"desc": @"z这个卸载重装会改变",
            @"dataModel": @{
                @"childItems": [self TestProjectDevice_property_identifierForVendor:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectDevice_property_orientation:(TestProjectTableViewParams *)params {
    return [self createModelSingleArrayWithParams:params
                                         property:@"orientation"
                                            value:nil
                                        operation:TestProjectCreateModelGetBeforeClickGet
                                            block:nil];
}

- (NSDictionary *)method_7:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"设置获取UIDevice属性orientation",
            @"title": @"@property(nonatomic,readonly) UIDeviceOrientation orientation API_UNAVAILABLE(tvos);",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectDevice_property_orientation:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectDevice_property_systemVersion:(TestProjectTableViewParams *)params {
    return [self createModelSingleArrayWithParams:params
                                         property:@"systemVersion"
                                            value:nil
                                        operation:TestProjectCreateModelGetBeforeClickGet
                                            block:nil];
}

- (NSDictionary *)method_6:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"设置获取UIDevice属性systemVersion",
            @"title": @"@property(nonatomic,readonly,strong) NSString    *systemVersion;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectDevice_property_systemVersion:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectDevice_property_systemName:(TestProjectTableViewParams *)params {
    return [self createModelSingleArrayWithParams:params
                                         property:@"systemName"
                                            value:nil
                                        operation:TestProjectCreateModelGetBeforeClickGet
                                            block:nil];
}

- (NSDictionary *)method_5:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"设置获取UIDevice属性systemName",
            @"title": @"@property(nonatomic,readonly,strong) NSString    *systemName;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectDevice_property_systemName:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectDevice_property_localizedModel:(TestProjectTableViewParams *)params {
    return [self createModelSingleArrayWithParams:params
                                         property:@"localizedModel"
                                            value:nil
                                        operation:TestProjectCreateModelGetBeforeClickGet
                                            block:nil];
}

- (NSDictionary *)method_4:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"设置获取UIDevice属性localizedModel",
            @"title": @"@property(nonatomic,readonly,strong) NSString    *localizedModel;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectDevice_property_localizedModel:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectDevice_property_model:(TestProjectTableViewParams *)params {
    return [self createModelSingleArrayWithParams:params
                                         property:@"model"
                                            value:nil
                                        operation:TestProjectCreateModelGetBeforeClickGet
                                            block:nil];
}

- (NSDictionary *)method_3:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"设置获取UIDevice属性model",
            @"title": @"@property(nonatomic,readonly,strong) NSString    *model;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectDevice_property_model:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectDevice_property_name:(TestProjectTableViewParams *)params {
    return [self createModelSingleArrayWithParams:params
                                         property:@"name"
                                            value:nil
                                        operation:TestProjectCreateModelGetBeforeClickGet
                                            block:nil];
}

- (NSDictionary *)method_2:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"设置获取UIDevice属性currentDevice",
            @"title": @"@property(nonatomic,readonly,strong) NSString    *name;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectDevice_property_name:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectDevice_class_property_currentDevice:(TestProjectTableViewParams *)params {
    UIDevice *device = [UIDevice currentDevice];
    return [self createModelSingleArrayWithParams:params
                                            title:[NSString stringWithFormat:@"currentDevice:%@", device]
                                            block:nil];
}

- (NSDictionary *)method_1:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"设置获取UIDevice的class属性currentDevice",
            @"title": @"@property(class, nonatomic, readonly) UIDevice *currentDevice;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectDevice_class_property_currentDevice:params],
            }
        },
    };
}

@end
