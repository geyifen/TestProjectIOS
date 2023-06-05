//
//  UIAlertController+TestProject.m
//  TestProjectIOS
//
//  Created by zjrcumac on 2023/4/26.
//

#import "UIAlertController+TestProject.h"

#import "UIApplication+TestProject.h"

#import <pthread/pthread.h>
#import <dispatch/dispatch.h>

static pthread_mutex_t alertThreadMutexLock = PTHREAD_MUTEX_INITIALIZER;

@implementation UIAlertController (TestProject)

- (void)dealloc {
    NSLog(@"UIAlertController dealloc %@", self);
}

+ (void)alertWithTitle:(NSString *)title
               message:(NSString *)message
           cancelTitle:(NSString *)cancelTitle
           cancelBlock:(dispatch_block_t)cancelBlock
             sureTitle:(NSString *)sureTitle
             sureBlock:(dispatch_block_t)sureBlock {
    UIAlertController *alert = [UIAlertController alertControllerWithTitle:title message:message preferredStyle:UIAlertControllerStyleAlert];
    if (cancelTitle) {
        UIAlertAction *cancelAction = [UIAlertAction actionWithTitle:cancelTitle style:UIAlertActionStyleCancel handler:^(UIAlertAction * _Nonnull action) {
            if (cancelBlock) {
                cancelBlock();
            };
        }];
        [alert addAction:cancelAction];
    }
    if (sureTitle) {
        UIAlertAction *sureAction = [UIAlertAction actionWithTitle:sureTitle style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
            if (sureBlock) {
                sureBlock();
            }
        }];
        [alert addAction:sureAction];
    }
    dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^{
        pthread_mutex_lock(&alertThreadMutexLock);
        dispatch_async(dispatch_get_main_queue(), ^{
            //有多个alert一起弹出时，会造成nav.presentedViewController生成多个而不显示，按照道理应该hook[presentViewController:animated:completion:]方法的
            [UIApplication.rootCurrentController presentViewController:alert animated:NO completion:^{
                pthread_mutex_unlock(&alertThreadMutexLock);
            }];
        });
    });
}

@end
