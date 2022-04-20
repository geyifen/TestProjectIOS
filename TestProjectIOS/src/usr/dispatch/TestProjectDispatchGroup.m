//
//  TestProjectDispatchGroup.m
//  TestProjectIOS
//
//  Created by zjrcumac on 2022/4/20.
//

#import "TestProjectDispatchGroup.h"

@implementation TestProjectDispatchGroup

- (instancetype)init {
    if (self = [super init]) {
        
    }
    return self;
}

- (void)testRunCreate {
    dispatch_group_t dispatchGroup = dispatch_group_create();
    dispatch_group_enter(dispatchGroup);
    
}

@end
