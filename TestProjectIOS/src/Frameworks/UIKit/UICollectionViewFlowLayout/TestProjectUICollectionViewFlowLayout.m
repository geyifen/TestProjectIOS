//
//  TestProjectUICollectionViewFlowLayout.m
//  TestProjectIOS
//
//  Created by liwenfan on 2023/8/8.
//

#import "TestProjectUICollectionViewFlowLayout.h"

#import "TestProjectUICollectionCell.h"

@interface TestProjectUICollectionViewFlowLayout () <UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout>

@property (nonatomic, strong) UICollectionView *collectionView;
@property (nonatomic, strong) UICollectionViewFlowLayout *layout;
@property (nonatomic, assign) NSInteger sectionCount;
@property (nonatomic, strong) NSMutableArray *headerSectionArray;
@property (nonatomic, strong) NSMutableArray *footerSectionArray;
@property (nonatomic, strong) NSMutableArray<NSMutableArray *> *itemCountArray;

@end

@implementation TestProjectUICollectionViewFlowLayout

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
        UICollectionViewFlowLayout *layout = [[UICollectionViewFlowLayout alloc] init];
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

- (id)setPropertyValueObject:(TestProjectTableViewParams *)params {
    return self.layout;
}

- (NSMutableArray *)TestProjectCollectionViewFlowLayout_property_sectionFootersPinToVisibleBounds:(TestProjectTableViewParams *)params {
    NSArray *arr = @[
        @{
            @"title": [NSString stringWithFormat:@"设置的属性值是YES, sectionFooter需要停留在UICollection页面上"],
            @"value": @(YES),
        },
        @{
            @"title": [NSString stringWithFormat:@"设置的属性值是NO, sectionFooter不需要停留在UICollection页面上"],
            @"value": @(NO),
        },
    ];
    for (NSDictionary *dic in arr) {
        NSString *title = dic[@"title"];
        NSNumber *value = dic[@"value"];
        [self createModelWithParams:params
                              title:title
                           property:@"sectionFootersPinToVisibleBounds"
                              value:value
                          operation:TestProjectCreateModelGetBeforeClickSet
                              block:nil];
    }
    return self.dataMutArr;
}

- (NSDictionary *)method_11:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"设置获取UICollectionViewFlowLayout的属性sectionFootersPinToVisibleBounds，sectionFooter需要停留在UICollection页面上",
            @"title": @"@property (nonatomic) BOOL sectionFootersPinToVisibleBounds API_AVAILABLE(ios(9.0));",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectCollectionViewFlowLayout_property_sectionFootersPinToVisibleBounds:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectCollectionViewFlowLayout_property_sectionHeadersPinToVisibleBounds:(TestProjectTableViewParams *)params {
    NSArray *arr = @[
        @{
            @"title": [NSString stringWithFormat:@"设置的属性值是YES，sectionHeader需要停留在UICollection页面上"],
            @"value": @(YES),
        },
        @{
            @"title": [NSString stringWithFormat:@"设置的属性值是NO，sectionHeader不需要停留在UICollection页面上"],
            @"value": @(NO),
        },
    ];
    for (NSDictionary *dic in arr) {
        NSString *title = dic[@"title"];
        NSNumber *value = dic[@"value"];
        [self createModelWithParams:params
                              title:title
                           property:@"sectionHeadersPinToVisibleBounds"
                              value:value
                          operation:TestProjectCreateModelGetBeforeClickSet
                              block:nil];
    }
    return self.dataMutArr;
}

- (NSDictionary *)method_10:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"设置获取UICollectionViewFlowLayout的属性sectionHeadersPinToVisibleBounds，sectionHeader是否要停留在UICollection页面上",
            @"title": @"@property (nonatomic) BOOL sectionHeadersPinToVisibleBounds API_AVAILABLE(ios(9.0));",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectCollectionViewFlowLayout_property_sectionHeadersPinToVisibleBounds:params],
            }
        },
    };
}

//typedef NS_ENUM(NSInteger, UICollectionViewFlowLayoutSectionInsetReference) {
//    UICollectionViewFlowLayoutSectionInsetFromContentInset,
//    UICollectionViewFlowLayoutSectionInsetFromSafeArea,
//    UICollectionViewFlowLayoutSectionInsetFromLayoutMargins
//} API_AVAILABLE(ios(11.0), tvos(11.0)) API_UNAVAILABLE(watchos);

