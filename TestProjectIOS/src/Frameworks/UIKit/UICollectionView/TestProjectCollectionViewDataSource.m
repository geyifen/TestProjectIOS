//
//  TestProjectCollectionViewDataSource.m
//  TestProjectIOS
//
//  Created by liwenfan on 2023/7/31.
//

#import "TestProjectCollectionViewDataSource.h"

#import "TestProjectCollectionCell.h"

@interface TestProjectCollectionViewDataSource () <UICollectionViewDelegate, UICollectionViewDataSource>

@property (nonatomic, strong) UICollectionView *collectionView;
@property (nonatomic, strong) UICollectionViewFlowLayout *layout;
@property (nonatomic, strong) TestProjectCollectionCell *cell;
@property (nonatomic, assign) NSInteger sectionCount;
@property (nonatomic, strong) NSMutableArray *headerSectionArray;
@property (nonatomic, strong) NSMutableArray *footerSectionArray;
@property (nonatomic, strong) NSMutableArray<NSMutableArray *> *itemCountArray;

@end

@implementation TestProjectCollectionViewDataSource

- (instancetype)initCreate {
    if (self = [super initCreate]) {
        [self.tableView testproject_updateConstraints:^(TestProjectViewConstrainMake * _Nonnull make) {
            make.height.equal(self).offset(-300);
        }];
        self.sectionCount = 3;
        self.itemCountArray = [NSMutableArray array];
        self.headerSectionArray = [NSMutableArray array];
        self.footerSectionArray = [NSMutableArray array];
        for (NSInteger i = 0; i < self.sectionCount; i++) {
            NSMutableArray *itemArray = [NSMutableArray array];
            for (NSInteger j = 0; j < 20; j++) {
                [itemArray addObject:[NSString stringWithFormat:@"default:%ld_%ld", i, j]];
            }
            [self.itemCountArray addObject:itemArray];
            [self.headerSectionArray addObject:[NSString stringWithFormat:@"default header:%ld", i]];
            [self.footerSectionArray addObject:[NSString stringWithFormat:@"default footer:%ld", i]];
        }
        [self.collectionView reloadData];
    }
    return self;
}

- (UICollectionView *)collectionView {
    if (!_collectionView) {
        UICollectionViewFlowLayout *layout = [[UICollectionViewFlowLayout alloc] init];
        layout.sectionInset = UIEdgeInsetsZero;
        layout.minimumLineSpacing = 10;
        layout.minimumInteritemSpacing = 10;
        layout.itemSize = CGSizeMake(150, 50);
        layout.headerReferenceSize = CGSizeMake(0, 50);
        layout.footerReferenceSize = CGSizeMake(0, 50);
        self.layout = layout;
        _collectionView = [[UICollectionView alloc] initWithFrame:CGRectZero collectionViewLayout:layout];
        _collectionView.delegate = self;
        _collectionView.dataSource = self;
        [_collectionView registerClass:TestProjectCollectionCell.class forCellWithReuseIdentifier:@"TestProjectCollectionCell"];
        [_collectionView registerClass:TestProjectCollectionReusableView.class forSupplementaryViewOfKind:UICollectionElementKindSectionHeader withReuseIdentifier:@"TestProjectCollectionReusableView"];
        [_collectionView registerClass:TestProjectCollectionReusableView.class forSupplementaryViewOfKind:UICollectionElementKindSectionFooter withReuseIdentifier:@"TestProjectCollectionReusableView"];
        [self addSubview:_collectionView];
        [_collectionView testproject_makeConstraints:^(TestProjectViewConstrainMake * _Nonnull make) {
            make.top.leading.trainling.equal(self);
            make.height.equal(@300);
        }];
    }
    return _collectionView;
}

- (NSDictionary *)method_1:(NSInteger)index {
    return @{
        @"dataModel": @{
            @"abstract": @"执行UICollectionViewDataSource的@required方法, 每个section返回多少个cell的数量",
            @"title": @"- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectCollectionViewDataSource_required_collectionView_numberOfItemsInSection:index],
            }
        },
    };
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return [self.itemCountArray objectAtIndex:section].count;
}

- (NSMutableArray *)TestProjectCollectionViewDataSource_required_collectionView_numberOfItemsInSection:(NSInteger)index {
    return [self createModelSingleArrayWithIndex:index title:nil block:nil];
}

