//
//  TestProjectDispatchSource.m
//  TestProjectIOS
//
//  Created by liwenfan on 2022/5/16.
//

#import "TestProjectDispatchSource.h"
#import "TestProjectDispatchQueue.h"

static NSMutableArray *dispatchSourceTimerArray = nil;
static dispatch_queue_t dispatchConcurrentQueue = nil;

void dispatchSourceCancel_after(dispatch_source_t dispatchSource) {
    dispatch_barrier_async(dispatchConcurrentQueue, ^{
        intptr_t testRes = dispatch_testcancel(dispatchSource);
        NSLog(@"dispatchSourceCancel_after: res:%ld %@", testRes, dispatchSource);

        if (testRes != 1) {
            dispatch_cancel(dispatchSource);
            [dispatchSourceTimerArray removeObject:dispatchSource];
        }
    });
}

dispatch_source_t dispatchSource_after(dispatch_time_t when, dispatch_queue_t queue, dispatch_block_t block) {
    dispatch_source_t dispatchSource = dispatch_source_create(DISPATCH_SOURCE_TYPE_TIMER, 0, 0, queue);
    dispatch_source_set_timer(dispatchSource, when, 0, 0);
    dispatch_source_set_event_handler(dispatchSource, ^{
        NSLog(@"dispatchSource_after: block 前 %@", dispatchSource);
        dispatchSourceCancel_after(dispatchSource);
        if (block) {
            block();
        }
        NSLog(@"dispatchSource_after: block 后 %@", dispatchSource);
    });
    if (!dispatchSourceTimerArray) {
        dispatchSourceTimerArray = [NSMutableArray array];
        dispatchConcurrentQueue = [TestProjectDispatchQueue generateConcurrentQueueWithQueueName:@"dispatchSource_after"];
    }

    dispatch_barrier_async(dispatchConcurrentQueue, ^{
        [dispatchSourceTimerArray addObject:dispatchSource];
    });
    dispatch_resume(dispatchSource);
    return dispatchSource;
}

@interface TestProjectDispatchSource ()

@property (nonatomic, strong) dispatch_source_t dispatchSource;

@end

@implementation TestProjectDispatchSource

- (instancetype)init {
    if (self = [super init]) {
//        [self testRunDispatchSource];
//        [self testRunWriteDataToFile];
//        [self testRunReadData];
//        [self testRunUpdateFileName];
//        [self testRunSingal];
//        [self testRunExit];
//        [self testRunAdd];
        [self testRunDispatchSourceAfter];
    }
    return self;
}

- (void)testRunDispatchSourceAfter {
    self.dispatchSource = dispatchSource_after(dispatch_time(DISPATCH_TIME_NOW, 5 * NSEC_PER_SEC), dispatch_get_main_queue(), ^{
        [NSThread sleepForTimeInterval:5];
        NSLog(@"我执行完了吗？%@", [NSThread currentThread]);
    });
}

- (void)testRunAdd {
    dispatch_queue_t globalQueue = dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0);
    dispatch_source_t dispatchSource = dispatch_source_create(DISPATCH_SOURCE_TYPE_DATA_ADD, 0, 0, globalQueue);
    dispatch_source_set_event_handler(dispatchSource, ^{
        NSLog(@"dispatch_source add:%ld", dispatch_source_get_data(dispatchSource));
    });
    for (NSInteger i = 0; i < 4; i++) {
        //当没有时间间隔的时候，会直接把数据加起来一起返回，当数字为0的时候是不会执行的
        dispatch_source_merge_data(dispatchSource, i);
    }
    dispatch_resume(dispatchSource);
    [NSThread sleepForTimeInterval:5];
