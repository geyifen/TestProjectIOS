//
//  TestProjectDispatchQueue.m
//  TestProjectIOS
//
//  Created by zjrcumac on 2022/4/19.
//

#import "TestProjectDispatchQueue.h"
#import "TestProjectIgnoreWarningDefmacro.h"

@implementation TestProjectDispatchQueue

static void *concurrentKey = &concurrentKey;

- (instancetype)init {
    if (self = [super init]) {
//        [self testSerialQueue];
//        [self testConcurrentQueue];
//        [self testGlobalQueue];
//        [self testDispatchApply];
//        [self testSetTargetQueue];
//        [self testTargetSerialApplication];
//        [self testTargetConcurrentApplication];
//        [self testDispatchAfter];
        [self testDispatchBarrier];
    }
    return self;
}

- (void)testDispatchBarrier {
    dispatch_queue_attr_t attr = dispatch_queue_attr_make_with_qos_class(DISPATCH_QUEUE_CONCURRENT, QOS_CLASS_DEFAULT, 0);
    dispatch_queue_t queue =
    dispatch_queue_create("attr", attr);
//    [TestProjectDispatchQueue generateGlobalQueue];
    //[TestProjectDispatchQueue generateConcurrentQueueWithSel:_cmd];
    NSTimeInterval sleepTime = 3;
    NSLog(@"start----");
    dispatch_async(queue, ^{
        [NSThread sleepForTimeInterval:sleepTime];
        NSLog(@"async 1:%@", [NSThread currentThread]);
    });
    
    dispatch_async(queue, ^{
        [NSThread sleepForTimeInterval:sleepTime];
        NSLog(@"async 2:%@", [NSThread currentThread]);
    });
    
    NSLog(@"barrier_sync 之前");
    dispatch_barrier_async_and_wait(queue, ^{
        NSLog(@"barrier queue即将执行的回调");
    });

    /**
     只有自定义的queue才能拦住线程，使用globalQueue相当于一个异步队列
     在此之前的队列先完成，在此之后的队列后在block结束后执行
     end在此之前打印
     */
//    dispatch_barrier_async(queue, ^{
//        [NSThread sleepForTimeInterval:sleepTime];
//        NSLog(@"barrier_sync1 执行 %@", [NSThread currentThread]);
//    });
    /**
     拦住当前线程
     end在此之后打印
     */
    dispatch_barrier_async(queue, ^{
        [NSThread sleepForTimeInterval:sleepTime];
        NSLog(@"barrier_sync2 执行 %@", [NSThread currentThread]);
        
        dispatch_async(queue, ^{
            NSLog(@"我在嵌套的barrier_sync2 -1执行");
        });
        NSLog(@"barrier_sync2 嵌套之后的");
        
        //验证此当前的queue是否在barrier queue中
        dispatch_assert_queue_barrier(queue);
    });
    NSLog(@"barrier_sync 之后");
    dispatch_async(queue, ^{
        [NSThread sleepForTimeInterval:sleepTime];
        NSLog(@"async 3:%@", [NSThread currentThread]);
    });
    
    dispatch_async(queue, ^{
        [NSThread sleepForTimeInterval:sleepTime];
        NSLog(@"async 4:%@", [NSThread currentThread]);
    });
    NSLog(@"end----");
}

- (void)testDispatchAfter {
    dispatch_queue_t queue = [TestProjectDispatchQueue generateConcurrentQueueWithSel:_cmd];
    NSLog(@"after queue 之前");
    /**
     DISPATCH_TIMER_STRICT会立刻执行block代码，不会等3秒
     DISPATCH_TIME_FOREVER不会执行block里代码
     
     */
    dispatch_async(queue, ^{
        dispatch_after(dispatch_time(DISPATCH_TIME_NOW, 3 * NSEC_PER_SEC), queue, ^{
            NSLog(@"after queue 执行");
            [self dispatchAfterEvent];
        });
    });
}

- (void)dispatchAfterEvent {
    NSLog(@"dispatchAfterEvent");
}

