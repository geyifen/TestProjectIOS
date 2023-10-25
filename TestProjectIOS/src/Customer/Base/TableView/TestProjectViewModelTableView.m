//
//  TestProjectViewModelTableView.m
//  TestProjectIOS
//
//  Created by liwenfan on 2023/1/29.
//

#import "TestProjectViewModelTableView.h"

#import <objc/runtime.h>

#import "TestProjectModel.h"

#define kUITableViewCell @"UITableViewCell"
#define kUITableViewHeaderFooterView @"UITableViewHeaderFooterView"

@interface TestProjectViewModelTableView () <UITableViewDelegate, UITableViewDataSource>

/**外部自定义的delegate**/
@property (nonatomic, weak) id<UITableViewDelegate> customerDelegate;
/**外部自定义的dataSource**/
@property (nonatomic, weak) id<UITableViewDataSource> customerDataSource;
/**是否实现delegate的字典**/
@property (nonatomic, strong) NSMutableDictionary *delegateRespondDic;
/**转发实现delegate的字典**/
@property (nonatomic, strong) NSMutableDictionary *delegateForwardDic;
/**是否实现dataSource的字典**/
@property (nonatomic, strong) NSMutableDictionary *dataSourceRespondDic;
/**转发实现dataSource的字典**/
@property (nonatomic, strong) NSMutableDictionary *dataSourceForwardDic;

@end

@implementation TestProjectViewModelTableView

- (instancetype)initWithCoder:(NSCoder *)coder {
    if (self = [super initWithCoder:coder]) {
        [self prepareView];
    }
    return self;
}

- (instancetype)initWithFrame:(CGRect)frame {
    if (self = [super initWithFrame:frame]) {
        [self prepareView];
    }
    return self;
}

- (instancetype)initWithFrame:(CGRect)frame style:(UITableViewStyle)style {
    if (self = [super initWithFrame:frame style:style]) {
        [self prepareView];
    }
    return self;
}

- (instancetype)initWithStyle:(UITableViewStyle)style {
    if (self = [super initWithFrame:CGRectZero style:style]) {
        [self prepareView];
    }
    return self;
}

- (instancetype)initWithStyleGrouped {
    if (self = [super initWithFrame:CGRectZero style:UITableViewStyleGrouped]) {
        [self prepareView];
    }
    return self;
}

- (instancetype)initWithFrame:(CGRect)frame
                        style:(UITableViewStyle)style
                     delegate:(nonnull id<UITableViewDelegate>)delegate
                   dataSource:(nonnull id<UITableViewDataSource>)dataSource {
    if (self = [super initWithFrame:frame style:style]) {
        if (delegate) {
            self.customerDelegate = delegate;
            self.delegateRespondDic = [self findRespondSelectWithObject:delegate protocol:@protocol(UITableViewDelegate)];
            self.delegateForwardDic = [NSMutableDictionary dictionaryWithDictionary:self.delegateRespondDic];
        }
        if (dataSource) {
            self.customerDataSource = dataSource;
            self.dataSourceRespondDic = [self findRespondSelectWithObject:dataSource protocol:@protocol(UITableViewDataSource)];
            self.dataSourceForwardDic = [NSMutableDictionary dictionaryWithDictionary:self.dataSourceRespondDic];
        }
        [self prepareView];
    }
    return self;
}

- (NSMutableDictionary *)findRespondSelectWithObject:(id)object protocol:(Protocol *)protocol {
    unsigned int pCount = 0;
    Protocol *__unsafe_unretained *pList = protocol_copyProtocolList(protocol, &pCount);
    NSMutableDictionary *mutDic = [NSMutableDictionary dictionary];
    for (NSInteger i = 0; i < pCount; i++) {
        Protocol *p = pList[i];
        if (protocol_isEqual(p, @protocol(NSObject))) {
            continue;
        }
        if (![object conformsToProtocol:p]) {
            continue;
        }
        unsigned int pMethodCount = 0;
        struct objc_method_description *pMethodList = protocol_copyMethodDescriptionList(p, NO, YES, &pMethodCount);
        for (NSInteger j = 0; j < pMethodCount; j++) {
            struct objc_method_description pMethod = pMethodList[j];
            if ([object respondsToSelector:pMethod.name]) {
                [mutDic setObject:object forKey:NSStringFromSelector(pMethod.name)];
            }
        }
        free(pMethodList);
    }
    free(pList);
    return mutDic;
}

- (void)prepareView {
    self.backgroundColor = [UIColor whiteColor];
    self.dataSource = self;
    self.delegate = self;
    self.separatorStyle = UITableViewCellSeparatorStyleNone;
    self.showsVerticalScrollIndicator = NO;
    self.showsHorizontalScrollIndicator = NO;
    self.estimatedRowHeight = 0;
    self.estimatedSectionFooterHeight = 0;
    self.estimatedSectionHeaderHeight = 0;
    [self registerClass:[UITableViewCell class] forCellReuseIdentifier:kUITableViewCell];
    [self registerClass:[UITableViewHeaderFooterView class] forHeaderFooterViewReuseIdentifier:kUITableViewHeaderFooterView];
}

