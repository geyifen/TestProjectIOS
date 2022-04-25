//
//  TestProjectDispatchIO.m
//  TestProjectIOS
//
//  Created by zjrcumac on 2022/4/25.
//

#import "TestProjectDispatchIO.h"
#import "TestProjectDispatchQueue.h"

@implementation TestProjectDispatchIO

- (instancetype)init {
    if (self = [super init]) {
        [self testRunDispatchIO];
    }
    return self;
}

- (NSString *)getHomeDirectory {
    return [NSString stringWithFormat:@"%@/Documents/myIOData.text", NSHomeDirectory()];
}

- (void)testRunDispatchIO {
    dispatch_queue_t concurrentQueue = [TestProjectDispatchQueue generateConcurrentQueueWithSel:_cmd];
    NSString *path = [self getHomeDirectory];
    NSLog(@"io路径:%@", path);
    dispatch_fd_t fd = open(strcpy("myChar", (char *)[path UTF8String]),
                            O_RDWR | O_CREAT,S_IRWXU | S_IRWXG | S_IRWXO);
    
    const char text[] = "hello world";
    off_t off = sizeof(text);
    size_t size = sizeof(text);
    
    dispatch_data_t datas = dispatch_data_create(text, size, concurrentQueue, NULL);
    /**
     type: 0, DISPATCH_IO_STREAM  这种方式会忽略我们下面要创建的offset参数; 1,DISPATCH_IO_RANDOM  需要我们创建一个offset参数用来找到file的descriptor
     path: 路径
     oflag: 文件权限 O_RDWR
     queue: 队列
     error: 创建通道时的错误码
     */
    dispatch_io_t dispatchIO = dispatch_io_create_with_path(DISPATCH_IO_STREAM, path.UTF8String, O_RDWR, 0, concurrentQueue, ^(int error) {
        close(fd);
    });
    dispatch_io_write(dispatchIO, 0, datas, concurrentQueue, ^(bool done, dispatch_data_t  _Nullable data, int error) {
        
    });
}

@end
