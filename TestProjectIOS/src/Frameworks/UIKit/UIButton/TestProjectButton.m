//
//  TestProjectButton.m
//  TestProjectIOS
//
//  Created by liwenfan on 2023/6/1.
//

#import "TestProjectButton.h"

@interface TestProjectChildButton : UIButton

@end

@implementation TestProjectChildButton

- (void)updateConfiguration {
    NSLog(@"%@", NSStringFromSelector(_cmd));
    [super updateConfiguration];
}

@end

@interface TestProjectButton ()

@property (nonatomic, strong) UIButton *childButton;
@property (nonatomic, strong) UIAction *action;
@property (nonatomic, strong) UIButtonConfiguration *config API_AVAILABLE(ios(15.0));
@property (nonatomic, strong) TestProjectChildButton *grandChildButton;

@end

@implementation TestProjectButton

- (id)setPropertyValueObject {
    return self.childButton;
}

- (instancetype)initCreate {
    if (self = [super initCreate]) {
        [self.tableView testproject_updateConstraints:^(TestProjectViewConstrainMake * _Nonnull make) {
            make.height.equal(self).offset(-50);
        }];
        self.childButton.backgroundColor = [UIColor redColor];
        self.grandChildButton.backgroundColor = [UIColor linkColor];
    }
    return self;
}

- (UIButton *)childButton {
    if (!_childButton) {
        _childButton = [UIButton buttonWithType:UIButtonTypeCustom];
        [_childButton setTitle:@"child title" forState:UIControlStateNormal];
        [self addSubview:_childButton];
        [_childButton testproject_makeConstraints:^(TestProjectViewConstrainMake * _Nonnull make) {
            make.height.equal(@50);
            make.top.trainling.leading.equal(self);
        }];
    }
    return _childButton;
}

- (TestProjectChildButton *)grandChildButton {
    if (!_grandChildButton) {
        if (@available(iOS 15.0, *)) {
            _grandChildButton = [TestProjectChildButton buttonWithConfiguration:self.config primaryAction:self.action];
            [_grandChildButton setTitle:@"title" forState:UIControlStateNormal];
            [_grandChildButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        } else {
            // Fallback on earlier versions
        }
        _grandChildButton.backgroundColor = [UIColor greenColor];
        [self addBtn:_grandChildButton];
        [_grandChildButton testproject_makeConstraints:^(TestProjectViewConstrainMake * _Nonnull make) {
            make.height.width.equal(self.childButton.height);
            make.top.equal(self.childButton);
            make.leading.equal(self.childButton).offset(10);
        }];
    }
    return _grandChildButton;
}

- (UIButtonConfiguration *)config {
    if (!_config) {
        if (@available(iOS 15.0, *)) {
            _config = [UIButtonConfiguration plainButtonConfiguration];
            _config.buttonSize = UIButtonConfigurationSizeMini;
        } else {
            // Fallback on earlier versions
        }
    }
    return _config;
}

- (UIAction *)action {
    if (!_action) {
        WS(wSelf);
        if (@available(iOS 15.0, *)) {
            _action = [UIAction actionWithTitle:@"我是个action" image:nil identifier:UIActionPaste handler:^(__kindof UIAction * _Nonnull action) {
                [wSelf gotoBack];
            }];
        } else {
            // Fallback on earlier versions
        }
    }
    return _action;
}

- (NSDictionary *)method_1 {
    return @{
        @"dataModel": @{
            @"abstract": @"通过frame创建UIButton",
            @"title": @"- (instancetype)initWithFrame:(CGRect)frame",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectButton_initWithFrame],
            }
        },
    };
}

- (NSDictionary *)method_2 {
    return @{
        @"dataModel": @{
            @"abstract": @"通过frame和UIAction创建UIButton",
            @"title": @"- (instancetype)initWithFrame:(CGRect)frame primaryAction:(nullable UIAction *)primaryAction API_AVAILABLE(ios(14.0));",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectButton_initWithFrame_primaryAction],
            }
        },
    };
}

- (NSDictionary *)method_3 {
    return @{
        @"dataModel": @{
            @"abstract": @"通过frame和UIAction创建UIButton",
            @"title": @"+ (instancetype)buttonWithType:(UIButtonType)buttonType;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectButton_class_buttonWithType],
            }
        },
    };
}

- (NSDictionary *)method_4 {
    return @{
        @"dataModel": @{
            @"abstract": @"通过image和action创建UIButton",
            @"title": @"+ (instancetype)systemButtonWithImage:(UIImage *)image target:(nullable id)target action:(nullable SEL)action API_AVAILABLE(ios(13.0), tvos(13.0), watchos(6.0));",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectButton_class_systemButtonWithImage_target_action],
            }
        },
    };
}

- (NSDictionary *)method_5 {
    return @{
        @"dataModel": @{
            @"abstract": @"通过UIAction创建UIButton",
            @"title": @"+ (instancetype)systemButtonWithPrimaryAction:(nullable UIAction *)primaryAction API_AVAILABLE(ios(14.0));",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectButton_class_systemButtonWithPrimaryAction],
            }
        },
    };
}

- (NSDictionary *)method_6 {
    return @{
        @"dataModel": @{
            @"abstract": @"通过UIButtonType和UIAction创建UIButton",
            @"title": @"+ (instancetype)buttonWithType:(UIButtonType)buttonType primaryAction:(nullable UIAction *)primaryAction API_AVAILABLE(ios(14.0));",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectButton_class_buttonWithType_primaryAction],
            }
        },
    };
}

- (NSDictionary *)method_7 {
    return @{
        @"dataModel": @{
            @"abstract": @"通过UIButtonConfiguration和UIAction创建UIButton",
            @"title": @"+ (instancetype)buttonWithConfiguration:(UIButtonConfiguration *)configuration primaryAction:(nullable UIAction *)primaryAction API_AVAILABLE(ios(15.0), tvos(15.0)) API_UNAVAILABLE(watchos);",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectButton_class_buttonWithConfiguration_primaryAction],
            }
        },
    };
}

- (NSDictionary *)method_8 {
    return @{
        @"dataModel": @{
            @"abstract": @"设置更改UIButton的Configuration后，需要调用这个方法才会立即刷新，否则要等下个时机才会触发",
            @"title": @"- (void)setNeedsUpdateConfiguration API_AVAILABLE(ios(15.0), tvos(15.0)) API_UNAVAILABLE(watchos);",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectButton_setNeedsUpdateConfiguration],
            }
        },
    };
}

- (NSDictionary *)method_9:(NSInteger)index {
    return @{
        @"dataModel": @{
            @"abstract": @"设置获取UIButton的属性configurationUpdateHandler",
            @"title": @"@property (nonatomic, readwrite, copy, nullable) UIButtonConfigurationUpdateHandler configurationUpdateHandler API_AVAILABLE(ios(15.0), tvos(15.0)) API_UNAVAILABLE(watchos);",
            @"isDataModelExpand": @(YES),
            @"desc": @"当执行updateConfiguration方法后，会执行此回调",
            @"dataModel": @{
                @"childItems": [self TestProjectButton_property_configurationUpdateHandler:index],
            }
        },
    };
}

