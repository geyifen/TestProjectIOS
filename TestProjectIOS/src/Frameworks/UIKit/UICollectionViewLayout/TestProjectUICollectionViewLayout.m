//
//  TestProjectUICollectionViewLayout.m
//  TestProjectIOS
//
//  Created by liwenfan on 2023/8/9.
//

#import "TestProjectUICollectionViewLayout.h"

#import "TestProjectUICollectionCell.h"

@interface TestProjectChildCollectionViewLyaout : UICollectionViewFlowLayout

@end

@implementation TestProjectChildCollectionViewLyaout

+ (Class)layoutAttributesClass {
    Class class = [super layoutAttributesClass];
    NSLog(@"%@ class:%@", NSStringFromSelector(_cmd), NSStringFromClass(class));
    return class;
}

+ (Class)invalidationContextClass {
    Class class = [super invalidationContextClass];
    NSLog(@"%@ invalidationContextClass:%@", NSStringFromSelector(_cmd), NSStringFromClass(class));
    return class;
}

- (CGSize)collectionViewContentSize {
    CGSize size = [super collectionViewContentSize];
    NSLog(@"%@ size:%@", NSStringFromSelector(_cmd), NSStringFromCGSize(size));
    return size;
}

- (UIUserInterfaceLayoutDirection)developmentLayoutDirection {
    UIUserInterfaceLayoutDirection direction = [super developmentLayoutDirection];
    NSLog(@"%@ direction:%ld", NSStringFromSelector(_cmd), direction);
    return direction;
}

- (BOOL)flipsHorizontallyInOppositeLayoutDirection {
    BOOL res = [super flipsHorizontallyInOppositeLayoutDirection];
    NSLog(@"%@ res:%u", NSStringFromSelector(_cmd), res);
    return res;
}

- (void)prepareLayout {
    [super prepareLayout];
    NSLog(@"%@", NSStringFromSelector(_cmd));
}

// UICollectionView calls these four methods to determine the layout information.
// Implement -layoutAttributesForElementsInRect: to return layout attributes for for supplementary or decoration views, or to perform layout in an as-needed-on-screen fashion.
// Additionally, all layout subclasses should implement -layoutAttributesForItemAtIndexPath: to return layout attributes instances on demand for specific index paths.
// If the layout supports any supplementary or decoration view types, it should also implement the respective atIndexPath: methods for those types.
- (nullable NSArray<__kindof UICollectionViewLayoutAttributes *> *)layoutAttributesForElementsInRect:(CGRect)rect {
    NSArray *arr = [super layoutAttributesForElementsInRect:rect];
    NSLog(@"%@ rect:%@", NSStringFromSelector(_cmd), NSStringFromCGRect(rect));
    return arr;
} // return an array layout attributes instances for all the views in the given rect

- (nullable UICollectionViewLayoutAttributes *)layoutAttributesForItemAtIndexPath:(NSIndexPath *)indexPath {
    UICollectionViewLayoutAttributes *attr = [super layoutAttributesForItemAtIndexPath:indexPath];
    NSLog(@"%@", NSStringFromSelector(_cmd));
    return attr;
}

- (nullable UICollectionViewLayoutAttributes *)layoutAttributesForSupplementaryViewOfKind:(NSString *)elementKind atIndexPath:(NSIndexPath *)indexPath {
    UICollectionViewLayoutAttributes *attr = [super layoutAttributesForSupplementaryViewOfKind:elementKind atIndexPath:indexPath];
    NSLog(@"%@", NSStringFromSelector(_cmd));
    return attr;
}

- (nullable UICollectionViewLayoutAttributes *)layoutAttributesForDecorationViewOfKind:(NSString*)elementKind atIndexPath:(NSIndexPath *)indexPath {
    UICollectionViewLayoutAttributes *attr = [super layoutAttributesForDecorationViewOfKind:elementKind atIndexPath:indexPath];
    NSLog(@"%@", NSStringFromSelector(_cmd));
    return attr;
}

