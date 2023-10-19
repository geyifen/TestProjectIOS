//
//  TestProjectDevice.m
//  TestProjectIOS
//
//  Created by liwenfan on 2023/6/19.
//

#import "TestProjectDevice.h"

@interface TestProjectDevice ()

@property (nonatomic, strong) UIDevice *childDevice;
@property (nonatomic, strong) UITextView *textView;

@end

@implementation TestProjectDevice

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

- (UITextView *)textView {
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

- (id)setPropertyValueObject {
    return self.childDevice;
}

- (void)dealloc {
    [[NSNotificationCenter defaultCenter] removeObserver:self];
}

- (NSDictionary *)method_1 {
    return @{
        @"dataModel": @{
            @"abstract": @"设置获取UIDevice的class属性currentDevice",
            @"title": @"@property(class, nonatomic, readonly) UIDevice *currentDevice;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectDevice_class_property_currentDevice],
            }
        },
    };
}

- (NSDictionary *)method_2 {
    return @{
        @"dataModel": @{
            @"abstract": @"设置获取UIDevice属性currentDevice",
            @"title": @"@property(nonatomic,readonly,strong) NSString    *name;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectDevice_property_name],
            }
        },
    };
}

- (NSDictionary *)method_3 {
    return @{
        @"dataModel": @{
            @"abstract": @"设置获取UIDevice属性model",
            @"title": @"@property(nonatomic,readonly,strong) NSString    *model;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectDevice_property_model],
            }
        },
    };
}

- (NSDictionary *)method_4 {
    return @{
        @"dataModel": @{
            @"abstract": @"设置获取UIDevice属性localizedModel",
            @"title": @"@property(nonatomic,readonly,strong) NSString    *localizedModel;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectDevice_property_localizedModel],
            }
        },
    };
}

- (NSDictionary *)method_5 {
    return @{
        @"dataModel": @{
            @"abstract": @"设置获取UIDevice属性systemName",
            @"title": @"@property(nonatomic,readonly,strong) NSString    *systemName;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectDevice_property_systemName],
            }
        },
    };
}

- (NSDictionary *)method_6 {
    return @{
        @"dataModel": @{
            @"abstract": @"设置获取UIDevice属性systemVersion",
            @"title": @"@property(nonatomic,readonly,strong) NSString    *systemVersion;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectDevice_property_systemVersion],
            }
        },
    };
}

- (NSDictionary *)method_7:(NSInteger)index {
    return @{
        @"dataModel": @{
            @"abstract": @"设置获取UIDevice属性orientation",
            @"title": @"@property(nonatomic,readonly) UIDeviceOrientation orientation API_UNAVAILABLE(tvos);",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectDevice_property_orientation:index],
            }
        },
    };
}

- (NSDictionary *)method_8 {
    return @{
        @"dataModel": @{
            @"abstract": @"设置获取UIDevice属性identifierForVendor",
            @"title": @"@property(nullable, nonatomic,readonly,strong) NSUUID      *identifierForVendor API_AVAILABLE(ios(6.0));",
            @"isDataModelExpand": @(YES),
            @"desc": @"z这个卸载重装会改变",
            @"dataModel": @{
                @"childItems": [self TestProjectDevice_property_identifierForVendor],
            }
        },
    };
}

- (NSDictionary *)method_9 {
    return @{
        @"dataModel": @{
            @"abstract": @"设置获取UIDevice属性generatesDeviceOrientationNotifications",
            @"title": @"@property(nonatomic,readonly,getter=isGeneratingDeviceOrientationNotifications) BOOL generatesDeviceOrientationNotifications API_UNAVAILABLE(tvos);",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectDevice_property_generatesDeviceOrientationNotifications],
            }
        },
    };
}

- (NSDictionary *)method_10 {
    return @{
        @"dataModel": @{
            @"abstract": @"设置获取UIDevice属性batteryMonitoringEnabled",
            @"title": @"@property(nonatomic,getter=isBatteryMonitoringEnabled) BOOL batteryMonitoringEnabled API_AVAILABLE(ios(3.0)) API_UNAVAILABLE(tvos);",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectDevice_property_batteryMonitoringEnabled],
            }
        },
    };
}

- (NSDictionary *)method_11:(NSInteger)index {
    return @{
        @"dataModel": @{
            @"abstract": @"设置获取UIDevice属性batteryState",
            @"title": @"@property(nonatomic,readonly) UIDeviceBatteryState          batteryState API_AVAILABLE(ios(3.0)) API_UNAVAILABLE(tvos);",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectDevice_property_batteryState:index],
            }
        },
    };
}

