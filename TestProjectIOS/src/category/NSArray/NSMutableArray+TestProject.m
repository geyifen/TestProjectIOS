//
//  NSMutableArray+TestProject.m
//  TestProjectIOS
//
//  Created by zjrcumac on 2023/4/13.
//

#import "NSMutableArray+TestProject.h"

#import "NSObject+TestProject.h"

#import <objc/runtime.h>

@implementation NSMutableArray (TestProject)

+ (void)load {
    Class class1 = NSClassFromString(@"__NSArrayM");
    Class class2 = NSMutableArray.class;
//    NSArray *instanceMethods = @[@"addObject:"];
//    SEL s1 = NSSelectorFromString(methodName);
//    SEL s2 = NSSelectorFromString([NSString stringWithFormat:@"testProject_%@", methodName]);
//    Method m1 = class_getInstanceMethod(class, @selector(addObject:));
//    Method m2 = class_getInstanceMethod(NSArray.class, @selector(addObject:));
//    method_exchangeImplementations(m1, m2);
}

- (void)testProject_addObject:(id)anObject {
    if ([[anObject class] isMemberOfClass:NSString.class] && [anObject isEqualToString:@"123"]) {
        NSLog(@"testProject_addObject:%@");
    }
    [self testProject_addObject:anObject];
}

- (void)safeAddObject:(id)obj {
    NSLog(@"safeAddObject:%@", obj);
}

@end