- (BOOL)shouldInvalidateLayoutForBoundsChange:(CGRect)newBounds {
    BOOL res = [super shouldInvalidateLayoutForBoundsChange:newBounds];
    NSLog(@"%@ newBounds:%@ res:%u", NSStringFromSelector(_cmd), NSStringFromCGRect(newBounds), res);
    return res;
} // return YES to cause the collection view to requery the layout for geometry information

- (UICollectionViewLayoutInvalidationContext *)invalidationContextForBoundsChange:(CGRect)newBounds API_AVAILABLE(ios(7.0)) {
    UICollectionViewLayoutInvalidationContext *contenxt = [super invalidationContextForBoundsChange:newBounds];
    NSLog(@"%@", NSStringFromSelector(_cmd));
    return contenxt;
}

- (BOOL)shouldInvalidateLayoutForPreferredLayoutAttributes:(UICollectionViewLayoutAttributes *)preferredAttributes withOriginalAttributes:(UICollectionViewLayoutAttributes *)originalAttributes API_AVAILABLE(ios(8.0)) {
    BOOL res = [super shouldInvalidateLayoutForPreferredLayoutAttributes:preferredAttributes withOriginalAttributes:originalAttributes];
    NSLog(@"%@", NSStringFromSelector(_cmd));
    return res;
}

- (UICollectionViewLayoutInvalidationContext *)invalidationContextForPreferredLayoutAttributes:(UICollectionViewLayoutAttributes *)preferredAttributes withOriginalAttributes:(UICollectionViewLayoutAttributes *)originalAttributes API_AVAILABLE(ios(8.0)) {
    UICollectionViewLayoutInvalidationContext *context = [super invalidationContextForPreferredLayoutAttributes:preferredAttributes withOriginalAttributes:originalAttributes];
    NSLog(@"%@", NSStringFromSelector(_cmd));
    return context;
}

- (CGPoint)targetContentOffsetForProposedContentOffset:(CGPoint)proposedContentOffset withScrollingVelocity:(CGPoint)velocity {
    CGPoint point = [super targetContentOffsetForProposedContentOffset:proposedContentOffset withScrollingVelocity:velocity];
    NSLog(@"%@ velocity:%@ point:%@", NSStringFromSelector(_cmd), NSStringFromCGPoint(velocity), NSStringFromCGPoint(point));
    return point;
} // return a point at which to rest after scrolling - for layouts that want snap-to-point scrolling behavior

- (CGPoint)targetContentOffsetForProposedContentOffset:(CGPoint)proposedContentOffset API_AVAILABLE(ios(7.0)) {
    CGPoint point = [super targetContentOffsetForProposedContentOffset:proposedContentOffset];
    NSLog(@"%@", NSStringFromSelector(_cmd));
    return point;
} // a layout can return the content offset to be applied during transition or update animations

- (void)prepareForCollectionViewUpdates:(NSArray<UICollectionViewUpdateItem *> *)updateItems {
    [super prepareForCollectionViewUpdates:updateItems];
    NSLog(@"%@", NSStringFromSelector(_cmd));
}

- (void)finalizeCollectionViewUpdates {
    [super finalizeCollectionViewUpdates];
    NSLog(@"%@", NSStringFromSelector(_cmd));
} // called inside an animation block after the update

- (void)prepareForAnimatedBoundsChange:(CGRect)oldBounds {
    [super prepareForAnimatedBoundsChange:oldBounds];
    NSLog(@"%@", NSStringFromSelector(_cmd));
} // UICollectionView calls this when its bounds have changed inside an animation block before displaying cells in its new bounds

- (void)finalizeAnimatedBoundsChange {
    [super finalizeAnimatedBoundsChange];
    NSLog(@"%@", NSStringFromSelector(_cmd));
} // also called inside the animation block

// UICollectionView calls this when prior the layout transition animation on the incoming and outgoing layout
- (void)prepareForTransitionToLayout:(UICollectionViewLayout *)newLayout API_AVAILABLE(ios(7.0)) {
    [super prepareForTransitionToLayout:newLayout];
    NSLog(@"%@", NSStringFromSelector(_cmd));
}

