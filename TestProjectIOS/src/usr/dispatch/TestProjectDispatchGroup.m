//
//  TestProjectDispatchGroup.m
//  TestProjectIOS
//
//  Created by zjrcumac on 2022/4/20.
//

#import "TestProjectDispatchGroup.h"
#import "TestProjectUsrHeader.h"

@implementation TestProjectDispatchGroup

- (instancetype)init {
    if (self = [super init]) {
//        [self testRunDispatchGroup];
//        [self testRunTask1];
//        [self testRunTask2];
        [self testRunTask3];
    }
    return self;
}

- (void)testRunDispatchGroup {
    dispatch_queue_t concurrentQueue = [TestProjectDispatchQueue generateConcurrentQueueWithSel:_cmd];
    NSTimeInterval sleepTime = 3;
    /**创建group*/
    dispatch_group_t dispatchGroup = dispatch_group_create();
    /**自成一个循环锁*/
    dispatch_group_async(dispatchGroup, concurrentQueue, ^{
        NSLog(@"在执行第1个group");
        [NSThread sleepForTimeInterval:sleepTime];
        NSLog(@"执行完第1个group");
    });
    dispatch_group_async(dispatchGroup, concurrentQueue, ^{
        NSLog(@"在执行第2个group");
        [NSThread sleepForTimeInterval:5];
        NSLog(@"执行完第2个group");

    });
    dispatch_group_async(dispatchGroup, concurrentQueue, ^{
        NSLog(@"在执行第3个group");
        [NSThread sleepForTimeInterval:sleepTime];
        NSLog(@"执行完第3个group");
    });
    /**和dispatch_group_leave搭配组成一个循环锁*/
    dispatch_group_enter(dispatchGroup);
    dispatch_group_enter(dispatchGroup);
    dispatch_group_enter(dispatchGroup);
    
    dispatch_async(concurrentQueue, ^{
        NSLog(@"在执行第4个group");
        [NSThread sleepForTimeInterval:sleepTime];
        NSLog(@"执行完第4个group");
        dispatch_group_leave(dispatchGroup);
    });
    
    dispatch_async(concurrentQueue, ^{
        NSLog(@"在执行第5个group");
        [NSThread sleepForTimeInterval:sleepTime];
        NSLog(@"执行完第5个group");
        dispatch_group_leave(dispatchGroup);
    });

    dispatch_async(concurrentQueue, ^{
        NSLog(@"在执行第6个group");
        [NSThread sleepForTimeInterval:5];
        NSLog(@"执行完第6个group");
        dispatch_group_leave(dispatchGroup);
    });
    /**当前面的所有group内容全完成后发送通知*/
    dispatch_group_notify(dispatchGroup, dispatch_get_main_queue(), ^{
        NSLog(@"group全部执行完了");
    });
    NSLog(@"这个在group wait前执行的");
    /**
     只有timeout设置DISPATCH_TIME_FOREVER才有用,设置完这个后只有当前线程完成所有的group才会继续往下执行,否则会在此等待
     这个是在dispatch_group_notify之前触发的
     */
    dispatch_group_wait(dispatchGroup, DISPATCH_TIME_FOREVER);
    NSLog(@"这个在group wait后执行的");
}


- (void)testRunTask1 {
    dispatch_queue_t concurrentQueue = [TestProjectDispatchQueue generateConcurrentQueueWithSel:_cmd];
    dispatch_group_t dispatchGroup = dispatch_group_create();
    
    dispatch_group_async(dispatchGroup, concurrentQueue, ^{
        for (NSInteger i = 0; i < 5; i++) {
            [NSThread sleepForTimeInterval:2];
            NSLog(@"第1个任务中的index:%ld", i);
        }
    });
    
    dispatch_group_async(dispatchGroup, concurrentQueue, ^{
        for (NSInteger i = 0; i < 5; i++) {
            [NSThread sleepForTimeInterval:2];
            NSLog(@"第2个任务中的index:%ld", i);
        }
    });

    dispatch_group_notify(dispatchGroup, dispatch_get_main_queue(), ^{
        NSLog(@"全部完成任务了吗");
    });
}

- (void)testRunTask2 {
    dispatch_queue_t concurrentQueue = [TestProjectDispatchQueue generateConcurrentQueueWithSel:_cmd];
    dispatch_group_t dispatchGroup = dispatch_group_create();
    
    dispatch_group_async(dispatchGroup, concurrentQueue, ^{
        dispatch_sync(concurrentQueue, ^{
            for (NSInteger i = 0; i < 5; i++) {
                [NSThread sleepForTimeInterval:2];
                NSLog(@"第1个任务中的index:%ld", i);
            }
        });
        
    });
    
    dispatch_group_async(dispatchGroup, concurrentQueue, ^{
        dispatch_sync(concurrentQueue, ^{
            for (NSInteger i = 0; i < 5; i++) {
                [NSThread sleepForTimeInterval:2];
                NSLog(@"第2个任务中的index:%ld", i);
            }
        });
       
    });

    dispatch_group_notify(dispatchGroup, dispatch_get_main_queue(), ^{
        NSLog(@"全部完成任务了吗");
    });
}

- (void)testRunTask3 {
    dispatch_queue_t concurrentQueue = [TestProjectDispatchQueue generateConcurrentQueueWithSel:_cmd];
    dispatch_group_t dispatchGroup = dispatch_group_create();
    
    dispatch_group_async(dispatchGroup, concurrentQueue, ^{
        dispatch_async(concurrentQueue, ^{
            for (NSInteger i = 0; i < 5; i++) {
                [NSThread sleepForTimeInterval:2];
                NSLog(@"第1个任务中的index:%ld", i);
            }
        });
        
    });
    
    dispatch_group_async(dispatchGroup, concurrentQueue, ^{
        dispatch_async(concurrentQueue, ^{
            for (NSInteger i = 0; i < 5; i++) {
                [NSThread sleepForTimeInterval:2];
                NSLog(@"第2个任务中的index:%ld", i);
            }
        });
       
    });

    dispatch_group_notify(dispatchGroup, dispatch_get_main_queue(), ^{
        NSLog(@"全部完成任务了吗");
    });
}


@end
