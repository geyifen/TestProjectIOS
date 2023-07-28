//
//  TestProjectViewTable.m
//  TestProjectIOS
//
//  Created by zjrcumac on 2023/2/22.
//

#import "TestProjectViewTable.h"

#import "TestProjectTableModel.h"
#import "TestProjectCategoryHeader.h"

#import <objc/message.h>
#import <YYModel/YYModel.h>

@interface TestProjectViewTable ()

@property (nonatomic, strong) TestProjectViewTable *compareViewTable;
@property (nonatomic, strong) UIButton *dataModelExpandBtn;

@end

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
    NSInteger j = 0;
    for (NSInteger i = 0; i < methodCount; i++) {
        Method m = methodList[i];
        SEL sel = method_getName(m);
        NSString *methodName = NSStringFromSelector(sel);
        if ([methodName hasPrefix:@"method_"]) {
            NSDictionary *dic = ((NSDictionary *(*)(id, SEL, NSInteger))objc_msgSend)(self, sel, j);
            [mutArr insertObject:dic atIndex:0];
            self.dataMutArr = [NSMutableArray array];
            j++;
        }
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
            TestProjectTableModel *tableModel = [TestProjectTableModel yy_modelWithDictionary:dic].dataModel;
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

- (void)setViewModel:(TestProjectTableModel *)viewModel {
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
    TestProjectViewTable *view = [[self alloc] initCreate];
    return view;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath viewModel:(TestProjectTableModel *)viewModel {
    if (viewModel.clickBlock) {
        viewModel.clickBlock();
    } else {
        NSLog(@"");
    }
}

- (void)reloadData:(id)viewModel {
    NSInteger index = [self.tableView.dataSourceArray indexOfObject:viewModel];
    [self.tableView reloadRowsAtIndexPaths:@[[NSIndexPath indexPathForRow:index inSection:0]] withRowAnimation:UITableViewRowAnimationFade];
//    if (self.delegate && [self.delegate respondsToSelector:@selector(reloadData)]) {
//        [self.delegate performSelector:@selector(reloadData)];
//    }
}

- (void)reloadAllDataModel {
    self.dataModelExpandBtn.selected = !self.dataModelExpandBtn.selected;
    for (TestProjectTableModel *m in self.tableView.dataSourceArray) {
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

- (id)setPropertyValueObject {
    return nil;
}

- (Class)createTableModelClass {
    return TestProjectTableModel.class;
}

- (TestProjectTableModel *)createModelWithIndex:(NSInteger)index
                                          title:(NSString *)title
                                       property:(NSString *)property
                                          value:(id)value
                                      operation:(TestProjectCreateModelOperation)operation
                                          block:(void (^)(void))block {
    Class class = [self createTableModelClass];
    __block TestProjectTableModel *m = [[class alloc] init];
    m.isChild = YES;
    id object = [self setPropertyValueObject];
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
                NSInteger atIndex = wSelf.tableView.dataSourceArray.count - index -1;
                TestProjectTableModel *vm = [wSelf.tableView.dataSourceArray objectAtIndex:atIndex];
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

- (NSMutableArray *)createModelSingleArrayWithIndex:(NSInteger)index
                                              title:(NSString *)title
                                           property:(NSString *)property
                                              value:(id)value
                                          operation:(TestProjectCreateModelOperation)operation
                                              block:(void (^)(void))block {
    [self createModelWithIndex:index
                         title:title
                      property:property
                         value:value
                     operation:operation
                         block:block];
    return self.dataMutArr;
}

- (TestProjectTableModel *)createModelWithIndex:(NSInteger)index
                                       property:(NSString *)property
                                          value:(id)value
                                      operation:(TestProjectCreateModelOperation)operation
                                          block:(void(^)(void))block {
    return [self createModelWithIndex:index title:nil property:property value:value operation:operation block:block];
}

- (NSMutableArray *)createModelSingleArrayWithIndex:(NSInteger)index
                                           property:(NSString *)property
                                              value:(id)value
                                          operation:(TestProjectCreateModelOperation)operation
                                              block:(void(^)(void))block {
    [self createModelWithIndex:index property:property value:value operation:operation block:block];
    return self.dataMutArr;
}

- (TestProjectTableModel *)createModelWithIndex:(NSInteger)index
                                          title:(NSString *)title
                                    methodBlock:(NSString *(^)(void))methodBlock {
    Class class = [self createTableModelClass];
    __block TestProjectTableModel *m = [[class alloc] init];
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
        NSInteger atIndex = wSelf.tableView.dataSourceArray.count - index -1;
        TestProjectTableModel *vm = [wSelf.tableView.dataSourceArray objectAtIndex:atIndex];
        if ([vm needAutoCalculViewHeight]) {
            [vm calculDataViewHeight];
        }
        [wSelf.tableView reloadRowsAtIndexPaths:@[[NSIndexPath indexPathForRow:atIndex inSection:0]] withRowAnimation:UITableViewRowAnimationNone];
    };
    [self.dataMutArr addObject:m];
    return m;
}

- (NSMutableArray *)createModelSingleArrayWithIndex:(NSInteger)index
                                              title:(NSString *)title
                                        methodBlock:(NSString *(^)(void))methodBlock {
    [self createModelWithIndex:index
                         title:title
                   methodBlock:methodBlock];
    return self.dataMutArr;
}

- (TestProjectTableModel *)createModelWithIndex:(NSInteger)index
                                          title:(NSString *)title
                                          block:(void(^)(void))block {
    return [self createModelWithIndex:index
                                title:title
                        modelKeyValue:nil
                                block:block];
}

- (NSMutableArray *)createModelSingleArrayWithIndex:(NSInteger)index
                                              title:(NSString *)title
                                              block:(void (^)(void))block {
    return [self createModelSingleArrayWithIndex:index
                                           title:title
                                   modelKeyValue:nil
                                           block:block];
}

- (TestProjectTableModel *)createModelWithIndex:(NSInteger)index
                                 attributeTitle:(NSAttributedString *)attributeTitle
                                          block:(void (^)(void))block {
    Class class = [self createTableModelClass];
    TestProjectTableModel *m = [[class alloc] init];
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

- (NSMutableArray *)createModelSingleArrayWithIndex:(NSInteger)index
                                     attributeTitle:(NSAttributedString *)attributeTitle
                                              block:(void (^)(void))block {
    [self createModelWithIndex:index attributeTitle:attributeTitle block:block];
    return self.dataMutArr;
}

- (TestProjectTableModel *)createModelWithIndex:(NSInteger)index
                                          title:(NSString *)title
                                  modelKeyValue:(NSDictionary *)modelKeyValue
                                          block:(void(^)(void))block {
    Class class = [self createTableModelClass];
    TestProjectTableModel *m = [[class alloc] init];
    m.title = title;
    m.isChild = YES;
    if (modelKeyValue) {
        for (NSString *key in modelKeyValue.allKeys) {
            [m setValue:modelKeyValue[key] forKey:key];
        }
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

- (NSMutableArray *)createModelSingleArrayWithIndex:(NSInteger)index
                                              title:(NSString *)title
                                      modelKeyValue:(NSDictionary *)modelKeyValue
                                              block:(void (^)(void))block {
    [self createModelWithIndex:index title:title block:block];
    return self.dataMutArr;
}







- (TestProjectTableModel *)createClickSetTableModelWithProperty:(NSString *)property value:(id)value {
    return [self createClickSetTableModelWithProperty:property value:value block:nil];
}

- (NSMutableArray *)createClickSetSingleArrayTableModelWithProperty:(NSString *)property value:(id)value {
    [self createClickSetTableModelWithProperty:property value:value];
    return self.dataMutArr;
}

- (TestProjectTableModel *)createClickSetTableModelWithProperty:(NSString *)property value:(id)value block:(nullable void (^)(void))block {
    return [self createClickSetTableModelWithProperty:property value:value before:NO block:block];
}

- (NSMutableArray *)createClickSetSingleArrayTableModelBeforeWithProperty:(NSString *)property value:(id)value {
    [self createClickSetTableModelWithProperty:property value:value before:YES block:nil];
    return self.dataMutArr;
}

- (TestProjectTableModel *)createClickSetTableModelWithProperty:(NSString *)property value:(id)value before:(BOOL)before block:(nullable void (^)(void))block {
    Class class = [self createTableModelClass];
    TestProjectTableModel *m = [[class alloc] init];
    id object = [self setPropertyValueObject];
    if (before) {
        m.abstract = [NSString stringWithFormat:@"获取的属性值(%@)为：\n%@", property, [object valueForKey:property]];;
    }
    NSString *title = [NSString stringWithFormat:@"设置的属性值(%@)为：%@", property, value];
    m.title = title;
    m.isChild = YES;
    WO(wObjc, object);
    if (property && value) {
        m.clickBlock = ^{
            [UIAlertController alertWithTitle:title message:nil cancelTitle:@"取消" cancelBlock:nil sureTitle:@"确定" sureBlock:^{
                [wObjc setValue:value forKey:property];
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

- (TestProjectTableModel *)createClickSetTableModelWithProperty:(NSString *)property value:(id)value title:(NSString *)title block:(void(^)(void))block {
    Class class = [self createTableModelClass];
    TestProjectTableModel *m = [[class alloc] init];
    m.title = title;
    m.isChild = YES;
    WS(wSelf);
    if (property && value) {
        m.clickBlock = ^{
            [UIAlertController alertWithTitle:title message:nil cancelTitle:@"取消" cancelBlock:nil sureTitle:@"确定" sureBlock:^{
                id object = [wSelf setPropertyValueObject];
                [object setValue:value forKey:property];
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

- (TestProjectTableModel *)createTableModelWithTitle:(NSString *)title block:(void(^)(void))block {
    Class class = [self createTableModelClass];
    TestProjectTableModel *m = [[class alloc] init];
    m.title = title;
    m.isChild = YES;
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

- (NSMutableArray *)createTableModelSingleArrayWithTitle:(NSString *)title block:(void(^)(void))block {
    [self createTableModelWithTitle:title block:block];
    return self.dataMutArr;
}

- (TestProjectTableModel *)createTableModelWithProperty:(NSString *)property value:(id)value {
    Class class = [self createTableModelClass];
    TestProjectTableModel *m = [[class alloc] init];
    m.isChild = YES;
    id object = [self setPropertyValueObject];

    if (property && value) {
        [object setValue:value forKey:property];
    }
    m.title = [NSString stringWithFormat:@"获取的属性值(%@)为：\n%@", property, [object valueForKey:property]];
    if ([m needAutoCalculViewHeight]) {
        [m calculDataViewHeight];
    }
    [self.dataMutArr addObject:m];
    return m;
}

- (NSMutableArray *)createTableModelSingleArrayWithProperty:(NSString *)property value:(id)value {
    [self createTableModelWithProperty:property value:value];
    return self.dataMutArr;
}

- (NSMutableArray *)createTableModelSingleArrayWithProperty:(NSString *)property index:(NSInteger)index {
    return [self createTableModelSingleArrayWithProperty:property index:index before:NO];
}

- (NSMutableArray *)createTableModelSingleArrayWithProperty:(NSString *)property index:(NSInteger)index before:(BOOL)before {
    Class class = [self createTableModelClass];
    __block TestProjectTableModel *m = [[class alloc] init];
    m.isChild = YES;
    m.title = [NSString stringWithFormat:@"点击后获取的属性值(%@)为：\n", property];
    if (before) {
        id object = [self setPropertyValueObject];
        m.desc = [NSString stringWithFormat:@"%@", [object valueForKey:property]];
    }
    if ([m needAutoCalculViewHeight]) {
        [m calculDataViewHeight];
    }
    WS(wSelf);
    WO(wObjc, m);
    m.clickBlock = ^{
        id object = [wSelf setPropertyValueObject];
        wObjc.desc = [NSString stringWithFormat:@"%@", [object valueForKey:property]];
        if ([wObjc needAutoCalculViewHeight]) {
            [wObjc calculDataViewHeight];
        }
        NSInteger atIndex = wSelf.tableView.dataSourceArray.count - index -1;
        TestProjectTableModel *vm = [wSelf.tableView.dataSourceArray objectAtIndex:atIndex];
        if ([vm needAutoCalculViewHeight]) {
            [vm calculDataViewHeight];
        }
        [wSelf.tableView reloadRowsAtIndexPaths:@[[NSIndexPath indexPathForRow:atIndex inSection:0]] withRowAnimation:UITableViewRowAnimationNone];
    };
    [self.dataMutArr addObject:m];
    return self.dataMutArr;
}

- (NSMutableArray *)createTableModelSingleArrayWithMethodBlock:(NSString *(^)(void))methodBlock title:(NSString *)title index:(NSInteger)index {
    [self createTableModelSingleArrayWithMethodBlock:methodBlock title:title index:index];
    return self.dataMutArr;
}

- (TestProjectTableModel *)createTableModelWithMethodBlock:(NSString *(^)(void))methodBlock title:(NSString *)title index:(NSInteger)index {
    Class class = [self createTableModelClass];
    __block TestProjectTableModel *m = [[class alloc] init];
    m.isChild = YES;
    m.title = [NSString stringWithFormat:@"%@\n点击后获取的描述信息:\n", title];
    if ([m needAutoCalculViewHeight]) {
        [m calculDataViewHeight];
    }
    WS(wSelf);
    WO(wObjc, m);
    m.clickBlock = ^{
        NSString *desc = nil;
        if (methodBlock) {
            desc = methodBlock();
        }
        wObjc.desc = desc;
        if ([wObjc needAutoCalculViewHeight]) {
            [wObjc calculDataViewHeight];
        }
        NSInteger atIndex = wSelf.tableView.dataSourceArray.count - index -1;
        TestProjectTableModel *vm = [wSelf.tableView.dataSourceArray objectAtIndex:atIndex];
        if ([vm needAutoCalculViewHeight]) {
            [vm calculDataViewHeight];
        }
        [wSelf.tableView reloadRowsAtIndexPaths:@[[NSIndexPath indexPathForRow:atIndex inSection:0]] withRowAnimation:UITableViewRowAnimationNone];
    };
    [self.dataMutArr addObject:m];
    return m;
}

- (void)addNotificationWithName:(NSString *)name selector:(SEL)selector {
    [[NSNotificationCenter defaultCenter] removeObserver:self name:name object:nil];
    [[NSNotificationCenter defaultCenter] addObserver:self selector:selector name:name object:nil];
}

- (TestProjectBaseTableView *)tableView {
    if (!_tableView) {
        _tableView = [[TestProjectBaseTableView alloc] init];
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

- (TestProjectViewTable *)compareViewTable {
    if (!_compareViewTable) {
        _compareViewTable = [TestProjectViewTable initCreateByViewModel];
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
