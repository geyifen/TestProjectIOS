//
//  TestProjectDispatchIO.m
//  TestProjectIOS
//
//  Created by liwenfan on 2022/4/25.
//

#import "TestProjectDispatchIO.h"
#import "TestProjectDispatchQueue.h"

@interface TestProjectDispatchIO ()

@property (nonatomic, strong) dispatch_io_t dispatchIO;
@property (nonatomic, strong) dispatch_queue_t concurrentQueue;
@property (nonatomic, copy) NSString *filePath;

@end

@implementation TestProjectDispatchIO

- (instancetype)init {
    if (self = [super init]) {
        [self testRunCreateDispatchIO];
    }
    return self;
}

- (NSString *)getHomeDirectory {
    return [NSString stringWithFormat:@"%@/Documents/myIOData.text", NSHomeDirectory()];
}

- (void)testRunCreateDispatchIO {
    self.concurrentQueue = [TestProjectDispatchQueue generateConcurrentQueueWithSel:_cmd];
    self.filePath = [self getHomeDirectory];
    NSLog(@"io路径:%@", self.filePath);
    char *myChar[self.filePath.length];
    dispatch_fd_t fd = open(strcpy(myChar, (char *)[self.filePath UTF8String]),
                            O_RDWR | O_CREAT,S_IRWXU | S_IRWXG | S_IRWXO);
    /**
     type: 0, DISPATCH_IO_STREAM  这种方式会忽略我们下面要创建的offset参数; 1,DISPATCH_IO_RANDOM  需要我们创建一个offset参数用来找到file的descriptor
     path: 路径
     oflag: 文件权限 O_RDWR
     queue: 队列
     error: 创建通道时的错误码
     */
    self.dispatchIO = dispatch_io_create_with_path(DISPATCH_IO_STREAM, self.filePath.UTF8String, O_RDWR, 0, self.concurrentQueue, ^(int error) {
        close(fd);
    });
//    self.dispatchIO = dispatch_io_create(DISPATCH_IO_STREAM, fd, self.concurrentQueue, ^(int error) {
//        close(fd);
//    });
}

- (void)testRunWriteDispatchIO {
    const char text[] = "我是谁";
    off_t off = sizeof(text);
    size_t size = sizeof(text);
    
    NSLog(@"文本的大小:%ld", size);
    
    dispatch_data_t datas = dispatch_data_create(text, size, self.concurrentQueue, NULL);

    dispatch_io_write(self.dispatchIO, 0, datas, self.concurrentQueue, ^(bool done, dispatch_data_t  _Nullable data, int error) {
        NSLog(@"写入的数据:done:%u;error:%d", done, error);
    });
}

- (void)testRunSerialReadDispatchIO {
    long long fileSize = [[NSFileManager defaultManager] attributesOfItemAtPath:self.filePath error:nil].fileSize;
    dispatch_io_set_high_water(self.dispatchIO, 3);
    dispatch_io_read(self.dispatchIO, 0, fileSize, self.concurrentQueue, ^(bool done, dispatch_data_t  _Nullable data, int error) {
        NSLog(@"读:done:%u;dataSize:%ld;error:%d", done, dispatch_data_get_size(data), error);
//        void *buffer;
//        size_t size;
//        dispatch_data_t mapDispatchData = dispatch_data_create_map(data, &buffer, &size);
//        NSData *datas = [NSData dataWithBytes:buffer length:size];
        NSString *str = [[NSString alloc] initWithData:(NSData *)data encoding:NSUTF8StringEncoding];
        NSLog(@"文本:%@", str);
    });
}

- (void)testRunConcurrentReadDispatchIO  {
    long long fileSize = [[NSFileManager defaultManager] attributesOfItemAtPath:self.filePath error:nil].fileSize;
    NSLog(@"文件内容大小:%lld", fileSize);
    
    size_t offset = 3;
    NSMutableData *mutDatas = [NSMutableData dataWithLength:fileSize];
    dispatch_group_t group = dispatch_group_create();
    for (off_t currentSize = 0; currentSize <= fileSize; currentSize += offset) {
        dispatch_group_enter(group);
        dispatch_io_read(self.dispatchIO, currentSize, offset, self.concurrentQueue, ^(bool done, dispatch_data_t  _Nullable data, int error) {
            size_t size = dispatch_data_get_size(data);
            if (error == 0) {
                if (size > 0) {
                    void *buffer;
                    (void)dispatch_data_create_map(data, (const void **)&buffer, &size);
                    [mutDatas replaceBytesInRange:NSMakeRange(currentSize, size) withBytes:buffer length:size];
                }
            }
            
            if (done) {
                dispatch_group_leave(group);
            }
        });
    }
    
    dispatch_group_notify(group, self.concurrentQueue, ^{
        NSString *str = [[NSString alloc] initWithData:mutDatas encoding:NSUTF8StringEncoding];
        NSLog(@"文本:%@", str);
    });
}

@end
