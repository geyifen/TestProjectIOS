//
//  TestProjectDispatchIO.h
//  TestProjectIOS
//
//  Created by zjrcumac on 2022/4/25.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface TestProjectDispatchIO : NSObject
/**写入固定的数据*/
- (void)testRunWriteDispatchIO;
/**串行读数据*/
- (void)testRunSerialReadDispatchIO;
/**并行读数据*/
- (void)testRunConcurrentReadDispatchIO;

@end

NS_ASSUME_NONNULL_END
