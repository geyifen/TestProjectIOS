//
//  TestProjectCGContext.m
//  TestProjectIOS
//
//  Created by liwenfan on 2023/11/6.
//

#import "TestProjectCGContext.h"

#import "TestProjectUIImageCell.h"

@interface TestProjectCGContext ()

@property (nonatomic, assign) CGContextRef contextRef;

@end

@implementation TestProjectCGContext

- (Class)createTableModelClass:(TestProjectTableViewParams *)params {
    return TestProjectUIImageModel.class;
}

- (void)dealloc {
    CGContextRelease(_contextRef);
}

- (CGContextRef)contextRef {
    if (!_contextRef) {
        _contextRef = UIGraphicsGetCurrentContext();
    }
    return _contextRef;
}

- (NSMutableArray *)TestProjectCGContext_CGContextScaleCTM:(TestProjectTableViewParams *)params {
    CGContextScaleCTM(self.contextRef, 10, 20);
    CGLayerRef layerRef = CGLayerCreateWithContext(self.contextRef, self.bounds.size, NULL);
//    CIImage *ciImage = [CIImage imageWithCGLayer:layerRef];
//    return [self createModelSingleArrayWithParams:params
//                                    modelKeyValue:@{@"title": [NSString stringWithFormat:@"CFTypeID:%lu", typeID]}
//                                            block:nil];
    return self.dataMutArr;
}

- (NSDictionary *)method_2:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"通过CGContext获取CFTypeID方法",
            @"title": @"CG_EXTERN void CGContextScaleCTM(CGContextRef cg_nullable c, CGFloat sx, CGFloat sy) CG_AVAILABLE_STARTING(10.0, 2.0);",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectCGContext_CGContextScaleCTM:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectCGContext_CGContextGetTypeID:(TestProjectTableViewParams *)params {
    CFTypeID typeID = CGContextGetTypeID();
    return [self createModelSingleArrayWithParams:params
                                    modelKeyValue:@{@"title": [NSString stringWithFormat:@"CFTypeID:%lu", typeID]}
                                            block:nil];
}

- (NSDictionary *)method_1:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"通过CGContext获取CFTypeID方法",
            @"title": @"CG_EXTERN CFTypeID CGContextGetTypeID(void) CG_AVAILABLE_STARTING(10.2, 2.0);",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectCGContext_CGContextGetTypeID:params],
            }
        },
    };
}

@end
