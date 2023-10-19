//
//  TestProjectPThread.m
//  TestProjectIOS
//
//  Created by liwenfan on 2023/1/9.
//

#import "TestProjectPThread.h"
#import <stdio.h>
#import <time.h>
#import <unistd.h>
#import <pthread.h>
#import "TestProjectUsrHeader.h"

//设置全局变量
pthread_key_t pkey;

@interface TestProjectPThread ()

@property (nonatomic, assign) NSInteger pickerCount;

@property (nonatomic, strong) dispatch_queue_t conQueue;

@end

@implementation TestProjectPThread

pthread_mutex_t mutex = PTHREAD_MUTEX_INITIALIZER;
pthread_rwlock_t rwlock = PTHREAD_RWLOCK_INITIALIZER;
pthread_cond_t cond = PTHREAD_COND_INITIALIZER;


- (instancetype)init {
    if (self = [super init]) {
        self.pickerCount = 9;
//        [self testRun_pthread_atfork];
//        [self testRun_createThread];
//        [self testRun_attr];
//        [self testRun_thread_property];
//        [self testRun_lock];
        [self testRun_condLock];
    }
    return self;
}

- (void)cond_producer {
    NSLog(@"来生产了");
    pthread_mutex_lock(&mutex);
    if (self.pickerCount <= 0) {
        sleep(2);
        self.pickerCount = 30;
        NSLog(@"去消费吧");
        pthread_cond_signal(&cond);
    } else {
        NSLog(@"来生产等待了");
        pthread_cond_wait(&cond, &mutex);
        NSLog(@"生产等待结束了");
    }
    pthread_mutex_unlock(&mutex);
    [self cond_producer];
}

- (void)cond_consumer:(int)index {
    NSLog(@"来消费了:%d", index);
    pthread_mutex_lock(&mutex);
    if (self.pickerCount <= 0) {
        NSLog(@"当前的pickerCount：%ld 第%d个消费者", self.pickerCount, index);
        NSLog(@"去生产吧:%d", index);
        pthread_cond_signal(&cond);
        NSLog(@"等待消费:%d", index);
        sleep(2);
        pthread_cond_wait(&cond, &mutex);
        NSLog(@"消费等待结束了:%d", index);
    } else {
        NSLog(@"当前的pickerCount：%ld 第%d个消费者", self.pickerCount, index);
        sleep(index);
        self.pickerCount -= 3;
    }
    pthread_mutex_unlock(&mutex);
    [self cond_consumer:index];
}

- (void)cond_consumer1 {
    [self cond_consumer:1];
}

- (void)cond_consumer2 {
    [self cond_consumer:2];
}

- (void)cond_consumer3 {
    [self cond_consumer:3];
}

- (void)testRun_condLock {
    self.conQueue = [TestProjectDispatchQueue generateConcurrentQueueWithQueueName:@"pth_ConcurrentQueue"];
    dispatch_async(self.conQueue, ^{
        [self cond_consumer1];
    });
    dispatch_async(self.conQueue, ^{
        [self cond_consumer2];
    });
    dispatch_async(self.conQueue, ^{
        [self cond_consumer3];
    });
    dispatch_async(self.conQueue, ^{
        [self cond_producer];
    });
}

- (void)line1 {
    NSInteger res = 0;
    do {
        NSLog(@"line1");
        res = [self operationLine:1];
    } while (res > 0);
}

- (void)line2 {
    NSInteger res = 0;
    do {
        NSLog(@"line2");
        res = [self operationLine:2];
    } while (res > 0);
}

- (void)line3 {
    NSInteger res = 0;
    do {
        NSLog(@"line3");
        res = [self operationLine:3];
    } while (res > 0);
}

- (NSInteger)operationLine:(NSInteger)line {
    pthread_mutex_lock(&mutex);
//    pthread_rwlock_wrlock(&rwlock);
    NSLog(@"当前的pickerCount:%ld line:%ld", self.pickerCount, line);
    if (self.pickerCount <= 0) {
        return 0;
    }
    sleep(line);
//    pthread_mutex_trylock(&mutex);

//    pthread_rwlock_wrlock(&rwlock);
    self.pickerCount--;
//    pthread_mutex_unlock(&mutex);
    pthread_mutex_unlock(&mutex);
//    pthread_rwlock_unlock(&rwlock);

//    pthread_rwlock_unlock(&rwlock);
    return 1;
}