- (NSDictionary *)method_10 {
    return @{
        @"dataModel": @{
            @"abstract": @"设置获取UIButton的属性automaticallyUpdatesConfiguration,暂时不太知道怎么用",
            @"title": @"@property (nonatomic, readwrite, assign) BOOL automaticallyUpdatesConfiguration API_AVAILABLE(ios(15.0), tvos(15.0)) API_UNAVAILABLE(watchos);",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectButton_property_automaticallyUpdatesConfiguration],
            }
        },
    };
}

- (NSDictionary *)method_11 {
    return @{
        @"dataModel": @{
            @"abstract": @"设置获取UIButton的属性tintColor",
            @"title": @"@property(null_resettable, nonatomic,strong)   UIColor     *tintColor API_AVAILABLE(ios(5.0));",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectButton_property_tintColor],
            }
        },
    };
}

- (NSDictionary *)method_12 {
    return @{
        @"dataModel": @{
            @"abstract": @"设置获取UIButton的属性buttonType",
            @"title": @"@property(nonatomic,readonly) UIButtonType buttonType;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectButton_property_buttonType],
            }
        },
    };
}

- (NSDictionary *)method_13 {
    return @{
        @"dataModel": @{
            @"abstract": @"设置获取UIButton的属性hovered",
            @"title": @"@property (nonatomic, assign, readonly, getter = isHovered) BOOL hovered API_AVAILABLE(ios(15.0), tvos(15.0), watchos(8.0));",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectButton_property_hovered],
            }
        },
    };
}

- (NSDictionary *)method_14 {
    return @{
        @"dataModel": @{
            @"abstract": @"设置获取UIButton的属性held",
            @"title": @"@property (nonatomic, assign, readonly, getter = isHeld) BOOL held API_AVAILABLE(ios(15.0), tvos(15.0), watchos(8.0));",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectButton_property_held],
            }
        },
    };
}

- (NSDictionary *)method_15 {
    return @{
        @"dataModel": @{
            @"abstract": @"设置获取UIButton的属性role",
            @"title": @"@property (nonatomic) UIButtonRole role API_AVAILABLE(ios(14.0));",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectButton_property_role],
            }
        },
    };
}

- (NSDictionary *)method_16 {
    return @{
        @"dataModel": @{
            @"abstract": @"设置获取UIButton的属性pointerStyleProvider",
            @"title": @"@property (nonatomic, readwrite, copy, nullable) UIButtonPointerStyleProvider pointerStyleProvider API_AVAILABLE(ios(13.4)) API_UNAVAILABLE(watchos, tvos) NS_REFINED_FOR_SWIFT;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectButton_property_pointerStyleProvider],
            }
        },
    };
}

- (NSDictionary *)method_17 {
    return @{
        @"dataModel": @{
            @"abstract": @"设置获取UIButton的属性menu",
            @"title": @"@property (nonatomic, readwrite, copy, nullable) UIMenu *menu API_AVAILABLE(ios(14.0)) API_UNAVAILABLE(watchos, tvos);",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectButton_property_menu],
            }
        },
    };
}

- (NSDictionary *)method_18 {
    return @{
        @"dataModel": @{
            @"abstract": @"设置获取UIButton的属性preferredMenuElementOrder",
            @"title": @"@property (nonatomic) UIContextMenuConfigurationElementOrder preferredMenuElementOrder API_AVAILABLE(ios(16.0)) API_UNAVAILABLE(watchos, tvos);",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectButton_property_preferredMenuElementOrder],
            }
        },
    };
}

- (NSDictionary *)method_19 {
    return @{
        @"dataModel": @{
            @"abstract": @"设置获取UIButton的属性changesSelectionAsPrimaryAction",
            @"title": @"@property (nonatomic, readwrite, assign) BOOL changesSelectionAsPrimaryAction API_AVAILABLE(ios(15.0)) API_UNAVAILABLE(watchos, tvos);",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectButton_property_changesSelectionAsPrimaryAction],
            }
        },
    };
}

- (NSDictionary *)method_20 {
    return @{
        @"dataModel": @{
            @"abstract": @"执行UIButton的方法，设置title",
            @"title": @"- (void)setTitle:(nullable NSString *)title forState:(UIControlState)state;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectButton_setTitle_forState],
            }
        },
    };
}

- (NSDictionary *)method_21 {
    return @{
        @"dataModel": @{
            @"abstract": @"执行UIButton的方法，设置titleColor",
            @"title": @"- (void)setTitleColor:(nullable UIColor *)color forState:(UIControlState)state UI_APPEARANCE_SELECTOR;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectButton_setTitleColor_forState],
            }
        },
    };
}

- (NSDictionary *)method_22 {
    return @{
        @"dataModel": @{
            @"abstract": @"执行UIButton的方法，设置titleShadowColor",
            @"title": @"- (void)setTitleShadowColor:(nullable UIColor *)color forState:(UIControlState)state UI_APPEARANCE_SELECTOR;",
            @"isDataModelExpand": @(YES),
            @"desc": @"这个要设置[titleLabel.shadowOffset]效果才显著",
            @"dataModel": @{
                @"childItems": [self TestProjectButton_setTitleShadowColor_forState],
            }
        },
    };
}

- (NSDictionary *)method_23 {
    return @{
        @"dataModel": @{
            @"abstract": @"执行UIButton的方法，设置image",
            @"title": @"- (void)setImage:(nullable UIImage *)image forState:(UIControlState)state;",
            @"isDataModelExpand": @(YES),
            @"desc": @"这个图片是在文字的上方",
            @"dataModel": @{
                @"childItems": [self TestProjectButton_setImage_forState],
            }
        },
    };
}

- (NSDictionary *)method_24 {
    return @{
        @"dataModel": @{
            @"abstract": @"执行UIButton的方法，设置BackgroundImage",
            @"title": @"- (void)setBackgroundImage:(nullable UIImage *)image forState:(UIControlState)state UI_APPEARANCE_SELECTOR;",
            @"isDataModelExpand": @(YES),
            @"desc": @"这个图片是在文字的下方",
            @"dataModel": @{
                @"childItems": [self TestProjectButton_setBackgroundImage_forState],
            }
        },
    };
}

- (NSDictionary *)method_25 {
    return @{
        @"dataModel": @{
            @"abstract": @"执行UIButton的方法，设置PreferredSymbolConfiguration",
            @"title": @"- (void)setPreferredSymbolConfiguration:(nullable UIImageSymbolConfiguration *)configuration forImageInState:(UIControlState)state UI_APPEARANCE_SELECTOR API_AVAILABLE(ios(13.0), tvos(13.0), watchos(6.0));",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectButton_setPreferredSymbolConfiguration_forImageInState],
            }
        },
    };
}

- (NSDictionary *)method_26 {
    return @{
        @"dataModel": @{
            @"abstract": @"执行UIButton的方法，设置AttributedTitle",
            @"title": @"- (void)setAttributedTitle:(nullable NSAttributedString *)title forState:(UIControlState)state API_AVAILABLE(ios(6.0));",
            @"isDataModelExpand": @(YES),
            @"desc": @"这个方法会导致setTitleColor和setTitleShadowColor方法失效",
            @"dataModel": @{
                @"childItems": [self TestProjectButton_setAttributedTitle_forState],
            }
        },
    };
}