- (void)testDispatchApply {
        NSInteger threadCount = 50;
    dispatch_queue_t queue = [TestProjectDispatchQueue generateConcurrentQueueWithSel:_cmd];
//    dispatch_queue_t queue = [TestProjectDispatchQueue generateSerialQueueWithSel:_cmd];
    dispatch_async(queue, ^{
        /**
         串行的时候造成死锁
         并行的时候不会开启线程并且是串行输出
         */

        dispatch_apply(threadCount, queue, ^(size_t size) {
            [NSThread sleepForTimeInterval:1];
            NSLog(@"index:%ld dispatch_apply %@", size, [NSThread currentThread]);
        });
    });
    /**
     在外面套同一个queue执行
     会阻塞主线程
     串行的时候不会开启线程
     并行的时候会开启线程
     */
    NSLog(@"前 dispatch_apply");

//    dispatch_apply(threadCount, queue, ^(size_t size) {
//        [NSThread sleepForTimeInterval:1];
//        NSLog(@"index:%ld dispatch_apply %@", size, [NSThread currentThread]);
//    });
//    for (NSInteger i = 0; i < 200; i++) {
//        dispatch_async(queue, ^{
//            [NSThread sleepForTimeInterval:1];
//            NSLog(@"index:%ld async %@", i, [NSThread currentThread]);
//        });
//    }
    NSLog(@"后 dispatch_apply");
}

- (void)testForWithQueue:(dispatch_queue_t)queue type:(NSString *)type {
    NSTimeInterval sleepTimer = 1;
//    for (NSInteger i = 0; i < 5; i++) {
//        dispatch_sync(queue, ^{
//            [NSThread sleepForTimeInterval:sleepTimer];
//            NSLog(@"index:%ld sync %@ %@", i, type, [NSThread currentThread]);
//        });
//    }
    for (NSInteger i = 0; i < 5; i++) {
        dispatch_async(queue, ^{
            [NSThread sleepForTimeInterval:sleepTimer];
            NSLog(@"index:%ld async %@ %@ label:%s specific:%@ ", i, type, [NSThread currentThread], dispatch_queue_get_label(queue), dispatch_get_specific(concurrentKey));
            if (dispatch_get_specific(concurrentKey) == concurrentKey) {
                NSLog(@"是同一个队列");
            }
            int priority = -10;
            dispatch_qos_class_t qos = dispatch_queue_get_qos_class(queue, &priority);
            NSLog(@"qos_class 优先级: %u; priority: %d", qos, priority);
        });
    }
}

- (void)testSetTargetQueue {
    dispatch_queue_t serialQueue = [TestProjectDispatchQueue generateSerialQueueWithSel:_cmd];
    dispatch_queue_t concurrentQueue = [TestProjectDispatchQueue generateConcurrentQueueWithSel:_cmd];
    dispatch_queue_t globalHigeQueue = dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_HIGH, 0);
    dispatch_queue_t globalLowQueue = dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_LOW, 0);

    dispatch_queue_t mainQueue = dispatch_get_main_queue();
    dispatch_queue_attr_t attrSerial = dispatch_queue_attr_make_with_qos_class(DISPATCH_QUEUE_SERIAL, QOS_CLASS_UTILITY, 0);
    dispatch_queue_t attrSerialQueue = dispatch_queue_create("attr_serial_", attrSerial);
    dispatch_queue_attr_t attrConcurrent = dispatch_queue_attr_make_with_qos_class(DISPATCH_QUEUE_CONCURRENT, QOS_CLASS_BACKGROUND, 0);
    dispatch_queue_t attrConcurrentQueue = dispatch_queue_create("attr_concurrent_", attrConcurrent);
    NSArray *queueArray = @[serialQueue, concurrentQueue, globalHigeQueue, mainQueue, attrSerialQueue, attrConcurrentQueue];
