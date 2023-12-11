//
//  NSDictionary+TestProject.m
//  TestProjectIOS
//
//  Created by liwenfan on 2023/12/1.
//

#import "NSDictionary+TestProject.h"

#import "NSObject+TestProject.h"

@implementation NSDictionary (TestProject)

+ (void)load {
    NSArray *exchangeInstanceMethodList = @[@"initWithObjects:forKeys:count:"];
    Class exchangeInstanceClass = NSClassFromString(@"__NSPlaceholderDictionary");
    Class replaceInstanceClass = NSDictionary.class;
    [self exchangeInstanceClassMethod:exchangeInstanceMethodList exchangeInstanceClass:exchangeInstanceClass replaceInstanceClass:replaceInstanceClass];
}

- (instancetype)testProject_initWithObjects:(id  _Nonnull const[])objects forKeys:(id<NSCopying>  _Nonnull const[])keys count:(NSUInteger)cnt {
    id testProject_Objects[cnt], testProject_keys[cnt];
    NSInteger index = 0;
    NSMutableString *mutStr = [NSMutableString string];
    for (NSInteger i = 0; i < cnt; i++) {
        id object = objects[i];
        id key = keys[i];
        if (object && key) {
            testProject_Objects[index] = object;
            testProject_keys[index] = key;
            index++;
        } else {
            [mutStr appendFormat:@"key:%@ object:%@ index:%ld\n", key, object, index];
        }
    }
    if (index != cnt) {
        [self dealInstanceCrashData:[NSString stringWithFormat:@"初始化的数据是不存在的 _cmd--->%@%@", NSStringFromSelector(_cmd), mutStr]];
    }
    return [self testProject_initWithObjects:testProject_Objects forKeys:testProject_keys count:index];
}

@end