- (NSDictionary *)method_27:(NSInteger)index {
    return @{
        @"dataModel": @{
            @"abstract": @"获取UIButton的UIControlState的title属性",
            @"title": @"- (nullable NSString *)titleForState:(UIControlState)state;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectButton_titleForState:index],
            }
        },
    };
}

- (NSDictionary *)method_28:(NSInteger)index {
    return @{
        @"dataModel": @{
            @"abstract": @"获取UIButton的UIControlState的titleColor属性",
            @"title": @"- (nullable UIColor *)titleColorForState:(UIControlState)state;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectButton_titleColorForState:index],
            }
        },
    };
}

- (NSDictionary *)method_29:(NSInteger)index {
    return @{
        @"dataModel": @{
            @"abstract": @"获取UIButton的UIControlState的titleShadowColor属性",
            @"title": @"- (nullable UIColor *)titleShadowColorForState:(UIControlState)state;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectButton_titleShadowColorForState:index],
            }
        },
    };
}

- (NSDictionary *)method_30:(NSInteger)index {
    return @{
        @"dataModel": @{
            @"abstract": @"获取UIButton的UIControlState的image属性",
            @"title": @"- (nullable UIImage *)imageForState:(UIControlState)state;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectButton_imageForState:index],
            }
        },
    };
}

- (NSDictionary *)method_31:(NSInteger)index {
    return @{
        @"dataModel": @{
            @"abstract": @"获取UIButton的UIControlState的backgroundImage属性",
            @"title": @"- (nullable UIImage *)backgroundImageForState:(UIControlState)state;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectButton_backgroundImageForState:index],
            }
        },
    };
}

- (NSDictionary *)method_32:(NSInteger)index {
    return @{
        @"dataModel": @{
            @"abstract": @"获取UIButton的UIControlState的preferredSymbolConfigurationForImage属性",
            @"title": @"- (nullable UIImageSymbolConfiguration *)preferredSymbolConfigurationForImageInState:(UIControlState)state API_AVAILABLE(ios(13.0), tvos(13.0), watchos(6.0));",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectButton_preferredSymbolConfigurationForImageInState:index],
            }
        },
    };
}

- (NSDictionary *)method_33:(NSInteger)index {
    return @{
        @"dataModel": @{
            @"abstract": @"获取UIButton的UIControlState的attributedTitle属性",
            @"title": @"- (nullable NSAttributedString *)attributedTitleForState:(UIControlState)state API_AVAILABLE(ios(6.0));",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectButton_attributedTitleForState:index],
            }
        },
    };
}

- (NSDictionary *)method_34:(NSInteger)index {
    return @{
        @"dataModel": @{
            @"abstract": @"获取UIButton的属性currentTitle",
            @"title": @"@property(nullable, nonatomic,readonly,strong) NSString *currentTitle;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectButton_property_currentTitle:index],
            }
        },
    };
}

- (NSDictionary *)method_35:(NSInteger)index {
    return @{
        @"dataModel": @{
            @"abstract": @"获取UIButton的属性currentTitleColor",
            @"title": @"@property(nonatomic,readonly,strong) UIColor  *currentTitleColor;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectButton_property_currentTitleColor:index],
            }
        },
    };
}

- (NSDictionary *)method_36:(NSInteger)index {
    return @{
        @"dataModel": @{
            @"abstract": @"获取UIButton的属性currentTitleShadowColor",
            @"title": @"@property(nullable, nonatomic,readonly,strong) UIColor  *currentTitleShadowColor;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectButton_property_currentTitleShadowColor:index],
            }
        },
    };
}

- (NSDictionary *)method_37:(NSInteger)index {
    return @{
        @"dataModel": @{
            @"abstract": @"获取UIButton的属性currentImage",
            @"title": @"@property(nullable, nonatomic,readonly,strong) UIImage  *currentImage;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectButton_property_currentImage:index],
            }
        },
    };
}

- (NSDictionary *)method_38:(NSInteger)index {
    return @{
        @"dataModel": @{
            @"abstract": @"获取UIButton的属性currentBackgroundImage",
            @"title": @"@property(nullable, nonatomic,readonly,strong) UIImage  *currentBackgroundImage;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectButton_property_currentBackgroundImage:index],
            }
        },
    };
}

- (NSDictionary *)method_39:(NSInteger)index {
    return @{
        @"dataModel": @{
            @"abstract": @"获取UIButton的属性currentPreferredSymbolConfiguration",
            @"title": @"@property(nullable, nonatomic,readonly,strong) UIImageSymbolConfiguration *currentPreferredSymbolConfiguration API_AVAILABLE(ios(13.0), tvos(13.0), watchos(6.0));",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectButton_property_currentPreferredSymbolConfiguration:index],
            }
        },
    };
}

- (NSDictionary *)method_40:(NSInteger)index {
    return @{
        @"dataModel": @{
            @"abstract": @"获取UIButton的属性currentAttributedTitle",
            @"title": @"@property(nullable, nonatomic,readonly,strong) NSAttributedString *currentAttributedTitle API_AVAILABLE(ios(6.0));",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectButton_property_currentAttributedTitle:index],
            }
        },
    };
}

- (NSDictionary *)method_41:(NSInteger)index {
    return @{
        @"dataModel": @{
            @"abstract": @"获取UIButton的属性titleLabel",
            @"title": @"@property(nullable, nonatomic,readonly,strong) UILabel     *titleLabel API_AVAILABLE(ios(3.0));",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectButton_property_titleLabel:index],
            }
        },
    };
}

- (NSDictionary *)method_42:(NSInteger)index {
    return @{
        @"dataModel": @{
            @"abstract": @"获取UIButton的属性imageView",
            @"title": @"@property(nullable, nonatomic,readonly,strong) UIImageView *imageView  API_AVAILABLE(ios(3.0));",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectButton_property_imageView:index],
            }
        },
    };
}

- (NSDictionary *)method_43:(NSInteger)index {
    return @{
        @"dataModel": @{
            @"abstract": @"获取UIButton的属性subtitleLabel",
            @"title": @"@property(nonatomic, readonly, strong, nullable) UILabel *subtitleLabel API_AVAILABLE(ios(15.0), tvos(15.0), watchos(8.0));",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectButton_property_subtitleLabel:index],
            }
        },
    };
}

- (void)addBtn:(UIButton *)btn {
    if ([btn isDescendantOfView:self.childButton]) {
        [self.childButton bringSubviewToFront:btn];
    } else {
        [self.childButton addSubview:btn];
    }
}

- (void)addConstantBtn:(UIButton *)btn {
    if ([btn isDescendantOfView:self.childButton]) {
        [self.childButton bringSubviewToFront:btn];
    } else {
        [self.childButton addSubview:btn];
        [btn testproject_makeConstraints:^(TestProjectViewConstrainMake * _Nonnull make) {
            make.top.trainling.height.equal(self.childButton);
            make.width.equal(self.childButton.height);
        }];
    }
}

- (NSMutableArray *)TestProjectButton_property_subtitleLabel:(NSInteger)index {
    return [self createTableModelSingleArrayWithProperty:@"subtitleLabel" index:index];
}

- (NSMutableArray *)TestProjectButton_property_imageView:(NSInteger)index {
    return [self createTableModelSingleArrayWithProperty:@"imageView" index:index];
}

