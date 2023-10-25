//
//  TestProjectTestVCViewTable.m
//  TestProjectIOS
//
//  Created by liwenfan on 2023/5/4.
//

#import "TestProjectTestVCViewTable.h"

@interface TestProjectTestVCViewTable ()

@property (nonatomic, copy) NSString *desc;

@end

@implementation TestProjectTestVCViewTable

- (NSString *)description {
    if (!_desc) {
        _desc = @"";
        _desc = [NSString stringWithFormat:@"%@_%@", self.parentVC.title, self];
    }
    return _desc;
}

- (instancetype)initCreate {
    if (self = [super init]) {
        
    }
    return self;
}

- (TestProjectTestVC *)tVC {
    if (!_tVC) {
        _tVC = [[TestProjectTestVC alloc] init];
        _tVC.childViewClass = self.class;
        _tVC.atFloor = self.parentVC.atFloor + 1;
    }
    return _tVC;
}

- (BOOL)isOnlyPush {
    return NO;
}

- (void)gotoBack {
    WS(wSelf);
    [UIAlertController alertWithTitle:nil message:@"确定返回上一级" cancelTitle:@"取消" cancelBlock:nil sureTitle:@"确定" sureBlock:^{
        [wSelf.parentVC.navigationController popViewControllerAnimated:YES];
    }];
}

- (NSArray *)viewDataArray {
    NSArray *arr;
    if (self.parentVC) {
        arr = [super viewDataArray];
    }
    NSMutableArray *mutArr = [NSMutableArray arrayWithArray:arr];
    [mutArr insertObject:[self name_903] atIndex:0];
    [mutArr insertObject:[self name_901] atIndex:0];
    if (![self isOnlyPush]) {
        [mutArr insertObject:[self name_902] atIndex:0];
        [mutArr insertObject:[self name_904] atIndex:0];
    }
    return [mutArr copy];
}

- (NSDictionary *)name_904 {
    return @{
        @"dataModel": @{
            @"abstract": @"dismiss vc",
            @"title": @"- (void)dismissViewControllerAnimated: (BOOL)flag completion: (void (^ __nullable)(void))completion NS_SWIFT_DISABLE_ASYNC API_AVAILABLE(ios(5.0));",
            @"isDataModelExpand": @(YES),
            @"isTitleExpand": @(NO),
            @"isDescExpand": @(NO),
            @"dataModel": @{
                @"childItems": [self TestProjectTestVCViewTable_dismissViewControllerAnimated],
            }
        },
    };
}

- (NSDictionary *)name_903 {
    return @{
        @"dataModel": @{
            @"abstract": @"pop vc",
            @"title": @"- (nullable UIViewController *)popViewControllerAnimated:(BOOL)animated;",
            @"desc": @"这个是UINavigationController里的方法",
            @"isDataModelExpand": @(YES),
            @"isTitleExpand": @(NO),
            @"isDescExpand": @(NO),
            @"dataModel": @{
                @"childItems": [self TestProjectTestVCViewTable_popViewControllerAnimated],
            }
        },
    };
}

- (NSDictionary *)name_902 {
    return @{
        @"dataModel": @{
            @"abstract": @"present tVC",
            @"title": @"- (void)presentViewController:(UIViewController *)viewControllerToPresent animated: (BOOL)flag completion:(void (^ __nullable)(void))completion NS_SWIFT_DISABLE_ASYNC API_AVAILABLE(ios(5.0));",
            @"isDataModelExpand": @(YES),
            @"isTitleExpand": @(NO),
            @"isDescExpand": @(NO),
            @"dataModel": @{
                @"childItems": [self TestProjectTestVCViewTable_presentViewController_animated_completion],
            }
        },
    };
}

- (NSDictionary *)name_901 {
    return @{
        @"dataModel": @{
            @"abstract": @"push tVC",
            @"title": @"- (void)pushViewController:(UIViewController *)viewController animated:(BOOL)animated;",
            @"desc": @"这个是UINavigationController里的方法",
            @"isDataModelExpand": @(YES),
            @"isTitleExpand": @(NO),
            @"isDescExpand": @(NO),
            @"dataModel": @{
                @"childItems": [self TestProjectTestVCViewTable_pushViewController_animated],
            }
        },
    };
}

- (TestProjectTableViewModel *)createChildVCTableModelWithProperty:(NSString *)key value:(id)value title:(NSString *)title {
    WS(wSelf);
    TestProjectTableViewModel *m = [self createClickSetTableModelWithProperty:key value:value title:title block:^{
        [wSelf.tVC setValue:value forKey:key];
        [UIApplication.rootCurrentController presentViewController:wSelf.tVC animated:YES completion:nil];
    }];
    return m;
}

- (NSMutableArray *)TestProjectTestVCViewTable_push_VC:(BOOL)isPush {
    self.dataMutArr = [NSMutableArray array];
    TestProjectTableViewModel *m = [[TestProjectTableViewModel alloc] init];
    m.title = isPush ? @"点击我push到tVC里去" : @"点击我present到tVC里去";
    WS(wSelf);
    m.clickBlock = ^{
        if (isPush) {
            [UIApplication.rootNavController pushViewController:wSelf.tVC animated:YES];
        } else {
            dispatch_after(dispatch_time(DISPATCH_TIME_NOW, 2 * NSEC_PER_SEC), dispatch_get_main_queue(), ^{
                [wSelf.parentVC.navigationController popViewControllerAnimated:YES];
            });
            UIViewController *vc = UIApplication.rootCurrentController;
            [vc presentViewController:wSelf.tVC animated:YES completion:nil];
        }
    };
    m.isChild = YES;
    [m calculDataViewHeight];
    [self.dataMutArr addObject:m];
    return self.dataMutArr;
}

- (NSMutableArray *)TestProjectTestVCViewTable_pushViewController_animated {
    return [self TestProjectTestVCViewTable_push_VC:YES];
}

- (NSMutableArray *)TestProjectTestVCViewTable_presentViewController_animated_completion {
    return [self TestProjectTestVCViewTable_push_VC:NO];
}

- (NSMutableArray *)TestProjectTestVCViewTable_pop_VC:(BOOL)isPop {
    self.dataMutArr = [NSMutableArray array];
    TestProjectTableViewModel *m = [[TestProjectTableViewModel alloc] init];
    m.title = isPop ? @"点击我pop vc" : @"点击我dismiss vc";
    WS(wSelf);
    m.clickBlock = ^{
        if (isPop) {
            [wSelf.parentVC.navigationController popViewControllerAnimated:YES];
        } else {
            [wSelf.parentVC dismissViewControllerAnimated:YES completion:nil];
        }
    };
    m.isChild = YES;
    [m calculDataViewHeight];
    [self.dataMutArr addObject:m];
    return self.dataMutArr;
}

- (NSMutableArray *)TestProjectTestVCViewTable_popViewControllerAnimated {
    return [self TestProjectTestVCViewTable_pop_VC:YES];
}

- (NSMutableArray *)TestProjectTestVCViewTable_dismissViewControllerAnimated {
    return [self TestProjectTestVCViewTable_pop_VC:NO];
}

@end
