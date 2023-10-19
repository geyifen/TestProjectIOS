//
//  TestProjectGetImplementationMethod.m
//  TestProjectIOS
//
//  Created by liwenfan on 2023/3/3.
//

#import "TestProjectGetImplementationMethod.h"

#import "TestProjectIgnoreWarningDefmacro.h"

#import <objc/message.h>

@implementation TestProjectGetImplementationMethod

+ (NSDictionary *)getImplementationProject {
    unsigned int methodCount = 0;
    const char *name = [NSStringFromClass(self.class) UTF8String];
    Method *methodList = class_copyMethodList(objc_getMetaClass(name), &methodCount);
    for (NSInteger i = 0; i < methodCount; i++) {
        Method m = methodList[i];
        SEL sel = method_getName(m);
        NSString *methodName = NSStringFromSelector(sel);
        if ([methodName hasPrefix:@"project_"]) {
            free(methodList);
            CancelPerformSelectorLeakWarning(NSDictionary *dic = [self performSelector:sel];);
            return dic;
        }
    }
    free(methodList);
    return nil;
}

@end
