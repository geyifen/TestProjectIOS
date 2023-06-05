//
//  UIAlertController+TestProject.h
//  TestProjectIOS
//
//  Created by zjrcumac on 2023/4/26.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIAlertController (TestProject)

+ (void)alertWithTitle:(NSString * _Nullable)title
               message:(NSString * _Nullable)message
           cancelTitle:(NSString * _Nullable)cancelTitle
           cancelBlock:(dispatch_block_t _Nullable)cancelBlock
             sureTitle:(NSString * _Nullable)sureTitle
             sureBlock:(dispatch_block_t _Nullable)sureBlock;

@end

NS_ASSUME_NONNULL_END