//    dispatch_apply(4, globalQueue, ^(size_t iteration) {
//        NSLog(@"iteration:%ld", iteration);
//        dispatch_source_merge_data(dispatchSource, iteration);
//        [NSThread sleepForTimeInterval:1];
//    });
    for (NSInteger i = 0; i < 4; i++) {
        //有时间间隔的时候，会每次把数字直接返回，当数字为0的时候是不会执行的
        dispatch_source_merge_data(dispatchSource, 7);
        [NSThread sleepForTimeInterval:1];
    }
}

- (void)testRunSingal {
    signal(SIGHUP, SIG_IGN);
    dispatch_queue_t globalQueue = dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0);
    dispatch_source_t dispatchSource = dispatch_source_create(DISPATCH_SOURCE_TYPE_SIGNAL, SIGHUP, 0, globalQueue);
    dispatch_source_set_event_handler(dispatchSource, ^{
        NSLog(@"dispatch_source_context:%s", (char *)dispatch_get_context(dispatchSource));
        dispatch_source_cancel(dispatchSource);
    });
    dispatch_resume(dispatchSource);
}

- (void)testRunExit {
    pid_t parentPid = getppid();
    dispatch_queue_t globalQueue = dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0);
    dispatch_source_t dispatchSource = dispatch_source_create(DISPATCH_SOURCE_TYPE_PROC, parentPid, DISPATCH_PROC_EXIT, globalQueue);
    dispatch_source_set_event_handler(dispatchSource, ^{
        NSLog(@"dispatch_source_context:%s", (char *)dispatch_get_context(dispatchSource));
        dispatch_source_cancel(dispatchSource);
    });
    dispatch_resume(dispatchSource);
}

- (NSString *)getHomeDirectory {
    return [NSString stringWithFormat:@"%@/Documents/myDispatchSourceData.text", NSHomeDirectory()];
}

- (void)testRunUpdateFileName {
    NSString *fileName = [self getHomeDirectory];
    int fd = open(fileName.UTF8String, O_EVTONLY);
    if (fd == -1) {
        return;
    }
    dispatch_queue_t globalQueue = dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0);
    dispatch_source_t dispatchSource = dispatch_source_create(DISPATCH_SOURCE_TYPE_VNODE, fd, DISPATCH_VNODE_RENAME, globalQueue);
    if (!dispatchSource) {
        close(fd);
        return;
    }
    uintptr_t dispatchSourceMask = dispatch_source_get_mask(dispatchSource);
    uintptr_t dispatchSourceHandle = dispatch_source_get_handle(dispatchSource);
    long length = strlen(fileName.UTF8String);
    char *newStr = malloc(length + 1);
    newStr = strcpy(newStr, fileName.UTF8String);
    NSLog(@"fileLength:%ld fd:%d handle: %ld mask: %ld", length, fd, dispatchSourceHandle, dispatchSourceMask);
    dispatch_set_context(dispatchSource, newStr);
    dispatch_source_set_event_handler(dispatchSource, ^{
        NSLog(@"dispatch_source_context:%s", (char *)dispatch_get_context(dispatchSource));
        dispatch_source_cancel(dispatchSource);
    });
    dispatch_source_set_cancel_handler(dispatchSource, ^{
        close(fd);
    });
    dispatch_resume(dispatchSource);
}

- (void)testRunReadData {
    NSString *fileName = [self getHomeDirectory];
    int fd = open(fileName.UTF8String, O_RDONLY);
    if (fd == -1) {
        return;
    }
    // 避免阻塞读数据进程
    fcntl(fd, F_SETFL, O_NONBLOCK);
    dispatch_queue_t globalQueue = dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0);
    dispatch_source_t dispatchSource = dispatch_source_create(DISPATCH_SOURCE_TYPE_READ, fd, 0, globalQueue);
    if (!dispatchSource) {
        close(fd);
        return;
    }
    dispatch_source_set_event_handler(dispatchSource, ^{
        size_t readSize = dispatch_source_get_data(dispatchSource) + 1;
        char *buffer = (char*)malloc(readSize);
        if (buffer) {
            ssize_t actual = read(fd, buffer, readSize);
            NSLog(@"read buffer: %s actualsize:%ld readSize:%ld", buffer, actual, readSize);
            free(buffer);
        }
        dispatch_source_cancel(dispatchSource);
    });
    dispatch_source_set_cancel_handler(dispatchSource, ^{
        close(fd);
    });
    dispatch_resume(dispatchSource);
}


