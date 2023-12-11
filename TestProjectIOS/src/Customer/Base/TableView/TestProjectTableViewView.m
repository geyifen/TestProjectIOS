//
//  TestProjectTableViewView.m
//  TestProjectIOS
//
//  Created by liwenfan on 2023/2/22.
//

#import "TestProjectTableViewView.h"

#import "TestProjectTableViewModel.h"
#import "TestProjectCategoryHeader.h"

#import <objc/message.h>
#import <YYModel/YYModel.h>

@interface TestProjectTableViewView ()

@property (nonatomic, strong) TestProjectTableViewView *compareViewTable;
@property (nonatomic, strong) UIButton *dataModelExpandBtn;

@end

@implementation TestProjectTableViewView

- (instancetype)init {
    if (self = [super init]) {
        [self createDataViewModel];
    }
    return self;
}

- (NSArray *)viewDataArray {
    unsigned int methodCount = 0;
    Method *methodList = class_copyMethodList(self.class, &methodCount);
    NSMutableArray *methodArr = [NSMutableArray array];
    NSString *methodPrefix = @"method_";
    NSString *methodNameKey = @"methodNameKey";
    NSString *methodIndexKey = @"methodIndexKey";

    for (NSInteger i = 0; i < methodCount; i++) {
        Method m = methodList[i];
        SEL sel = method_getName(m);
        NSString *methodName = NSStringFromSelector(sel);
        if ([methodName hasPrefix:methodPrefix]) {
            [methodArr addObject:@{
                methodNameKey: methodName,
                methodIndexKey: [methodName substringFromIndex:methodPrefix.length]
            }];
        }
    }
    [methodArr sortUsingComparator:^NSComparisonResult(NSDictionary *obj1, NSDictionary *obj2) {
        return [obj1[methodIndexKey] integerValue] < [obj2[methodIndexKey] integerValue];
    }];
    NSInteger count = methodArr.count;
    NSMutableArray *mutArr = [NSMutableArray array];
    for (NSInteger j = 0; j < count; j++) {
        NSDictionary *methodDic = methodArr[j];
        TestProjectTableViewParams *params = [[TestProjectTableViewParams alloc] init];
        params.methodIndex = [methodDic[methodIndexKey] integerValue];
        params.selectIndex = j;
        NSDictionary *dic = ((NSDictionary *(*)(id, SEL, TestProjectTableViewParams *))objc_msgSend)(self, NSSelectorFromString(methodDic[methodNameKey]), params);
        [mutArr addObject:dic];
        self.dataMutArr = [NSMutableArray array];
    }
    free(methodList);
    return [mutArr copy];
}

- (void)createDataViewModel {
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, NSEC_PER_SEC * 0.5), dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^{
        NSMutableArray *mutArr = [NSMutableArray array];
        NSArray *viewDataArray = [self viewDataArray];
        for (NSInteger i = 0; i < viewDataArray.count; i++) {
            NSDictionary *dic = [viewDataArray objectAtIndex:i];
            TestProjectTableViewModel *tableModel = [TestProjectTableViewModel yy_modelWithDictionary:dic].dataModel;
            [tableModel calculDataViewHeight];
            [mutArr addObject:tableModel];
        }
        dispatch_async(dispatch_get_main_queue(), ^{
            self.tableView.dataSourceArray = mutArr;
            [self bringSubviewToFront:self.dataModelExpandBtn];
            [self.tableView reloadData];
        });
    });
}

- (void)setViewModel:(TestProjectTableViewModel *)viewModel {
    _viewModel = viewModel;
    self.tableView.dataSourceArray = viewModel.childItems;
    [self.tableView reloadData];
}

- (instancetype)initCreate {
    if (self = [super init]) {
        
    }
    return self;
}