- (void)prepareForTransitionFromLayout:(UICollectionViewLayout *)oldLayout API_AVAILABLE(ios(7.0)) {
    [super prepareForTransitionFromLayout:oldLayout];
    NSLog(@"%@", NSStringFromSelector(_cmd));
}

- (void)finalizeLayoutTransition API_AVAILABLE(ios(7.0)) {
    [super finalizeLayoutTransition];
    NSLog(@"%@", NSStringFromSelector(_cmd));
}  // called inside an animation block after the transition


// This set of methods is called when the collection view undergoes an animated transition such as a batch update block or an animated bounds change.
// For each element on screen before the invalidation, finalLayoutAttributesForDisappearingXXX will be called and an animation setup from what is on screen to those final attributes.
// For each element on screen after the invalidation, initialLayoutAttributesForAppearingXXX will be called and an animation setup from those initial attributes to what ends up on screen.
- (nullable UICollectionViewLayoutAttributes *)initialLayoutAttributesForAppearingItemAtIndexPath:(NSIndexPath *)itemIndexPath {
    UICollectionViewLayoutAttributes *attr = [super initialLayoutAttributesForAppearingItemAtIndexPath:itemIndexPath];
    NSLog(@"%@", NSStringFromSelector(_cmd));
    return attr;
}

- (nullable UICollectionViewLayoutAttributes *)finalLayoutAttributesForDisappearingItemAtIndexPath:(NSIndexPath *)itemIndexPath {
    UICollectionViewLayoutAttributes *attr = [super finalLayoutAttributesForDisappearingItemAtIndexPath:itemIndexPath];
    NSLog(@"%@", NSStringFromSelector(_cmd));
    return attr;
}

- (nullable UICollectionViewLayoutAttributes *)initialLayoutAttributesForAppearingSupplementaryElementOfKind:(NSString *)elementKind atIndexPath:(NSIndexPath *)elementIndexPath {
    UICollectionViewLayoutAttributes *attr = [super initialLayoutAttributesForAppearingSupplementaryElementOfKind:elementKind atIndexPath:elementIndexPath];
    NSLog(@"%@", NSStringFromSelector(_cmd));
    return attr;
}

- (nullable UICollectionViewLayoutAttributes *)finalLayoutAttributesForDisappearingSupplementaryElementOfKind:(NSString *)elementKind atIndexPath:(NSIndexPath *)elementIndexPath {
    UICollectionViewLayoutAttributes *attr = [super finalLayoutAttributesForDisappearingSupplementaryElementOfKind:elementKind atIndexPath:elementIndexPath];
    NSLog(@"%@", NSStringFromSelector(_cmd));
    return attr;
}

- (nullable UICollectionViewLayoutAttributes *)initialLayoutAttributesForAppearingDecorationElementOfKind:(NSString *)elementKind atIndexPath:(NSIndexPath *)decorationIndexPath {
    UICollectionViewLayoutAttributes *attr = [super initialLayoutAttributesForAppearingDecorationElementOfKind:elementKind atIndexPath:decorationIndexPath];
    NSLog(@"%@", NSStringFromSelector(_cmd));
    return attr;
}

- (nullable UICollectionViewLayoutAttributes *)finalLayoutAttributesForDisappearingDecorationElementOfKind:(NSString *)elementKind atIndexPath:(NSIndexPath *)decorationIndexPath {
    UICollectionViewLayoutAttributes *attr = [super finalLayoutAttributesForDisappearingSupplementaryElementOfKind:elementKind atIndexPath:decorationIndexPath];
    NSLog(@"%@", NSStringFromSelector(_cmd));
    return attr;
}

// These methods are called by collection view during an update block.
// Return an array of index paths to indicate views that the layout is deleting or inserting in response to the update.
- (NSArray<NSIndexPath *> *)indexPathsToDeleteForSupplementaryViewOfKind:(NSString *)elementKind API_AVAILABLE(ios(7.0)) {
    NSArray *arr = [super indexPathsToDeleteForSupplementaryViewOfKind:elementKind];
    NSLog(@"%@", NSStringFromSelector(_cmd));
    return arr;
}

