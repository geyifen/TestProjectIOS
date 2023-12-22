//
//  TestProjectTableViewView.m
//  TestProjectIOS
//
//  Created by liwenfan on 2023/2/22.
//

#import "TestProjectTableViewView.h"

#import "TestProjectTableViewModel.h"
#import "TestProjectCategoryHeader.h"
#import "TestProjectSectionViewTab.h"

#import <objc/message.h>
#import <YYModel/YYModel.h>

@interface TestProjectTableViewView () <TestProjectPreviewProtocol>

@property (nonatomic, strong) TestProjectTableViewView *compareViewTable;
@property (nonatomic, strong) UIButton *dataModelExpandBtn;

@property (nonatomic, strong) TestProjectViewModelTableView *childTableView;
@property (nonatomic, assign) TestProjectPreviewState tabViewState;
@property (nonatomic, weak) id<TestProjectPreviewProtocol> previewTarget;

@end

@implementation TestProjectTableViewView

- (instancetype)init {
    if (self = [super init]) {
        [self createDataViewModel];
    }
    return self;
}
- (NSArray<TestProjectMethodModel *> *)viewDataArray{
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
        params.selectIndex = j + self.offsetSelectIndex;
        params.methodPrefix = methodPrefix;

        NSDictionary *dic = ((NSDictionary *(*)(id, SEL, TestProjectTableViewParams *))objc_msgSend)(self, NSSelectorFromString(methodDic[methodNameKey]), params);
        TestProjectMethodModel *methodM = [[TestProjectMethodModel alloc] init];
        methodM.params = params;
        methodM.dataDic = dic;
        [mutArr addObject:methodM];
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
            TestProjectMethodModel *methodM = [viewDataArray objectAtIndex:i];
            TestProjectTableViewModel *tableModel = [TestProjectTableViewModel yy_modelWithDictionary:methodM.dataDic].dataModel;
            tableModel.abstract = [NSString stringWithFormat:@"%@\n%@", methodM.params, tableModel.abstract];
            [tableModel calculDataViewHeight:nil];
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
    if (tableView == _childTableView) {
        [self.previewTarget didSelectPreviewItem:viewModel];
        WS(wSelf);
        [self expandTableViewState:^{
            [wSelf.tableView scrollToRowAtIndexPath:indexPath atScrollPosition:UITableViewScrollPositionNone animated:YES];
        }];
        return;
    }
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
                [wSelf reloadRowWithParams:params
                                      desc:mutstr
                                     model:wm];
                if (block) {
                    block();
                }
            }];
        };
    }
    if ([m needAutoCalculViewHeight]) {
        [m calculDataViewHeight:params];
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
        [m calculDataViewHeight:params];
    }
    WS(wSelf);
    WO(wm, m);
    m.clickBlock = ^{
        NSString *desc = nil;
        if (methodBlock) {
            desc = methodBlock();
        }
        if (!desc) {
            return;
        }
        [wSelf reloadRowWithParams:params
                              desc:desc
                             model:wm];
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
        [m calculDataViewHeight:params];
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
        NSMutableString *mutTitle = [NSMutableString stringWithString:title?:@""];
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
        [m calculDataViewHeight:params];
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

- (void)reloadRowWithParams:(TestProjectTableViewParams *)params
                       desc:(NSString *)desc
                      model:(TestProjectTableViewModel *)model {
    model.desc = desc;
    if ([model needAutoCalculViewHeight]) {
        [model calculDataViewHeight:params];
    }
    NSInteger atIndex = params.selectIndex;
    TestProjectTableViewModel *vm = [self.tableView.dataSourceArray objectAtIndex:atIndex];
    if ([vm needAutoCalculViewHeight]) {
        [vm calculDataViewHeight:params];
    }
    [self.tableView reloadRowsAtIndexPaths:@[[NSIndexPath indexPathForRow:atIndex inSection:0]]
                          withRowAnimation:UITableViewRowAnimationNone];
}

- (void)reloadCurrentTableViewModelWithDesc:(NSString *)desc {
    [self reloadRowWithParams:_currentSelectTableViewParams
                         desc:desc
                        model:_currentSelectTableViewModel];
}

- (void)addNotificationWithName:(NSString *)name selector:(SEL)selector {
    [[NSNotificationCenter defaultCenter] removeObserver:self name:name object:nil];
    [[NSNotificationCenter defaultCenter] addObserver:self selector:selector name:name object:nil];
}

#pragma mark - TestProjectPreviewProtocol
- (TestProjectPreviewState)optionPreviewForExpand:(id<TestProjectPreviewProtocol>)previewTarget {
    self.previewTarget = previewTarget;
    TestProjectPreviewState tabViewState = self.tabViewState;
    if (!_childTableView) {
        dispatch_async(dispatch_get_global_queue(0, 0), ^{
            NSMutableArray *mutArr = [NSMutableArray array];
            for (NSInteger i = 0; i < self.tableView.dataSourceArray.count; i++) {
                TestProjectTableViewModel *vm = [self.tableView.dataSourceArray objectAtIndex:i];
                TestProjectPreviewTableViewModel *viewModel = [[TestProjectPreviewTableViewModel alloc] init];
                viewModel.title = vm.title;
                viewModel.abstract = vm.abstract;
                [viewModel calculDataViewHeight:nil];
                [mutArr addObject:viewModel];
            }
            dispatch_async(dispatch_get_main_queue(), ^{
                [self.childTableView testproject_makeConstraints:^(TestProjectViewConstrainMake * _Nonnull make) {
                    make.top.leading.trainling.equal(self);
                    make.height.equal(@0);
                }];
                [self layoutIfNeeded];

                self.childTableView.dataSourceArray = mutArr;
                [self expandTableViewState:nil];
                [self.childTableView reloadData];
            });
        });
    } else {
        [self expandTableViewState:nil];
    }
    return tabViewState;
}

- (void)expandTableViewState:(dispatch_block_t)completion {
    if (self.tabViewState == TestProjectPreviewStateOfAnimated) {
        return;
    }
    WS(wSelf);
    if (self.tabViewState == TestProjectPreviewStateOfNO) {
        self.tabViewState = TestProjectPreviewStateOfAnimated;
        [UIView animateWithDuration:0.25 animations:^{
            [wSelf.childTableView testproject_updateConstraints:^(TestProjectViewConstrainMake * _Nonnull make) {
                make.height.equal(@(wSelf.viewHeight));
            }];
            [wSelf layoutIfNeeded];
        } completion:^(BOOL finished) {
            wSelf.tabViewState = TestProjectPreviewStateOfYES;
            if (completion) {
                completion();
            }
        }];
    } else {
        self.tabViewState = TestProjectPreviewStateOfAnimated;
        [UIView animateWithDuration:0.25 animations:^{
            [wSelf.childTableView testproject_updateConstraints:^(TestProjectViewConstrainMake * _Nonnull make) {
                make.height.equal(@0);
            }];
            [wSelf layoutIfNeeded];
        } completion:^(BOOL finished) {
            wSelf.tabViewState = TestProjectPreviewStateOfNO;
            if (completion) {
                completion();
            }
        }];
    }
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

- (TestProjectViewModelTableView *)childTableView {
    if (!_childTableView) {
        _childTableView = [[TestProjectViewModelTableView alloc] initWithStyleGrouped];
        _childTableView.tableViewDelegate = self;
        [self addSubview:_childTableView];
    }
    return _childTableView;
}

@end
