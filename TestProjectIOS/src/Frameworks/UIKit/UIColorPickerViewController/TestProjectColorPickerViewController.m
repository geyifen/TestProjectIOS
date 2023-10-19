//
//  TestProjectColorPickerViewController.m
//  TestProjectIOS
//
//  Created by liwenfan on 2023/6/16.
//

#import "TestProjectColorPickerViewController.h"

API_AVAILABLE(ios(14.0))
@interface TestProjectColorPickerViewController () <UIColorPickerViewControllerDelegate>

@property (nonatomic, strong) UIColorPickerViewController *colorPickerVC;

@end

API_AVAILABLE(ios(14.0))
@implementation TestProjectColorPickerViewController

- (instancetype)initCreate {
    if (self = [super initCreate]) {
        [self.tableView testproject_updateConstraints:^(TestProjectViewConstrainMake * _Nonnull make) {
            make.height.equal(self).offset(-450);
        }];
        self.colorPickerVC.view.hidden = NO;
    }
    return self;
}

- (UIColorPickerViewController *)colorPickerVC {
    if (!_colorPickerVC) {
        _colorPickerVC = [[UIColorPickerViewController alloc] init];
        _colorPickerVC.delegate = self;
        [self.parentVC addChildViewController:_colorPickerVC];
        [self addSubview:_colorPickerVC.view];
        [_colorPickerVC.view testproject_makeConstraints:^(TestProjectViewConstrainMake * _Nonnull make) {
            make.top.leading.trainling.equal(self);
            make.height.equal(@450);
        }];
    }
    return _colorPickerVC;
}

- (id)setPropertyValueObject {
    return self.colorPickerVC;
}

#pragma mark - UIColorPickerViewControllerDelegate
- (void)colorPickerViewController:(UIColorPickerViewController *)viewController didSelectColor:(UIColor *)color continuously:(BOOL)continuously {
    NSLog(@"%@ color:%@ continuously:%u", NSStringFromSelector(_cmd), color, continuously);
}

- (void)colorPickerViewControllerDidFinish:(UIColorPickerViewController *)viewController {
    NSLog(@"%@", NSStringFromSelector(_cmd));
}

- (NSDictionary *)method_1 {
    return @{
        @"dataModel": @{
            @"abstract": @"设置获取UIColorPickerViewController的属性delegate",
            @"title": @"@property (nullable, weak, nonatomic) id<UIColorPickerViewControllerDelegate> delegate;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectColorPickerViewController_property_delegate],
            }
        },
    };
}

- (NSDictionary *)method_2:(NSInteger)index {
    return @{
        @"dataModel": @{
            @"abstract": @"设置获取UIColorPickerViewController的属性selectedColor",
            @"title": @"@property (strong, nonatomic) UIColor *selectedColor;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectColorPickerViewController_property_selectedColor:index],
            }
        },
    };
}

- (NSDictionary *)method_3 {
    return @{
        @"dataModel": @{
            @"abstract": @"设置获取UIColorPickerViewController的属性supportsAlpha, 是否支持透明度",
            @"title": @"@property (nonatomic) BOOL supportsAlpha",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectColorPickerViewController_property_supportsAlpha],
            }
        },
    };
}

- (NSMutableArray *)TestProjectColorPickerViewController_property_supportsAlpha {
    NSArray *arr = @[
        @{
            @"title": @"设置的属性是YES, 有透明度选项",
            @"value": @(YES),
        },
        @{
            @"title": @"设置的属性是NO, 没有透明度选项，所有的颜色透明度为1",
            @"value": @(NO),
        },
    ];
    for (NSDictionary *dic in arr) {
        NSString *title = dic[@"title"];
        NSNumber *value = dic[@"value"];
        [self createClickSetTableModelWithProperty:@"supportsAlpha" value:value title:title block:nil];
    }
    return self.dataMutArr;
}

- (NSMutableArray *)TestProjectColorPickerViewController_property_selectedColor:(NSInteger)index {
    return [self createTableModelSingleArrayWithProperty:@"selectedColor" index:index];
}

- (NSMutableArray *)TestProjectColorPickerViewController_property_delegate {
    return [self createTableModelSingleArrayWithProperty:@"delegate" value:nil];
}

@end