- (void)setDelegate:(id<UITableViewDelegate>)delegate {
    [super setDelegate:self];
}

- (void)setDataSource:(id<UITableViewDataSource>)dataSource {
    [super setDataSource:self];
}

- (BOOL)respondsToSelector:(SEL)aSelector {
    BOOL res = [super respondsToSelector:aSelector];
    if (!res && self.customerDelegate && self.delegateRespondDic.count > 0) {
        NSString *key = NSStringFromSelector(aSelector);
        if ([self.delegateRespondDic objectForKey:key]) {
            [self.delegateRespondDic removeObjectForKey:key];
            return YES;
        }
    }
    if (!res && self.customerDataSource && self.dataSourceRespondDic.count > 0) {
        NSString *key = NSStringFromSelector(aSelector);
        if ([self.dataSourceRespondDic objectForKey:key]) {
            [self.dataSourceRespondDic removeObjectForKey:key];
            return YES;
        }
    }
    return res;
}

- (id)forwardingTargetForSelector:(SEL)aSelector {
    if (self.customerDelegate && self.delegateForwardDic.count > 0) {
        NSString *key = NSStringFromSelector(aSelector);
        if ([self.delegateForwardDic objectForKey:key]) {
            return [self.delegateForwardDic objectForKey:key];
        }
    }
    if (self.customerDataSource && self.dataSourceForwardDic.count > 0) {
        NSString *key = NSStringFromSelector(aSelector);
        if ([self.dataSourceForwardDic objectForKey:key]) {
            return [self.dataSourceForwardDic objectForKey:key];
        }
    }
    return [super forwardingTargetForSelector:aSelector];
}


- (id<TestProjectViewModelProtocol>)getViewModel:(NSIndexPath *)indexPath {
    if ([self tableViewDelegateRespondsToSelector:@selector(viewModelAtIndexPath:)]) {
        return [self.tableViewDelegate viewModelAtIndexPath:indexPath];
    }
    if (self.isMultipleSection) {
        NSArray *array = self.dataSourceArray[indexPath.section];
        return array[indexPath.row];
    } else {
        return self.dataSourceArray[indexPath.row];
    }
}

- (BOOL)tableViewDelegateRespondsToSelector:(SEL)sel {
    if (self.customerDelegate && [self.customerDelegate respondsToSelector:sel]) {
        return YES;
    }
    return NO;
}

- (BOOL)tableViewDataSourceRespondsToSelector:(SEL)sel {
    if (self.customerDataSource && [self.customerDataSource respondsToSelector:sel]) {
        return YES;
    }
    return NO;
}

- (id)returnViewWithTableView:(UITableView *)tableView viewModel:(id)viewModel isCellRowView:(BOOL)isCellRow {
    if (!viewModel) {
        return isCellRow ? [[UITableViewCell alloc] init] : nil;
    }
    NSString *identifier = [viewModel viewIdentifier];
    if (!identifier) {
        identifier = isCellRow ? kUITableViewCell : kUITableViewHeaderFooterView;
    }
    id idView = nil;
    if (isCellRow) {
        idView = [tableView dequeueReusableCellWithIdentifier:identifier];
        if (!idView) {
            NSString *viewClassName = identifier;
            if ([viewModel respondsToSelector:@selector(viewClassName)]) {
                viewClassName = [viewModel viewClassName];
                viewClassName = viewClassName ?:identifier;
            }
            NSString *path = [[NSBundle mainBundle] pathForResource:viewClassName ofType:@"nib"];
            if (path.length > 0) {
                [tableView registerNib:[UINib nibWithNibName:viewClassName bundle:nil] forCellReuseIdentifier:identifier];
            } else {
                [tableView registerClass:NSClassFromString(viewClassName) forCellReuseIdentifier:identifier];
            }
            idView = [tableView dequeueReusableCellWithIdentifier:identifier];
        }
    } else {
        idView = [tableView dequeueReusableHeaderFooterViewWithIdentifier:identifier];
        if (!idView) {
            NSString *viewClassName = identifier;
            if ([viewModel respondsToSelector:@selector(viewClassName)]) {
                viewClassName = [viewModel viewClassName];
                viewClassName = viewClassName ?:identifier;
            }

            NSString *path = [[NSBundle mainBundle] pathForResource:viewClassName ofType:@"nib"];
            if (path.length > 0) {
                [tableView registerNib:[UINib nibWithNibName:viewClassName bundle:nil] forHeaderFooterViewReuseIdentifier:identifier];
            } else {
                [tableView registerClass:NSClassFromString(viewClassName) forHeaderFooterViewReuseIdentifier:identifier];
            }
            idView = [tableView dequeueReusableHeaderFooterViewWithIdentifier:identifier];
        }
    }
    if (![idView conformsToProtocol:@protocol(TestProjectViewProtocol)]) {
        return isCellRow ? [[UITableViewCell alloc] init] : nil;
    }
    id<TestProjectViewProtocol> view = (id<TestProjectViewProtocol>)idView;
    if ([view respondsToSelector:@selector(setViewModel:)]) {
        [view setViewModel:viewModel];
    }
    if ([view respondsToSelector:@selector(setDelegate:)]) {
        [view setDelegate:self.cellDelegate];
    }
    return idView;
}