- (NSDictionary *)method_2:(NSInteger)index {
    return @{
        @"dataModel": @{
            @"abstract": @"执行UICollectionViewDataSource的@required方法, 每个cell的展示样式",
            @"title": @"- (__kindof UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectCollectionViewDataSource_required_collectionView_cellForItemAtIndexPath:index],
            }
        },
    };
}

- (__kindof UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    TestProjectCollectionCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"TestProjectCollectionCell" forIndexPath:indexPath];
    [cell setTitle:self.itemCountArray[indexPath.section][indexPath.item]];
    if (indexPath.row == 5) {
        self.cell = cell;
    }
    return cell;
}

- (NSMutableArray *)TestProjectCollectionViewDataSource_required_collectionView_cellForItemAtIndexPath:(NSInteger)index {
    return [self createModelSingleArrayWithIndex:index title:nil block:nil];
}

- (NSDictionary *)method_3:(NSInteger)index {
    return @{
        @"dataModel": @{
            @"abstract": @"执行UICollectionViewDataSource的@optional方法, 返回多少个section",
            @"title": @"- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectCollectionViewDataSource_optional_numberOfSectionsInCollectionView:index],
            }
        },
    };
}

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
    return self.sectionCount;
}

- (NSMutableArray *)TestProjectCollectionViewDataSource_optional_numberOfSectionsInCollectionView:(NSInteger)index {
    return [self createModelSingleArrayWithIndex:index title:nil block:nil];
}

- (NSDictionary *)method_4:(NSInteger)index {
    return @{
        @"dataModel": @{
            @"abstract": @"执行UICollectionViewDataSource的@optional方法, 返回每个section的header和footer视图",
            @"title": @"- (UICollectionReusableView *)collectionView:(UICollectionView *)collectionView viewForSupplementaryElementOfKind:(NSString *)kind atIndexPath:(NSIndexPath *)indexPath;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectCollectionViewDataSource_optional_collectionView_viewForSupplementaryElementOfKind_atIndexPath:index],
            }
        },
    };
}

- (UICollectionReusableView *)collectionView:(UICollectionView *)collectionView viewForSupplementaryElementOfKind:(NSString *)kind atIndexPath:(NSIndexPath *)indexPath {
    TestProjectCollectionReusableView *view = [collectionView dequeueReusableSupplementaryViewOfKind:kind withReuseIdentifier:@"TestProjectCollectionReusableView" forIndexPath:indexPath];
    if ([kind isEqualToString:UICollectionElementKindSectionHeader]) {
        [view setTitle:self.headerSectionArray[indexPath.section]];
    } else {
        [view setTitle:self.footerSectionArray[indexPath.section]];
    }
    return view;
}

- (NSMutableArray *)TestProjectCollectionViewDataSource_optional_collectionView_viewForSupplementaryElementOfKind_atIndexPath:(NSInteger)index {
    return [self createModelSingleArrayWithIndex:index title:nil block:nil];
}

- (NSDictionary *)method_5:(NSInteger)index {
    return @{
        @"dataModel": @{
            @"abstract": @"执行UICollectionViewDataSource的@optional方法, 每个cell是否能够移动",
            @"title": @"- (BOOL)collectionView:(UICollectionView *)collectionView canMoveItemAtIndexPath:(NSIndexPath *)indexPath API_AVAILABLE(ios(9.0));",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectCollectionViewDataSource_optional_collectionView_canMoveItemAtIndexPath:index],
            }
        },
    };
}

- (BOOL)collectionView:(UICollectionView *)collectionView canMoveItemAtIndexPath:(NSIndexPath *)indexPath API_AVAILABLE(ios(9.0)) {
    NSLog(@"%@ indexPath:%@", NSStringFromSelector(_cmd), indexPath);
    return YES;
}

- (NSMutableArray *)TestProjectCollectionViewDataSource_optional_collectionView_canMoveItemAtIndexPath:(NSInteger)index {
    return [self createModelSingleArrayWithIndex:index title:nil block:nil];
}

- (NSDictionary *)method_6:(NSInteger)index {
    return @{
        @"dataModel": @{
            @"abstract": @"执行UICollectionViewDataSource的@optional方法, 每个cell的移动的回调",
            @"title": @"- (void)collectionView:(UICollectionView *)collectionView moveItemAtIndexPath:(NSIndexPath *)sourceIndexPath toIndexPath:(NSIndexPath*)destinationIndexPath API_AVAILABLE(ios(9.0));",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectCollectionViewDataSource_optional_collectionView_moveItemAtIndexPath_toIndexPath:index],
            }
        },
    };
}

