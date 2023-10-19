//
//  TestProjectDispatchObject.m
//  TestProjectIOS
//
//  Created by liwenfan on 2022/5/5.
//

#import "TestProjectDispatchObject.h"
#import "TestProjectDispatchQueue.h"
 
typedef struct _TestProjectData {
    NSInteger number;
} TestProjectData;

@interface TestProjectOCData : NSObject

@property (nonatomic, assign) NSInteger number;

@end

@implementation TestProjectOCData

- (void)dealloc {
    NSLog(@"TestProjectOCData dealloc");
}

@end

@interface TestProjectDispatchObject ()

@property (nonatomic, strong) dispatch_queue_t serialQueue;

@end

@implementation TestProjectDispatchObject

- (instancetype)init {
    if (self = [super init]) {
//        [self testRunCreate];
        [self testRunOCCreate];
    }
    return self;
}

void cleanContext(void *context) {
    NSLog(@"clearDataNumber:%ld", ((TestProjectData *)context)->number);
    free(context);
}

- (void)testRunCreate {
    dispatch_queue_t serialQueue = [TestProjectDispatchQueue generateSerialQueueWithSel:_cmd];
    TestProjectData *setTpData = malloc(sizeof(TestProjectData));
    setTpData->number = 10;
    dispatch_set_context(serialQueue, setTpData);
    dispatch_set_finalizer_f(serialQueue, cleanContext);
    dispatch_async(serialQueue, ^{
        TestProjectData *getTpData = dispatch_get_context(serialQueue);
        NSLog(@"getDataNumber:%ld", getTpData->number);
        getTpData->number = 20;
    });
}

void clearOCContext(void *context) {
    NSLog(@"OC clearDataNumber:%ld", ((__bridge TestProjectOCData *)context).number);
    CFRelease(context);
}

- (void)testRunOCCreate {
    self.serialQueue = [TestProjectDispatchQueue generateSerialQueueWithSel:_cmd];
    TestProjectOCData *setTpData = [[TestProjectOCData alloc] init];
    setTpData.number = 10;
    dispatch_set_context(self.serialQueue, (__bridge_retained void *)setTpData);
    dispatch_set_finalizer_f(self.serialQueue, clearOCContext);
    NSLog(@"当前队列进入5s暂停状态了");
    /**当block没有执行的时候才可以暂停队列*/
    dispatch_suspend(self.serialQueue);
    dispatch_async(self.serialQueue, ^{
        [NSThread sleepForTimeInterval:5];
        TestProjectOCData *getTpData = (__bridge TestProjectOCData *)dispatch_get_context(self.serialQueue);
        NSLog(@"OC getDataNumber:%ld", getTpData.number);
        getTpData.number = 20;
    });
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, 5 * NSEC_PER_SEC), dispatch_get_main_queue(), ^{
        NSLog(@"当前队列进入恢复状态了");
        /**恢复队列,恢复的queue不能和暂停的queue是同一个,会导致queue执行不进来*/
        dispatch_resume(self.serialQueue);
    });
}

@end
