//
//  TestProjectDispatchQueue.m
//  TestProjectIOS
//
//  Created by zjrcumac on 2022/4/19.
//

#import "TestProjectDispatchQueue.h"

@implementation TestProjectDispatchQueue

+ (dispatch_queue_t)generateConcurrentQueueWithSel:(SEL)sel {
    NSString *label = [NSString stringWithFormat:@"concurrent_%@", NSStringFromSelector(sel)];
    return dispatch_queue_create(label.UTF8String, DISPATCH_QUEUE_CONCURRENT);
}

+ (dispatch_queue_t)generateConcurrentQueueWithQueueName:(NSString *)queueName {
    NSString *label = [NSString stringWithFormat:@"concurrent_%@", queueName];
    return dispatch_queue_create(label.UTF8String, DISPATCH_QUEUE_CONCURRENT);
}

+ (dispatch_queue_t)generateSerialQueueWithSel:(SEL)sel {
    NSString *label = [NSString stringWithFormat:@"serial_%@", NSStringFromSelector(sel)];
    return dispatch_queue_create(label.UTF8String, DISPATCH_QUEUE_SERIAL);
}

+ (dispatch_queue_t)generateSerialQueueWithQueueName:(NSString *)queueName {
    NSString *label = [NSString stringWithFormat:@"serial_%@", queueName];
    return dispatch_queue_create(label.UTF8String, DISPATCH_QUEUE_SERIAL);
}

@end