- (NSMutableArray *)TestProjectCollectionViewFlowLayout_property_sectionInsetReference:(TestProjectTableViewParams *)params {
    NSArray *arr = @[
        @{
            @"title": [NSString stringWithFormat:@"设置的属性值是UICollectionViewFlowLayoutSectionInsetFromContentInset(%ld)", UICollectionViewFlowLayoutSectionInsetFromContentInset],
            @"value": @(UICollectionViewFlowLayoutSectionInsetFromContentInset),
        },
        @{
            @"title": [NSString stringWithFormat:@"设置的属性值是UICollectionViewFlowLayoutSectionInsetFromSafeArea(%ld)", UICollectionViewFlowLayoutSectionInsetFromSafeArea],
            @"value": @(UICollectionViewFlowLayoutSectionInsetFromSafeArea),
        },
        @{
            @"title": [NSString stringWithFormat:@"设置的属性值是UICollectionViewFlowLayoutSectionInsetFromLayoutMargins(%ld)", UICollectionViewFlowLayoutSectionInsetFromLayoutMargins],
            @"value": @(UICollectionViewFlowLayoutSectionInsetFromLayoutMargins),
        },
    ];
    for (NSDictionary *dic in arr) {
        NSString *title = dic[@"title"];
        NSNumber *value = dic[@"value"];
        [self createModelWithParams:params
                              title:title
                           property:@"sectionInsetReference"
                              value:value
                          operation:TestProjectCreateModelGetBeforeClickSet
                              block:nil];
    }
    return self.dataMutArr;
}

- (NSDictionary *)method_9:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"设置获取UICollectionViewFlowLayout的属性sectionInsetReference",
            @"title": @"@property (nonatomic) UICollectionViewFlowLayoutSectionInsetReference sectionInsetReference API_AVAILABLE(ios(11.0), tvos(11.0)) API_UNAVAILABLE(watchos);",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectCollectionViewFlowLayout_property_sectionInsetReference:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectCollectionViewFlowLayout_property_sectionInset:(TestProjectTableViewParams *)params {
    return [self createModelSingleArrayWithParams:params
                                         property:@"sectionInset"
                                            value:[NSValue valueWithUIEdgeInsets:UIEdgeInsetsMake(10, 10, 10, 10)]
                                        operation:TestProjectCreateModelGetBeforeClickSet
                                            block:nil];
}

- (NSDictionary *)method_8:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"设置获取UICollectionViewFlowLayout的属性sectionInset，展示cell的contentView内边距",
            @"title": @"@property (nonatomic) UIEdgeInsets sectionInset;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectCollectionViewFlowLayout_property_sectionInset:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectCollectionViewFlowLayout_property_footerReferenceSize:(TestProjectTableViewParams *)params {
    return [self createModelSingleArrayWithParams:params
                                         property:@"footerReferenceSize"
                                            value:[NSValue valueWithCGSize:CGSizeMake(0, 120)]
                                        operation:TestProjectCreateModelGetBeforeClickSet
                                            block:nil];
}

- (NSDictionary *)method_7:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"设置获取UICollectionViewFlowLayout的属性footerReferenceSize，footerSection的高度",
            @"title": @"@property (nonatomic) CGSize footerReferenceSize;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectCollectionViewFlowLayout_property_footerReferenceSize:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectCollectionViewFlowLayout_property_headerReferenceSize:(TestProjectTableViewParams *)params {
    return [self createModelSingleArrayWithParams:params
                                         property:@"headerReferenceSize"
                                            value:[NSValue valueWithCGSize:CGSizeMake(0, 120)]
                                        operation:TestProjectCreateModelGetBeforeClickSet
                                            block:nil];
}

- (NSDictionary *)method_6:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"设置获取UICollectionViewFlowLayout的属性headerReferenceSize，headerSection的高度",
            @"title": @"@property (nonatomic) CGSize headerReferenceSize;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectCollectionViewFlowLayout_property_headerReferenceSize:params],
            }
        },
    };
}