- (CGFloat)returnViewHeightWithViewModel:(id)viewModel isCellRow:(BOOL)isCellRow {
    if (!viewModel) {
        return isCellRow ? 0 : 0.01;
    }
    if ([viewModel respondsToSelector:@selector(viewHeight)]) {
        return [viewModel viewHeight];
    }
    return isCellRow ? 0 : 0.01;
}

#pragma mark - UITableViewDelegate

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    if ([self tableViewDelegateRespondsToSelector:_cmd]) {
        return [self.customerDelegate tableView:tableView heightForRowAtIndexPath:indexPath];
    }
    id<TestProjectViewModelProtocol> cellModel = [self getViewModel:indexPath];
    return [self returnViewHeightWithViewModel:cellModel isCellRow:YES];
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    if ([self tableViewDelegateRespondsToSelector:_cmd]) {
        [self.customerDelegate tableView:tableView didSelectRowAtIndexPath:indexPath];
    } else if ([self.tableViewDelegate respondsToSelector:@selector(tableView:didSelectRowAtIndexPath:viewModel:)]) {
        id<TestProjectViewModelProtocol> cellModel = [self getViewModel:indexPath];
        [self.tableViewDelegate tableView:tableView didSelectRowAtIndexPath:indexPath viewModel:cellModel];
    }
}

- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section {
    if ([self tableViewDelegateRespondsToSelector:_cmd]) {
        return [self.customerDelegate tableView:tableView viewForHeaderInSection:section];
    }
    id<TestProjectViewModelProtocol> cellModel = [self.dataSourceHeaderArray objectAtIndex:section];
    return [self returnViewWithTableView:tableView viewModel:cellModel isCellRowView:NO];
}

- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section {
    if ([self tableViewDelegateRespondsToSelector:_cmd]) {
        return [self.customerDelegate tableView:tableView heightForHeaderInSection:section];
    }
    id<TestProjectViewModelProtocol> cellModel = [self.dataSourceHeaderArray objectAtIndex:section];
    return [self returnViewHeightWithViewModel:cellModel isCellRow:NO];
}

- (UIView *)tableView:(UITableView *)tableView viewForFooterInSection:(NSInteger)section {
    if ([self tableViewDelegateRespondsToSelector:_cmd]) {
        return [self.customerDelegate tableView:tableView viewForFooterInSection:section];
    }
    id<TestProjectViewModelProtocol> cellModel = [self.dataSourceFooterArray objectAtIndex:section];
    return [self returnViewWithTableView:tableView viewModel:cellModel isCellRowView:NO];
}

- (CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section {
    if ([self tableViewDelegateRespondsToSelector:_cmd]) {
        return [self.customerDelegate tableView:tableView heightForFooterInSection:section];
    }
    id<TestProjectViewModelProtocol> cellModel = [self.dataSourceFooterArray objectAtIndex:section];
    return [self returnViewHeightWithViewModel:cellModel isCellRow:NO];
}

#pragma mark - UITableViewDataSource
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    if ([self tableViewDataSourceRespondsToSelector:_cmd]) {
        return [self.customerDataSource numberOfSectionsInTableView:tableView];
    }
    if (self.isMultipleSection) {
        return self.dataSourceArray.count;
    } else {
        return self.dataSourceArray.count > 0 ? 1 : 0;
    }
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    if ([self tableViewDataSourceRespondsToSelector:_cmd]) {
        return [self.customerDataSource tableView:tableView numberOfRowsInSection:section];
    }
    if (self.isMultipleSection) {
        NSArray *array = self.dataSourceArray[section];
        return array.count;
    } else {
        return self.dataSourceArray.count;
    }
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    if ([self tableViewDataSourceRespondsToSelector:_cmd]) {
        return [self.customerDataSource tableView:tableView cellForRowAtIndexPath:indexPath];
    }
    id<TestProjectViewModelProtocol> cellModel = [self getViewModel:indexPath];
    UITableViewCell *cell = [self returnViewWithTableView:tableView viewModel:cellModel isCellRowView:YES];
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    return cell;
}

@end
