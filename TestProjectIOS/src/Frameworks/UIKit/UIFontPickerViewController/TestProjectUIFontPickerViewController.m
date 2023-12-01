//
//  TestProjectUIFontPickerViewController.m
//  TestProjectIOS
//
//  Created by liwenfan on 2023/6/26.
//

#import "TestProjectUIFontPickerViewController.h"

@interface TestProjectUIFontPickerViewController () <UIFontPickerViewControllerDelegate>

@property (nonatomic, strong) UIFontPickerViewController *fontPickerVC;

@end

@implementation TestProjectUIFontPickerViewController

- (instancetype)initCreate {
    if (self = [super initCreate]) {
        [self.tableView testproject_updateConstraints:^(TestProjectViewConstrainMake * _Nonnull make) {
            make.height.equal(self).offset(-450);
        }];
        self.fontPickerVC.view.hidden = NO;
    }
    return self;
}

- (UIFontPickerViewController *)fontPickerVC {
    if (!_fontPickerVC) {
        _fontPickerVC = [[UIFontPickerViewController alloc] init];
        _fontPickerVC.delegate = self;
        [self addSubview:_fontPickerVC.view];
        [_fontPickerVC.view testproject_makeConstraints:^(TestProjectViewConstrainMake * _Nonnull make) {
            make.top.leading.trainling.equal(self);
            make.height.equal(@450);
        }];
    }
    return _fontPickerVC;
}

- (id)setPropertyValueObject:(TestProjectTableViewParams *)params {
    return self.fontPickerVC;
}

#pragma mark - UIFontPickerViewControllerDelegate
- (void)fontPickerViewControllerDidCancel:(UIFontPickerViewController *)viewController {
    NSLog(@"%@", NSStringFromSelector(_cmd));
}

- (void)fontPickerViewControllerDidPickFont:(UIFontPickerViewController *)viewController {
    NSLog(@"%@ selectedFontDescriptor:%@", NSStringFromSelector(_cmd), viewController.selectedFontDescriptor);
}

- (NSMutableArray *)TestProjectFontPickerViewController_property_selectedFontDescriptor:(TestProjectTableViewParams *)params {
    return [self createModelSingleArrayWithParams:params
                                         property:@"selectedFontDescriptor"
                                            value:nil
                                        operation:TestProjectCreateModelGetBeforeClickGet
                                            block:nil];
}

- (NSDictionary *)method_3:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"获取TestProjectFontPickerViewController的属性selectedFontDescriptor",
            @"title": @"@property (nullable, strong, nonatomic) UIFontDescriptor *selectedFontDescriptor;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectFontPickerViewController_property_selectedFontDescriptor:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectFontPickerViewController_property_delegate:(TestProjectTableViewParams *)params {
    return [self createModelSingleArrayWithParams:params
                                         property:@"delegate"
                                            value:nil
                                        operation:TestProjectCreateModelOnlyGet
                                            block:nil];
}

- (NSDictionary *)method_2:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"获取TestProjectFontPickerViewController的属性delegate",
            @"title": @"@property (nullable, weak, nonatomic) id<UIFontPickerViewControllerDelegate> delegate;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectFontPickerViewController_property_delegate:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectFontPickerViewController_property_configuration:(TestProjectTableViewParams *)params {
    return [self createModelSingleArrayWithParams:params
                                         property:@"configuration"
                                            value:nil
                                        operation:TestProjectCreateModelOnlyGet
                                            block:nil];
}

- (NSDictionary *)method_1:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"获取TestProjectFontPickerViewController的属性configuration",
            @"title": @"@property (readonly, copy, nonatomic) UIFontPickerViewControllerConfiguration *configuration;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectFontPickerViewController_property_configuration:params],
            }
        },
    };
}

@end