- (NSMutableArray *)TestProjectButton_property_titleLabel:(NSInteger)index {
    return [self createTableModelSingleArrayWithProperty:@"titleLabel" index:index];
}

- (NSMutableArray *)TestProjectButton_property_currentAttributedTitle:(NSInteger)index {
    return [self createTableModelSingleArrayWithProperty:@"currentAttributedTitle" index:index];
}

- (NSMutableArray *)TestProjectButton_property_currentPreferredSymbolConfiguration:(NSInteger)index {
    return [self createTableModelSingleArrayWithProperty:@"currentPreferredSymbolConfiguration" index:index];
}

- (NSMutableArray *)TestProjectButton_property_currentBackgroundImage:(NSInteger)index {
    return [self createTableModelSingleArrayWithProperty:@"currentBackgroundImage" index:index];
}

- (NSMutableArray *)TestProjectButton_property_currentImage:(NSInteger)index {
    return [self createTableModelSingleArrayWithProperty:@"currentImage" index:index];
}

- (NSMutableArray *)TestProjectButton_property_currentTitleShadowColor:(NSInteger)index {
    return [self createTableModelSingleArrayWithProperty:@"currentTitleShadowColor" index:index];
}

- (NSMutableArray *)TestProjectButton_property_currentTitleColor:(NSInteger)index {
    return [self createTableModelSingleArrayWithProperty:@"currentTitleColor" index:index];
}

- (NSMutableArray *)TestProjectButton_property_currentTitle:(NSInteger)index {
    return [self createTableModelSingleArrayWithProperty:@"currentTitle" index:index];
}

- (NSArray *)getControlStateList {
    NSArray *arr = @[
        @{
            @"title": [NSString stringWithFormat:@"设置的属性值是UIControlStateNormal(%ld)，这个是默认正常状态", UIControlStateNormal],
            @"value": @(UIControlStateNormal),
        },
        @{
            @"title": [NSString stringWithFormat:@"设置的属性值是UIControlStateHighlighted(%ld)，这个是高光状态", UIControlStateHighlighted],
            @"value": @(UIControlStateHighlighted),
        },
        @{
            @"title": [NSString stringWithFormat:@"设置的属性值是UIControlStateDisabled(%ld)，这个是被禁用的状态状态", UIControlStateDisabled],
            @"value": @(UIControlStateDisabled),
        },
        @{
            @"title": [NSString stringWithFormat:@"设置的属性值是UIControlStateSelected(%ld)，这个是选择的状态状态", UIControlStateSelected],
            @"value": @(UIControlStateSelected),
        },
        @{
            @"title": [NSString stringWithFormat:@"设置的属性值是UIControlStateFocused(%ld)，暂时不知道什么状态", UIControlStateFocused],
            @"value": @(UIControlStateFocused),
        },
        @{
            @"title": [NSString stringWithFormat:@"设置的属性值是UIControlStateApplication(%ld)，暂时不知道什么状态", UIControlStateApplication],
            @"value": @(UIControlStateApplication),
        },
        @{
            @"title": [NSString stringWithFormat:@"设置的属性值是UIControlStateApplication(%ld)，暂时不知道什么状态", UIControlStateApplication],
            @"value": @(UIControlStateApplication),
        },
    ];
    return arr;
}

- (NSMutableArray *)TestProjectButton_attributedTitleForState:(NSInteger)index {
    NSArray *arr = [self getControlStateList];
    for (NSDictionary *dic in arr) {
        NSString *title = dic[@"title"];
        UIControlState state = [dic[@"value"] integerValue];
        WS(wSelf);
        [self createTableModelWithMethodBlock:^NSString * _Nonnull{
            return [NSString stringWithFormat:@"%@", [wSelf.childButton attributedTitleForState:state]];
        } title:title index:index];
    }
    return self.dataMutArr;
}

- (NSMutableArray *)TestProjectButton_preferredSymbolConfigurationForImageInState:(NSInteger)index {
    NSArray *arr = [self getControlStateList];
    for (NSDictionary *dic in arr) {
        NSString *title = dic[@"title"];
        UIControlState state = [dic[@"value"] integerValue];
        WS(wSelf);
        [self createTableModelWithMethodBlock:^NSString * _Nonnull{
            return [NSString stringWithFormat:@"%@", [wSelf.childButton preferredSymbolConfigurationForImageInState:state]];
        } title:title index:index];
    }
    return self.dataMutArr;
}

- (NSMutableArray *)TestProjectButton_backgroundImageForState:(NSInteger)index {
    NSArray *arr = [self getControlStateList];
    for (NSDictionary *dic in arr) {
        NSString *title = dic[@"title"];
        UIControlState state = [dic[@"value"] integerValue];
        WS(wSelf);
        [self createTableModelWithMethodBlock:^NSString * _Nonnull{
            return [NSString stringWithFormat:@"%@", [wSelf.childButton backgroundImageForState:state]];
        } title:title index:index];
    }
    return self.dataMutArr;
}

- (NSMutableArray *)TestProjectButton_imageForState:(NSInteger)index {
    NSArray *arr = [self getControlStateList];
    for (NSDictionary *dic in arr) {
        NSString *title = dic[@"title"];
        UIControlState state = [dic[@"value"] integerValue];
        WS(wSelf);
        [self createTableModelWithMethodBlock:^NSString * _Nonnull{
            return [NSString stringWithFormat:@"%@", [wSelf.childButton imageForState:state]];
        } title:title index:index];
    }
    return self.dataMutArr;
}

- (NSMutableArray *)TestProjectButton_titleShadowColorForState:(NSInteger)index {
    NSArray *arr = [self getControlStateList];
    for (NSDictionary *dic in arr) {
        NSString *title = dic[@"title"];
        UIControlState state = [dic[@"value"] integerValue];
        WS(wSelf);
        [self createTableModelWithMethodBlock:^NSString * _Nonnull{
            return [NSString stringWithFormat:@"%@", [wSelf.childButton titleShadowColorForState:state]];
        } title:title index:index];
    }
    return self.dataMutArr;
}

- (NSMutableArray *)TestProjectButton_titleColorForState:(NSInteger)index {
    NSArray *arr = [self getControlStateList];
    for (NSDictionary *dic in arr) {
        NSString *title = dic[@"title"];
        UIControlState state = [dic[@"value"] integerValue];
        WS(wSelf);
        [self createTableModelWithMethodBlock:^NSString * _Nonnull{
            return [NSString stringWithFormat:@"%@", [wSelf.childButton titleColorForState:state]];
        } title:title index:index];
    }
    return self.dataMutArr;
}

- (NSMutableArray *)TestProjectButton_titleForState:(NSInteger)index {
    NSArray *arr = [self getControlStateList];
    for (NSDictionary *dic in arr) {
        NSString *title = dic[@"title"];
        UIControlState state = [dic[@"value"] integerValue];
        WS(wSelf);
        [self createTableModelWithMethodBlock:^NSString * _Nonnull{
            return [NSString stringWithFormat:@"%@", [wSelf.childButton titleForState:state]];
        } title:title index:index];
    }
    return self.dataMutArr;
}

