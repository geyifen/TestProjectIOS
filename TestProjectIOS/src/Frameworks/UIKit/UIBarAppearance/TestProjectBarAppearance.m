//
//  TestProjectBarAppearance.m
//  TestProjectIOS
//
//  Created by zjrcumac on 2023/4/12.
//

#import "TestProjectBarAppearance.h"

#import "TestProjectSubNavController.h"

@implementation TestProjectBarAppearance {
    NSString *_title;
}

- (TestProjectDetailVCModel *)createTabModelWithDesc:(NSString *)desc {
    return [self createTabModelWithDesc:desc title:_title];
}

- (NSDictionary *)method_1 {
    return @{
        @"- (void)configureWithDefaultBackground;":@{
            @"method":@"TestProjectNavigationController_property_method:",
            @"jumpModel":@{
                @"jumpMethod":@"setSubNavigationController:",
            },
            @"childTableModel": @{
                @"dataModel": @{
                    @"modelClass": TestProjectDetailVCModel.class,
                    @"detailMethod":@"configureWithDefaultBackground",
                },
            },
            @"desc":@"设置导航栏的配置选项"}
    };
}

- (NSDictionary *)method_2 {
    return @{
        @"- (void)configureWithOpaqueBackground;":@{
            @"method":@"TestProjectNavigationController_property_method:",
            @"jumpModel":@{
                @"jumpMethod":@"setSubNavigationController:",
            },
            @"childTableModel": @{
                @"dataModel": @{
                    @"modelClass": TestProjectDetailVCModel.class,
                    @"detailMethod":@"configureWithOpaqueBackground",
                },
            },
            @"desc":@"设置导航栏的配置选项"}
    };
}

- (NSDictionary *)method_3 {
    return @{
        @"- (void)configureWithTransparentBackground;":@{
            @"method":@"TestProjectNavigationController_property_method:",
            @"jumpModel":@{
                @"jumpMethod":@"setSubNavigationController:",
            },
            @"childTableModel": @{
                @"dataModel": @{
                    @"modelClass": TestProjectDetailVCModel.class,
                    @"detailMethod":@"configureWithTransparentBackground",
                },
            },
            @"desc":@"设置导航栏的配置选项 \n 去掉导航栏的分割横线"}
    };
}

- (NSDictionary *)method_4 {
    return @{
        @"@property (nonatomic, readwrite, copy, nullable) UIBlurEffect *backgroundEffect;":@{
            @"method":@"TestProjectNavigationController_property_method:",
            @"jumpModel":@{
                @"jumpMethod":@"setSubNavigationController:",
            },
            @"childTableModel": @{
                @"dataModel": @{
                    @"modelClass": TestProjectDetailVCModel.class,
                    @"detailMethod":@"backgroundEffect:",
                    @"dataModel": @{
                        @"modelClass": NSClassFromString(@"TestProjectSubNavViewModel"),
                        @"style": @(UIBlurEffectStyleExtraLight),
                    },
                },
            },
            @"desc":@"设置导航栏的配置选项"}
    };
}

- (NSDictionary *)method_5 {
    return @{
        @"@property (nonatomic, readwrite, copy, nullable) UIColor *backgroundColor;":@{
            @"method":@"TestProjectNavigationController_property_method:",
            @"jumpModel":@{
                @"jumpMethod":@"setSubNavigationController:",
            },
            @"childTableModel": @{
                @"dataModel": @{
                    @"modelClass": TestProjectDetailVCModel.class,
                    @"detailMethod":@"backgroundColor",
                },
            },
            @"desc":@"设置导航栏的背景颜色"}
    };
}

- (NSDictionary *)method_6 {
    return @{
        @"@property (nonatomic, readwrite, strong, nullable) UIImage *backgroundImage;":@{
            @"method":@"TestProjectNavigationController_property_method:",
            @"jumpModel":@{
                @"jumpMethod":@"setSubNavigationController:",
            },
            @"childTableModel": @{
                @"dataModel": @{
                    @"modelClass": TestProjectDetailVCModel.class,
                    @"detailMethod":@"backgroundImage",
                },
            },
            @"desc":@"设置导航栏的背景图片"}
    };
}

- (NSDictionary *)method_7 {
    return @{
        @"@property (nonatomic, readwrite, assign) UIViewContentMode backgroundImageContentMode;":@{
            @"method":@"TestProjectBarAppearance_property_backgroundImageContentMode:",
            @"jumpModel":@{
                @"jumpMethod":@"setSubNavigationController:",
            },
            @"childTableModel": @{
                @"dataModel": @{
                    @"modelClass": TestProjectDetailVCModel.class,
                    @"detailMethod":@"backgroundImageContentMode:",
                },
            },
            @"desc":@"设置导航栏的背景图片展示效果"}
    };
}

- (NSDictionary *)method_8 {
    return @{
        @"@property (nonatomic, readwrite, copy, nullable) UIColor *shadowColor;":@{
            @"method":@"TestProjectNavigationController_property_method:",
            @"jumpModel":@{
                @"jumpMethod":@"setSubNavigationController:",
            },
            @"childTableModel": @{
                @"dataModel": @{
                    @"modelClass": TestProjectDetailVCModel.class,
                    @"detailMethod":@"shadowColor",
                },
            },
            @"desc":@"设置导航栏的阴影图片颜色，如果没有阴影图片则是无效果的"}
    };
}