- (NSArray<NSIndexPath *> *)indexPathsToDeleteForDecorationViewOfKind:(NSString *)elementKind API_AVAILABLE(ios(7.0)) {
    NSArray *arr = [super indexPathsToDeleteForSupplementaryViewOfKind:elementKind];
    NSLog(@"%@", NSStringFromSelector(_cmd));
    return arr;
}

- (NSArray<NSIndexPath *> *)indexPathsToInsertForSupplementaryViewOfKind:(NSString *)elementKind API_AVAILABLE(ios(7.0)) {
    NSArray *arr = [super indexPathsToDeleteForSupplementaryViewOfKind:elementKind];
    NSLog(@"%@", NSStringFromSelector(_cmd));
    return arr;
}

- (NSArray<NSIndexPath *> *)indexPathsToInsertForDecorationViewOfKind:(NSString *)elementKind API_AVAILABLE(ios(7.0)) {
    NSArray *arr = [super indexPathsToDeleteForSupplementaryViewOfKind:elementKind];
    NSLog(@"%@", NSStringFromSelector(_cmd));
    return arr;
}

- (NSIndexPath *)targetIndexPathForInteractivelyMovingItem:(NSIndexPath *)previousIndexPath withPosition:(CGPoint)position API_AVAILABLE(ios(9.0)) {
    NSIndexPath *arr = [super targetIndexPathForInteractivelyMovingItem:previousIndexPath withPosition:position];
    NSLog(@"%@", NSStringFromSelector(_cmd));
    return arr;
}

- (UICollectionViewLayoutAttributes *)layoutAttributesForInteractivelyMovingItemAtIndexPath:(NSIndexPath *)indexPath withTargetPosition:(CGPoint)position API_AVAILABLE(ios(9.0)) {
    UICollectionViewLayoutAttributes *attr = [super layoutAttributesForInteractivelyMovingItemAtIndexPath:indexPath withTargetPosition:position];
    NSLog(@"%@", NSStringFromSelector(_cmd));
    return attr;
}

- (UICollectionViewLayoutInvalidationContext *)invalidationContextForInteractivelyMovingItems:(NSArray<NSIndexPath *> *)targetIndexPaths withTargetPosition:(CGPoint)targetPosition previousIndexPaths:(NSArray<NSIndexPath *> *)previousIndexPaths previousPosition:(CGPoint)previousPosition API_AVAILABLE(ios(9.0)) {
    UICollectionViewLayoutInvalidationContext *context = [super invalidationContextForInteractivelyMovingItems:targetIndexPaths withTargetPosition:targetPosition previousIndexPaths:previousIndexPaths previousPosition:previousPosition];
    NSLog(@"%@", NSStringFromSelector(_cmd));
    return context;
}

- (UICollectionViewLayoutInvalidationContext *)invalidationContextForEndingInteractiveMovementOfItemsToFinalIndexPaths:(NSArray<NSIndexPath *> *)indexPaths previousIndexPaths:(NSArray<NSIndexPath *> *)previousIndexPaths movementCancelled:(BOOL)movementCancelled API_AVAILABLE(ios(9.0)) {
    UICollectionViewLayoutInvalidationContext *context = [super invalidationContextForEndingInteractiveMovementOfItemsToFinalIndexPaths:indexPaths previousIndexPaths:previousIndexPaths movementCancelled:movementCancelled];
    NSLog(@"%@", NSStringFromSelector(_cmd));
    return context;
}

@end

@interface TestProjectUICollectionViewLayout () <UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout>

@property (nonatomic, strong) UICollectionView *collectionView;
@property (nonatomic, strong) TestProjectChildCollectionViewLyaout *layout;
@property (nonatomic, assign) NSInteger sectionCount;
@property (nonatomic, strong) NSMutableArray *headerSectionArray;
@property (nonatomic, strong) NSMutableArray *footerSectionArray;
@property (nonatomic, strong) NSMutableArray<NSMutableArray *> *itemCountArray;

@end

@implementation TestProjectUICollectionViewLayout

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