//typedef NS_OPTIONS(NSUInteger, UIControlState) {
//    UIControlStateNormal       = 0,
//    UIControlStateHighlighted  = 1 << 0,                  // used when UIControl isHighlighted is set
//    UIControlStateDisabled     = 1 << 1,
//    UIControlStateSelected     = 1 << 2,                  // flag usable by app (see below)
//    UIControlStateFocused API_AVAILABLE(ios(9.0)) = 1 << 3, // Applicable only when the screen supports focus
//    UIControlStateApplication  = 0x00FF0000,              // additional flags available for application use
//    UIControlStateReserved     = 0xFF000000               // flags reserved for internal framework use
//};

- (NSMutableArray *)TestProjectButton_setAttributedTitle_forState {
    NSArray *arr = @[
        @{
            @"title": [NSString stringWithFormat:@"设置的属性值是UIControlStateNormal(%ld)，这个是默认正常状态", UIControlStateNormal],
            @"value": @(UIControlStateNormal),
            @"color": [UIColor linkColor],
        },
        @{
            @"title": [NSString stringWithFormat:@"设置的属性值是UIControlStateHighlighted(%ld)，这个是高光状态", UIControlStateHighlighted],
            @"value": @(UIControlStateHighlighted),
            @"color": [UIColor blackColor],
        },
        @{
            @"title": [NSString stringWithFormat:@"设置的属性值是UIControlStateDisabled(%ld)，这个是被禁用的状态状态", UIControlStateDisabled],
            @"value": @(UIControlStateDisabled),
            @"color": [UIColor blueColor],
        },
        @{
            @"title": [NSString stringWithFormat:@"设置的属性值是UIControlStateSelected(%ld)，这个是选择的状态状态", UIControlStateSelected],
            @"value": @(UIControlStateSelected),
            @"color": [UIColor purpleColor],
        },
        @{
            @"title": [NSString stringWithFormat:@"设置的属性值是UIControlStateFocused(%ld)，暂时不知道什么状态", UIControlStateFocused],
            @"value": @(UIControlStateFocused),
            @"color": [UIColor systemPurpleColor],
        },
        @{
            @"title": [NSString stringWithFormat:@"设置的属性值是UIControlStateApplication(%ld)，暂时不知道什么状态", UIControlStateApplication],
            @"value": @(UIControlStateApplication),
            @"color": [UIColor cyanColor],
        },
        @{
            @"title": [NSString stringWithFormat:@"设置的属性值是UIControlStateApplication(%ld)，暂时不知道什么状态", UIControlStateApplication],
            @"value": @(UIControlStateApplication),
            @"color": [UIColor whiteColor],
        },
    ];
    WS(wSelf);
    for (NSDictionary *dic in arr) {
        NSString *title = dic[@"title"];
        UIControlState state = [dic[@"value"] integerValue];
        UIColor *color = dic[@"color"];
        NSAttributedString *attr = [[NSAttributedString alloc] initWithString:[NSString stringWithFormat:@"state_%ld", state] attributes:@{NSForegroundColorAttributeName:color}];
        [self createTableModelWithTitle:title block:^{
            [wSelf.childButton setAttributedTitle:attr forState:state];
        }];
    }
    return self.dataMutArr;
}

- (NSMutableArray *)TestProjectButton_setPreferredSymbolConfiguration_forImageInState {
    NSArray *arr = @[
        @{
            @"title": [NSString stringWithFormat:@"设置的属性值是UIControlStateNormal(%ld)，这个是默认正常状态", UIControlStateNormal],
            @"value": @(UIControlStateNormal),
            @"config": [UIImageSymbolConfiguration configurationWithPointSize:140],
        },
        @{
            @"title": [NSString stringWithFormat:@"设置的属性值是UIControlStateHighlighted(%ld)，这个是高光状态", UIControlStateHighlighted],
            @"value": @(UIControlStateHighlighted),
            @"config": [UIImageSymbolConfiguration configurationWithPointSize:35],
        },
        @{
            @"title": [NSString stringWithFormat:@"设置的属性值是UIControlStateDisabled(%ld)，这个是被禁用的状态状态", UIControlStateDisabled],
            @"value": @(UIControlStateDisabled),
            @"config": [UIImageSymbolConfiguration configurationWithPointSize:30],
        },
        @{
            @"title": [NSString stringWithFormat:@"设置的属性值是UIControlStateSelected(%ld)，这个是选择的状态状态", UIControlStateSelected],
            @"value": @(UIControlStateSelected),
            @"config": [UIImageSymbolConfiguration configurationWithPointSize:25],
        },
        @{
            @"title": [NSString stringWithFormat:@"设置的属性值是UIControlStateFocused(%ld)，暂时不知道什么状态", UIControlStateFocused],
            @"value": @(UIControlStateFocused),
            @"config": [UIImageSymbolConfiguration configurationWithPointSize:20],
        },
        @{
            @"title": [NSString stringWithFormat:@"设置的属性值是UIControlStateApplication(%ld)，暂时不知道什么状态", UIControlStateApplication],
            @"value": @(UIControlStateApplication),
            @"config": [UIImageSymbolConfiguration configurationWithPointSize:15],
        },
        @{
            @"title": [NSString stringWithFormat:@"设置的属性值是UIControlStateApplication(%ld)，暂时不知道什么状态", UIControlStateApplication],
            @"value": @(UIControlStateApplication),
            @"config": [UIImageSymbolConfiguration configurationWithPointSize:10],
        },
    ];
    WS(wSelf);
    for (NSDictionary *dic in arr) {
        NSString *title = dic[@"title"];
        UIControlState state = [dic[@"value"] integerValue];
        UIImageSymbolConfiguration *config = dic[@"config"];
        [self createTableModelWithTitle:title block:^{
            [wSelf.childButton setPreferredSymbolConfiguration:config forImageInState:state];
        }];
    }
    return self.dataMutArr;
}

- (NSMutableArray *)TestProjectButton_setBackgroundImage_forState {
    NSArray *arr = @[
        @{
            @"title": [NSString stringWithFormat:@"设置的属性值是UIControlStateNormal(%ld)，这个是默认正常状态", UIControlStateNormal],
            @"value": @(UIControlStateNormal),
            @"imageName": @"lyf_3",
        },
        @{
            @"title": [NSString stringWithFormat:@"设置的属性值是UIControlStateHighlighted(%ld)，这个是点击时的状态", UIControlStateHighlighted],
            @"value": @(UIControlStateHighlighted),
            @"imageName": @"lyf_2",
        },
        @{
            @"title": [NSString stringWithFormat:@"设置的属性值是UIControlStateDisabled(%ld)，这个是被禁用的状态状态", UIControlStateDisabled],
            @"value": @(UIControlStateDisabled),
            @"imageName": @"lyf_1",
        },
        @{
            @"title": [NSString stringWithFormat:@"设置的属性值是UIControlStateSelected(%ld)，这个是选择的状态状态", UIControlStateSelected],
            @"value": @(UIControlStateSelected),
            @"imageName": @"lyf_3",
        },
        @{
            @"title": [NSString stringWithFormat:@"设置的属性值是UIControlStateFocused(%ld)，暂时不知道什么状态", UIControlStateFocused],
            @"value": @(UIControlStateFocused),
            @"imageName": @"lyf_2",
        },
        @{
            @"title": [NSString stringWithFormat:@"设置的属性值是UIControlStateApplication(%ld)，暂时不知道什么状态", UIControlStateApplication],
            @"value": @(UIControlStateApplication),
            @"imageName": @"lyf_1",

        },
        @{
            @"title": [NSString stringWithFormat:@"设置的属性值是UIControlStateApplication(%ld)，暂时不知道什么状态", UIControlStateApplication],
            @"value": @(UIControlStateApplication),
            @"imageName": @"lyf_3",
        },
    ];
    WS(wSelf);
    for (NSDictionary *dic in arr) {
        NSString *title = dic[@"title"];
        UIControlState state = [dic[@"value"] integerValue];
        NSString *imageName = dic[@"imageName"];
        UIImage *image = [UIImage imageNamed:imageName];
        [self createTableModelWithTitle:title block:^{
            [wSelf.childButton setBackgroundImage:image forState:state];
        }];
    }
    return self.dataMutArr;
}

