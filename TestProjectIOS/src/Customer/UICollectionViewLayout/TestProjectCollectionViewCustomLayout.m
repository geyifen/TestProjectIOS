//
//  TestProjectCollectionViewCustomLayout.m
//  TestProjectIOS
//
//  Created by zjrcumac on 2023/8/9.
//

#import "TestProjectCollectionViewCustomLayout.h"

#import "TestProjectCustomerHeader.h"

@interface TestProjectCustomLayoutSectionInfo : NSObject

@property (nonatomic, assign) NSInteger cellRowCount;
@property (nonatomic, assign) NSInteger cellCount;
@property (nonatomic, strong) NSMutableArray *heightArray;

@property (nonatomic, strong) UICollectionViewLayoutAttributes *headerLayout;
@property (nonatomic, strong) UICollectionViewLayoutAttributes *footerLayout;
@property (nonatomic, strong) NSMutableArray *layoutAttrArray;
@property (nonatomic, assign) CGFloat maxHeight;

@end

@implementation TestProjectCustomLayoutSectionInfo

- (instancetype)initWithCellRowCount:(NSInteger)cellRowCount {
    if (self = [super init]) {
        self.cellRowCount = cellRowCount;
    }
    return self;
}

- (void)setHeaderLayout:(CGRect)rect
                section:(NSInteger)section
                 height:(CGFloat)height {
    UICollectionViewLayoutAttributes *headerLayout = [UICollectionViewLayoutAttributes layoutAttributesForSupplementaryViewOfKind:UICollectionElementKindSectionHeader withIndexPath:[NSIndexPath indexPathForRow:0 inSection:section]];
    rect.size.height = height;
    headerLayout.frame = rect;
    self.headerLayout = headerLayout;
}

- (void)setFooterLayout:(CGRect)rect
                section:(NSInteger)section
                 height:(CGFloat)height {
    UICollectionViewLayoutAttributes *footerLayout = [UICollectionViewLayoutAttributes layoutAttributesForSupplementaryViewOfKind:UICollectionElementKindSectionFooter withIndexPath:[NSIndexPath indexPathForRow:0 inSection:section]];
    rect.size.height = height;
    footerLayout.frame = rect;
    self.footerLayout = footerLayout;
}

- (void)setCellLayout:(CGRect)rect
            indexPath:(NSIndexPath *)indexPath
             minIndex:(NSInteger)minIndex {
    UICollectionViewLayoutAttributes *cellLayout = [UICollectionViewLayoutAttributes layoutAttributesForCellWithIndexPath:indexPath];
    cellLayout.frame = rect;
    [self.layoutAttrArray addObject:cellLayout];
    self.heightArray[minIndex] = @([TestProjectGemetry rectBottom:rect]);
}

- (CGFloat)getMinColumnHeight:(NSInteger *)index {
    if (!index) {
        NSInteger i = 0;
        index = &i;
    } else {
        *index = 0;
    }
    CGFloat height = [self.heightArray[0] floatValue];
    for (NSInteger i = 1; i < self.heightArray.count; i++) {
        CGFloat minHeight = [self.heightArray[i] floatValue];
        if (minHeight < height) {
            height = minHeight;
            *index = i;
        }
    }
    return height;
}

- (CGFloat)getMaxColumnHeight:(NSInteger *)index {
    if (!index) {
        NSInteger i = 0;
        index = &i;
    } else {
        *index = 0;
    }
    CGFloat height = [self.heightArray[0] floatValue];
    for (NSInteger i = 1; i < self.heightArray.count; i++) {
        CGFloat maxHeight = [self.heightArray[i] floatValue];
        if (maxHeight > height) {
            height = maxHeight;
            *index = i;
        }
    }
    return height;
}

- (void)setSameHeight:(CGFloat)height {
    for (NSInteger i = 0; i < self.cellRowCount; i++) {
        self.heightArray[i] = @(height);
    }
}

- (void)updateAllDiffHeight:(CGFloat)diffHeight {
    if (self.headerLayout) {
        self.headerLayout.frame = [self updateRect:self.headerLayout.frame diffHeight:diffHeight];
    }
    for (UICollectionViewLayoutAttributes *layout in self.layoutAttrArray) {
        layout.frame = [self updateRect:layout.frame diffHeight:diffHeight];
    }
    if (self.footerLayout) {
        self.footerLayout.frame = [self updateRect:self.footerLayout.frame diffHeight:diffHeight];
    }
    self.maxHeight += diffHeight;
}

- (CGRect)updateRect:(CGRect)rect diffHeight:(CGFloat)diffHeight {
    rect.origin.y += diffHeight;
    return rect;
}

