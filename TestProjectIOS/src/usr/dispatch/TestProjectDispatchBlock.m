//
//  TestProjectDispatchBlock.m
//  TestProjectIOS
//
//  Created by zjrcumac on 2022/4/19.
//

#import "TestProjectDispatchBlock.h"
#import "TestProjectUsrHeader.h"

@implementation TestProjectDispatchBlock

- (instancetype)init {
    if (self = [super init]) {
//        [self testCreateDispatchBlock];
//        [self testWaitDispatchBlock];
        [self testNotifyAndCancelDispatchBlock];
    }
    return self;
}

- (void)testNotifyAndCancelDispatchBlock {
    dispatch_queue_t concurrentQueue = [TestProjectQueue generateConcurrentQueueWithSel:_cmd];
    NSTimeInterval notifySleepTime = 3;
    NSTimeInterval refreshSleepTime = 5;
    
    dispatch_block_t customerBlock = ^(void) {
        NSLog(@"我是一个自定义的block");
    };
    
    dispatch_block_t notifyDispatchBlock = dispatch_block_create(0, ^{
        [NSThread sleepForTimeInterval:notifySleepTime];
        NSLog(@"notifyDispatchBlock 在%f后完成操作", notifySleepTime);
    });
    dispatch_block_t refreshDispatchBlock = dispatch_block_create(0, ^{
        [NSThread sleepForTimeInterval:refreshSleepTime];
        NSLog(@"refreshDispatchBlock 在%f后完成操作", refreshSleepTime);
    });
    dispatch_async(concurrentQueue, notifyDispatchBlock);

    NSLog(@"执行block之前");
    /**
     在notify block执行完之后发送通知执行refresh block，不会阻塞当前线程
     notify block不可以是自定义的block，refresh block可以替换成自定义的block
     */
    dispatch_block_notify(notifyDispatchBlock, concurrentQueue, refreshDispatchBlock);
    NSLog(@"执行block之后");

    NSTimeInterval waitTime = 2;
    NSInteger result = dispatch_block_wait(refreshDispatchBlock, dispatch_time(DISPATCH_TIME_NOW, NSEC_PER_SEC * waitTime));
    if (result == 0) {
        NSLog(@"refreshDispatchBlock 在规定的%f间内完成操作", waitTime);
    } else {
        NSLog(@"refreshDispatchBlock 没有在规定的%f间内完成操作, waitResult: %ld", waitTime, result);
        /**
         如果当前的block没有执行可以取消block，当前的block已经在执行中则取消不了，如下列的otherDispatchBlock
         block不可以是自定义的block
         */
        dispatch_block_cancel(refreshDispatchBlock);
        /**
         检测当前的block有没有被取消，若没有执行dispatch_block_cancel，返回的值都是未取消状态，若执行则返回的值都是取消的状态
         block不可以是自定义的block
         */
        NSInteger testCancelResult = dispatch_block_testcancel(refreshDispatchBlock);
        if (testCancelResult == 1) {
            NSLog(@"refreshDispatchBlock 已经被取消了 testCancelResult %ld", testCancelResult);
        } else {
            NSLog(@"refreshDispatchBlock 没有取消，依然可以执行 testCancelResult %ld", testCancelResult);
        }
    }
    
    dispatch_block_t otherDispatchBlock = dispatch_block_create(0, ^{
        [NSThread sleepForTimeInterval:2];
        NSLog(@"我是一个otherDispatchBlock");
    });
    /**
     可以执行
     */
    otherDispatchBlock();
    /**
     执行不了
     */
    dispatch_async(concurrentQueue, otherDispatchBlock);
    dispatch_block_cancel(otherDispatchBlock);
    /**
     执行不了
     */
    otherDispatchBlock();

    NSInteger testCancelResult = dispatch_block_testcancel(otherDispatchBlock);
    if (testCancelResult == 1) {
        NSLog(@"otherDispatchBlock 已经被取消了 testCancelResult %ld", testCancelResult);
    } else {
        NSLog(@"otherDispatchBlock 没有取消，依然可以执行 testCancelResult %ld", testCancelResult);
    }

    /**
     同步调用一个block，暂时不清楚flag的用法
     */
    dispatch_block_perform(DISPATCH_BLOCK_BARRIER, customerBlock);
    dispatch_block_perform(DISPATCH_BLOCK_DETACHED, customerBlock);
    dispatch_block_perform(DISPATCH_BLOCK_ASSIGN_CURRENT, customerBlock);
    dispatch_block_perform(DISPATCH_BLOCK_NO_QOS_CLASS, customerBlock);
    dispatch_block_perform(DISPATCH_BLOCK_INHERIT_QOS_CLASS, customerBlock);
    dispatch_block_perform(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, customerBlock);
}

