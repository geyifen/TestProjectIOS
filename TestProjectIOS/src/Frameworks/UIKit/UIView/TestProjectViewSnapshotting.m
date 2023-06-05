//
//  TestProjectViewSnapshotting.m
//  TestProjectIOS
//
//  Created by zjrcumac on 2023/5/26.
//

#import "TestProjectViewSnapshotting.h"

@implementation TestProjectViewSnapshotting

- (NSDictionary *)method_1 {
    return @{
        @"dataModel": @{
            @"abstract": @"对某个view进行截屏，当view超过屏幕则只截屏幕内展示的内容",
            @"title": @"- (nullable UIView *)snapshotViewAfterScreenUpdates:(BOOL)afterUpdates API_AVAILABLE(ios(7.0));",
            @"isDataModelExpand": @(YES),
            @"desc": @"@param afterUpdates: 当有改变时，需要当系统刷新一次才进行截屏，暂时不太懂",
            @"dataModel": @{
                @"childItems": [self TestProjectViewSnapshotting_snapshotViewAfterScreenUpdates],
            }
        },
    };
}

- (NSDictionary *)method_2 {
    return @{
        @"dataModel": @{
            @"abstract": @"对某个view进行截屏，当view超过屏幕则只截屏幕内展示的内容",
            @"title": @"- (nullable UIView *)resizableSnapshotViewFromRect:(CGRect)rect afterScreenUpdates:(BOOL)afterUpdates withCapInsets:(UIEdgeInsets)capInsets API_AVAILABLE(ios(7.0));",
            @"isDataModelExpand": @(YES),
            @"desc": @"@param rect:要截屏的范围，该范围必须是在屏幕内的范围，否则是一片空白的\n@param afterUpdates:  当有改变时，需要当系统刷新一次才进行截屏，暂时不太懂",
            @"dataModel": @{
                @"childItems": [self TestProjectViewSnapshotting_resizableSnapshotViewFromRect_afterScreenUpdates_withCapInsets],
            }
        },
    };
}

- (NSDictionary *)method_3:(NSInteger)index {
    return @{
        @"dataModel": @{
            @"abstract": @"执行UIView的方法，暂时不知道什么作用",
            @"title": @"- (BOOL)drawViewHierarchyInRect:(CGRect)rect afterScreenUpdates:(BOOL)afterUpdates API_AVAILABLE(ios(7.0));",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectViewSnapshotting_drawViewHierarchyInRect_afterScreenUpdates:index],
            }
        },
    };
}

- (NSMutableArray *)TestProjectViewSnapshotting_drawViewHierarchyInRect_afterScreenUpdates:(NSInteger)index {
    NSArray *arr = @[@(YES), @(NO)];
    for (NSNumber *num in arr) {
        WS(wSelf);
        BOOL value = [num boolValue];
        [self createTableModelWithMethodBlock:^NSString * _Nonnull{
            BOOL res = [wSelf.tableView drawViewHierarchyInRect:wSelf.tableView.bounds afterScreenUpdates:value];
            return [NSString stringWithFormat:@"%u", res];
        } title:@"drawViewHierarchyInRect_afterScreenUpdates" index:index];
    }
    return self.dataMutArr;
}

- (NSMutableArray *)TestProjectViewSnapshotting_resizableSnapshotViewFromRect_afterScreenUpdates_withCapInsets {
    NSArray *arr = @[@(YES), @(NO)];
    for (NSNumber *num in arr) {
        WS(wSelf);
        BOOL value = [num boolValue];
        [self createTableModelWithTitle:[NSString stringWithFormat:@"resizableSnapshotViewFromRect_afterScreenUpdates_withCapInsets:%u", value] block:^{
            UIView *view = [wSelf.tableView resizableSnapshotViewFromRect:CGRectMake(0, 0, wSelf.tableView.frame.size.width, wSelf.tableView.contentSize.height) afterScreenUpdates:value withCapInsets:UIEdgeInsetsMake(0, 0, 0, 0)];
            [wSelf.childView addSubview:view];
            [view testproject_makeConstraints:^(TestProjectViewConstrainMake * _Nonnull make) {
                make.width.equal(@300);
                make.height.equal(@500);
                make.top.trainling.equal(wSelf.childView);
            }];
        }];
    }
    return self.dataMutArr;
}

- (NSMutableArray *)TestProjectViewSnapshotting_snapshotViewAfterScreenUpdates {
    NSArray *arr = @[@(YES), @(NO)];
    for (NSNumber *num in arr) {
        WS(wSelf);
        BOOL value = [num boolValue];
        [self createTableModelWithTitle:[NSString stringWithFormat:@"snapshotViewAfterScreenUpdates:%u", value] block:^{
            UIView *view = [wSelf.tableView snapshotViewAfterScreenUpdates:value];
            [wSelf.childView addSubview:view];
            [view testproject_makeConstraints:^(TestProjectViewConstrainMake * _Nonnull make) {
                make.width.equal(@100);
                make.height.equal(@200);
                make.top.trainling.equal(wSelf.childView);
            }];
        }];
    }
    return self.dataMutArr;
}

@end
