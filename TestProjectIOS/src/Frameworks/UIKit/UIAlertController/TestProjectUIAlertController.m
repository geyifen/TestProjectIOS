//
//  TestProjectUIAlertController.m
//  TestProjectIOS
//
//  Created by 李文凡 on 2023/4/1.
//

#import "TestProjectUIAlertController.h"

@interface TestProjectAlertControllerViewModel : TestProjectTableViewModel

@property (nonatomic, assign) UIAlertControllerStyle style;

@end

@implementation TestProjectAlertControllerViewModel

@end

@implementation TestProjectUIAlertController

- (void)createTabModelWith:(NSString *)title style:(UIAlertControllerStyle)style isAddText:(BOOL)isAddText params:(TestProjectTableViewParams *)params {
    TestProjectAlertControllerViewModel *m = [[TestProjectAlertControllerViewModel alloc] init];
    m.title = title;
    if (isAddText && style == UIAlertControllerStyleActionSheet) {
        m.desc = @"不支持添加UITextField";
    }
    m.clickBlock = ^{
        UIAlertController *alert = [UIAlertController alertControllerWithTitle:title message:nil preferredStyle:style];
        if (isAddText && style != UIAlertControllerStyleActionSheet) {
            [alert addTextFieldWithConfigurationHandler:^(UITextField * _Nonnull textField) {
                NSLog(@"%@", textField);
            }];
        }
        UIAlertAction *defaultAction = [UIAlertAction actionWithTitle:@"default" style:UIAlertActionStyleDefault handler:nil];
        UIAlertAction *cancelAction = [UIAlertAction actionWithTitle:@"cancel" style:UIAlertActionStyleCancel handler:nil];
        UIAlertAction *destructiveAction = [UIAlertAction actionWithTitle:@"destructive" style:UIAlertActionStyleDestructive handler:nil];
        [alert addAction:defaultAction];
        [alert addAction:cancelAction];
        [alert addAction:destructiveAction];
        for (NSInteger i = 0; i < 20; i++) {
            NSInteger k = i % 2;
            UIAlertActionStyle actionStyle = k == 0 ? UIAlertActionStyleDefault : UIAlertActionStyleDestructive;
            UIAlertAction *iAction = [UIAlertAction actionWithTitle:[NSString stringWithFormat:@"i_%ld_%ld", i, k] style:actionStyle handler:nil];
            [alert addAction:iAction];
        }
        [UIApplication.rootCurrentController presentViewController:alert animated:YES completion:nil];
    };
    [m calculDataViewHeight:params];
    [self.dataMutArr addObject:m];
}

- (NSMutableArray *)createAlertController_isAddText:(BOOL)isAddText params:(TestProjectTableViewParams *)params {
    NSArray *arr = @[
        @{
            @"title": @"我的样式是alert",
            @"style": @(UIAlertControllerStyleAlert),
        },
        @{
            @"title": @"我的样式是sheet",
            @"style": @(UIAlertControllerStyleActionSheet),
        },
    ];
    for (NSDictionary *dic in arr) {
        NSString *title = dic[@"title"];
        UIAlertControllerStyle style = [dic[@"style"] integerValue];
        [self createTabModelWith:title style:style isAddText:isAddText params:params];
    }
    return self.dataMutArr;
}

- (NSMutableArray *)TestProjectAlertController_alertControllerWithTitle_message_preferredStyle:(TestProjectTableViewParams *)params {
    return [self createAlertController_isAddText:NO params:params];
}

- (NSDictionary *)method_2:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"alert或者sheet弹窗上添加一个UITextField",
            @"title": @"- (void)addTextFieldWithConfigurationHandler:(void (^ __nullable)(UITextField *textField))configurationHandler;",
            @"desc": @"sheet不支持添加UITextField \n 只能设置一个UIAlertActionStyleCancel样式，多了则会崩溃",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"modelClass": TestProjectAlertControllerViewModel.class,
                @"childItems": [self TestProjectAlertController_addTextFieldWithConfigurationHandler:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectAlertController_addTextFieldWithConfigurationHandler:(TestProjectTableViewParams *)params {
    return [self createAlertController_isAddText:YES params:params];
}

- (NSDictionary *)method_1:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"通过style设置alert或者sheet弹窗",
            @"title": @"+ (instancetype)alertControllerWithTitle:(nullable NSString *)title message:(nullable NSString *)message preferredStyle:(UIAlertControllerStyle)preferredStyle;",
            @"desc": @"只能设置一个UIAlertActionStyleCancel样式，多了则会崩溃",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"modelClass": TestProjectAlertControllerViewModel.class,
                @"childItems": [self TestProjectAlertController_alertControllerWithTitle_message_preferredStyle:params],
            }
        },
    };
}

@end