//    for (NSInteger k = 0; k < queueArray.count; k++) {
//        dispatch_queue_t queue = queueArray[k];
//        for (NSInteger i = 0; i < queueArray.count; i++) {
//            dispatch_queue_t tQueue = queueArray[i];
//            dispatch_set_target_queue(queue, tQueue);
//            int priority = -10;
//            dispatch_qos_class_t qos = dispatch_queue_get_qos_class(queue, &priority);
//            NSLog(@"index:%ld label:%s qos_class 优先级: %u; priority: %d",k, dispatch_queue_get_label(queue), qos, priority);
//        }
//    }
    dispatch_queue_t queue = globalHigeQueue;
    /**
     将队列向目标队列靠齐
     优先级：只有serialQueue、concurrentQueue向globalQueue对齐，其它的都不行
     线程：只有globalQueue向mainQueue靠齐时，线程不再主线程，其它的都在主线程
     concurrentQueuek、attrConcurrentQueue靠齐serialQueue、attrSerialQueue会变成串行队列
     serialQueue、concurrentQueue、concurrentQueue、attrConcurrentQueue各自靠齐自己时，会导致线程走不下去
     */
    dispatch_set_target_queue(queue, globalLowQueue);
    dispatch_async(queue, ^{
        int priority = -10;
        dispatch_qos_class_t qos = dispatch_queue_get_qos_class(queue, &priority);
        NSLog(@"label:%s qos_class 优先级: %u; priority: %d threed:%@", dispatch_queue_get_label(queue), qos, priority, [NSThread currentThread]);
    });
//    [self testForWithQueue:queue type:@"target_queue"];
}

- (void)testTargetSerialApplication {
    dispatch_queue_t serialQueue1 = [TestProjectDispatchQueue generateSerialQueueWithQueueName:@"serial_1"];
    dispatch_queue_t serialQueue2 = [TestProjectDispatchQueue generateSerialQueueWithQueueName:@"serial_2"];
    dispatch_queue_t serialQueue3 = [TestProjectDispatchQueue generateSerialQueueWithQueueName:@"serial_3"];
    /**
     serialQueue1、serialQueue3向serialQueue2靠齐
     执行队列是按照代码队列输入顺序，如果一个队列中的线程没有执行完又有当前队列的线程加入，会把两处的线程合起来
     如：代码插入的是a1--a2--b1--b2--a3--b3--c1--c2，执行顺序是a1--a2--a3--b1--b2--b3--c1
     */
    dispatch_set_target_queue(serialQueue1, serialQueue2);
    dispatch_set_target_queue(serialQueue3, serialQueue2);
    
    dispatch_async(serialQueue3, ^{
        for (NSInteger j = 0; j < 10; j++) {
            NSLog(@"m:%ld label:%s thread:%@", j, dispatch_queue_get_label(serialQueue1), [NSThread currentThread]);
        }
    });


    dispatch_async(serialQueue1, ^{
        for (NSInteger j = 0; j < 10; j++) {
            NSLog(@"h:%ld label:%s thread:%@", j, dispatch_queue_get_label(serialQueue1), [NSThread currentThread]);
        }
    });

    dispatch_async(serialQueue1, ^{
        for (NSInteger i = 0; i < 10; i++) {
            if (i == 0) {
                NSThread *t = [NSThread currentThread];
                t.name = @"t_serial_1";
            }
            NSLog(@"i:%ld label:%s thread:%@", i, dispatch_queue_get_label(serialQueue1), [NSThread currentThread]);
            if (i == 5) {
                /**
                 对于是serialQueue1
                 serialQueue1在执行完此block后，其它serialQueue1的任务不会执行了；对于不是serialQueue1的任务可以继续执行
                 */
                /**
                 对于是serialQueue2
                 和dispatch_set_target_queue配合起来
                 A、在serialQueue1之前有serialQueue2的任务执行，如果后面没有同步的serialQueue1的任务执行，则会在当前block执行完崩溃，有的话，到后面的同步的serialQueue1任务会被锁住都不会执行了
                 B、在serialQueue1之前没有serialQueue2的任务执行，会执行完serialQueue1的任务，其它队列的任务不会执行
                 */
                /**
                 对于是serialQueue3
                 serialQueue1在执行完此block后，会崩溃
                 */
                dispatch_suspend(serialQueue2);
            }
        }
    });
    
    dispatch_async(serialQueue1, ^{
        for (NSInteger j = 0; j < 10; j++) {
            NSLog(@"j:%ld label:%s thread:%@", j, dispatch_queue_get_label(serialQueue1), [NSThread currentThread]);
        }
    });
    
    


    dispatch_async(serialQueue3, ^{
        for (NSInteger j = 0; j < 10; j++) {
            NSLog(@"l:%ld label:%s thread:%@", j, dispatch_queue_get_label(serialQueue1), [NSThread currentThread]);
        }
    });
    dispatch_async(serialQueue2, ^{
        for (NSInteger k = 0; k < 10; k++) {
            NSLog(@"k:%ld label:%s thread:%@", k, dispatch_queue_get_label(serialQueue2), [NSThread currentThread]);
        }
    });

    NSLog(@"test");

    dispatch_async(serialQueue1, ^{
        for (NSInteger j = 0; j < 10; j++) {
            NSLog(@"o:%ld label:%s thread:%@", j, dispatch_queue_get_label(serialQueue1), [NSThread currentThread]);
        }
    });

}