- (void)testRun_lock {
    NSLog(@"pthread_mutex_lock不能嵌套加锁");
    dispatch_queue_t conQueue = [TestProjectDispatchQueue generateConcurrentQueueWithQueueName:@"pth_ConcurrentQueue"];
    dispatch_async(conQueue, ^{
        [self line1];
    });
    dispatch_async(conQueue, ^{
        [self line2];
    });
    dispatch_async(conQueue, ^{
        [self line3];
    });
    
}



void *thread_property(void *arg) {
    int k = arg;
    NSLog(@"threadNo---start:%d", k);
    sleep(1);
    for (NSInteger i = 0; i < 10; i++) {
        for (NSInteger j = 0; j < 100000; j++){}
        NSLog(@"threadNo---loading:%d", k);
    }
    pthread_t pth = pthread_self();
    int polic;
    struct sched_param param;
    
    pthread_getschedparam(pth, &polic, &param);
    NSLog(@"pthread_getschedparam:%d polic:%d param:%d", k, polic, param.sched_priority);

    int get_addr_res = pthread_get_stackaddr_np(pth);
    NSLog(@"pthread_get_stackaddr_np:%d", get_addr_res);

    int get_size_res = pthread_get_stacksize_np(pth);
    NSLog(@"pthread_get_stacksize_np:%d", get_size_res);
    
    char c;
    size_t size = 0;
    pthread_getname_np(pth, &c, size);
    NSLog(@"pthread_getname_np:%d c:%c size:%zu", k, c, size);

    NSLog(@"threadNo---end:%d", k);
    return NULL;
}

- (void)testRun_thread_property {
    NSInteger thCount = 30;
    pthread_t pt[thCount];
    pthread_attr_t pattr[thCount];
    struct sched_param param;
    for (NSInteger i = 0; i < thCount; i++) {
        int attr_res = pthread_attr_init(&pattr[i]);
        NSInteger leave = i % 3;
        if (leave == 0) {
            param.sched_priority = 30;
            pthread_attr_setschedpolicy(&pattr[i], SCHED_FIFO);
            pthread_attr_setschedparam(&pattr[i], &param);
            pthread_attr_setinheritsched(&pattr[i], PTHREAD_EXPLICIT_SCHED);
        } else if (leave == 1) {
            param.sched_priority = 20;
            pthread_attr_setschedpolicy(&pattr[i], SCHED_FIFO);
            pthread_attr_setschedparam(&pattr[i], &param);
            pthread_attr_setinheritsched(&pattr[i], PTHREAD_EXPLICIT_SCHED);
        } else if (leave == 2) {
            param.sched_priority = 10;
            pthread_setname_np("10");
            pthread_attr_setschedpolicy(&pattr[i], SCHED_FIFO);
            pthread_attr_setschedparam(&pattr[i], &param);
            pthread_attr_setinheritsched(&pattr[i], PTHREAD_EXPLICIT_SCHED);
        }
    }
    for (NSInteger i = 0; i < thCount; i++) {
        pthread_attr_t attr = pattr[i];
//        pthread_attr_init(&attr);
        pthread_create(&pt[i], &attr, thread_property, (void *)i);
    }
    for (NSInteger i = 0; i < thCount; i++) {
        pthread_join(pt[i], NULL);
    }
    for (NSInteger i = 0; i < thCount; i++) {
        pthread_attr_destroy(&pattr[i]);
    }
}

//- (void)testRun_lock {
//
//}

