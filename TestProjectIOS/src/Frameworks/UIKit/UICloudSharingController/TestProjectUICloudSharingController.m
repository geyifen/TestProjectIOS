//
//  TestProjectUICloudSharingController.m
//  TestProjectIOS
//
//  Created by liwenfan on 2023/7/17.
//

#import "TestProjectUICloudSharingController.h"

@interface TestProjectUICloudSharingController () <UICloudSharingControllerDelegate>

@property (nonatomic, strong) UICloudSharingController *childCludShareingVC;

@end

@implementation TestProjectUICloudSharingController

- (instancetype)initCreate {
    if (self = [super initCreate]) {
        [self.tableView testproject_updateConstraints:^(TestProjectViewConstrainMake * _Nonnull make) {
            make.height.equal(self).offset(-450);
        }];
        self.childCludShareingVC.delegate = self;
    }
    return self;
}

- (UICloudSharingController *)childCludShareingVC {
    if (!_childCludShareingVC) {
        WS(wSelf);
        _childCludShareingVC = [[UICloudSharingController alloc] initWithPreparationHandler:^(UICloudSharingController * _Nonnull controller, void (^ _Nonnull preparationCompletionHandler)(CKShare * ckShare, CKContainer * ckContainer, NSError * error)) {
            NSLog(@"controller:%@ %@", controller, preparationCompletionHandler);
            preparationCompletionHandler(wSelf.childCludShareingVC.share, nil, nil);
        }];
        [self.parentVC addChildViewController:_childCludShareingVC];
        [self addSubview:_childCludShareingVC.view];
        [_childCludShareingVC.view testproject_makeConstraints:^(TestProjectViewConstrainMake * _Nonnull make) {
            make.top.leading.trainling.equal(self);
            make.height.equal(@450);
        }];
    }
    return _childCludShareingVC;
}

- (id)setPropertyValueObject:(TestProjectTableViewParams *)params {
    return self.childCludShareingVC;
}

#pragma mark - UICloudSharingControllerDelegate

- (void)cloudSharingController:(UICloudSharingController *)csc failedToSaveShareWithError:(NSError *)error {
    NSLog(@"%@", NSStringFromSelector(_cmd));
}

// corresponds to CKShareTitleKey on the expected share
- (nullable NSString *)itemTitleForCloudSharingController:(UICloudSharingController *)csc {
    NSLog(@"%@", NSStringFromSelector(_cmd));
          return @"title";
}

// corresponds to CKShareThumbnailImageDataKey on the expected share
- (nullable NSData *)itemThumbnailDataForCloudSharingController:(UICloudSharingController *)csc {
    NSLog(@"%@", NSStringFromSelector(_cmd));
    return [@"thumb" dataUsingEncoding:NSUTF8StringEncoding];
}

// corresponds to CKShareTypeKey on the expected share
- (nullable NSString *)itemTypeForCloudSharingController:(UICloudSharingController *)csc {
    NSLog(@"%@", NSStringFromSelector(_cmd));
    return @"type";
}

- (void)cloudSharingControllerDidSaveShare:(UICloudSharingController *)csc {
    NSLog(@"%@", NSStringFromSelector(_cmd));
}

- (void)cloudSharingControllerDidStopSharing:(UICloudSharingController *)csc {
    NSLog(@"%@", NSStringFromSelector(_cmd));
}

- (NSMutableArray *)TestProjectCloudSharingController_activityItemSource:(TestProjectTableViewParams *)params {
    WS(wSelf);
    return [self createModelSingleArrayWithParams:params title:@"activityItemSource" methodBlock:^NSString * _Nonnull{
        id obj = [wSelf.childCludShareingVC activityItemSource];
        return [NSString stringWithFormat:@"%@", obj];
    }];
}

- (NSDictionary *)method_5:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"执行UICloudSharingController的方法",
            @"title": @"- (id <UIActivityItemSource>)activityItemSource;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectCloudSharingController_activityItemSource:params],
            }
        },
    };
}

