//
//  TestProjectDispatchData.m
//  TestProjectIOS
//
//  Created by zjrcumac on 2022/4/20.
//

#import "TestProjectDispatchData.h"

@interface TestProjectDispatchData ()

@property (nonatomic, weak) dispatch_data_t dispatchData;

@end

@implementation TestProjectDispatchData

- (instancetype)init {
    if (self = [super init]) {
        [self testRunCreateDispatchData];
    }
    return self;
}

- (void)testRunCreateDispatchData {
    NSData *data = [@"123" dataUsingEncoding:NSUTF8StringEncoding];
    
    self.dispatchData = dispatch_data_create([data bytes], [data length], dispatch_get_main_queue(), ^{
        NSLog(@"创建成功");
        DISPATCH_DATA_DESTRUCTOR_FREE;
    });

//    dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^{
//        [NSTimer scheduledTimerWithTimeInterval:3 repeats:NO block:^(NSTimer * _Nonnull timer) {
//            NSLog(@"进来了吗");
//            size_t dataSize = dispatch_data_get_size(self.dispatchData);
//            NSLog(@"%ld", dataSize);
//
//    //        const void *buffer1;
//    //        size_t size1;
//    //        dispatch_data_t mapDispatchData1 = dispatch_data_create_map(dispatchData, &buffer1, &size1);
//    //        NSLog(@"初始的数据:%@-大小:%ld-内容:%s-大小:%ld", mapDispatchData1, size1, buffer1, dispatch_data_get_size(mapDispatchData1));
//
//            const void *buffer;
//            size_t size;
//            dispatch_data_t subDispatchData = dispatch_data_create_subrange(self.dispatchData, 6, 1);
//            dispatch_data_t mapDispatchData = dispatch_data_create_map(subDispatchData, &buffer, &size);
//            NSLog(@"截取的数据:%@-大小:%ld-内容:%s", subDispatchData, size, buffer);
//
//
//        }];
//
//    });
}

- (void)mapData {
    void *buffer;
    size_t size;
//    dispatch_data_t subDispatchData = dispatch_data_create_subrange(self.dispatchData, 0, 9);
    dispatch_data_t mapDispatchData = dispatch_data_create_map(self.dispatchData, &buffer, &size);
    NSLog(@"截取的数据:%@-大小:%ld-内容:%s", mapDispatchData, size, buffer);
    
    NSData *mapData = [NSData dataWithBytes:&buffer length:size];
    NSString *mapStr = [[NSString alloc] initWithData:mapData encoding:NSUTF8StringEncoding];
    NSLog(@"转换后的str: %@", mapStr);
}

@end