- (NSDictionary *)method_12:(NSInteger)index {
    return @{
        @"dataModel": @{
            @"abstract": @"设置获取UIDevice属性batteryLevel",
            @"title": @"@property(nonatomic,readonly) float                         batteryLevel API_AVAILABLE(ios(3.0)) API_UNAVAILABLE(tvos);",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectDevice_property_batteryLevel:index],
            }
        },
    };
}

- (NSDictionary *)method_13 {
    return @{
        @"dataModel": @{
            @"abstract": @"设置获取UIDevice属性proximityMonitoringEnabled",
            @"title": @"@property(nonatomic,getter=isProximityMonitoringEnabled) BOOL proximityMonitoringEnabled API_AVAILABLE(ios(3.0));",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectDevice_property_proximityMonitoringEnabled],
            }
        },
    };
}

- (NSDictionary *)method_14:(NSInteger)index {
    return @{
        @"dataModel": @{
            @"abstract": @"设置获取UIDevice属性proximityState",
            @"title": @"@property(nonatomic,readonly)                            BOOL proximityState API_AVAILABLE(ios(3.0));",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectDevice_property_proximityState:index],
            }
        },
    };
}

- (NSDictionary *)method_15 {
    return @{
        @"dataModel": @{
            @"abstract": @"设置获取UIDevice属性multitaskingSupported",
            @"title": @"@property(nonatomic,readonly,getter=isMultitaskingSupported) BOOL multitaskingSupported API_AVAILABLE(ios(4.0));",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectDevice_property_multitaskingSupported],
            }
        },
    };
}

- (NSDictionary *)method_16:(NSInteger)index {
    return @{
        @"dataModel": @{
            @"abstract": @"设置获取UIDevice属性userInterfaceIdiom",
            @"title": @"@property(nonatomic,readonly) UIUserInterfaceIdiom userInterfaceIdiom API_AVAILABLE(ios(3.2));",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectDevice_property_userInterfaceIdiom:index],
            }
        },
    };
}

- (NSDictionary *)method_17 {
    return @{
        @"dataModel": @{
            @"abstract": @"添加UIDevice的通知，当前设备屏幕发生旋转",
            @"title": @"UIDeviceOrientationDidChangeNotification",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectDevice_notify_UIDeviceOrientationDidChangeNotification],
            }
        },
    };
}

- (NSDictionary *)method_18 {
    return @{
        @"dataModel": @{
            @"abstract": @"添加UIDevice的通知，当前设备电池状态发生改变",
            @"title": @"UIDeviceBatteryStateDidChangeNotification",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectDevice_notify_UIDeviceBatteryStateDidChangeNotification],
            }
        },
    };
}

- (NSDictionary *)method_19 {
    return @{
        @"dataModel": @{
            @"abstract": @"添加UIDevice的通知，当前设备电池量发生改变",
            @"title": @"UIDeviceBatteryLevelDidChangeNotification",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectDevice_notify_UIDeviceBatteryLevelDidChangeNotification],
            }
        },
    };
}

- (NSDictionary *)method_20 {
    return @{
        @"dataModel": @{
            @"abstract": @"添加UIDevice的通知，当前设备感应距离发生改变",
            @"title": @"UIDeviceProximityStateDidChangeNotification",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectDevice_notify_UIDeviceProximityStateDidChangeNotification],
            }
        },
    };
}

- (void)deviceProximityStateDidChange:(NSNotification *)noti {
    [self appendText:[NSString stringWithFormat:@"设备感应距离发生改变了:\n%@", noti]];
}

- (NSMutableArray *)TestProjectDevice_notify_UIDeviceProximityStateDidChangeNotification {
    WS(wSelf);
    return [self createTableModelSingleArrayWithTitle:@"添加设备感应距离发生改变通知" block:^{
        [wSelf addNotificationWithName:UIDeviceProximityStateDidChangeNotification selector:@selector(deviceProximityStateDidChange:)];
    }];
}

- (void)deviceBatteryLevelDidChange:(NSNotification *)noti {
    [self appendText:[NSString stringWithFormat:@"设备电池量改变了:\n%@", noti]];
}

- (NSMutableArray *)TestProjectDevice_notify_UIDeviceBatteryLevelDidChangeNotification {
    WS(wSelf);
    return [self createTableModelSingleArrayWithTitle:@"添加设备电池量改变通知" block:^{
        [wSelf addNotificationWithName:UIDeviceBatteryLevelDidChangeNotification selector:@selector(deviceBatteryLevelDidChange:)];
    }];
}