- (void)testTargetConcurrentApplication {
    dispatch_queue_t concurrentQueue1 = [TestProjectDispatchQueue generateConcurrentQueueWithQueueName:@"concurrent_1"];
    dispatch_queue_t serialQueue2 = [TestProjectDispatchQueue generateSerialQueueWithQueueName:@"serial_2"];
    dispatch_queue_t concurrentQueue3 = [TestProjectDispatchQueue generateConcurrentQueueWithQueueName:@"concurrent_3"];
    /**
     concurrentQueue1、concurrentQueue3向serialQueue2靠齐
     执行队列是按照代码队列输入顺序输出
     如：代码插入的是a1--a2--b1--b2--a3--b3--c1--c2，执行顺序是a1--a2--b1--b2--a3--b3--c1--c2
     */
    dispatch_set_target_queue(concurrentQueue1, serialQueue2);
    dispatch_set_target_queue(concurrentQueue3, serialQueue2);

    dispatch_async(concurrentQueue1, ^{
        for (NSInteger j = 0; j < 10; j++) {
            NSLog(@"h:%ld label:%s thread:%@", j, dispatch_queue_get_label(concurrentQueue1), [NSThread currentThread]);
        }
    });

    dispatch_async(concurrentQueue3, ^{
        for (NSInteger j = 0; j < 10; j++) {
            NSLog(@"l:%ld label:%s thread:%@", j, dispatch_queue_get_label(concurrentQueue1), [NSThread currentThread]);
        }
    });

    
    dispatch_async(concurrentQueue1, ^{
        for (NSInteger i = 0; i < 10; i++) {
            if (i == 0) {
                NSThread *t = [NSThread currentThread];
                t.name = @"t_serial_1";
            }
            NSLog(@"i:%ld label:%s thread:%@", i, dispatch_queue_get_label(concurrentQueue1), [NSThread currentThread]);
            if (i == 5) {
                /**
             
                 只能是对于serialQueue2的suspend，对concurrentQueue1、concurrentQueue3设置会崩溃
                 和dispatch_set_target_queue配合起来
                 A、在concurrentQueue1之前有serialQueue2的任务执行，会在当前block执行完崩溃
                 B、在concurrentQueue1之前没有serialQueue2的任务执行，会执行完当前block后，不在执行后面的队列中的任务了
                 */
                dispatch_suspend(serialQueue2);
            }
        }
    });
    
    dispatch_async(concurrentQueue1, ^{
        for (NSInteger j = 0; j < 10; j++) {
            NSLog(@"j:%ld label:%s thread:%@", j, dispatch_queue_get_label(concurrentQueue1), [NSThread currentThread]);
        }
    });
    
    dispatch_async(concurrentQueue1, ^{
        for (NSInteger j = 0; j < 10; j++) {
            NSLog(@"o:%ld label:%s thread:%@", j, dispatch_queue_get_label(concurrentQueue1), [NSThread currentThread]);
        }
    });


    dispatch_async(concurrentQueue3, ^{
        for (NSInteger j = 0; j < 10; j++) {
            NSLog(@"m:%ld label:%s thread:%@", j, dispatch_queue_get_label(concurrentQueue1), [NSThread currentThread]);
        }
    });

    dispatch_async(serialQueue2, ^{
        for (NSInteger k = 0; k < 10; k++) {
            NSLog(@"k:%ld label:%s thread:%@", k, dispatch_queue_get_label(serialQueue2), [NSThread currentThread]);
        }
    });

}

