//
//  TestProjectWaterfallLayoutVC.m
//  TestProjectIOS
//
//  Created by zjrcumac on 2023/8/10.
//

#import "TestProjectWaterfallLayoutVC.h"

#import "TestProjectCollectionCell.h"
#import "TestProjectCollectionViewCustomLayout.h"
#import "UIView+TestProject_Constrain.h"

@interface TestProjectWaterfallLayoutVC () <UICollectionViewDelegate, UICollectionViewDataSource, TestProjectCollectionViewCustomLayoutDelegate>

@property (nonatomic, strong) UICollectionView *collectionView;
@property (nonatomic, strong) TestProjectCollectionViewCustomLayout *layout;

@property (nonatomic, strong) UICollectionView *bottomCollectionView;
@property (nonatomic, strong) TestProjectCollectionViewCustomFlowLayout *flowLayout;

@property (nonatomic, assign) NSInteger sectionCount;
@property (nonatomic, strong) NSMutableArray *headerSectionArray;
@property (nonatomic, strong) NSMutableArray *footerSectionArray;
@property (nonatomic, strong) NSMutableArray<NSMutableArray *> *itemCountArray;

@end

@implementation TestProjectWaterfallLayoutVC

- (instancetype)init {
    if (self = [super init]) {
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
        [self.bottomCollectionView reloadData];
        UIButton *leftBtn = [self createBtnWithTag:0 title:@"添加一个Section"];
        leftBtn.backgroundColor = [UIColor redColor];
        [leftBtn testproject_makeConstraints:^(TestProjectViewConstrainMake * _Nonnull make) {
            make.bottom.leading.equal(self.view);
            make.height.equal(@50);
        }];
        UIButton *rightBtn = [self createBtnWithTag:1 title:@"给第二个Section添加Row"];
        [rightBtn testproject_makeConstraints:^(TestProjectViewConstrainMake * _Nonnull make) {
            make.bottom.trainling.equal(self.view);
            make.leading.equal(leftBtn.trainling);
            make.height.width.equal(leftBtn);
        }];
        rightBtn.backgroundColor = [UIColor blueColor];
    }
    return self;
}

- (void)didTapWaterfallEvent:(UIButton *)btn {
    if (btn.tag == 0) {
        self.sectionCount++;
        NSMutableArray *appendArr = [NSMutableArray array];
        for (NSInteger i = 0; i < 20; i++) {
            [appendArr addObject:[NSString stringWithFormat:@"append_%ld", i]];
        }
        [self.itemCountArray addObject:appendArr];
        [self.headerSectionArray addObject:[NSString stringWithFormat:@"append header:%ld", self.sectionCount]];
        [self.layout.layoutManager reloadAppendSectionData];
        [self.collectionView reloadData];
    } else if (btn.tag == 1) {
        NSInteger section = 1;
        NSMutableArray *appendArr = self.itemCountArray[section];
        for (NSInteger i = 0; i < 20; i++) {
            [appendArr addObject:[NSString stringWithFormat:@"append_%ld", i]];
        }
        [self.layout.layoutManager reloadAppendRowDataInSection:section];
        [self.collectionView reloadData];
    }
}

- (UIButton *)createBtnWithTag:(NSInteger)tag title:(NSString *)title {
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    [btn setTitle:title forState:UIControlStateNormal];
    btn.tag = tag;
    [btn addTarget:self action:@selector(didTapWaterfallEvent:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
    return btn;
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

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return [self.itemCountArray objectAtIndex:section].count;
}

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
    return self.sectionCount;
}

- (__kindof UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    TestProjectCollectionCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"TestProjectCollectionCell" forIndexPath:indexPath];
    [cell setTitle:self.itemCountArray[indexPath.section][indexPath.item]];
    return cell;
}

#pragma mark - TestProjectCollectionViewCustomLayoutDelegate

- (NSInteger)numberInRow {
    return 3;
}

- (CGFloat)cellViewHeight:(NSIndexPath *)indexPath rect:(CGRect)rect {
    return 20 + indexPath.row * 5 + indexPath.section * 10;
}