- (NSMutableArray *)getAllLayout {
    NSMutableArray *layoutArr = [NSMutableArray array];
    if (self.headerLayout) {
        [layoutArr addObject:self.headerLayout];
    }
    [layoutArr addObjectsFromArray:self.layoutAttrArray];
    if (self.footerLayout) {
        [layoutArr addObject:self.footerLayout];
    }
    return layoutArr;
}

- (NSMutableArray *)heightArray {
    if (!_heightArray) {
        _heightArray = [NSMutableArray array];
    }
    return _heightArray;
}

- (NSMutableArray *)layoutAttrArray {
    if (!_layoutAttrArray) {
        _layoutAttrArray = [NSMutableArray array];
    }
    return _layoutAttrArray;
}

@end

@interface TestProjectCustomLayoutManager ()

@property (nonatomic, assign) BOOL hasHeaderSection;
@property (nonatomic, assign) BOOL hasFooterSection;
@property (nonatomic, assign) BOOL hasCell;

@property (nonatomic, assign) CGFloat collectionViewWidth;
@property (nonatomic, assign) CGFloat cellWidth;
@property (nonatomic, assign) CGFloat cellRowCount;
@property (nonatomic, assign) NSInteger numberOfSections;
@property (nonatomic, strong) NSMutableArray<TestProjectCustomLayoutSectionInfo *> *numberOfRowInSectionArray;

@end

@implementation TestProjectCustomLayoutManager

- (void)reloadAllData {
    self.numberOfSections = 1;
    if (self.delegate && [self.delegate respondsToSelector:@selector(numberOfSectionsInCollectionView:)]) {
        self.numberOfSections = [self.delegate numberOfSectionsInCollectionView:nil];
    }
    self.hasHeaderSection = self.delegate && [self.delegate respondsToSelector:@selector(headerViewHeightInSection:rect:)];
    self.hasFooterSection = self.delegate && [self.delegate respondsToSelector:@selector(footerViewHeightInSection:rect:)];
    self.hasCell = self.delegate && [self.delegate respondsToSelector:@selector(cellViewHeight:rect:)];
    self.layoutAttrArray = [NSMutableArray array];
    self.numberOfRowInSectionArray = [NSMutableArray array];
    self.cellRowCount = [self.delegate numberInRow];
    self.collectionViewWidth = self.delegate && [self.delegate respondsToSelector:@selector(collectionViewWidth)] ? [self.delegate collectionViewWidth] : [UIScreen mainScreen].bounds.size.width;
    self.cellWidth = self.cellRowCount != 0 ? self.collectionViewWidth / self.cellRowCount : 0;
    [self appendSectionData:0 originY:0];
}

- (void)appendSectionData:(NSInteger)section originY:(CGFloat)originY {
    for (NSInteger i = section; i < self.numberOfSections; i++) {
        TestProjectCustomLayoutSectionInfo *layoutSectionInfo = [[TestProjectCustomLayoutSectionInfo alloc] initWithCellRowCount:self.cellRowCount];
        [self.numberOfRowInSectionArray addObject:layoutSectionInfo];

        if (self.hasHeaderSection) {
            CGRect headerRect = CGRectMake(0, originY, self.collectionViewWidth, 0);
            CGFloat headerHeight = [self.delegate headerViewHeightInSection:i rect:headerRect];
            if (headerHeight > 0) {
                [layoutSectionInfo setHeaderLayout:headerRect section:i height:headerHeight];
                originY += headerHeight;
                [layoutSectionInfo setSameHeight:originY];
            }
        }
        [layoutSectionInfo setSameHeight:originY];
        if (self.hasCell) {
            [self appendRowData:0 inSection:i layoutSectionInfo:layoutSectionInfo];
            originY = [layoutSectionInfo getMaxColumnHeight:nil];
        }
        if (self.hasFooterSection) {
            CGRect footerRect = CGRectMake(0, originY, self.collectionViewWidth, 0);
            CGFloat footerHeight = [self.delegate footerViewHeightInSection:i rect:footerRect];
            if (footerHeight > 0) {
                [layoutSectionInfo setFooterLayout:footerRect section:i height:footerHeight];
                originY += footerHeight;
            }
        }
        layoutSectionInfo.maxHeight = originY;
        [self.layoutAttrArray addObjectsFromArray:[layoutSectionInfo getAllLayout]];
    }
    self.contentSize = CGSizeMake(self.collectionViewWidth, originY);
}