- (NSDictionary *)method_9 {
    return @{
        @"@property (nonatomic, readwrite, strong, nullable) UIImage *shadowImage;":@{
            @"method":@"TestProjectNavigationController_property_method:",
            @"jumpModel":@{
                @"jumpMethod":@"setSubNavigationController:",
            },
            @"childTableModel": @{
                @"dataModel": @{
                    @"modelClass": TestProjectDetailVCModel.class,
                    @"detailMethod":@"shadowImage",
                },
            },
            @"desc":@"设置导航栏的阴影图片"}
    };
}


//UIViewContentModeScaleToFill,
//UIViewContentModeScaleAspectFit,      // contents scaled to fit with fixed aspect. remainder is transparent
//UIViewContentModeScaleAspectFill,     // contents scaled to fill with fixed aspect. some portion of content may be clipped.
//UIViewContentModeRedraw,              // redraw on bounds change (calls -setNeedsDisplay)
//UIViewContentModeCenter,              // contents remain same size. positioned adjusted.
//UIViewContentModeTop,
//UIViewContentModeBottom,
//UIViewContentModeLeft,
//UIViewContentModeRight,
//UIViewContentModeTopLeft,
//UIViewContentModeTopRight,
//UIViewContentModeBottomLeft,
//UIViewContentModeBottomRight,

- (void)TestProjectBarAppearance_property_backgroundImageContentMode:(TestProjectDetailVCModel *)viewModel {
    NSArray *contentModes = @[
        @{@(UIViewContentModeScaleToFill):@"我是UIViewContentModeScaleToFill样式  图片充满这个navBar拉伸展示，高度为navBar的高度"},
        @{@(UIViewContentModeScaleAspectFit):@"我是UIViewContentModeScaleAspectFit样式  根据导图片的等比在navBar内缩小展示，高度为navBar的高度"},
        @{@(UIViewContentModeScaleAspectFill):@"我是UIViewContentModeScaleAspectFill样式 图片溢出navBar展示，从底部开始，高度为   图片的高度/图片的宽度 * 屏幕的宽度"},
        @{@(UIViewContentModeRedraw):@"我是UIViewContentModeRedraw样式 图片拉伸在navBar展示，高度为navBar的高度"},
        @{@(UIViewContentModeCenter):@"我是UIViewContentModeCenter样式 图片溢出navBar展示"},
        @{@(UIViewContentModeTop):@"我是UIViewContentModeTop样式  图片溢出navBar全屏全部展示，高度为view的高度"},
        @{@(UIViewContentModeBottom):@"我是UIViewContentModeBottom样式 图片从下方开始，在navBar内部展示，高度为navBar的高度"},
        @{@(UIViewContentModeLeft):@"我是UIViewContentModeLeft样式 根据导航的宽度比例 先从图片的底部左方溢出navBar开始展示，高度为图片的高度"},
        @{@(UIViewContentModeRight):@"我是UIViewContentModeRight样式 根据导航的宽度比例 先从图片的底部右方溢出navBar开始展示，高度为图片的高度"},
        @{@(UIViewContentModeTopLeft):@"我是UIViewContentModeTopLeft样式 根据导航的高度比例 先从图片的左上方溢出navBar开始展示，高度为图片的高度"},
        @{@(UIViewContentModeTopRight):@"我是UIViewContentModeTopRight样式 根据导航的高度比例 先从图片的右上方溢出navBar开始展示，高度为图片的高度"},
        @{@(UIViewContentModeBottomLeft):@"我是UIViewContentModeBottomLeft样式 根据导航的高度比例 先从图片的左下方在navBar内部开始展示，高度为navBar的高度"},
        @{@(UIViewContentModeBottomRight):@"我是UIViewContentModeBottomRight样式 根据导航的高度比例 先从图片的右下方在navBar内部开始展示，高度为navBar的高度"}, ];
    TestProjectDetailVCModel *tVM = viewModel.childTableModel.dataModel;
    for (NSDictionary *dic in contentModes) {
        NSNumber *num = dic.allKeys.firstObject;
        _title = [dic objectForKey:num];
        TestProjectSubNavViewModel *subNavVM = [[TestProjectSubNavViewModel alloc] init];
        subNavVM.backgroundImageContentMode = (UIViewContentMode)[num integerValue];
        
        TestProjectDetailVCModel *dataModel = [[TestProjectDetailVCModel alloc] init];
        dataModel.detailMethod = tVM.detailMethod;
        dataModel.dataModel = subNavVM;
        
        TestProjectBaseModel *childTableModel = [[TestProjectBaseModel alloc] init];
        childTableModel.dataModel = dataModel;

        TestProjectDetailVCModel *detailVM = [[TestProjectDetailVCModel alloc] init];
        detailVM.childTableModel = childTableModel;
        [self operationWithVC:self.tVC isPush:YES method:viewModel.jumpModel.jumpMethod viewModel:detailVM];
    }
    self.tableView.dataSourceArray = self.dataMutArr;
}


@end
