//
//  NSObject+TestProject.m
//  TestProjectIOS
//
//  Created by zjrcumac on 2022/9/15.
//

#import "NSObject+TestProject.h"
#import "TestProjectCustomModel.h"

@implementation NSObject (TestProject)

+ (void)load {
//    Class TestProjectMeModel = objc_allocateClassPair(NSObject.class, "TestProjectMeModel", 0);
//    BOOL addClassSuccess = class_addIvar(TestProjectMeModel, "_addTestProjectMeModelIvar1", sizeof(NSString *), log2(sizeof(NSString *)), "@");
//    NSLog(@"addClassSuccess:%u", addClassSuccess);
//    objc_registerClassPair(TestProjectMeModel);
}

//会崩溃
//+ (void)initialize {
//    NSLog(@"+initialize TestProject NSObject");
//}

//+ (void)load {
//    NSLog(@"+load NSObject+TestProject NSObject");
//}

//不能使用[super init],造成死循环
//- (instancetype)init {
//    NSLog(@"-init NSObject+TestProject NSObject");
//    return self;
//}


- (void)finallyExceptionMethodOC:(id)args, ... {
    NSLog(@"未实现的：self:%@, cmd:%@", self, NSStringFromSelector(_cmd));
    if (args) {
        va_list list;
        NSMutableString *appendStr = [NSMutableString stringWithFormat:@":%@", args];
        va_start(list, args);
        id obj = va_arg(list, id);
        [appendStr appendFormat:@":%@", obj];
        va_end(list);
        NSLog(@"参数为%@", appendStr);
    }
}


void finallyExceptionMethodC(id objc, SEL cmd, id args, ...) {
    NSLog(@"未实现的：self:%@, cmd:%@", objc, NSStringFromSelector(cmd));
    if (args) {
        va_list list;
        NSMutableString *appendStr = [NSMutableString stringWithFormat:@":%@", args];
        va_start(list, args);
        id obj = va_arg(list, id);
        [appendStr appendFormat:@":%@", obj];
        va_end(list);
        NSLog(@"参数为%@", appendStr);
    }
}

- (BOOL)addMethod:(SEL)sel {
    BOOL addMethod = NO;
    //c方法实现
//    addMethod = class_addMethod([NSObject class], sel, (IMP)finallyExceptionMethodC, "v@@");
    //oc方法实现
    SEL selctor = @selector(finallyExceptionMethodOC:);
    IMP imp = class_getMethodImplementation([NSObject class], selctor);
    Method method = class_getClassMethod([NSObject class], selctor);
    const char *type = method_getTypeEncoding(method);
    addMethod = class_addMethod([NSObject class], sel, imp, type);
    return addMethod;
}

- (BOOL)isSameSel:(SEL)sel {
//    return [NSStringFromSelector(sel) isEqualToString:@"eating:playing:seeing:"];
    return [NSStringFromSelector(sel) isEqualToString:@"eating:"];
}

//#pragma clang diagnostic push
//#pragma clang diagnostic ignored "-Wobjc-protocol-method-implementation"
////第一步
//+ (BOOL)resolveInstanceMethod:(SEL)sel {
//    BOOL addMethod = NO;
////    if ([self isSameSel:sel]) {
////        NSLog(@"resolveInstanceMethod %@", NSStringFromSelector(sel));
////        NSLog(@"NSObject resolveClassMethod: %@ %@", self, NSStringFromSelector(sel));
////        addMethod = [self.class addMethod:sel];
////    }
//    return addMethod;
//}
//
//+ (BOOL)resolveClassMethod:(SEL)sel {
//    BOOL addMethod = NO;
//    if ([self isSameSel:sel]) {
//        NSLog(@"NSObject resolveClassMethod: %@ %@", self, NSStringFromSelector(sel));
//        addMethod = [self.class addMethod:sel];
//    }
//    return addMethod;
//}
//
////第二步
//- (id)forwardingTargetForSelector:(SEL)aSelector {
////    if ([self isSameSel:aSelector]) {
////        NSLog(@"NSObject forwardingTargetForSelector: %@ %@", self, NSStringFromSelector(aSelector));
////        TestProjectCustomMeModel *objc = [[TestProjectCustomMeModel alloc] init];
////        if ([objc respondsToSelector:aSelector]) {
////            return objc;
////        }
////    }
//    return nil;
//}
//
//// 消息转发第三步
//- (NSMethodSignature *)methodSignatureForSelector:(SEL)aSelector {
//    NSString *selectorStr = NSStringFromSelector(aSelector);
//    if ([selectorStr isEqualToString:@"layoutMargins"] || [selectorStr isEqualToString:@"inputModeSelectionSequence"]) {
//        //在debug查看视图层级的时候会执行到这
//        return nil;
//    }
//    NSLog(@"NSObject methodSignatureForSelector: %@ %@", self, NSStringFromSelector(aSelector));
////    return nil;
//    //这个没有执行第三步就会崩溃
//    return [NSMethodSignature methodSignatureForSelector:aSelector];
//}
//
////重写了这个方法[doesNotRecognizeSelector:]就不会调用，否则就调用
//- (void)forwardInvocation:(NSInvocation *)anInvocation {
//    NSLog(@"NSObject forwardInvocation: %@ %@ target:%@", self, NSStringFromSelector(anInvocation.selector), anInvocation.target);
//}
//
//- (void)doesNotRecognizeSelector:(SEL)aSelector {
//    NSLog(@"NSObject doesNotRecognizeSelector: %@ %@", self, NSStringFromSelector(aSelector));
//}
//
//#pragma clang diagnostic pop


- (NSString *)set_propertGetXXXMethod:(NSString *)propertXXX {
    Ivar ivar = class_getInstanceVariable(self.class, [propertXXX UTF8String]);
    return object_getIvar(self, ivar);
}

- (void)set_propertSetXXXMethod:(NSString *)propertXXX value:(NSString *)value {
    Ivar ivar = class_getInstanceVariable(self.class, [propertXXX UTF8String]);
    object_setIvar(self, ivar, value);
}

@end