- (UICollectionReusableView *)collectionView:(UICollectionView *)collectionView viewForSupplementaryElementOfKind:(NSString *)kind atIndexPath:(NSIndexPath *)indexPath {
    TestProjectUICollectionReusableView *view = [collectionView dequeueReusableSupplementaryViewOfKind:kind withReuseIdentifier:@"TestProjectUICollectionReusableView" forIndexPath:indexPath];
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
    TestProjectUICollectionCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"TestProjectUICollectionCell" forIndexPath:indexPath];
    [cell setTitle:self.itemCountArray[indexPath.section][indexPath.item]];
    return cell;
}

- (UICollectionView *)collectionView {
    if (!_collectionView) {
        TestProjectChildCollectionViewLyaout *layout = [[TestProjectChildCollectionViewLyaout alloc] init];
        layout.sectionInset = UIEdgeInsetsZero;
        layout.minimumLineSpacing = 10;
        layout.minimumInteritemSpacing = 10;
        layout.itemSize = CGSizeMake(150, 50);
        layout.headerReferenceSize = CGSizeMake(0, 50);
        layout.footerReferenceSize = CGSizeMake(0, 50);
        self.layout = layout;
        _collectionView = [[UICollectionView alloc] initWithFrame:CGRectZero collectionViewLayout:layout];
        _collectionView.allowsMultipleSelection = YES;
        _collectionView.delegate = self;
        _collectionView.dataSource = self;
        UICollectionViewFlowLayoutInvalidationContext *context = [[UICollectionViewFlowLayoutInvalidationContext alloc] init];
        context.invalidateFlowLayoutAttributes = NO;
        [context invalidateItemsAtIndexPaths:@[[NSIndexPath indexPathForRow:0 inSection:0]]];
        [self.layout invalidateLayoutWithContext:context];
        
        
        [_collectionView registerClass:TestProjectUICollectionCell.class forCellWithReuseIdentifier:@"TestProjectUICollectionCell"];
        [_collectionView registerClass:TestProjectUICollectionReusableView.class forSupplementaryViewOfKind:UICollectionElementKindSectionHeader withReuseIdentifier:@"TestProjectUICollectionReusableView"];
        [_collectionView registerClass:TestProjectUICollectionReusableView.class forSupplementaryViewOfKind:UICollectionElementKindSectionFooter withReuseIdentifier:@"TestProjectUICollectionReusableView"];
        [self addSubview:_collectionView];
        [_collectionView testproject_makeConstraints:^(TestProjectViewConstrainMake * _Nonnull make) {
            make.top.leading.trainling.equal(self);
            make.height.equal(@300);
        }];
    }
    return _collectionView;
}

- (NSMutableArray *)TestProjectCollectionViewFlowLayout_UISubclassingHooks_targetContentOffsetForProposedContentOffset_withScrollingVelocity:(TestProjectTableViewParams *)params {
    return [self createModelSingleArrayWithParams:params title:nil block:nil];
}

- (NSDictionary *)method_9:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"执行UICollectionViewFlowLayout(UISubclassingHooks)的方法",
            @"title": @"- (CGPoint)targetContentOffsetForProposedContentOffset:(CGPoint)proposedContentOffset withScrollingVelocity:(CGPoint)velocity;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectCollectionViewFlowLayout_UISubclassingHooks_targetContentOffsetForProposedContentOffset_withScrollingVelocity:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectCollectionViewFlowLayout_UISubclassingHooks_shouldInvalidateLayoutForBoundsChange:(TestProjectTableViewParams *)params {
    return [self createModelSingleArrayWithParams:params title:nil block:nil];
}

