//
//  NSMutableArray+TestProject.m
//  TestProjectIOS
//
//  Created by liwenfan on 2023/4/13.
//

#import "NSMutableArray+TestProject.h"

#import "NSObject+TestProject.h"

@implementation NSMutableArray (TestProject)

+ (void)load {
    NSArray *exchangeInstanceMethodList = @[@"addObject:"];
    Class exchangeInstanceClass = NSClassFromString(@"__NSArrayM");
    Class replaceInstanceClass = NSMutableArray.class;
    [self exchangeInstanceClassMethod:exchangeInstanceMethodList exchangeInstanceClass:exchangeInstanceClass replaceInstanceClass:replaceInstanceClass];
}

- (void)testProject_addObject:(id)anObject {
    if (!anObject) {
        [self dealInstanceCrashData:[NSString stringWithFormat:@"添加的数据是不存在的 _cmd--->%@%@", NSStringFromSelector(_cmd), anObject]];
        return;
    }
    [self testProject_addObject:anObject];
}

@end
