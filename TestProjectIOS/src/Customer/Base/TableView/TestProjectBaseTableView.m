//
//  TestProjectBaseTableView.m
//  TestProjectIOS
//
//  Created by zjrcumac on 2023/1/29.
//

#import "TestProjectBaseTableView.h"

#define kUITableViewCell @"UITableViewCell"
#define kUITableViewHeaderFooterView @"UITableViewHeaderFooterView"

@interface TestProjectBaseTableView () <UITableViewDelegate, UITableViewDataSource>

@end

@implementation TestProjectBaseTableView

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
    if (self.tableViewDelegate && [self.tableViewDelegate respondsToSelector:sel]) {
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
            NSString *path = [[NSBundle mainBundle] pathForResource:identifier ofType:@"nib"];
            if (path.length > 0) {
                [tableView registerNib:[UINib nibWithNibName:identifier bundle:nil] forCellReuseIdentifier:identifier];
            } else {
                [tableView registerClass:NSClassFromString(identifier) forCellReuseIdentifier:identifier];
            }
            idView = [tableView dequeueReusableCellWithIdentifier:identifier];
        }
    } else {
        idView = [tableView dequeueReusableHeaderFooterViewWithIdentifier:identifier];
        if (!idView) {
            NSString *path = [[NSBundle mainBundle] pathForResource:identifier ofType:@"nib"];
            if (path.length > 0) {
                [tableView registerNib:[UINib nibWithNibName:identifier bundle:nil] forHeaderFooterViewReuseIdentifier:identifier];
            } else {
                [tableView registerClass:NSClassFromString(identifier) forHeaderFooterViewReuseIdentifier:identifier];
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
        return isCellRow ? 0 : 0;
    }
    if ([viewModel respondsToSelector:@selector(viewHeight)]) {
        return [viewModel viewHeight];
    }
    return isCellRow ? 0 : 0;
}

#pragma mark - UITableViewDelegate

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    if ([self tableViewDelegateRespondsToSelector:_cmd]) {
        return [self.tableViewDelegate tableView:tableView heightForRowAtIndexPath:indexPath];
    }
    id<TestProjectViewModelProtocol> cellModel = [self getViewModel:indexPath];
    return [self returnViewHeightWithViewModel:cellModel isCellRow:YES];
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    if ([self tableViewDelegateRespondsToSelector:_cmd]) {
        [self.tableViewDelegate tableView:tableView didSelectRowAtIndexPath:indexPath];
    } else if ([self.tableViewDelegate respondsToSelector:@selector(tableView:didSelectRowAtIndexPath:viewModel:)]) {
        id<TestProjectViewModelProtocol> cellModel = [self getViewModel:indexPath];
        [self.tableViewDelegate tableView:tableView didSelectRowAtIndexPath:indexPath viewModel:cellModel];
    }
}

- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section {
    if ([self tableViewDelegateRespondsToSelector:_cmd]) {
        return [self.tableViewDelegate tableView:tableView viewForHeaderInSection:section];
    }
    id<TestProjectViewModelProtocol> cellModel = [self.dataSourceHeaderArray objectAtIndex:section];
    return [self returnViewWithTableView:tableView viewModel:cellModel isCellRowView:NO];
}

- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section {
    if ([self tableViewDelegateRespondsToSelector:_cmd]) {
        return [self.tableViewDelegate tableView:tableView heightForHeaderInSection:section];
    }
    id<TestProjectViewModelProtocol> cellModel = [self.dataSourceHeaderArray objectAtIndex:section];
    return [self returnViewHeightWithViewModel:cellModel isCellRow:NO];
}

- (UIView *)tableView:(UITableView *)tableView viewForFooterInSection:(NSInteger)section {
    if ([self tableViewDelegateRespondsToSelector:_cmd]) {
        return [self.tableViewDelegate tableView:tableView viewForFooterInSection:section];
    }
    id<TestProjectViewModelProtocol> cellModel = [self.dataSourceFooterArray objectAtIndex:section];
    return [self returnViewWithTableView:tableView viewModel:cellModel isCellRowView:NO];
}