- (CGFloat)headerViewHeightInSection:(NSInteger)section rect:(CGRect)rect {
    return 10 * section + 40;
}

- (CGFloat)footerViewHeightInSection:(NSInteger)section rect:(CGRect)rect {
    if (section >= 3) {
        return 0;
    }
    return 10 * section + 40;
}

- (UICollectionView *)collectionView {
    if (!_collectionView) {
        TestProjectCollectionViewCustomLayout *layout = [[TestProjectCollectionViewCustomLayout alloc] init];
        layout.layoutManager.delegate = self;
        [layout.layoutManager reloadAllData];
        self.layout = layout;
        _collectionView = [[UICollectionView alloc] initWithFrame:CGRectZero collectionViewLayout:layout];
        _collectionView.allowsMultipleSelection = YES;
        _collectionView.delegate = self;
        _collectionView.dataSource = self;
        UICollectionViewFlowLayoutInvalidationContext *context = [[UICollectionViewFlowLayoutInvalidationContext alloc] init];
        context.invalidateFlowLayoutAttributes = NO;
        [context invalidateItemsAtIndexPaths:@[[NSIndexPath indexPathForRow:0 inSection:0]]];
        [self.layout invalidateLayoutWithContext:context];
        
        
        [_collectionView registerClass:TestProjectCollectionCell.class forCellWithReuseIdentifier:@"TestProjectCollectionCell"];
        [_collectionView registerClass:TestProjectCollectionReusableView.class forSupplementaryViewOfKind:UICollectionElementKindSectionHeader withReuseIdentifier:@"TestProjectCollectionReusableView"];
        [_collectionView registerClass:TestProjectCollectionReusableView.class forSupplementaryViewOfKind:UICollectionElementKindSectionFooter withReuseIdentifier:@"TestProjectCollectionReusableView"];
        [self.view addSubview:_collectionView];
        [_collectionView testproject_makeConstraints:^(TestProjectViewConstrainMake * _Nonnull make) {
            make.top.leading.trainling.equal(self.view);
            make.height.equal(@300);
        }];
    }
    return _collectionView;
}

- (UICollectionView *)bottomCollectionView {
    if (!_bottomCollectionView) {
        TestProjectCollectionViewCustomFlowLayout *layout = [[TestProjectCollectionViewCustomFlowLayout alloc] init];
        layout.sectionHeadersPinToVisibleBounds = YES;
//        layout.sectionInset = UIEdgeInsetsZero;
//        layout.minimumLineSpacing = 10;
//        layout.minimumInteritemSpacing = 10;
//        layout.itemSize = CGSizeMake(150, 50);
//        layout.headerReferenceSize = CGSizeMake(0, 50);
//        layout.footerReferenceSize = CGSizeMake(0, 50);
        layout.layoutManager.delegate = self;
        [layout.layoutManager reloadAllData];
        self.flowLayout = layout;
        _bottomCollectionView = [[UICollectionView alloc] initWithFrame:CGRectZero collectionViewLayout:layout];
        _bottomCollectionView.allowsMultipleSelection = YES;
        _bottomCollectionView.delegate = self;
        _bottomCollectionView.dataSource = self;
        
        [_bottomCollectionView registerClass:TestProjectCollectionCell.class forCellWithReuseIdentifier:@"TestProjectCollectionCell"];
        [_bottomCollectionView registerClass:TestProjectCollectionReusableView.class forSupplementaryViewOfKind:UICollectionElementKindSectionHeader withReuseIdentifier:@"TestProjectCollectionReusableView"];
        [_bottomCollectionView registerClass:TestProjectCollectionReusableView.class forSupplementaryViewOfKind:UICollectionElementKindSectionFooter withReuseIdentifier:@"TestProjectCollectionReusableView"];
        [self.view addSubview:_bottomCollectionView];
        [_bottomCollectionView testproject_makeConstraints:^(TestProjectViewConstrainMake * _Nonnull make) {
            make.leading.trainling.equal(self.view);
            make.top.equal(self.collectionView.bottom).offset(20);
            make.height.equal(@300);
        }];
    }
    return _bottomCollectionView;
}

@end
