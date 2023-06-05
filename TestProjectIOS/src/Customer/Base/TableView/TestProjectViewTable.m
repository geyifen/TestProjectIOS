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

- (TestProjectTableModel *)createClickSetTableModelWithProperty:(NSString *)property value:(id)value {
    return [self createClickSetTableModelWithProperty:property value:value block:nil];
}

- (NSMutableArray *)createClickSetSingleArrayTableModelWithProperty:(NSString *)property value:(id)value {
    [self createClickSetTableModelWithProperty:property value:value];
    return self.dataMutArr;
}

- (TestProjectTableModel *)createClickSetTableModelWithProperty:(NSString *)property value:(id)value block:(nullable void (^)(void))block {
    Class class = [self createTableModelClass];
    TestProjectTableModel *m = [[class alloc] init];
    id object = [self setPropertyValueObject];
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
    Class class = [self createTableModelClass];
    __block TestProjectTableModel *m = [[class alloc] init];
    m.isChild = YES;
    m.title = [NSString stringWithFormat:@"点击后获取的属性值(%@)为：\n", property];
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