- (void)testWaitDispatchBlock {
    dispatch_queue_t concurrentQueue = [TestProjectQueue generateConcurrentQueueWithSel:_cmd];
    dispatch_async(concurrentQueue, ^{
        NSTimeInterval time = 5;
        NSTimeInterval sleepTime = 8;
        dispatch_block_t dispatchBlock = dispatch_block_create(0, ^{
            [NSThread sleepForTimeInterval:sleepTime];
            NSLog(@"dispatchBlock 在%f后完成操作", sleepTime);
        });
        NSLog(@"我这个是在dispatchBlock之前操作的");
        dispatch_queue_t testTaskQueue = [TestProjectQueue generateConcurrentQueueWithQueueName:@"testTask"];
        dispatch_async(testTaskQueue, dispatchBlock);
        NSLog(@"我这个是在dispatchBlock之后操作的");
                
        /**
         监听block结束，会阻塞当前线程
         dispatch_block_t customerBlock = ^(void) {
             NSLog(@"我是自定义的block");
         };
         只能监听dispatch_block_create、dispatch_block_create_with_qos_class创建的block，不能监听customerBlock，原因大概是前面创建的block有锁机制
         */
        NSInteger result = dispatch_block_wait(dispatchBlock, dispatch_time(DISPATCH_TIME_NOW, NSEC_PER_SEC * 5));
        NSLog(@"我这个是在dispatchBlock wait之后操作的");

        if (result == 0) {
            NSLog(@"dispatchBlock 在规定的%f间内完成操作", time);
        } else {
            NSLog(@"dispatchBlock 没有在规定的%f间内完成操作, waitResult: %ld", time, result);
        }
    });
}

- (void)testCreateDispatchBlock {
    NSTimeInterval time = 5;
    dispatch_block_t dispatchBlock = dispatch_block_create(0, ^{
        [NSThread sleepForTimeInterval:time];
        NSLog(@"我是个dispatchBlock");
    });
    /**
     QOS_CLASS_USER_INTERACTIVE: user interactive 等级表示任务需要被立即执行，用来在响应事件之后更新 UI，来提供好的用户体验。这个等级最好保持小规模
     QOS_CLASS_USER_INITIATED: user initiated 等级表示任务由 UI 发起异步执行。适用场景是需要及时结果同时又可以继续交互的时候
     QOS_CLASS_DEFAULT: default 默认优先级
     QOS_CLASS_UTILITY: utility 等级表示需要长时间运行的任务，伴有用户可见进度指示器。经常会用来做计算，I/O，网络，持续的数据填充等任务。这个任务节能
     QOS_CLASS_BACKGROUND: background 等级表示用户不会察觉的任务，使用它来处理预加载，或者不需要用户交互和对时间不敏感的任务
     QOS_CLASS_UNSPECIFIED: unspecified 未指明
     */
    
    dispatch_block_t qosUserInteractiveDispatchBlock = dispatch_block_create_with_qos_class(0, QOS_CLASS_USER_INTERACTIVE, 0, ^{
        [NSThread sleepForTimeInterval:time];
        NSLog(@"我是个qosUserInteractiveDispatchBlock");
    });
    
    dispatch_block_t qosUserInitiatedDispatchBlock = dispatch_block_create_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0, ^{
        [NSThread sleepForTimeInterval:time];
        NSLog(@"我是个qosUserInitiatedDispatchBlock");
    });
    
    dispatch_block_t qosDefaultDispatchBlock = dispatch_block_create_with_qos_class(0, QOS_CLASS_DEFAULT, 0, ^{
        [NSThread sleepForTimeInterval:time];
        NSLog(@"我是个qosDefaultDispatchBlock");
    });
    
    dispatch_block_t qosUtilityDispatchBlock = dispatch_block_create_with_qos_class(0, QOS_CLASS_UTILITY, 0, ^{
        [NSThread sleepForTimeInterval:time];
        NSLog(@"我是个qosUtilityDispatchBlock");
    });
    
    dispatch_block_t qosBackgroundDispatchBlock = dispatch_block_create_with_qos_class(0, QOS_CLASS_BACKGROUND, 0, ^{
        [NSThread sleepForTimeInterval:time];
        NSLog(@"我是个qosBackgroundDispatchBlock");
    });
    
    dispatch_block_t qosUnspecifiedDispatchBlock = dispatch_block_create_with_qos_class(0, QOS_CLASS_UNSPECIFIED, 0, ^{
        [NSThread sleepForTimeInterval:time];
        NSLog(@"我是个qosUnspecifiedDispatchBlock");
    });
    dispatch_queue_t concurrentQueue = [TestProjectQueue generateConcurrentQueueWithSel:_cmd];
    dispatch_async(concurrentQueue, qosUserInteractiveDispatchBlock);
    dispatch_async(concurrentQueue, qosUserInitiatedDispatchBlock);
    dispatch_async(concurrentQueue, qosUnspecifiedDispatchBlock);
    dispatch_async(concurrentQueue, qosDefaultDispatchBlock);
    dispatch_async(concurrentQueue, qosUtilityDispatchBlock);
    dispatch_async(concurrentQueue, qosBackgroundDispatchBlock);

    dispatch_async(concurrentQueue, dispatchBlock);

//    dispatchBlock();
//    qosUnspecifiedDispatchBlock();
//    qosBackgroundDispatchBlock();
//    qosUtilityDispatchBlock();
//    qosDefaultDispatchBlock();
//    qosUserInitiatedDispatchBlock();
//    qosUserInteractiveDispatchBlock();
}

@end
