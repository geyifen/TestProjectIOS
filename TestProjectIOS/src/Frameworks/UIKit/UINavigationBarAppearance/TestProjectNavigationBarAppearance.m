//
//  TestProjectNavigationBarAppearance.m
//  TestProjectIOS
//
//  Created by zjrcumac on 2023/4/12.
//

#import "TestProjectNavigationBarAppearance.h"

@implementation TestProjectNavigationBarAppearance

- (NSDictionary *)method_1 {
    return @{
        @"@property (nonatomic, readwrite, copy) NSDictionary<NSAttributedStringKey, id> *titleTextAttributes;":@{
            @"method":@"TestProjectNavigationController_property_method:",
            @"jumpModel":@{
                @"jumpMethod":@"setSubNavigationController:",
            },
            @"childTableModel": @{
                @"dataModel": @{
                    @"modelClass": TestProjectDetailVCModel.class,
                    @"detailMethod":@"titleTextAttributes",
                },
            },
            @"desc":@"通过UINavigationBarAppearance 设置导航栏的字体富文本"}
    };
}

- (NSDictionary *)method_2 {
    return @{
        @"@property (nonatomic, readwrite, assign) UIOffset titlePositionAdjustment;":@{
            @"method":@"TestProjectNavigationController_property_method:",
            @"jumpModel":@{
                @"jumpMethod":@"setSubNavigationController:",
            },
            @"childTableModel": @{
                @"dataModel": @{
                    @"modelClass": TestProjectDetailVCModel.class,
                    @"detailMethod":@"titlePositionAdjustment",
                },
            },
            @"desc":@"通过UINavigationBarAppearance 设置导航栏的标题的偏移量"}
    };
}

- (NSDictionary *)method_3 {
    return @{
        @"@property (nonatomic, readwrite, copy) NSDictionary<NSAttributedStringKey, id> *largeTitleTextAttributes;":@{
            @"method":@"TestProjectNavigationController_property_method:",
            @"jumpModel":@{
                @"jumpMethod":@"setSubNavigationController:",
            },
            @"childTableModel": @{
                @"dataModel": @{
                    @"modelClass": TestProjectDetailVCModel.class,
                    @"detailMethod":@"largeTitleTextAttributes",
                },
            },
            @"desc":@"通过UINavigationBarAppearance 设置导航栏的大标题字体富文本 \n 必须设置prefersLargeTitles为true才能显示大标题"}
    };
}

- (NSDictionary *)method_4 {
    return @{
        @"@property (nonatomic, readwrite, copy) UIBarButtonItemAppearance *buttonAppearance;":@{
            @"method":@"TestProjectNavigationController_property_method:",
            @"jumpModel":@{
                @"jumpMethod":@"setSubNavigationController:",
            },
            @"childTableModel": @{
                @"dataModel": @{
                    @"modelClass": TestProjectDetailVCModel.class,
                    @"detailMethod":@"buttonAppearance",
                },
            },
            @"desc":@"通过UINavigationBarAppearance 暂时还不知是做什么的"}
    };
}

- (NSDictionary *)method_5 {
    return @{
        @"- (void)setBackIndicatorImage:(nullable UIImage *)backIndicatorImage transitionMaskImage:(nullable UIImage *)backIndicatorTransitionMaskImage;":@{
            @"method":@"TestProjectNavigationController_property_method:",
            @"jumpModel":@{
                @"jumpMethod":@"setSubNavigationController:",
            },
            @"childTableModel": @{
                @"dataModel": @{
                    @"modelClass": TestProjectDetailVCModel.class,
                    @"detailMethod":@"setBackIndicatorImage_transitionMaskImage",
                },
            },
            @"desc":@"通过UINavigationBarAppearance 设置UINavigationBarAppearance的setBackIndicatorImage，这个会使title不显示 transitionMaskImage设置不知道有啥用"}
    };
}


@end