- (void)testRun_attr {
    pthread_key_create(&pkey, NULL);
    NSLog(@"pthread_key_create()设置全局属性key");
    pthread_attr_t attr;
    int attr_init_res = pthread_attr_init(&attr);
    NSLog(@"pthread_attr_init:%u", attr_init_res);
    NSLog(@"pthread_attr_init()初始化线程属性");
    int attr_setdetach_res = pthread_attr_setdetachstate(&attr, PTHREAD_CREATE_JOINABLE);
    NSLog(@"pthread_attr_setdetachstate:%u", attr_init_res);
    NSLog(@"pthread_attr_setdetachstate()设置线程分离属性");
    size_t setstacksize = 1024 * 16;
    int setstacksize_res = pthread_attr_setstacksize(&attr, setstacksize);
    NSLog(@"pthread_attr_setstacksize()设置线程的隔离空间大小:%d", setstacksize_res);
    NSLog(@"pthread_attr_setstacksize()设置的值是8的倍数才生效");
    pthread_t pid;
    int arg = 0;
    pthread_create(&pid, &attr, threadRoute, &arg);
    pthread_join(pid, NULL);
    size_t stacksize = 0;
    pthread_attr_getstacksize(&attr, &stacksize);
    NSLog(@"pthread_attr_getstacksize():%zu", stacksize);
    
    pthread_t tid;
    pthread_create(&tid, NULL, pthread_func1, NULL);
    NSLog(@"pthread_setspecific()和pthread_getspecific()必须在同一个线程里才能使用");
}

void *threadRoute(void *arg) {
    NSLog(@"创建线程的入口");
    NSArray *arr = @[@"123", @"456", @"456", @"456", @"456", @"456", @"456", @"456", @"456", @"456", @"456", @"456"];
    *(int *)arg = 20;
//    sleep(2);
    NSLog(@"创建线程的入口之后");
    TestProjectMeModel *meM = [[TestProjectMeModel alloc] init];
    [meM setMeModelInfo];

    int setspecific_res = pthread_setspecific(pkey, (__bridge const void * _Nullable)(meM));
    TestProjectMeModel *get_meM = (__bridge TestProjectMeModel *)pthread_getspecific(pkey);
    NSLog(@"pthread_setspecific:%u 设置了一个model:%@", setspecific_res, get_meM.meName);
    return 0;
}

void *pthread_func1(void *arg) {
    int set_specific_value = 10;
    pthread_setspecific(pkey, &set_specific_value);
    int *get_specific_value = pthread_getspecific(pkey);
    NSLog(@"pthread_setspecific设置数字:%d", *get_specific_value);
    return NULL;
}

void *pthread_func(void *arg) {
    NSLog(@"进入func");
    while (YES) {
        sleep(1);
    }
    return 0;
}

- (void)testRun_createThread {
    //p1:线程句柄，p2:线程属性，设置为NULL是默认的，p3:入口函数，创建成功返回为0，p4:入口函数参数
    pthread_t tidp;
    const pthread_attr_t *attr = NULL;
    int arg = 10;
    int pth_create_res = pthread_create(&tidp, attr, threadRoute, &arg);
    NSLog(@"pthread_create():%u tid:%d", pth_create_res, tidp);
//    pthread_join(tidp, NULL);

    if (pth_create_res != 0) {
        NSLog(@"创建失败0");
    }
    
//    pth_create_res = pthread_create(&tidp, NULL, pthread_func, NULL);
//    sleep(3);
    if (pth_create_res != 0) {
        NSLog(@"创建失败1");
    }
    int detach_res = pthread_detach(tidp);
    NSLog(@"detach_res:%u", detach_res);
    NSLog(@"pthread_detach()有点像pthread_cancel(), 取消线程，释放资源");

//    int cancel_res = pthread_cancel(tidp);
//    NSLog(@"pthread_cancel:%d", cancel_res);

    
    int *thread_ret = NULL;
    pthread_join(tidp, (void **)&thread_ret);
    NSLog(@"pthread_join()阻塞线程往下走");
//    if (thread_ret) {
//        NSLog(@"pthread_join()等待前面线程完成:%d", *thread_ret);
//    }
    
    NSLog(@"执行完了");
    pthread_t self_tid = pthread_self();
    NSLog(@"pthread_self:%d", self_tid);
    NSLog(@"pthread_self()获取当前所在的线程id");
    NSLog(@"pthread_equal:%u", pthread_equal(self_tid, tidp));
    NSLog(@"pthread_equal()是否是相同的线程, 返回0是不相等的");
//    pthread_exit((void *)1);

    NSLog(@"pthread_exit()退出当前进程");
    dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^{
        pthread_t pid;
        [self testRun_exit:&pid];
        int detach_res = pthread_detach(pid);
        NSLog(@"子线程的pid:%d %u", pid, detach_res);
        NSLog(@"pthread_detach()分离线程, 释放线程资源");
        int cancel_res = pthread_cancel(pid);
        NSLog(@"pthread_cancel:%d", cancel_res);
    });
}

