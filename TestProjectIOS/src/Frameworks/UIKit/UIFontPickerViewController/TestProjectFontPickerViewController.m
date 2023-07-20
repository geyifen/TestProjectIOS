//
//  TestProjectFontPickerViewController.m
//  TestProjectIOS
//
//  Created by zjrcumac on 2023/6/26.
//

#import "TestProjectFontPickerViewController.h"

@interface TestProjectFontPickerViewController () <UIFontPickerViewControllerDelegate>

@property (nonatomic, strong) UIFontPickerViewController *fontPickerVC;

@end

@implementation TestProjectFontPickerViewController

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

- (id)setPropertyValueObject {
    return self.fontPickerVC;
}

#pragma mark - UIFontPickerViewControllerDelegate
- (void)fontPickerViewControllerDidCancel:(UIFontPickerViewController *)viewController {
    NSLog(@"%@", NSStringFromSelector(_cmd));
}

- (void)fontPickerViewControllerDidPickFont:(UIFontPickerViewController *)viewController {
    NSLog(@"%@ selectedFontDescriptor:%@", NSStringFromSelector(_cmd), viewController.selectedFontDescriptor);
}

- (NSDictionary *)method_1:(NSInteger)index {
    return @{
        @"dataModel": @{
            @"abstract": @"获取TestProjectFontPickerViewController的属性configuration",
            @"title": @"@property (readonly, copy, nonatomic) UIFontPickerViewControllerConfiguration *configuration;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectFontPickerViewController_property_configuration:index],
            }
        },
    };
}

- (NSDictionary *)method_2:(NSInteger)index {
    return @{
        @"dataModel": @{
            @"abstract": @"获取TestProjectFontPickerViewController的属性delegate",
            @"title": @"@property (nullable, weak, nonatomic) id<UIFontPickerViewControllerDelegate> delegate;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectFontPickerViewController_property_delegate:index],
            }
        },
    };
}

- (NSDictionary *)method_3:(NSInteger)index {
    return @{
        @"dataModel": @{
            @"abstract": @"获取TestProjectFontPickerViewController的属性selectedFontDescriptor",
            @"title": @"@property (nullable, strong, nonatomic) UIFontDescriptor *selectedFontDescriptor;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectFontPickerViewController_property_selectedFontDescriptor:index],
            }
        },
    };
}

- (NSMutableArray *)TestProjectFontPickerViewController_property_selectedFontDescriptor:(NSInteger)index {
    return [self createModelSingleArrayWithIndex:index
                                        property:@"selectedFontDescriptor"
                                           value:nil
                                       operation:TestProjectCreateModelGetBeforeClickGet
                                           block:nil];
}

- (NSMutableArray *)TestProjectFontPickerViewController_property_delegate:(NSInteger)index {
    return [self createModelSingleArrayWithIndex:index
                                        property:@"delegate"
                                           value:nil
                                       operation:TestProjectCreateModelOnlyGet
                                           block:nil];
}

- (NSMutableArray *)TestProjectFontPickerViewController_property_configuration:(NSInteger)index {
    return [self createModelSingleArrayWithIndex:index
                                        property:@"configuration"
                                           value:nil
                                       operation:TestProjectCreateModelOnlyGet
                                           block:nil];
}

@end