- (void)testRunWriteDataToFile {
    NSString *fileName = [self getHomeDirectory];
    NSLog(@"fileName: %@", fileName);
    int fd = open(fileName.UTF8String, O_WRONLY | O_CREAT | O_TRUNC, (S_IRUSR | S_IWUSR | S_ISUID | S_ISGID));
    if (fd == -1) {
        return;
    }
    dispatch_queue_t globalQueue = dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0);
    dispatch_source_t dispatchSource = dispatch_source_create(DISPATCH_SOURCE_TYPE_WRITE, fd, 0, globalQueue);
    if (!dispatchSource) {
        close(fd);
        return;
    }
    dispatch_source_set_event_handler(dispatchSource, ^{
        void* buffer = "1234567890";
        write(fd, buffer, 9);
        dispatch_source_cancel(dispatchSource);
    });
    dispatch_source_set_cancel_handler(dispatchSource, ^{
        close(fd);
    });
    dispatch_resume(dispatchSource);
}

- (void)testRunDispatchSource {
    dispatch_queue_t globalQueue = dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0);
    self.dispatchSource = dispatch_source_create(DISPATCH_SOURCE_TYPE_TIMER, 0, 0, globalQueue);
    NSLog(@"开始 start");

    /**
     设置源、开始时间、间隔时间、容忍时间
     */
    dispatch_source_set_timer(self.dispatchSource, dispatch_time(DISPATCH_TIME_NOW, 5 * NSEC_PER_SEC), 2 * NSEC_PER_SEC, 0);
    //会执行多次
    dispatch_source_set_event_handler(self.dispatchSource, ^{
        NSLog(@"dispatch_source_event 执行 :%@", [NSThread currentThread]);
    });
    //只执行一次
    dispatch_source_set_registration_handler(self.dispatchSource, ^{
        NSLog(@"dispatch_source_registration 执行 %@", [NSThread currentThread]);
    });
    //取消一次
    dispatch_source_set_cancel_handler(self.dispatchSource, ^{
        NSLog(@"dispatch_source_cancel 执行 %@", [NSThread currentThread]);
    });
    dispatch_resume(self.dispatchSource);
    
    uintptr_t dispatchSourceMask = dispatch_source_get_mask(self.dispatchSource);
    uintptr_t dispatchSourceHandle = dispatch_source_get_handle(self.dispatchSource);
    NSLog(@"handle: %ld mask: %ld", dispatchSourceHandle, dispatchSourceMask);
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, 5 * NSEC_PER_SEC), dispatch_get_main_queue(), ^{
        NSLog(@"dispatch_after ");
    });
}

- (void)testRunSuspend {
//    dispatch_suspend(self.dispatchSource);
    
//    dispatch_cancel(self.dispatchSource);
//    dispatch_source_cancel(self.dispatchSource);
//    intptr_t cancelRes = dispatch_source_testcancel(self.dispatchSource);
//    NSLog(@"dispatch_source_cancel result: %ld source:%@", cancelRes, self.dispatchSource);
//    self.dispatchSource = nil;
    
//    dispatch_source_t dispatchSource = dispatchSource_after(dispatch_time(DISPATCH_TIME_NOW, 5 * NSEC_PER_SEC), dispatch_get_global_queue(0, 0), ^{
//        NSLog(@"执行了%@", dispatchSource);
//    });
//    NSLog(@"testRunSuspend dispatchSource: %@", dispatchSource);
}

- (void)testRunResume {
    //
//    dispatch_resume(self.dispatchSource);
    
//    dispatchSourceCancel_after(self.dispatchSource);
}

@end
