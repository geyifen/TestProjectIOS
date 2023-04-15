//
//  TestProjectBaseModel.m
//  TestProjectIOS
//
//  Created by zjrcumac on 2023/4/13.
//

#import "TestProjectBaseModel.h"

#import <YYModel/YYModel.h>

@implementation TestProjectBaseModel

- (BOOL)modelCustomTransformFromDictionary:(NSDictionary *)dic {
    NSDictionary *dataModel = [dic objectForKey:@"dataModel"];
    if (dataModel) {
        Class clazz = [dataModel objectForKey:@"modelClass"];
        if (!clazz) {
            clazz = self.class;
        }
        self.dataModel = [clazz yy_modelWithDictionary:dataModel];
    }
    return YES;
}

- (id)copyWithZone:(NSZone *)zone {
    TestProjectBaseModel *m = [[TestProjectBaseModel alloc] init];
    m.dataModel = [self.dataModel copy];
    return m;
}

@end