- (CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section {
    if ([self tableViewDelegateRespondsToSelector:_cmd]) {
        return [self.tableViewDelegate tableView:tableView heightForFooterInSection:section];
    }
    id<TestProjectViewModelProtocol> cellModel = [self.dataSourceFooterArray objectAtIndex:section];
    return [self returnViewHeightWithViewModel:cellModel isCellRow:NO];
}

- (void)tableView:(UITableView *)tableView willDisplayCell:(UITableViewCell *)cell forRowAtIndexPath:(NSIndexPath *)indexPath {
    if ([self tableViewDelegateRespondsToSelector:_cmd]) {
        return [self.tableViewDelegate tableView:tableView willDisplayCell:cell forRowAtIndexPath:indexPath];
    }
}

- (void)scrollViewDidScroll:(UIScrollView *)scrollView {
    if ([self tableViewDelegateRespondsToSelector:_cmd]) {
        [self.tableViewDelegate scrollViewDidScroll:scrollView];
    }
}
#pragma mark - UITableViewDataSource

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    if ([self tableViewDelegateRespondsToSelector:_cmd]) {
        return [self.tableViewDelegate numberOfSectionsInTableView:tableView];
    }
    if (self.isMultipleSection) {
        return self.dataSourceArray.count;
    } else {
        return self.dataSourceArray.count > 0 ? 1 : 0;
    }
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    if ([self tableViewDelegateRespondsToSelector:_cmd]) {
        return [self.tableViewDelegate tableView:tableView numberOfRowsInSection:section];
    }
    if (self.isMultipleSection) {
        NSArray *array = self.dataSourceArray[section];
        return array.count;
    } else {
        return self.dataSourceArray.count;
    }
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    if ([self tableViewDelegateRespondsToSelector:_cmd]) {
        return [self.tableViewDelegate tableView:tableView cellForRowAtIndexPath:indexPath];
    }
    id<TestProjectViewModelProtocol> cellModel = [self getViewModel:indexPath];
    UITableViewCell *cell = [self returnViewWithTableView:tableView viewModel:cellModel isCellRowView:YES];
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    return cell;
}

- (nullable NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section {
    if ([self tableViewDelegateRespondsToSelector:_cmd]) {
        return [self.tableViewDelegate tableView:tableView titleForHeaderInSection:section];
    }
    return nil;
}

- (nullable NSString *)tableView:(UITableView *)tableView titleForFooterInSection:(NSInteger)section {
    if ([self tableViewDelegateRespondsToSelector:_cmd]) {
        return [self.tableViewDelegate tableView:tableView titleForFooterInSection:section];
    }
    return nil;
}

- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    if ([self tableViewDelegateRespondsToSelector:_cmd]) {
        return [self.tableViewDelegate tableView:tableView canEditRowAtIndexPath:indexPath];
    }
    return NO;
}

- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    if ([self tableViewDelegateRespondsToSelector:_cmd]) {
        return [self.tableViewDelegate tableView:tableView canMoveRowAtIndexPath:indexPath];
    }
    return NO;
}

- (nullable NSArray<NSString *> *)sectionIndexTitlesForTableView:(UITableView *)tableView {
    if ([self tableViewDelegateRespondsToSelector:_cmd]) {
        return [self.tableViewDelegate sectionIndexTitlesForTableView:tableView];
    }
    return nil;
}

- (NSInteger)tableView:(UITableView *)tableView sectionForSectionIndexTitle:(NSString *)title atIndex:(NSInteger)index {
    if ([self tableViewDelegateRespondsToSelector:_cmd]) {
        return [self.tableViewDelegate tableView:tableView sectionForSectionIndexTitle:title atIndex:index];
    }
    return index;
}

- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if ([self tableViewDelegateRespondsToSelector:_cmd]) {
        [self.tableViewDelegate tableView:tableView commitEditingStyle:editingStyle forRowAtIndexPath:indexPath];
    }
}

- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)sourceIndexPath toIndexPath:(NSIndexPath *)destinationIndexPath {
    if ([self tableViewDelegateRespondsToSelector:_cmd]) {
        [self.tableViewDelegate tableView:tableView moveRowAtIndexPath:sourceIndexPath toIndexPath:destinationIndexPath];
    }
}

@end