//typedef NS_ENUM(NSInteger, UICollectionViewScrollDirection) {
//    UICollectionViewScrollDirectionVertical,
//    UICollectionViewScrollDirectionHorizontal
//};

- (NSMutableArray *)TestProjectCollectionViewFlowLayout_property_scrollDirection:(TestProjectTableViewParams *)params {
    NSArray *arr = @[
        @{
            @"title": [NSString stringWithFormat:@"设置的属性值是UICollectionViewScrollDirectionVertical(%ld)，垂直方向滚动", UICollectionViewScrollDirectionVertical],
            @"value": @(UICollectionViewScrollDirectionVertical),
        },
        @{
            @"title": [NSString stringWithFormat:@"设置的属性值是UICollectionViewScrollDirectionHorizontal(%ld)，水平方向滚动", UICollectionViewScrollDirectionHorizontal],
            @"value": @(UICollectionViewScrollDirectionHorizontal),
        },
    ];
    for (NSDictionary *dic in arr) {
        NSString *title = dic[@"title"];
        NSNumber *value = dic[@"value"];
        [self createModelWithParams:params
                              title:title
                           property:@"scrollDirection"
                              value:value
                          operation:TestProjectCreateModelGetBeforeClickSet
                              block:nil];
    }
    return self.dataMutArr;
}

- (NSDictionary *)method_5:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"设置获取UICollectionViewFlowLayout的属性scrollDirection，滚动的方向",
            @"title": @"@property (nonatomic) UICollectionViewScrollDirection scrollDirection;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectCollectionViewFlowLayout_property_scrollDirection:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectCollectionViewFlowLayout_property_estimatedItemSize:(TestProjectTableViewParams *)params {
    return [self createModelSingleArrayWithParams:params
                                         property:@"estimatedItemSize"
                                            value:[NSValue valueWithCGSize:CGSizeMake(100, 120)]
                                        operation:TestProjectCreateModelGetBeforeClickSet
                                            block:nil];
}

- (NSDictionary *)method_4:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"设置获取UICollectionViewFlowLayout的属性estimatedItemSize，预处理的cell的size",
            @"title": @"@property (nonatomic) CGSize estimatedItemSize API_AVAILABLE(ios(8.0));",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectCollectionViewFlowLayout_property_estimatedItemSize:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectCollectionViewFlowLayout_property_itemSize:(TestProjectTableViewParams *)params {
    return [self createModelSingleArrayWithParams:params
                                         property:@"itemSize"
                                            value:[NSValue valueWithCGSize:CGSizeMake(100, 20)]
                                        operation:TestProjectCreateModelGetBeforeClickSet
                                            block:nil];
}

- (NSDictionary *)method_3:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"设置获取UICollectionViewFlowLayout的属性itemSize，cell的size",
            @"title": @"@property (nonatomic) CGSize itemSize;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectCollectionViewFlowLayout_property_itemSize:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectCollectionViewFlowLayout_property_minimumInteritemSpacing:(TestProjectTableViewParams *)params {
    return [self createModelSingleArrayWithParams:params
                                         property:@"minimumInteritemSpacing"
                                            value:@"50"
                                        operation:TestProjectCreateModelGetBeforeClickSet
                                            block:nil];
}

- (NSDictionary *)method_2:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"设置获取UICollectionViewFlowLayout的属性minimumInteritemSpacing，最小的水平间距",
            @"title": @"@property (nonatomic) CGFloat minimumInteritemSpacing;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectCollectionViewFlowLayout_property_minimumInteritemSpacing:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectCollectionViewFlowLayout_property_minimumLineSpacing:(TestProjectTableViewParams *)params {
    return [self createModelSingleArrayWithParams:params
                                         property:@"minimumLineSpacing"
                                            value:@"20"
                                        operation:TestProjectCreateModelGetBeforeClickSet
                                            block:nil];
}

- (NSDictionary *)method_1:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"设置获取UICollectionViewFlowLayout的属性minimumLineSpacing，最小的行间距",
            @"title": @"@property (nonatomic) CGFloat minimumInteritemSpacing;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectCollectionViewFlowLayout_property_minimumLineSpacing:params],
            }
        },
    };
}

@end