- (NSMutableArray *)TestProjectButton_setImage_forState {
    NSArray *arr = @[
        @{
            @"title": [NSString stringWithFormat:@"设置的属性值是UIControlStateNormal(%ld)，这个是默认正常状态", UIControlStateNormal],
            @"value": @(UIControlStateNormal),
            @"imageName": @"lyf_1",
        },
        @{
            @"title": [NSString stringWithFormat:@"设置的属性值是UIControlStateHighlighted(%ld)，这个是点击时的状态", UIControlStateHighlighted],
            @"value": @(UIControlStateHighlighted),
            @"imageName": @"lyf_2",
        },
        @{
            @"title": [NSString stringWithFormat:@"设置的属性值是UIControlStateDisabled(%ld)，这个是被禁用的状态状态", UIControlStateDisabled],
            @"value": @(UIControlStateDisabled),
            @"imageName": @"lyf_3",
        },
        @{
            @"title": [NSString stringWithFormat:@"设置的属性值是UIControlStateSelected(%ld)，这个是选择的状态状态", UIControlStateSelected],
            @"value": @(UIControlStateSelected),
            @"imageName": @"lyf_1",
        },
        @{
            @"title": [NSString stringWithFormat:@"设置的属性值是UIControlStateFocused(%ld)，暂时不知道什么状态", UIControlStateFocused],
            @"value": @(UIControlStateFocused),
            @"imageName": @"lyf_2",
        },
        @{
            @"title": [NSString stringWithFormat:@"设置的属性值是UIControlStateApplication(%ld)，暂时不知道什么状态", UIControlStateApplication],
            @"value": @(UIControlStateApplication),
            @"imageName": @"lyf_3",
        },
        @{
            @"title": [NSString stringWithFormat:@"设置的属性值是UIControlStateApplication(%ld)，暂时不知道什么状态", UIControlStateApplication],
            @"value": @(UIControlStateApplication),
            @"imageName": @"lyf_1",
        },
    ];
    WS(wSelf);
    for (NSDictionary *dic in arr) {
        NSString *title = dic[@"title"];
        UIControlState state = [dic[@"value"] integerValue];
        NSString *imageName = dic[@"imageName"];
        UIImage *image = [UIImage imageNamed:imageName];
        [self createTableModelWithTitle:title block:^{
            [wSelf.childButton setImage:image forState:state];
        }];
    }
    return self.dataMutArr;
}

- (NSMutableArray *)TestProjectButton_setTitleShadowColor_forState {
    NSArray *arr = @[
        @{
            @"title": [NSString stringWithFormat:@"设置的属性值是UIControlStateNormal(%ld)，这个是默认正常状态", UIControlStateNormal],
            @"value": @(UIControlStateNormal),
            @"color": [UIColor cyanColor],
        },
        @{
            @"title": [NSString stringWithFormat:@"设置的属性值是UIControlStateHighlighted(%ld)，这个是点击时的状态", UIControlStateHighlighted],
            @"value": @(UIControlStateHighlighted),
            @"color": [UIColor placeholderTextColor],
        },
        @{
            @"title": [NSString stringWithFormat:@"设置的属性值是UIControlStateDisabled(%ld)，这个是被禁用的状态状态", UIControlStateDisabled],
            @"value": @(UIControlStateDisabled),
            @"color": [UIColor purpleColor],
        },
        @{
            @"title": [NSString stringWithFormat:@"设置的属性值是UIControlStateSelected(%ld)，这个是选择的状态状态", UIControlStateSelected],
            @"value": @(UIControlStateSelected),
            @"color": [UIColor blackColor],
        },
        @{
            @"title": [NSString stringWithFormat:@"设置的属性值是UIControlStateFocused(%ld)，暂时不知道什么状态", UIControlStateFocused],
            @"value": @(UIControlStateFocused),
            @"color": [UIColor brownColor],
        },
        @{
            @"title": [NSString stringWithFormat:@"设置的属性值是UIControlStateApplication(%ld)，暂时不知道什么状态", UIControlStateApplication],
            @"value": @(UIControlStateApplication),
            @"color": [UIColor blueColor],
        },
        @{
            @"title": [NSString stringWithFormat:@"设置的属性值是UIControlStateApplication(%ld)，暂时不知道什么状态", UIControlStateApplication],
            @"value": @(UIControlStateApplication),
            @"color": [UIColor whiteColor],
        },
    ];
    WS(wSelf);
    for (NSDictionary *dic in arr) {
        NSString *title = dic[@"title"];
        UIControlState state = [dic[@"value"] integerValue];
        UIColor *color = dic[@"color"];
        [self createTableModelWithTitle:title block:^{
            //这个shadowOffset[要点击的时候才能设置，否则会导致崩溃]
            wSelf.childButton.titleLabel.shadowOffset = CGSizeMake(1, 5);
            [wSelf.childButton setTitleShadowColor:color forState:state];
        }];
    }
    return self.dataMutArr;
}

- (NSMutableArray *)TestProjectButton_setTitleColor_forState {
    NSArray *arr = @[
        @{
            @"title": [NSString stringWithFormat:@"设置的属性值是UIControlStateNormal(%ld)，这个是默认正常状态", UIControlStateNormal],
            @"value": @(UIControlStateNormal),
            @"color": [UIColor whiteColor],
        },
        @{
            @"title": [NSString stringWithFormat:@"设置的属性值是UIControlStateHighlighted(%ld)，这个是点击时的状态", UIControlStateHighlighted],
            @"value": @(UIControlStateHighlighted),
            @"color": [UIColor blueColor],
        },
        @{
            @"title": [NSString stringWithFormat:@"设置的属性值是UIControlStateDisabled(%ld)，这个是被禁用的状态状态", UIControlStateDisabled],
            @"value": @(UIControlStateDisabled),
            @"color": [UIColor brownColor],
        },
        @{
            @"title": [NSString stringWithFormat:@"设置的属性值是UIControlStateSelected(%ld)，这个是选择的状态状态", UIControlStateSelected],
            @"value": @(UIControlStateSelected),
            @"color": [UIColor blackColor],
        },
        @{
            @"title": [NSString stringWithFormat:@"设置的属性值是UIControlStateFocused(%ld)，暂时不知道什么状态", UIControlStateFocused],
            @"value": @(UIControlStateFocused),
            @"color": [UIColor purpleColor],
        },
        @{
            @"title": [NSString stringWithFormat:@"设置的属性值是UIControlStateApplication(%ld)，暂时不知道什么状态", UIControlStateApplication],
            @"value": @(UIControlStateApplication),
            @"color": [UIColor placeholderTextColor],
        },
        @{
            @"title": [NSString stringWithFormat:@"设置的属性值是UIControlStateApplication(%ld)，暂时不知道什么状态", UIControlStateApplication],
            @"value": @(UIControlStateApplication),
            @"color": [UIColor cyanColor],
        },
    ];
    WS(wSelf);
    for (NSDictionary *dic in arr) {
        NSString *title = dic[@"title"];
        UIControlState state = [dic[@"value"] integerValue];
        UIColor *color = dic[@"color"];
        [self createTableModelWithTitle:title block:^{
            [wSelf.childButton setTitleColor:color forState:state];
        }];
    }
    return self.dataMutArr;
}