- (NSDictionary *)method_8:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"执行UICollectionViewFlowLayout(UISubclassingHooks)的方法",
            @"title": @"- (BOOL)shouldInvalidateLayoutForBoundsChange:(CGRect)newBounds;",
            @"isDataModelExpand": @(YES),
            @"desc": @"返回YES，需要重新计算layout，会执行多次方法- (void)prepareLayout;",
            @"dataModel": @{
                @"childItems": [self TestProjectCollectionViewFlowLayout_UISubclassingHooks_shouldInvalidateLayoutForBoundsChange:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectCollectionViewFlowLayout_UISubclassingHooks_layoutAttributesForElementsInRect:(TestProjectTableViewParams *)params {
    return [self createModelSingleArrayWithParams:params title:nil block:nil];
}

- (NSDictionary *)method_7:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"执行UICollectionViewFlowLayout(UISubclassingHooks)的方法，给出整个布局的信息",
            @"title": @"- (nullable NSArray<__kindof UICollectionViewLayoutAttributes *> *)layoutAttributesForElementsInRect:(CGRect)rect;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectCollectionViewFlowLayout_UISubclassingHooks_layoutAttributesForElementsInRect:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectCollectionViewFlowLayout_UISubclassingHooks_prepareLayout:(TestProjectTableViewParams *)params {
    return [self createModelSingleArrayWithParams:params title:nil block:nil];
}

- (NSDictionary *)method_6:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"执行UICollectionViewFlowLayout(UISubclassingHooks)的方法，准备layout阶段",
            @"title": @"- (void)prepareLayout;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectCollectionViewFlowLayout_UISubclassingHooks_prepareLayout:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectCollectionViewFlowLayout_UISubclassingHooks_property_flipsHorizontallyInOppositeLayoutDirection:(TestProjectTableViewParams *)params {
    return [self createModelSingleArrayWithParams:params title:nil block:nil];
}

- (NSDictionary *)method_5:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"设置获取UICollectionViewFlowLayout(UISubclassingHooks)的属性flipsHorizontallyInOppositeLayoutDirection",
            @"title": @"@property(nonatomic, readonly) BOOL flipsHorizontallyInOppositeLayoutDirection;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectCollectionViewFlowLayout_UISubclassingHooks_property_flipsHorizontallyInOppositeLayoutDirection:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectCollectionViewFlowLayout_UISubclassingHooks_property_developmentLayoutDirection:(TestProjectTableViewParams *)params {
    return [self createModelSingleArrayWithParams:params title:nil block:nil];
}

- (NSDictionary *)method_4:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"设置获取UICollectionViewFlowLayout(UISubclassingHooks)的属性developmentLayoutDirection",
            @"title": @"@property (nonatomic, readonly) UIUserInterfaceLayoutDirection developmentLayoutDirection;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectCollectionViewFlowLayout_UISubclassingHooks_property_developmentLayoutDirection:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectCollectionViewFlowLayout_UISubclassingHooks_property_collectionViewContentSize:(TestProjectTableViewParams *)params {
    return [self createModelSingleArrayWithParams:params title:nil block:nil];
}

- (NSDictionary *)method_3:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"设置获取UICollectionViewFlowLayout(UISubclassingHooks)的属性collectionViewContentSize，UICollectionView的contentSize",
            @"title": @"@property(nonatomic, readonly) CGSize collectionViewContentSize;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectCollectionViewFlowLayout_UISubclassingHooks_property_collectionViewContentSize:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectCollectionViewFlowLayout_UISubclassingHooks_class_property_invalidationContextClass:(TestProjectTableViewParams *)params {
    return [self createModelSingleArrayWithParams:params title:nil block:nil];
}

- (NSDictionary *)method_2:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"设置获取UICollectionViewFlowLayout(UISubclassingHooks)的class属性invalidationContextClass",
            @"title": @"@property(class, nonatomic, readonly) Class invalidationContextClass API_AVAILABLE(ios(7.0));",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectCollectionViewFlowLayout_UISubclassingHooks_class_property_invalidationContextClass:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectCollectionViewFlowLayout_UISubclassingHooks_class_property_layoutAttributesClass:(TestProjectTableViewParams *)params {
    return [self createModelSingleArrayWithParams:params title:nil block:nil];
}

- (NSDictionary *)method_1:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"设置获取UICollectionViewFlowLayout(UISubclassingHooks)的class属性layoutAttributesClass，每个item的属性class",
            @"title": @"@property(class, nonatomic, readonly) Class layoutAttributesClass;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectCollectionViewFlowLayout_UISubclassingHooks_class_property_layoutAttributesClass:params],
            }
        },
    };
}

@end
