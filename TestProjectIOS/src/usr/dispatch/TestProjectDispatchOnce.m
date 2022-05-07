//
//  TestProjectDispatchOnce.m
//  TestProjectIOS
//
//  Created by zjrcumac on 2022/5/6.
//

#import "TestProjectDispatchOnce.h"


@implementation TestProjectDispatchOnce

static TestProjectDispatchOnce *sharedInstanced = nil;
static dispatch_once_t once;

+ (instancetype)sharedInstanced {
    /**
     只能进入一次block,
     当sharedInstanced再次为nil时,之前引用的sharedInstanced还会存在,对象指针是同一个,不会重新初始化,此次之后进入此方法会返回nil
     */
    dispatch_once(&once, ^{
        sharedInstanced = [[TestProjectDispatchOnce alloc] init];
    });
    /**
     当sharedInstanced为nil时,之前引用的sharedInstanced还会存在,,对象指针是同一个,不会重新初始化,此次之后进入重新创建
     */
//    if (!sharedInstanced) {
//        sharedInstanced = [[TestProjectDispatchOnce alloc] init];
//    }
    return sharedInstanced;
}

- (instancetype)init {
    if (self = [super init]) {
        NSLog(@"TestProjectDispatchOnce init");
    }
    return self;
}

- (void)setNilForSharedInstanced {
    sharedInstanced = nil;
}

@end