- (void)testRun_exit:(pthread_t *)pid {
    pthread_t self_tid = pthread_self();
    *pid = self_tid;

    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, 5 * NSEC_PER_SEC), dispatch_get_main_queue(), ^{
        NSLog(@"子线程的tid pthread_self:%d", self_tid);
        NSLog(@"pthread_exit之前");
    //    pthread_exit((void *)1);
        NSLog(@"pthread_exit之后");
    });
}


void *doit(void *arg) {
    NSLog(@"pid3=%ld", (int)getpid());
    pthread_mutex_lock(&mutex);
//    struct timespec ts = {2, 0};
//    nanosleep(&ts, NULL);
    sleep(5);
    pthread_mutex_unlock(&mutex);
    NSLog(@"pid4=%ld", (int)getpid());
    return NULL;
}

void prepare(void) {
    NSLog(@"prepare====>");
    pthread_mutex_unlock(&mutex);
    NSLog(@"在此处销毁锁，会导致加锁不成功");
//    int destroy_result = pthread_mutex_destroy(&mutex);
//    NSLog(@"prepare pthread_mutex_destroy()%d", destroy_result);

    NSLog(@"prepare====>end");
}

void parent(void) {
    NSLog(@"parent=====>start");
    pthread_mutex_lock(&mutex);
    NSLog(@"parent=====>end");
}

- (void)testRun_pthread_atfork {
    NSLog(@"pid1=%d", (int)getpid());
    pthread_t tid;
    int create_pthread_result = pthread_create(&tid, NULL, doit, NULL);
    NSLog(@"pthread_create()%d", create_pthread_result);
    struct timespec ts = {1, 0};
    nanosleep(&ts, NULL);
    pthread_atfork(prepare, parent, NULL);
    NSLog(@"pthread_atfork()在调用fork()之前使用并防止fork()死锁, 只能使用一次");
    int pid = fork();
    NSLog(@"fork pid = %d", pid);
    if (pid < 0) {
        pthread_join(tid, NULL);
        pthread_mutex_destroy(&mutex);
        return;
    } else if (pid == 0) {
        NSLog(@"in child lock");
        int lock_result = pthread_mutex_lock(&mutex);
        NSLog(@"pthread_mutex_lock()%d", lock_result);
        NSLog(@"pthread_mutex_lock()实现加锁");
        NSLog(@"not run here");
        int unlock_result = pthread_mutex_unlock(&mutex);
        NSLog(@"pthread_mutex_unlock()%d", unlock_result);
        NSLog(@"pthread_mutex_unlock()实现解锁");
        exit(0);
    } else {
        NSLog(@"in here wait");
        wait(NULL);
        int destroy_result = pthread_mutex_destroy(&mutex);
        NSLog(@"wait pthread_mutex_destroy()%d", destroy_result);
    }
    NSLog(@"join");
    int join_result = pthread_join(tid, NULL);
    NSLog(@"pthread_join()%d", join_result);

    NSLog(@"pid2=%d", (int)getpid());
    int destroy_result = pthread_mutex_destroy(&mutex);
    NSLog(@"pthread_mutex_destroy()%d", destroy_result);
    NSLog(@"pthread_mutex_destroy()销毁pthread_mutex_t，已经在锁的状态下销毁会不成功的");
}

@end