- (void)deviceBatteryStateDidChange:(NSNotification *)noti {
    [self appendText:[NSString stringWithFormat:@"设备电池状态改变了:\n%@", noti]];
}

- (NSMutableArray *)TestProjectDevice_notify_UIDeviceBatteryStateDidChangeNotification {
    WS(wSelf);
    return [self createTableModelSingleArrayWithTitle:@"添加设备电池状态改变通知" block:^{
        [wSelf addNotificationWithName:UIDeviceBatteryStateDidChangeNotification selector:@selector(deviceBatteryStateDidChange:)];
    }];
}

- (void)deviceOrientationDidChange:(NSNotification *)noti {
    [self appendText:[NSString stringWithFormat:@"设备方向改变了:\n%@", noti]];
}

- (void)appendText:(NSString *)text {
    NSString *str = self.textView.text;
    self.textView.text = [NSString stringWithFormat:@"%@\n%@", text, str];
}

- (NSMutableArray *)TestProjectDevice_notify_UIDeviceOrientationDidChangeNotification {
    WS(wSelf);
    return [self createTableModelSingleArrayWithTitle:@"添加设备方向改变通知" block:^{
        [wSelf addNotificationWithName:UIDeviceOrientationDidChangeNotification selector:@selector(deviceOrientationDidChange:)];
    }];
}

- (NSMutableArray *)TestProjectDevice_property_userInterfaceIdiom:(NSInteger)index {
    return [self createTableModelSingleArrayWithProperty:@"userInterfaceIdiom" index:index];;
    return [self createTableModelSingleArrayWithProperty:@"userInterfaceIdiom" value:nil];
}

- (NSMutableArray *)TestProjectDevice_property_multitaskingSupported {
    return [self createTableModelSingleArrayWithProperty:@"multitaskingSupported" value:nil];
}

- (NSMutableArray *)TestProjectDevice_property_proximityState:(NSInteger)index {
    return [self createTableModelSingleArrayWithProperty:@"proximityState" index:index];
}

- (NSMutableArray *)TestProjectDevice_property_proximityMonitoringEnabled {
    return [self createTableModelSingleArrayWithProperty:@"proximityMonitoringEnabled" value:nil];
}

- (NSMutableArray *)TestProjectDevice_property_batteryLevel:(NSInteger)index {
    return [self createTableModelSingleArrayWithProperty:@"batteryLevel" index:index];
}

- (NSMutableArray *)TestProjectDevice_property_batteryState:(NSInteger)index {
    return [self createTableModelSingleArrayWithProperty:@"batteryState" index:index];
}

- (NSMutableArray *)TestProjectDevice_property_batteryMonitoringEnabled {
    return [self createTableModelSingleArrayWithProperty:@"batteryMonitoringEnabled" value:nil];
}

- (NSMutableArray *)TestProjectDevice_property_generatesDeviceOrientationNotifications {
    return [self createClickSetSingleArrayTableModelWithProperty:@"generatesDeviceOrientationNotifications" value:nil];
}

- (NSMutableArray *)TestProjectDevice_property_identifierForVendor {
    return [self createTableModelSingleArrayWithProperty:@"identifierForVendor" value:nil];
}

- (NSMutableArray *)TestProjectDevice_property_orientation:(NSInteger)index {
    return [self createTableModelSingleArrayWithProperty:@"orientation" index:index];
}

- (NSMutableArray *)TestProjectDevice_property_systemVersion {
    return [self createTableModelSingleArrayWithProperty:@"systemVersion" value:nil];
}

- (NSMutableArray *)TestProjectDevice_property_systemName {
    return [self createTableModelSingleArrayWithProperty:@"systemName" value:nil];
}

- (NSMutableArray *)TestProjectDevice_property_localizedModel {
    return [self createTableModelSingleArrayWithProperty:@"localizedModel" value:nil];
}

- (NSMutableArray *)TestProjectDevice_property_model {
    return [self createTableModelSingleArrayWithProperty:@"model" value:nil];
}

- (NSMutableArray *)TestProjectDevice_property_name {
    return [self createTableModelSingleArrayWithProperty:@"name" value:nil];
}

- (NSMutableArray *)TestProjectDevice_class_property_currentDevice {
    UIDevice *device = [UIDevice currentDevice];
    return [self createTableModelSingleArrayWithTitle:[NSString stringWithFormat:@"currentDevice:%@", device] block:nil];
}

@end
