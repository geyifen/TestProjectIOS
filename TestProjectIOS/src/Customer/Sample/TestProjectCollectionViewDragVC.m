//
//  TestProjectCollectionViewDragVC.m
//  TestProjectIOS
//
//  Created by zjrcumac on 2023/8/3.
//

#import "TestProjectCollectionViewDragVC.h"

#import "TestProjectCollectionCell.h"
#import "TestProjectCustomerHeader.h"

@interface TestProjectCollectionViewDragVC () <UICollectionViewDelegate, UICollectionViewDataSource>

@property (nonatomic, strong) UICollectionView *collectionView;
@property (nonatomic, strong) UICollectionViewFlowLayout *layout;
@property (nonatomic, assign) NSInteger sectionCount;
@property (nonatomic, strong) NSMutableArray *headerSectionArray;
@property (nonatomic, strong) NSMutableArray *footerSectionArray;
@property (nonatomic, strong) NSMutableArray<NSMutableArray *> *itemCountArray;

@end

@implementation TestProjectCollectionViewDragVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
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
        [self.view addSubview:_collectionView];
        [_collectionView testproject_makeConstraints:^(TestProjectViewConstrainMake * _Nonnull make) {
            make.top.leading.trainling.equal(self.view);
            make.height.equal(@300);
        }];
    }
    return _collectionView;
}

@end
