//
//  TestProjectDispatchQueue.h
//  TestProjectIOS
//
//  Created by zjrcumac on 2022/4/19.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface TestProjectDispatchQueue : NSObject

+ (dispatch_queue_t)generateConcurrentQueueWithSel:(SEL)sel;

+ (dispatch_queue_t)generateConcurrentQueueWithQueueName:(NSString *)queueName;

+ (dispatch_queue_t)generateSerialQueueWithSel:(SEL)sel;

+ (dispatch_queue_t)generateSerialQueueWithQueueName:(NSString *)queueName;

@end

NS_ASSUME_NONNULL_END