+ (UIView<TestProjectCreateViewProtocol> *)initCreateByViewModel {
    TestProjectTableViewView *view = [[self alloc] initCreate];
    return view;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath viewModel:(TestProjectTableViewModel *)viewModel {
    if (viewModel.clickBlock) {
        viewModel.clickBlock();
    } else {
        NSLog(@"");
    }
}

- (void)reloadAllDataModel {
    self.dataModelExpandBtn.selected = !self.dataModelExpandBtn.selected;
    for (TestProjectTableViewModel *m in self.tableView.dataSourceArray) {
        m.isDataModelExpand = !self.dataModelExpandBtn.selected;
    }
    [self.tableView reloadData];
}

- (void)compareViewModel:(id)viewModel select:(NSNumber *)select {
    if ([select boolValue]) {
        self.compareViewTable.hidden = NO;
        self.compareViewTable.tableView.dataSourceArray = [NSMutableArray arrayWithObject:viewModel];
        [self.compareViewTable.tableView reloadData];
    } else {
        self.compareViewTable.hidden = YES;
    }
}

- (id)setPropertyValueObject:(TestProjectTableViewParams *)params {
    return nil;
}

- (Class)createTableModelClass:(TestProjectTableViewParams *)params {
    return TestProjectTableViewModel.class;
}

- (TestProjectTableViewModel *)createModelWithParams:(TestProjectTableViewParams *)params
                                               title:(NSString *)title
                                            property:(NSString *)property
                                               value:(id)value
                                           operation:(TestProjectCreateModelOperation)operation
                                               block:(void (^)(void))block {
    Class class = [self createTableModelClass:params];
    __block TestProjectTableViewModel *m = [[class alloc] init];
    m.isChild = YES;
    id object = [self setPropertyValueObject:params];
    if (title) {
        title = [NSString stringWithFormat:@"%@\n", title];
    } else {
        title = @"";
    }
    NSMutableString *mutstr = [NSMutableString stringWithString:title];
    if (operation == TestProjectCreateModelOnlyGet || operation == TestProjectCreateModelGetBeforeClickSet || operation == TestProjectCreateModelGetBeforeClickGet || operation == TestProjectCreateModelGetBeforClickGetBeforeClickSet) {
        [mutstr appendFormat:@"获取的属性值(%@)默认为: %@", property, [object valueForKey:property]];
    }
    if (operation == TestProjectCreateModelOnlySet) {
        [object setValue:value forKey:property];
        [mutstr appendFormat:@"获取的属性值(%@)设置为: \n%@", property, [object valueForKey:property]];
    } else if (operation == TestProjectCreateModelGetBeforeClickSet) {
        [mutstr appendFormat:@"\n想要设置的值为: %@", value];
    } else if (operation == TestProjectCreateModelOnlyClickSet) {
        [mutstr appendFormat:@"想要设置的值为: %@", value];
    }
    m.title = mutstr;

    if (operation == TestProjectCreateModelOnlyClickSet || operation == TestProjectCreateModelOnlyClickGet || operation == TestProjectCreateModelGetBeforeClickSet || operation == TestProjectCreateModelGetBeforeClickGet || operation == TestProjectCreateModelGetBeforClickGetBeforeClickSet) {
        WO(wObjc, object);
        WS(wSelf);
        WO(wm, m);
        m.clickBlock = ^{
            NSString *message;
            if (operation == TestProjectCreateModelOnlyClickSet || operation == TestProjectCreateModelGetBeforeClickSet || operation == TestProjectCreateModelGetBeforClickGetBeforeClickSet) {
                message = [NSString stringWithFormat:@"要设置该属性值(%@)为: %@", property, value];
            } else {
                message = [NSString stringWithFormat:@"要获取该属性值(%@)为", property];
            }
            [UIAlertController alertWithTitle:nil message:message cancelTitle:@"取消" cancelBlock:nil sureTitle:@"确定" sureBlock:^{
                NSMutableString *mutStr = [NSMutableString string];
                if (operation == TestProjectCreateModelOnlyClickSet || operation == TestProjectCreateModelGetBeforeClickSet) {
                    [wObjc setValue:value forKey:property];
                } else if (operation == TestProjectCreateModelGetBeforClickGetBeforeClickSet) {
                    [mutStr appendFormat:@"更新之前的上一次数据为(%@): %@", property, [wObjc valueForKey:property]];
                    [wObjc setValue:value forKey:property];
                }
                [mutStr appendFormat:@"\n更新后的属性数据(%@)为: %@", property, [wObjc valueForKey:property]];
                wm.desc = mutStr;
                if ([wm needAutoCalculViewHeight]) {
                    [wm calculDataViewHeight];
                }
                NSInteger atIndex = wSelf.tableView.dataSourceArray.count - params.selectIndex -1;
                TestProjectTableViewModel *vm = [wSelf.tableView.dataSourceArray objectAtIndex:atIndex];
                if ([vm needAutoCalculViewHeight]) {
                    [vm calculDataViewHeight];
                }
                [wSelf.tableView reloadRowsAtIndexPaths:@[[NSIndexPath indexPathForRow:atIndex inSection:0]] withRowAnimation:UITableViewRowAnimationNone];
                if (block) {
                    block();
                }
            }];
        };
    }
    if ([m needAutoCalculViewHeight]) {
        [m calculDataViewHeight];
    }
    [self.dataMutArr addObject:m];
    return m;

}

- (NSMutableArray *)createModelSingleArrayWithParams:(TestProjectTableViewParams *)params
                                               title:(NSString *)title
                                            property:(NSString *)property
                                               value:(id)value
                                           operation:(TestProjectCreateModelOperation)operation
                                               block:(void (^)(void))block {
    [self createModelWithParams:params
                         title:title
                      property:property
                         value:value
                     operation:operation
                         block:block];
    return self.dataMutArr;
}

- (TestProjectTableViewModel *)createModelWithParams:params
                                            property:(NSString *)property
                                               value:(id)value
                                           operation:(TestProjectCreateModelOperation)operation
                                               block:(void(^)(void))block {
    return [self createModelWithParams:params title:nil property:property value:value operation:operation block:block];
}

- (NSMutableArray *)createModelSingleArrayWithParams:(TestProjectTableViewParams *)params
                                            property:(NSString *)property
                                               value:(id)value
                                           operation:(TestProjectCreateModelOperation)operation
                                               block:(void(^)(void))block {
    [self createModelWithParams:params property:property value:value operation:operation block:block];
    return self.dataMutArr;
}

- (TestProjectTableViewModel *)createModelWithParams:(TestProjectTableViewParams *)params
                                               title:(NSString *)title
                                         methodBlock:(NSString *(^)(void))methodBlock {
    Class class = [self createTableModelClass:params];
    __block TestProjectTableViewModel *m = [[class alloc] init];
    m.isChild = YES;
    m.title = [NSString stringWithFormat:@"%@\n点击后获取的描述信息:\n", title];
    if ([m needAutoCalculViewHeight]) {
        [m calculDataViewHeight];
    }
    WS(wSelf);
    WO(wm, m);
    m.clickBlock = ^{
        NSString *desc = nil;
        if (methodBlock) {
            desc = methodBlock();
        }
        wm.desc = desc;
        if (!desc) {
            return;
        }
        if ([wm needAutoCalculViewHeight]) {
            [wm calculDataViewHeight];
        }
        NSInteger atIndex = params.selectIndex;
        TestProjectTableViewModel *vm = [wSelf.tableView.dataSourceArray objectAtIndex:atIndex];
        if ([vm needAutoCalculViewHeight]) {
            [vm calculDataViewHeight];
        }
        [wSelf.tableView reloadRowsAtIndexPaths:@[[NSIndexPath indexPathForRow:atIndex inSection:0]] withRowAnimation:UITableViewRowAnimationNone];
    };
    [self.dataMutArr addObject:m];
    return m;
}

- (NSMutableArray *)createModelSingleArrayWithParams:(TestProjectTableViewParams *)params
                                               title:(NSString *)title
                                         methodBlock:(NSString *(^)(void))methodBlock {
    [self createModelWithParams:params
                         title:title
                   methodBlock:methodBlock];
    return self.dataMutArr;
}

- (TestProjectTableViewModel *)createModelWithParams:params
                                               title:(NSString *)title
                                               block:(void(^)(void))block {
    return [self createModelWithParams:params
                                 title:title
                        modelKeyValue:nil
                                 block:block];
}

- (NSMutableArray *)createModelSingleArrayWithParams:(TestProjectTableViewParams *)params
                                               title:(NSString *)title
                                               block:(void (^)(void))block {
    return [self createModelSingleArrayWithParams:params
                                            title:title
                                    modelKeyValue:nil
                                            block:block];
}

- (TestProjectTableViewModel *)createModelWithParams:params
                                      attributeTitle:(NSAttributedString *)attributeTitle
                                               block:(void (^)(void))block {
    Class class = [self createTableModelClass:params];
    TestProjectTableViewModel *m = [[class alloc] init];
    m.titleMutAttrStr = [[NSMutableAttributedString alloc] initWithAttributedString:attributeTitle];
    m.isChild = YES;
    if (block) {
        m.clickBlock = ^{
            [UIAlertController alertWithTitle:attributeTitle.string message:nil cancelTitle:@"取消" cancelBlock:nil sureTitle:@"确定" sureBlock:block];
        };
    }
    if ([m needAutoCalculViewHeight]) {
        [m calculDataViewHeight];
    }
    [self.dataMutArr addObject:m];
    return m;
}

- (NSMutableArray *)createModelSingleArrayWithParams:(TestProjectTableViewParams *)params
                                      attributeTitle:(NSAttributedString *)attributeTitle
                                               block:(void (^)(void))block {
    [self createModelWithParams:params attributeTitle:attributeTitle block:block];
    return self.dataMutArr;
}

- (TestProjectTableViewModel *)createModelWithParams:params
                                               title:(NSString *)title
                                       modelKeyValue:(NSDictionary *)modelKeyValue
                                               block:(void(^)(void))block {
    Class class = [self createTableModelClass:params];
    TestProjectTableViewModel *m = [[class alloc] init];
    m.title = title;
    m.isChild = YES;
    if (modelKeyValue) {
        NSMutableString *mutTitle = [NSMutableString stringWithString:title];
        for (NSString *key in modelKeyValue.allKeys) {
            id value = modelKeyValue[key];
            [m setValue:value forKey:key];
            if (mutTitle.length > 0) {
                [mutTitle appendFormat:@"\n设置的属性是:%@ 值是:%@", key, value];
            } else {
                [mutTitle appendFormat:@"设置的属性是:%@ 值是:%@", key, value];
            }
        }
        m.title = mutTitle;
    }
    if (block) {
        m.clickBlock = ^{
            [UIAlertController alertWithTitle:title message:nil cancelTitle:@"取消" cancelBlock:nil sureTitle:@"确定" sureBlock:block];
        };
    }
    if ([m needAutoCalculViewHeight]) {
        [m calculDataViewHeight];
    }
    [self.dataMutArr addObject:m];
    return m;
}

- (NSMutableArray *)createModelSingleArrayWithParams:(TestProjectTableViewParams *)params
                                               title:(NSString *)title
                                       modelKeyValue:(NSDictionary *)modelKeyValue
                                               block:(void (^)(void))block {
    [self createModelWithParams:params title:title modelKeyValue:modelKeyValue block:block];
    return self.dataMutArr;
}

- (NSMutableArray *)createModelSingleArrayWithParams:(TestProjectTableViewParams *)params
                                       modelKeyValue:(NSDictionary *)modelKeyValue
                                               block:(void (^)(void))block {
    [self createModelWithParams:params title:nil modelKeyValue:modelKeyValue block:block];
    return self.dataMutArr;
}

- (void)addNotificationWithName:(NSString *)name selector:(SEL)selector {
    [[NSNotificationCenter defaultCenter] removeObserver:self name:name object:nil];
    [[NSNotificationCenter defaultCenter] addObserver:self selector:selector name:name object:nil];
}

- (TestProjectViewModelTableView *)tableView {
    if (!_tableView) {
        _tableView = [[TestProjectViewModelTableView alloc] initWithFrame:CGRectZero
                                                                    style:UITableViewStyleGrouped
                                                                 delegate:self.delegate
                                                               dataSource:self.dataSource];
        _tableView.cellDelegate = self;
        _tableView.tableViewDelegate = self;
        [self addSubview:_tableView];
        [_tableView testproject_makeConstraints:^(TestProjectViewConstrainMake * _Nonnull make) {
            make.height.bottom.leading.trainling.equal(self);
        }];
    }
    return _tableView;
}

- (NSMutableArray *)dataMutArr {
    if (!_dataMutArr) {
        _dataMutArr = [NSMutableArray array];
    }
    return _dataMutArr;
}

- (TestProjectTableViewView *)compareViewTable {
    if (!_compareViewTable) {
        _compareViewTable = [TestProjectTableViewView initCreateByViewModel];
        UIView *view = UIApplication.rootNavController.view;
        [view addSubview:_compareViewTable];
        [_compareViewTable testproject_makeConstraints:^(TestProjectViewConstrainMake * _Nonnull make) {
            make.leading.trainling.equal(view);
            make.top.equal(view).offset(UIApplication.safe_top);
            make.height.equal(@250);
        }];
    }
    return _compareViewTable;
}

- (UIButton *)dataModelExpandBtn {
    if (!_dataModelExpandBtn) {
        _dataModelExpandBtn = [UIButton buttonWithType:UIButtonTypeContactAdd];
        [_dataModelExpandBtn addTarget:self action:@selector(reloadAllDataModel) forControlEvents:UIControlEventTouchUpInside];
        [self addSubview:_dataModelExpandBtn];
        [_dataModelExpandBtn testproject_makeConstraints:^(TestProjectViewConstrainMake * _Nonnull make) {
            make.height.width.equal(@15);
            make.leading.equal(self);
            make.bottom.equal(self).offset(-UIApplication.safe_bottom);
        }];
    }
    return _dataModelExpandBtn;
}

@end