- (NSMutableArray *)TestProjectButton_setTitle_forState {
    NSArray *arr = @[
        @{
            @"title": [NSString stringWithFormat:@"设置的属性值是UIControlStateNormal(%ld)，这个是默认正常状态", UIControlStateNormal],
            @"value": @(UIControlStateNormal),
        },
        @{
            @"title": [NSString stringWithFormat:@"设置的属性值是UIControlStateHighlighted(%ld)，这个是点击时的状态", UIControlStateHighlighted],
            @"value": @(UIControlStateHighlighted),
        },
        @{
            @"title": [NSString stringWithFormat:@"设置的属性值是UIControlStateDisabled(%ld)，这个是被禁用的状态状态", UIControlStateDisabled],
            @"value": @(UIControlStateDisabled),
        },
        @{
            @"title": [NSString stringWithFormat:@"设置的属性值是UIControlStateSelected(%ld)，这个是选择的状态状态", UIControlStateSelected],
            @"value": @(UIControlStateSelected),
        },
        @{
            @"title": [NSString stringWithFormat:@"设置的属性值是UIControlStateFocused(%ld)，暂时不知道什么状态", UIControlStateFocused],
            @"value": @(UIControlStateFocused),
        },
        @{
            @"title": [NSString stringWithFormat:@"设置的属性值是UIControlStateApplication(%ld)，暂时不知道什么状态", UIControlStateApplication],
            @"value": @(UIControlStateApplication),
        },
        @{
            @"title": [NSString stringWithFormat:@"设置的属性值是UIControlStateApplication(%ld)，暂时不知道什么状态", UIControlStateApplication],
            @"value": @(UIControlStateApplication),
        },
    ];
    WS(wSelf);
    for (NSDictionary *dic in arr) {
        NSString *title = dic[@"title"];
        UIControlState state = [dic[@"value"] integerValue];
        [self createTableModelWithTitle:title block:^{
            [wSelf.childButton setTitle:[NSString stringWithFormat:@"state_%ld", state] forState:state];
            BOOL enabled = YES;
            BOOL selected = NO;
            switch (state) {
                case UIControlStateDisabled: {
                    enabled = NO;
                } break;
                case UIControlStateSelected: {
                    selected = YES;
                } break;
                default:
                    break;
            }
            wSelf.childButton.enabled = enabled;
            wSelf.childButton.selected = selected;
        }];
    }
    return self.dataMutArr;
}

- (NSMutableArray *)TestProjectButton_property_changesSelectionAsPrimaryAction {
    return [self createTableModelSingleArrayWithProperty:@"changesSelectionAsPrimaryAction" value:nil];
}

- (NSMutableArray *)TestProjectButton_property_preferredMenuElementOrder {
    return [self createTableModelSingleArrayWithProperty:@"preferredMenuElementOrder" value:nil];
}

- (NSMutableArray *)TestProjectButton_property_menu {
    return [self createTableModelSingleArrayWithProperty:@"menu" value:nil];
}

- (NSMutableArray *)TestProjectButton_property_pointerStyleProvider {
    return [self createTableModelSingleArrayWithProperty:@"pointerStyleProvider" value:nil];
}

//typedef NS_ENUM(NSInteger, UIButtonRole) {
//    UIButtonRoleNormal,
//    UIButtonRolePrimary,
//    UIButtonRoleCancel,
//    UIButtonRoleDestructive
//} API_AVAILABLE(ios(14.0));

- (NSMutableArray *)TestProjectButton_property_role {
    if (@available(iOS 14.0, *)) {
        NSArray *arr = @[
            @{
                @"title": [NSString stringWithFormat:@"设置的属性是UIButtonRoleNormal(%ld)", UIButtonRoleNormal],
                @"value": @(UIButtonRoleNormal),
            },
            @{
                @"title": [NSString stringWithFormat:@"设置的属性是UIButtonRolePrimary(%ld)", UIButtonRolePrimary],
                @"value": @(UIButtonRolePrimary),
            },
            @{
                @"title": [NSString stringWithFormat:@"设置的属性是UIButtonRoleCancel(%ld)", UIButtonRoleCancel],
                @"value": @(UIButtonRoleCancel),
            },
            @{
                @"title": [NSString stringWithFormat:@"设置的属性是UIButtonRoleDestructive(%ld)", UIButtonRoleDestructive],
                @"value": @(UIButtonRoleDestructive),
            },
        ];
        for (NSDictionary *dic in arr) {
            NSString *title = dic[@"title"];
            NSNumber *num = dic[@"value"];
            [self createClickSetTableModelWithProperty:@"role" value:num title:title block:nil];
        }
    } else {
        // Fallback on earlier versions
    }
    return self.dataMutArr;
}

- (NSMutableArray *)TestProjectButton_property_held {
    return [self createTableModelSingleArrayWithProperty:@"held" value:nil];
}

- (NSMutableArray *)TestProjectButton_property_hovered {
    return [self createTableModelSingleArrayWithProperty:@"hovered" value:nil];
}

- (NSMutableArray *)TestProjectButton_property_buttonType {
    return [self createTableModelSingleArrayWithProperty:@"buttonType" value:nil];
}

- (NSMutableArray *)TestProjectButton_property_tintColor {
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeSystem];
    [btn setTitle:@"btn" forState:UIControlStateNormal];
    WS(wSelf);
    [self createClickSetTableModelWithProperty:@"tintColor" value:[UIColor greenColor] block:^{
        [wSelf addConstantBtn:btn];
    }];
    return self.dataMutArr;
}

- (NSMutableArray *)TestProjectButton_property_automaticallyUpdatesConfiguration {
    NSArray *arr = @[@(YES), @(NO)];
    for (NSNumber *num in arr) {
        [self createClickSetTableModelWithProperty:@"automaticallyUpdatesConfiguration" value:num];
    }
    return self.dataMutArr;
}

- (NSMutableArray *)TestProjectButton_property_configurationUpdateHandler:(NSInteger)index {
    __block NSMutableString *mutStr = [NSMutableString string];
    WS(wSelf);
    [self createTableModelWithMethodBlock:^NSString * _Nonnull{
        if (@available(iOS 15.0, *)) {
            if (!wSelf.grandChildButton.configurationUpdateHandler) {
                wSelf.grandChildButton.configurationUpdateHandler = ^(UIButton *btn){
                    [mutStr appendFormat:@"buttonSize:%ld\n", btn.configuration.buttonSize];
                };
            }
        } else {
            // Fallback on earlier versions
        }
        return mutStr;
    } title:@"configurationUpdateHandler后buttonSize的展示" index:index];
   
    return self.dataMutArr;
}