- (void)testSerialQueue {
    dispatch_queue_t serialQueue = [TestProjectDispatchQueue generateSerialQueueWithSel:_cmd];
    //在外面套同一个queue 会导致同步死锁
//    dispatch_async(serialQueue, ^{
//        [self testForWithQueue:serialQueue type:@"serial"];
//    });
    
//    dispatch_async([TestProjectDispatchQueue generateSerialQueueWithQueueName:@"test"], ^{
//        [self testForWithQueue:serialQueue type:@"serial"];
//    });
    
    [self testForWithQueue:serialQueue type:@"serial"];
}

- (void)testConcurrentQueue {
    dispatch_queue_t concurrentQueue = [TestProjectDispatchQueue generateConcurrentQueueWithSel:_cmd];
    //给队列设置一个标识
    dispatch_queue_set_specific(concurrentQueue, concurrentKey, concurrentKey, NULL);
    /**
     初始化的时候给queue一个优先级
     QOS_CLASS_USER_INTERACTIVE: 优先级->33
     QOS_CLASS_USER_INITIATED: 优先级->25
     QOS_CLASS_DEFAULT: 优先级->21
     QOS_CLASS_UTILITY: 优先级->17
     QOS_CLASS_BACKGROUND: 优先级->9
     QOS_CLASS_UNSPECIFIED: 优先级->0
     */
    dispatch_queue_attr_t attr = dispatch_queue_attr_make_with_qos_class(DISPATCH_QUEUE_CONCURRENT, QOS_CLASS_UTILITY, 0);
    concurrentQueue= dispatch_queue_create("test", attr);
    dispatch_async(concurrentQueue, ^{
        [self testForWithQueue:concurrentQueue type:@"concurrent"];
    });
}

- (void)testGlobalQueue {
    dispatch_queue_t gloablQueue = [TestProjectDispatchQueue generateGlobalQueue];
    [self testForWithQueue:gloablQueue type:@"gloabl"];
}

+ (dispatch_queue_t)generateConcurrentQueueWithSel:(SEL)sel {
//    优先级-> 0
    NSString *label = [NSString stringWithFormat:@"concurrent_%@", NSStringFromSelector(sel)];
    return dispatch_queue_create(label.UTF8String, DISPATCH_QUEUE_CONCURRENT);
}

+ (dispatch_queue_t)generateConcurrentQueueWithQueueName:(NSString *)queueName {
//    优先级-> 0
    NSString *label = [NSString stringWithFormat:@"concurrent_%@", queueName];
    return dispatch_queue_create(label.UTF8String, DISPATCH_QUEUE_CONCURRENT);
}

+ (dispatch_queue_t)generateSerialQueueWithSel:(SEL)sel {
//    优先级-> 0
    NSString *label = [NSString stringWithFormat:@"serial_%@", NSStringFromSelector(sel)];
    return dispatch_queue_create(label.UTF8String, DISPATCH_QUEUE_SERIAL);
}

+ (dispatch_queue_t)generateSerialQueueWithQueueName:(NSString *)queueName {
//    优先级-> 0
    NSString *label = [NSString stringWithFormat:@"serial_%@", queueName];
    return dispatch_queue_create(label.UTF8String, DISPATCH_QUEUE_SERIAL);
}

+ (dispatch_queue_t)generateGlobalQueue {
    /**
     DISPATCH_QUEUE_PRIORITY_HIGH: 优先级-> 25
     DISPATCH_QUEUE_PRIORITY_LOW: 优先级-> 17
     DISPATCH_QUEUE_PRIORITY_DEFAULT: 优先级-> 0
     DISPATCH_QUEUE_PRIORITY_BACKGROUND: 优先级-> 9
     */
    return dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0);
}

+ (dispatch_queue_t)generateMainQueue {
//    优先级-> 33
    return dispatch_get_main_queue();
}

@end
