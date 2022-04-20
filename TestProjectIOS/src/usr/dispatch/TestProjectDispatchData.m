//
//  TestProjectDispatchData.m
//  TestProjectIOS
//
//  Created by zjrcumac on 2022/4/20.
//

#import "TestProjectDispatchData.h"

@implementation TestProjectDispatchData

- (instancetype)init {
    if (self = [super init]) {
        [self testRunCreateDispatchData];
    }
    return self;
}

- (void)testRunCreateDispatchData {
    NSData *data = [@"123" dataUsingEncoding:NSUTF8StringEncoding];
    
    dispatch_data_t dispatchData = dispatch_data_create([data bytes], [data length], dispatch_get_main_queue(), ^{
        NSLog(@"创建成功");
        DISPATCH_DATA_DESTRUCTOR_FREE;
    });
    
    [NSTimer scheduledTimerWithTimeInterval:2 repeats:NO block:^(NSTimer * _Nonnull timer) {
        size_t dataSize = dispatch_data_get_size(dispatchData);
        NSLog(@"%ld", dataSize);
    }];
    
   const void *buffer;
    size_t size;
    dispatch_data_t mapDispatchData = dispatch_data_create_map(dispatchData, &buffer, &size);
    NSLog(@"%@--%ld", buffer, size);

}

@end
