//
//  TestProjectViewTable.m
//  TestProjectIOS
//
//  Created by zjrcumac on 2023/2/22.
//

#import "TestProjectViewTable.h"

#import "TestProjectTableModel.h"
#import "TestProjectDetailObjectController.h"
#import "TestProjectCategoryHeader.h"
#import <objc/message.h>

@implementation TestProjectViewTable

- (instancetype)init {
    if (self = [super init]) {
        [self createDataViewModel];
    }
    return self;
}

- (NSArray *)viewDataArray {
    unsigned int methodCount = 0;
    Method *methodList = class_copyMethodList(self.class, &methodCount);
    NSMutableArray *mutArr = [NSMutableArray array];
    for (NSInteger i = 0; i < methodCount; i++) {
        Method m = methodList[i];
        SEL sel = method_getName(m);
        NSString *methodName = NSStringFromSelector(sel);
        if ([methodName hasPrefix:@"method_"]) {
            NSDictionary *dic = ((NSDictionary *(*)(id, SEL))objc_msgSend)(self, sel);
            [mutArr insertObject:dic atIndex:0];
        }
    }
    free(methodList);
    return [mutArr copy];
}

- (void)createDataViewModel {
    dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^{
        NSMutableArray *mutArr = [NSMutableArray array];
        NSString *viewKey = NSStringFromClass(self.class);
        NSArray *viewDataArray = [self viewDataArray];
        for (NSInteger i = 0; i < viewDataArray.count; i++) {
            TestProjectTableModel *tableModel = [[TestProjectTableModel alloc] init];
            NSDictionary *dic = [viewDataArray objectAtIndex:i];
            NSString *key = dic.allKeys.firstObject;
            NSDictionary *subDic = [dic objectForKey:key];
            tableModel.title = key;
            tableModel.viewKey = viewKey;
            tableModel.method = [subDic objectForKey:@"method"];
            tableModel.desc = [subDic objectForKey:@"desc"];
            [tableModel calculDataViewHeight];
            [mutArr addObject:tableModel];
        }
        dispatch_async(dispatch_get_main_queue(), ^{
            self.tableView.dataSourceArray = mutArr;
        });
    });
}

- (void)setViewModel:(TestProjectTableModel *)viewModel {
    _viewModel = viewModel;
    SEL sel = NSSelectorFromString(viewModel.method);
    ((void(*)(id, SEL))objc_msgSend)(self, sel);
}

- (instancetype)initCreate {
    if (self = [super init]) {
        
    }
    return self;
}

+ (UIView<TestProjectCreateViewProtocol> *)initCreateByViewModel {
    TestProjectViewTable *view = [[self alloc] initCreate];
    return view;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath viewModel:(TestProjectTableModel *)viewModel {
    if (!viewModel.viewKey) {
        return;
    }
    TestProjectDetailObjectController *vc = [[TestProjectDetailObjectController alloc] initWithViewModel:viewModel];
    [UIApplication.rootNavController presentViewController:vc animated:YES completion:nil];
}

- (TestProjectTableView *)tableView {
    if (!_tableView) {
        _tableView = [[TestProjectTableView alloc] init];
        _tableView.tableViewDelegate = self;
        [self addSubview:_tableView];
        [_tableView testproject_makeConstraints:^(TestProjectViewConstrainMake * _Nonnull make) {
            make.top.bottom.leading.trainling.equal(self);
        }];
    }
    return _tableView;
}

@end
