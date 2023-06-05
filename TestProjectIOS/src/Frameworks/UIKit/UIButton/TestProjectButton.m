//
//  TestProjectButton.m
//  TestProjectIOS
//
//  Created by zjrcumac on 2023/6/1.
//

#import "TestProjectButton.h"

#import "TestProjectUIButtonCell.h"

@interface TestProjectButton ()

@property (nonatomic, strong) UIButton *childButton;

@end

@implementation TestProjectButton

- (Class)createTableModelClass {
    return TestProjectUIButtonCellModel.class;
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

//- (NSDictionary *)method_2 {
//    return @{
//        @"dataModel": @{
//            @"abstract": @"通过frame和UIAction创建UIButton",
//            @"title": @"- (instancetype)initWithFrame:(CGRect)frame primaryAction:(nullable UIAction *)primaryAction API_AVAILABLE(ios(14.0));",
//            @"isDataModelExpand": @(YES),
//            @"dataModel": @{
//                @"childItems": [self TestProjectButton_initWithFrame_primaryAction],
//            }
//        },
//    };
//}
//
//- (NSDictionary *)method_3 {
//    return @{
//        @"dataModel": @{
//            @"abstract": @"通过frame和UIAction创建UIButton",
//            @"title": @"+ (instancetype)buttonWithType:(UIButtonType)buttonType;",
//            @"isDataModelExpand": @(YES),
//            @"dataModel": @{
//                @"childItems": [self TestProjectButton_add_buttonWithType],
//            }
//        },
//    };
//}

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

- (NSMutableArray *)TestProjectButton_add_buttonWithType {
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
    for (NSDictionary *dic in arr) {
        NSString *title = dic[@"title"];
        UIButtonType type = [dic[@"value"] integerValue];
        TestProjectUIButtonCellModel *m = (TestProjectUIButtonCellModel *)[self createTableModelWithTitle:title block:nil];
        UIButton *btn = [UIButton buttonWithType:type];
        btn.backgroundColor = [UIColor redColor];
        m.chidlButton = btn;
    }
    return self.dataMutArr;
}

- (NSMutableArray *)TestProjectButton_initWithFrame_primaryAction {
    CGRect rect = CGRectMake(0, 0, 20, 20);
    UIAction *action;
    if (@available(iOS 15.0, *)) {
        WS(wSelf);
        action = [UIAction actionWithTitle:@"我是一个UIAction" image:nil identifier:UIActionPaste handler:^(__kindof UIAction * _Nonnull action) {
            [UIAlertController alertWithTitle:nil message:@"我是一个button" cancelTitle:@"确定" cancelBlock:nil sureTitle:nil sureBlock:nil];
        }];
    } else {
        // Fallback on earlier versions
    }
    TestProjectUIButtonCellModel *m = (TestProjectUIButtonCellModel *)[self createTableModelWithTitle:[NSString stringWithFormat:@"frame:%@创建UIButton", NSStringFromCGRect(rect)] block:nil];

    if (@available(iOS 14.0, *)) {
        UIButton *btn = [[UIButton alloc] initWithFrame:rect primaryAction:action];
        btn.backgroundColor = [UIColor redColor];
        m.chidlButton = btn;
    } else {
        // Fallback on earlier versions
    }
    return self.dataMutArr;
}

- (NSMutableArray *)TestProjectButton_initWithFrame {
    CGRect rect = CGRectMake(0, 0, 10, 10);
    TestProjectUIButtonCellModel *m = (TestProjectUIButtonCellModel *)[self createTableModelWithTitle:[NSString stringWithFormat:@"frame:%@创建UIButton", NSStringFromCGRect(rect)] block:nil];
    UIButton *btn = [[UIButton alloc] initWithFrame:rect];
    btn.backgroundColor = [UIColor redColor];
    m.chidlButton = btn;
    return self.dataMutArr;
}

@end