- (NSMutableArray *)TestProjectButton_setNeedsUpdateConfiguration {
    WS(wSelf);
    if (@available(iOS 15.0, *)) {
        [self createTableModelSingleArrayWithTitle:@"setNeedsUpdateConfiguration" block:^{
            wSelf.config.buttonSize = UIButtonConfigurationSizeLarge;
            wSelf.grandChildButton.configuration = wSelf.config;
            [wSelf.grandChildButton setNeedsUpdateConfiguration];
        }];
    } else {
        // Fallback on earlier versions
    }
    return self.dataMutArr;
}

- (NSMutableArray *)TestProjectButton_class_buttonWithConfiguration_primaryAction {
    UIButton *btn;
    if (@available(iOS 15.0, *)) {
        btn = [UIButton buttonWithConfiguration:self.config primaryAction:self.action];
        btn.backgroundColor = [UIColor yellowColor];
    } else {
        // Fallback on earlier versions
    }
    
    WS(wSelf);
    if (@available(iOS 15.0, *)) {
        [self createTableModelSingleArrayWithTitle:[NSString stringWithFormat:@"config:%@和UIAction:%@创建UIButton", self.config, self.action] block:^{
            [wSelf addConstantBtn:btn];
        }];
    } else {
        // Fallback on earlier versions
    }
    return self.dataMutArr;
}

- (NSMutableArray *)TestProjectButton_class_buttonWithType_primaryAction {
    UIButton *btn;
    if (@available(iOS 14.0, *)) {
        btn = [UIButton buttonWithType:UIButtonTypeInfoLight primaryAction:self.action];
    } else {
        // Fallback on earlier versions
    }
    WS(wSelf);
    return [self createTableModelSingleArrayWithTitle:[NSString stringWithFormat:@"UIButtonTypeInfoLight和UIAction:%@创建UIButton", self.action] block:^{
        [wSelf addConstantBtn:btn];
    }];
}

- (NSMutableArray *)TestProjectButton_class_systemButtonWithPrimaryAction {
    UIButton *btn;
    if (@available(iOS 14.0, *)) {
        btn = [UIButton systemButtonWithPrimaryAction:self.action];
        btn.backgroundColor = [UIColor brownColor];
    } else {
        // Fallback on earlier versions
    }
    WS(wSelf);
    return [self createTableModelSingleArrayWithTitle:[NSString stringWithFormat:@"UIAction:%@创建UIButton", self.action] block:^{
        [wSelf addConstantBtn:btn];
    }];
}

- (NSMutableArray *)TestProjectButton_class_systemButtonWithImage_target_action {
    UIImage *image = [UIImage imageNamed:@"lyf_2"];
    UIButton *btn = [UIButton systemButtonWithImage:image target:self action:@selector(gotoBack)];
    
    WS(wSelf);
    return [self createTableModelSingleArrayWithTitle:[NSString stringWithFormat:@"image:%@创建UIButton", image] block:^{
        [wSelf addConstantBtn:btn];
    }];
}

//typedef NS_ENUM(NSInteger, UIButtonType) {
//    UIButtonTypeCustom = 0,                         // no button type
//    UIButtonTypeSystem API_AVAILABLE(ios(7.0)),  // standard system button
//
//    UIButtonTypeDetailDisclosure,
//    UIButtonTypeInfoLight,
//    UIButtonTypeInfoDark,
//    UIButtonTypeContactAdd,
//
//    UIButtonTypePlain API_AVAILABLE(tvos(11.0)) API_UNAVAILABLE(ios, watchos), // standard system button without the blurred background view
//
//    UIButtonTypeClose API_AVAILABLE(ios(13.0)) API_UNAVAILABLE(tvos),
//
//    UIButtonTypeRoundedRect = UIButtonTypeSystem   // Deprecated, use UIButtonTypeSystem instead
//};

- (NSMutableArray *)TestProjectButton_class_buttonWithType {
    NSArray *arr = @[
        @{
            @"title": [NSString stringWithFormat:@"设置的属性值是UIButtonTypeCustom(%ld)", UIButtonTypeCustom],
            @"value": @(UIButtonTypeCustom),
        },
        @{
            @"title": [NSString stringWithFormat:@"设置的属性值是UIButtonTypeSystem(%ld)", UIButtonTypeSystem],
            @"value": @(UIButtonTypeSystem),
        },
        @{
            @"title": [NSString stringWithFormat:@"设置的属性值是UIButtonTypeDetailDisclosure(%ld)", UIButtonTypeDetailDisclosure],
            @"value": @(UIButtonTypeDetailDisclosure),
        },
        @{
            @"title": [NSString stringWithFormat:@"设置的属性值是UIButtonTypeInfoLight(%ld)", UIButtonTypeInfoLight],
            @"value": @(UIButtonTypeInfoLight),
        },
        @{
            @"title": [NSString stringWithFormat:@"设置的属性值是UIButtonTypeInfoDark(%ld)", UIButtonTypeInfoDark],
            @"value": @(UIButtonTypeInfoDark),
        },
        @{
            @"title": [NSString stringWithFormat:@"设置的属性值是UIButtonTypeContactAdd(%ld)", UIButtonTypeContactAdd],
            @"value": @(UIButtonTypeContactAdd),
        },
    ];
    WS(wSelf);
    for (NSDictionary *dic in arr) {
        NSString *title = dic[@"title"];
        UIButtonType type = [dic[@"value"] integerValue];
        UIButton *btn = [UIButton buttonWithType:type];
        btn.backgroundColor = [UIColor purpleColor];
        [self createTableModelWithTitle:title block:^{
            [wSelf addConstantBtn:btn];
        }];
    }
    return self.dataMutArr;
}

- (NSMutableArray *)TestProjectButton_initWithFrame_primaryAction {
    UIAction *action;
    UIButton *btn;
    WS(wSelf);
    CGRect rect = CGRectMake([UIScreen mainScreen].bounds.size.width - 50, 0, 50, 50);
    if (@available(iOS 15.0, *)) {
        action = [UIAction actionWithTitle:@"我是一个UIAction" image:nil identifier:UIActionPaste handler:^(__kindof UIAction * _Nonnull action) {
            [UIAlertController alertWithTitle:nil message:@"我是一个button" cancelTitle:@"确定" cancelBlock:nil sureTitle:nil sureBlock:nil];
        }];
        btn = [[UIButton alloc] initWithFrame:rect primaryAction:action];
        btn.backgroundColor = [UIColor purpleColor];
    } else {
        // Fallback on earlier versions
    }
    return [self createTableModelSingleArrayWithTitle:@"通过UIAction和frame创建" block:^{
        [wSelf addBtn:btn];
    }];
}

- (NSMutableArray *)TestProjectButton_initWithFrame {
    CGRect rect = CGRectMake([UIScreen mainScreen].bounds.size.width - 50, 0, 50, 50);
    UIButton *btn = [[UIButton alloc] initWithFrame:rect];
    btn.backgroundColor = [UIColor purpleColor];
    
    WS(wSelf);
    return [self createTableModelSingleArrayWithTitle:[NSString stringWithFormat:@"frame:%@创建UIButton", NSStringFromCGRect(rect)] block:^{
        [wSelf addBtn:btn];
    }];
}

@end
