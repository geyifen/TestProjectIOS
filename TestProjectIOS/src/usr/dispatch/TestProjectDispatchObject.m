//
//  TestProjectDispatchObject.m
//  TestProjectIOS
//
//  Created by zjrcumac on 2022/5/5.
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

@implementation TestProjectDispatchObject

- (instancetype)init {
    if (self = [super init]) {
        [self testRunCreate];
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
    dispatch_queue_t serialQueue = [TestProjectDispatchQueue generateSerialQueueWithSel:_cmd];
    TestProjectOCData *setTpData = [[TestProjectOCData alloc] init];
    setTpData.number = 10;
    dispatch_set_context(serialQueue, (__bridge_retained void *)setTpData);
    dispatch_set_finalizer_f(serialQueue, clearOCContext);
    dispatch_async(serialQueue, ^{
        TestProjectOCData *getTpData = (__bridge TestProjectOCData *)dispatch_get_context(serialQueue);
        NSLog(@"OC getDataNumber:%ld", getTpData.number);
        getTpData.number = 20;
    });
}

@end