//typedef NS_OPTIONS(NSUInteger, UICloudSharingPermissionOptions) {
//    UICloudSharingPermissionStandard = 0, // Allow the user to configure the share with the standard set of options
//
//    UICloudSharingPermissionAllowPublic = 1 << 0,    // The user is allowed to share publicly
//    UICloudSharingPermissionAllowPrivate = 1 << 1,   // The user is allowed to share privately
//
//    UICloudSharingPermissionAllowReadOnly = 1 << 2,  // The user is allowed to grant participants read-only permissions
//    UICloudSharingPermissionAllowReadWrite = 1 << 3, // The user is allowed to grant participants read/write permissions
//} API_AVAILABLE(ios(10.0)) API_UNAVAILABLE(tvos) API_UNAVAILABLE(watchos);


- (NSMutableArray *)TestProjectCloudSharingController_property_availablePermissions:(TestProjectTableViewParams *)params {
    NSArray *arr = @[
        @{
            @"title": [NSString stringWithFormat:@"设置的属性值是UICloudSharingPermissionStandard(%ld)", UICloudSharingPermissionStandard],
            @"value": @(UICloudSharingPermissionStandard),
        },
        @{
            @"title": [NSString stringWithFormat:@"设置的属性值是UICloudSharingPermissionAllowPublic(%ld)", UICloudSharingPermissionAllowPublic],
            @"value": @(UICloudSharingPermissionAllowPublic),
        },
        @{
            @"title": [NSString stringWithFormat:@"设置的属性值是UICloudSharingPermissionAllowPrivate(%ld)", UICloudSharingPermissionAllowPrivate],
            @"value": @(UICloudSharingPermissionAllowPrivate),
        },
        @{
            @"title": [NSString stringWithFormat:@"设置的属性值是UICloudSharingPermissionAllowReadOnly(%ld)", UICloudSharingPermissionAllowReadOnly],
            @"value": @(UICloudSharingPermissionAllowReadOnly),
        },
        @{
            @"title": [NSString stringWithFormat:@"设置的属性值是UICloudSharingPermissionAllowReadWrite(%ld)", UICloudSharingPermissionAllowReadWrite],
            @"value": @(UICloudSharingPermissionAllowReadWrite),
        },
    ];
    for (NSDictionary *dic in arr) {
        NSString *title = dic[@"title"];
        NSNumber *value = dic[@"value"];
        [self createModelWithParams:params
                              title:title
                           property:@"availablePermissions"
                              value:value
                          operation:TestProjectCreateModelGetBeforeClickSet
                              block:nil];
    }
    return self.dataMutArr;
}

- (NSDictionary *)method_4:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"设置获取UICloudSharingController的属性availablePermissions",
            @"title": @"@property (nonatomic) UICloudSharingPermissionOptions availablePermissions;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectCloudSharingController_property_availablePermissions:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectCloudSharingController_property_share:(TestProjectTableViewParams *)params {
    return [self createModelSingleArrayWithParams:params
                                         property:@"share"
                                            value:nil
                                        operation:TestProjectCreateModelOnlyGet
                                            block:nil];
}

- (NSDictionary *)method_3:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"设置获取UICloudSharingController的属性share",
            @"title": @"@property (nonatomic, readonly, strong, nullable) CKShare *share;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectCloudSharingController_property_share:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectCloudSharingController_property_delegate:(TestProjectTableViewParams *)params {
    return [self createModelSingleArrayWithParams:params
                                         property:@"delegate"
                                            value:nil
                                        operation:TestProjectCreateModelOnlyGet
                                            block:nil];
}

- (NSDictionary *)method_2:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"设置获取UICloudSharingController的属性delegate",
            @"title": @"@property (nonatomic, weak) id<UICloudSharingControllerDelegate> delegate;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectCloudSharingController_property_delegate:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectCloudSharingController_push:(TestProjectTableViewParams *)params {
    WS(wSelf);
    return [self createModelSingleArrayWithParams:params title:@"点击 push vc" block:^{
        [UIApplication.rootNavController pushViewController:wSelf.childCludShareingVC animated:YES];
    }];
}

- (NSDictionary *)method_1:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"push UICloudSharingController",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectCloudSharingController_push:params],
            }
        },
    };
}

@end