- (void)collectionView:(UICollectionView *)collectionView moveItemAtIndexPath:(NSIndexPath *)sourceIndexPath toIndexPath:(NSIndexPath*)destinationIndexPath API_AVAILABLE(ios(9.0)) {
    NSLog(@"%@ sourceIndexPath:%@ destinationIndexPath:%@", NSStringFromSelector(_cmd), sourceIndexPath, destinationIndexPath);
}

- (NSMutableArray *)TestProjectCollectionViewDataSource_optional_collectionView_moveItemAtIndexPath_toIndexPath:(NSInteger)index {
    NSIndexPath *moveIndexPath = [NSIndexPath indexPathForRow:0 inSection:0];
    NSIndexPath *toIndexPath = [NSIndexPath indexPathForRow:0 inSection:1];
    WS(wSelf);
    return [self createModelSingleArrayWithIndex:index title:[NSString stringWithFormat:@"moveIndexPath:%@ toIndexPath:%@", moveIndexPath, toIndexPath] block:^{
        NSMutableArray *moveArray = self.itemCountArray[moveIndexPath.section];
        NSMutableArray *toArray = self.itemCountArray[toIndexPath.section];
        id moveObj = moveArray[moveIndexPath.row];
        //这是移动到
        [moveArray removeObjectAtIndex:moveIndexPath.row];
        [toArray insertObject:moveObj atIndex:toIndexPath.row];
//        //这是交换
//        id toObj = toArray[toIndexPath.row];
//        [moveArray replaceObjectAtIndex:moveIndexPath.row withObject:toObj];
//        [toArray replaceObjectAtIndex:toIndexPath.row withObject:moveObj];
        [wSelf.collectionView moveItemAtIndexPath:moveIndexPath toIndexPath:toIndexPath];
    }];
}

- (NSDictionary *)method_7:(NSInteger)index {
    return @{
        @"dataModel": @{
            @"abstract": @"执行UICollectionViewDataSource的@optional方法, UICollectionView侧边展示的标题",
            @"title": @"- (nullable NSArray<NSString *> *)indexTitlesForCollectionView:(UICollectionView *)collectionView API_AVAILABLE(ios(14.0), tvos(10.2));",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectCollectionViewDataSource_optional_indexTitlesForCollectionView:index],
            }
        },
    };
}

/// Returns a list of index titles to display in the index view (e.g. ["A", "B", "C" ... "Z", "#"])
- (nullable NSArray<NSString *> *)indexTitlesForCollectionView:(UICollectionView *)collectionView API_AVAILABLE(ios(14.0), tvos(10.2)) {
    NSLog(@"%@", NSStringFromSelector(_cmd));
    NSMutableArray *arr = [NSMutableArray array];
    for (NSInteger i = 0; i < self.sectionCount - 1; i++) {
        [arr addObject:[NSString stringWithFormat:@"%ld", i * 11]];
    }
    return arr;
}

- (NSMutableArray *)TestProjectCollectionViewDataSource_optional_indexTitlesForCollectionView:(NSInteger)index {
    return [self createModelSingleArrayWithIndex:index title:nil block:nil];
}

- (NSDictionary *)method_8:(NSInteger)index {
    return @{
        @"dataModel": @{
            @"abstract": @"执行UICollectionViewDataSource的@optional方法, UICollectionView侧边展示的标题的点击事件",
            @"title": @"- (NSIndexPath *)collectionView:(UICollectionView *)collectionView indexPathForIndexTitle:(NSString *)title atIndex:(NSInteger)index API_AVAILABLE(ios(14.0), tvos(10.2));",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectCollectionViewDataSource_optional_collectionView_indexPathForIndexTitle_atIndex:index],
            }
        },
    };
}

/// Returns the index path that corresponds to the given title / index. (e.g. "B",1)
/// Return an index path with a single index to indicate an entire section, instead of a specific item.
- (NSIndexPath *)collectionView:(UICollectionView *)collectionView indexPathForIndexTitle:(NSString *)title atIndex:(NSInteger)index API_AVAILABLE(ios(14.0), tvos(10.2)) {
    NSLog(@"%@ title:%@ index:%ld", NSStringFromSelector(_cmd), title, index);
    return [NSIndexPath indexPathForRow:0 inSection:index * 2];
}

- (NSMutableArray *)TestProjectCollectionViewDataSource_optional_collectionView_indexPathForIndexTitle_atIndex:(NSInteger)index {
    return [self createModelSingleArrayWithIndex:index title:nil block:nil];
}

@end
