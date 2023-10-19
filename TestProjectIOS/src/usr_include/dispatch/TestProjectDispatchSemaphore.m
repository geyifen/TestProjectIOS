//
//  TestProjectDispatchSemaphore.m
//  TestProjectIOS
//
//  Created by liwenfan on 2022/5/13.
//

#import "TestProjectDispatchSemaphore.h"

@interface TestProjectDispatchSemaphore ()

@property (nonatomic, assign) NSInteger foodCount;
@property (nonatomic, strong) dispatch_semaphore_t dispatchSemaphore;

@end

@implementation TestProjectDispatchSemaphore

- (instancetype)init {
    if (self = [super init]) {
//        [self testRunDispatchSemaphore];
        [self testRunDispatchApplication];
    }
    return self;
}

- (void)testRunDispatchSemaphore {
    dispatch_queue_t globalQueue = dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_LOW, 0);
    __block NSInteger number = 0;
    dispatch_async(globalQueue, ^{
        dispatch_semaphore_t dispatchSemaphore = dispatch_semaphore_create(0);
        dispatch_async(globalQueue, ^{
            NSLog(@"dispatch semaphore 执行中: %@", [NSThread currentThread]);
            [NSThread sleepForTimeInterval:3];
            number = 10;
            dispatch_semaphore_signal(dispatchSemaphore);
        });
        NSLog(@"wait 之前 number: %ld thread:%@", number, [NSThread currentThread]);
        intptr_t waitRes = dispatch_semaphore_wait(dispatchSemaphore, dispatch_time(DISPATCH_TIME_FOREVER, 5 * NSEC_PER_SEC));
        NSLog(@"wait 之后 number: %ld waitRes：%ld %@", number, waitRes, [NSThread currentThread]);
    });
}

- (void)testRunDispatchApplication {
    dispatch_queue_t globalQueueu = dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0);
    self.dispatchSemaphore = dispatch_semaphore_create(1);
    self.foodCount = 10;
    dispatch_async(globalQueueu, ^{
        [self eatFood:1];
    });
    dispatch_async(globalQueueu, ^{
        [self eatFood:2];
    });
    dispatch_async(globalQueueu, ^{
        [self eatFood:3];
    });
}

- (void)eatFood:(NSInteger)tag {
    
    dispatch_semaphore_wait(self.dispatchSemaphore, DISPATCH_TIME_FOREVER);
    if (self.foodCount > 0) {
        [NSThread sleepForTimeInterval:1];
        NSLog(@"这是第%ld个，还剩多少个：%ld", tag, self.foodCount);
        self.foodCount--;
        dispatch_semaphore_signal(self.dispatchSemaphore);
        [self eatFood:tag];
    } else {
        dispatch_semaphore_signal(self.dispatchSemaphore);
        NSLog(@"已经吃完了:%ld", self.foodCount);
    }
}

@end
