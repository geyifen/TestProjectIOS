//
//  TestProjectAlertController.m
//  TestProjectIOS
//
//  Created by 李文凡 on 2023/4/1.
//

#import "TestProjectAlertController.h"

#import "TestProjectUIViewCell.h"

@interface TestProjectAlertControllerViewModel : NSObject

@property (nonatomic, assign) UIAlertControllerStyle style;

@end

@implementation TestProjectAlertControllerViewModel

@end

@implementation TestProjectAlertController

- (NSDictionary *)method_1 {
    return @{
        @"+ (instancetype)alertControllerWithTitle:(nullable NSString *)title message:(nullable NSString *)message preferredStyle:(UIAlertControllerStyle)preferredStyle;":@{
            @"method":@"TestProjectAlertController_alertControllerWithTitle_message_preferredStyle",
            @"desc":@"通过style设置alert或者sheet弹窗 \n 只能设置一个UIAlertActionStyleCancel样式，多了则会崩溃"}
    };
}

- (NSDictionary *)method_2 {
    return @{
        @"- (void)addTextFieldWithConfigurationHandler:(void (^ __nullable)(UITextField *textField))configurationHandler;":@{
            @"method":@"TestProjectAlertController_addTextFieldWithConfigurationHandler",
            @"desc":@"alert或者sheet弹窗上添加一个UITextField \n sheet不支持添加UITextField \n 只能设置一个UIAlertActionStyleCancel样式，多了则会崩溃"}
    };
}

- (void)createTabModelWith:(NSString *)title style:(UIAlertControllerStyle)style isAddText:(BOOL)isAddText {
    TestProjectTableModel *m = [[TestProjectTableModel alloc] init];
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
    [m calculDataViewHeight];
    [self.dataMutArr addObject:m];
}

- (void)TestProjectAlertController_alertControllerWithTitle_message_preferredStyle {
    NSArray *styles = @[
    @{@(UIAlertControllerStyleAlert):@"我的样式是alert"},
    @{@(UIAlertControllerStyleActionSheet):@"我的样式是sheet"}, ];
    for (NSDictionary *dic in styles) {
        NSNumber *num = dic.allKeys.firstObject;
        UIAlertControllerStyle style = (UIAlertControllerStyle)[num integerValue];
        NSString *title = [dic objectForKey:num];
        [self createTabModelWith:title style:style isAddText:NO];
    }
    self.tableView.dataSourceArray = self.dataMutArr;
}

- (void)TestProjectAlertController_addTextFieldWithConfigurationHandler {
    NSArray *styles = @[
    @{@(UIAlertControllerStyleAlert):@"我的样式是alert"},
    @{@(UIAlertControllerStyleActionSheet):@"我的样式是sheet"}, ];
    for (NSDictionary *dic in styles) {
        NSNumber *num = dic.allKeys.firstObject;
        UIAlertControllerStyle style = (UIAlertControllerStyle)[num integerValue];
        NSString *title = [dic objectForKey:num];
        [self createTabModelWith:title style:style isAddText:YES];
    }
    self.tableView.dataSourceArray = self.dataMutArr;
}

@end