- (void)appendRowData:(NSInteger)row
            inSection:(NSInteger)section
    layoutSectionInfo:(TestProjectCustomLayoutSectionInfo *)layoutSectionInfo {
    NSInteger cellCount = [self.delegate collectionView:nil numberOfItemsInSection:section];
    layoutSectionInfo.cellCount = cellCount;
    
    for (NSInteger j = row; j < cellCount; j++) {
        NSInteger minIndex;
        CGFloat minHeight = [layoutSectionInfo getMinColumnHeight:&minIndex];
        CGRect cellRect = CGRectMake(minIndex * self.cellWidth, minHeight, self.cellWidth, 0);
        NSIndexPath *indexPath = [NSIndexPath indexPathForRow:j inSection:section];
        CGFloat cellHeight = [self.delegate cellViewHeight:indexPath rect:cellRect];
        cellRect.size.height = cellHeight;
        [layoutSectionInfo setCellLayout:cellRect indexPath:indexPath minIndex:minIndex];
    }
}

- (void)reloadAppendSectionData {
    self.numberOfSections = 1;
    if (self.delegate && [self.delegate respondsToSelector:@selector(numberOfSectionsInCollectionView:)]) {
        self.numberOfSections = [self.delegate numberOfSectionsInCollectionView:nil];
    }
    NSInteger section = self.numberOfRowInSectionArray.count;
    [self appendSectionData:section originY:[self.numberOfRowInSectionArray lastObject].maxHeight];
}

- (void)reloadAppendRowDataInSection:(NSInteger)section {
    NSInteger cellCountOfBeforeSection = 0;
    NSInteger oldCellCount = 0;
    for (NSInteger i = 0; i <= section; i++) {
        TestProjectCustomLayoutSectionInfo *sectionLayoutInfo = self.numberOfRowInSectionArray[i];
        if (sectionLayoutInfo.headerLayout) {
            cellCountOfBeforeSection++;
        }
        cellCountOfBeforeSection += sectionLayoutInfo.cellCount;
        if (i == section) {
            oldCellCount = sectionLayoutInfo.cellCount;
            break;
        }
        if (sectionLayoutInfo.footerLayout) {
            cellCountOfBeforeSection++;
        }
    }
    
    TestProjectCustomLayoutSectionInfo *layoutSectionInfo = self.numberOfRowInSectionArray[section];
    CGFloat oldMaxHeight = layoutSectionInfo.maxHeight;
    [self appendRowData:layoutSectionInfo.layoutAttrArray.count inSection:section layoutSectionInfo:layoutSectionInfo];
    CGFloat newMaxColumnHeight = [layoutSectionInfo getMaxColumnHeight:nil];
    if (layoutSectionInfo.footerLayout) {
        layoutSectionInfo.maxHeight = newMaxColumnHeight + layoutSectionInfo.footerLayout.frame.size.height;
        CGRect rect = layoutSectionInfo.footerLayout.frame;
        rect.origin.y = newMaxColumnHeight;
        layoutSectionInfo.footerLayout.frame = rect;
    } else {
        layoutSectionInfo.maxHeight = newMaxColumnHeight;
    }
    CGFloat diffHeight = layoutSectionInfo.maxHeight - oldMaxHeight;
    for (NSInteger i = section + 1; i < self.numberOfRowInSectionArray.count; i++) {
        [self.numberOfRowInSectionArray[i] updateAllDiffHeight:diffHeight];
    }
    CGSize contentSize = self.contentSize;
    contentSize.height += diffHeight;
    self.contentSize = contentSize;
    [self.layoutAttrArray replaceObjectsInRange:NSMakeRange(cellCountOfBeforeSection, 0) withObjectsFromArray:layoutSectionInfo.layoutAttrArray range:NSMakeRange(oldCellCount, layoutSectionInfo.cellCount - oldCellCount)];
}

@end

@implementation TestProjectCollectionViewCustomLayout

- (CGSize)collectionViewContentSize {
    return self.layoutManager.contentSize;
}

- (NSArray<__kindof UICollectionViewLayoutAttributes *> *)layoutAttributesForElementsInRect:(CGRect)rect {
    return self.layoutManager.layoutAttrArray;
}

- (TestProjectCustomLayoutManager *)layoutManager {
    if (!_layoutManager) {
        _layoutManager = [[TestProjectCustomLayoutManager alloc] init];
    }
    return _layoutManager;
}

@end

@implementation TestProjectCollectionViewCustomFlowLayout

- (CGSize)collectionViewContentSize {
    return self.layoutManager.contentSize;
}

- (NSArray<__kindof UICollectionViewLayoutAttributes *> *)layoutAttributesForElementsInRect:(CGRect)rect {
    return self.layoutManager.layoutAttrArray;
}

- (TestProjectCustomLayoutManager *)layoutManager {
    if (!_layoutManager) {
        _layoutManager = [[TestProjectCustomLayoutManager alloc] init];
    }
    return _layoutManager;
}

@end
