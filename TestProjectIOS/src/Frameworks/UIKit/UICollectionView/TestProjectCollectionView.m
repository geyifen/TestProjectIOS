//
//  TestProjectCollectionView.m
//  TestProjectIOS
//
//  Created by zjrcumac on 2023/7/17.
//

#import "TestProjectCollectionView.h"

#import "TestProjectCollectionCell.h"

@interface TestProjectCollectionView () <UICollectionViewDelegate, UICollectionViewDataSource>

@property (nonatomic, strong) UICollectionView *collectionView;
@property (nonatomic, strong) UICollectionViewFlowLayout *layout;
@property (nonatomic, strong) TestProjectCollectionCell *cell;
@property (nonatomic, assign) NSInteger sectionCount;
@property (nonatomic, strong) NSMutableArray *headerSectionArray;
@property (nonatomic, strong) NSMutableArray *footerSectionArray;
@property (nonatomic, strong) NSMutableArray<NSMutableArray *> *itemCountArray;

@property (nonatomic, strong) UITextField *textField;

@end

@implementation TestProjectCollectionView

- (instancetype)initCreate {
    if (self = [super initCreate]) {
        [self.tableView testproject_updateConstraints:^(TestProjectViewConstrainMake * _Nonnull make) {
            make.height.equal(self).offset(-330);
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
    if (indexPath.row == 5) {
        self.cell = cell;
    }
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
        [self addSubview:_collectionView];
        [_collectionView testproject_makeConstraints:^(TestProjectViewConstrainMake * _Nonnull make) {
            make.leading.trainling.equal(self);
            make.top.equal(self.textField.bottom);
            make.height.equal(@300);
        }];
    }
    return _collectionView;
}

- (UITextField *)textField {
    if (!_textField) {
        _textField = [[UITextField alloc] init];
        _textField.layer.borderWidth = 2;
        [self addSubview:_textField];
        [_textField testproject_makeConstraints:^(TestProjectViewConstrainMake * _Nonnull make) {
            make.top.leading.trainling.equal(self);
            make.height.equal(@30);
        }];
    }
    return _textField;
}

- (id)setPropertyValueObject {
    return self.collectionView;
}

- (void)scrollViewDidScroll:(UIScrollView *)scrollView {
    if (scrollView != self.collectionView) {
        return;
    }
    NSLog(@"contentOffset:%@ hasActiveDrag:%u hasActiveDrop:%u", NSStringFromCGPoint(self.collectionView.contentOffset), self.collectionView.hasActiveDrag, self.collectionView.hasActiveDrop);
}

- (NSDictionary *)method_1:(NSInteger)index {
    return @{
        @"dataModel": @{
            @"abstract": @"获取设置UICollectionView的属性collectionViewLayout，这是每个元素的展示信息，包括头部和底部的，可以继承它进行重构",
            @"title": @"@property (nonatomic, strong) UICollectionViewLayout *collectionViewLayout;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectCollectionView_property_collectionViewLayout:index],
            }
        },
    };
}

- (NSMutableArray *)TestProjectCollectionView_property_collectionViewLayout:(NSInteger)index {
    return [self createModelSingleArrayWithIndex:index
                                        property:@"collectionViewLayout"
                                           value:nil
                                       operation:TestProjectCreateModelOnlyGet
                                           block:nil];
}

- (NSDictionary *)method_2:(NSInteger)index {
    return @{
        @"dataModel": @{
            @"abstract": @"获取设置UICollectionView的属性delegate",
            @"title": @"@property (nonatomic, weak, nullable) id <UICollectionViewDelegate> delegate;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectCollectionView_property_delegate:index],
            }
        },
    };
}

- (NSMutableArray *)TestProjectCollectionView_property_delegate:(NSInteger)index {
    return [self createModelSingleArrayWithIndex:index
                                        property:@"delegate"
                                           value:nil
                                       operation:TestProjectCreateModelOnlyGet
                                           block:nil];
}

- (NSDictionary *)method_3:(NSInteger)index {
    return @{
        @"dataModel": @{
            @"abstract": @"获取设置UICollectionView的属性dataSource",
            @"title": @"@property (nonatomic, weak, nullable) id <UICollectionViewDataSource> dataSource;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectCollectionView_property_dataSource:index],
            }
        },
    };
}

- (NSMutableArray *)TestProjectCollectionView_property_dataSource:(NSInteger)index {
    return [self createModelSingleArrayWithIndex:index
                                        property:@"dataSource"
                                           value:nil
                                       operation:TestProjectCreateModelOnlyGet
                                           block:nil];
}

- (NSDictionary *)method_4:(NSInteger)index {
    return @{
        @"dataModel": @{
            @"abstract": @"获取设置UICollectionView的属性prefetchDataSource，开启预加载机制的数据代理源",
            @"title": @"@property (nonatomic, weak, nullable) id<UICollectionViewDataSourcePrefetching> prefetchDataSource API_AVAILABLE(ios(10.0));",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectCollectionView_property_prefetchDataSource:index],
            }
        },
    };
}

- (NSMutableArray *)TestProjectCollectionView_property_prefetchDataSource:(NSInteger)index {
    return [self createModelSingleArrayWithIndex:index
                                        property:@"prefetchDataSource"
                                           value:nil
                                       operation:TestProjectCreateModelOnlyGet
                                           block:nil];
}

- (NSDictionary *)method_5:(NSInteger)index {
    return @{
        @"dataModel": @{
            @"abstract": @"获取设置UICollectionView的属性prefetchingEnabled, 是否开启预加载机制",
            @"title": @"@property (nonatomic, getter=isPrefetchingEnabled) BOOL prefetchingEnabled API_AVAILABLE(ios(10.0));",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectCollectionView_property_prefetchingEnabled:index],
            }
        },
    };
}

- (NSMutableArray *)TestProjectCollectionView_property_prefetchingEnabled:(NSInteger)index {
    NSArray *arr = @[
        @{
            @"title": [NSString stringWithFormat:@"设置的属性值是YES"],
            @"value": @(YES),
        },
        @{
            @"title": [NSString stringWithFormat:@"设置的属性值是NO"],
            @"value": @(NO),
        },
    ];
    for (NSDictionary *dic in arr) {
        NSString *title = dic[@"title"];
        NSNumber *value = dic[@"value"];
        [self createModelWithIndex:index
                             title:title
                          property:@"prefetchingEnabled"
                             value:value
                         operation:TestProjectCreateModelGetBeforeClickSet
                             block:nil];
    }
    return self.dataMutArr;
}

- (NSDictionary *)method_6:(NSInteger)index {
    return @{
        @"dataModel": @{
            @"abstract": @"获取设置UICollectionView的属性dragDelegate",
            @"title": @"@property (nonatomic, weak, nullable) id <UICollectionViewDragDelegate> dragDelegate API_AVAILABLE(ios(11.0)) API_UNAVAILABLE(tvos, watchos);;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectCollectionView_property_dragDelegate:index],
            }
        },
    };
}

- (NSMutableArray *)TestProjectCollectionView_property_dragDelegate:(NSInteger)index {
    return [self createModelSingleArrayWithIndex:index
                                        property:@"dragDelegate"
                                           value:nil
                                       operation:TestProjectCreateModelOnlyGet
                                           block:nil];
}

- (NSDictionary *)method_7:(NSInteger)index {
    return @{
        @"dataModel": @{
            @"abstract": @"获取设置UICollectionView的属性dropDelegate",
            @"title": @"@property (nonatomic, weak, nullable) id <UICollectionViewDropDelegate> dropDelegate API_AVAILABLE(ios(11.0)) API_UNAVAILABLE(tvos, watchos);",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectCollectionView_property_dropDelegate:index],
            }
        },
    };
}

- (NSMutableArray *)TestProjectCollectionView_property_dropDelegate:(NSInteger)index {
    return [self createModelSingleArrayWithIndex:index
                                        property:@"dropDelegate"
                                           value:nil
                                       operation:TestProjectCreateModelOnlyGet
                                           block:nil];
}

- (NSDictionary *)method_8:(NSInteger)index {
    return @{
        @"dataModel": @{
            @"abstract": @"获取设置UICollectionView的属性dragInteractionEnabled",
            @"title": @"@property (nonatomic) BOOL dragInteractionEnabled API_AVAILABLE(ios(11.0)) API_UNAVAILABLE(tvos, watchos);",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectCollectionView_property_dragInteractionEnabled:index],
            }
        },
    };
}

- (NSMutableArray *)TestProjectCollectionView_property_dragInteractionEnabled:(NSInteger)index {
    NSArray *arr = @[
        @{
            @"title": [NSString stringWithFormat:@"设置的属性值是YES"],
            @"value": @(YES),
        },
        @{
            @"title": [NSString stringWithFormat:@"设置的属性值是NO"],
            @"value": @(NO),
        },
    ];
    for (NSDictionary *dic in arr) {
        NSString *title = dic[@"title"];
        NSNumber *value = dic[@"value"];
        [self createModelWithIndex:index
                             title:title
                          property:@"dragInteractionEnabled"
                             value:value
                         operation:TestProjectCreateModelGetBeforeClickSet
                             block:nil];
    }
    return self.dataMutArr;
}

- (NSDictionary *)method_9:(NSInteger)index {
    return @{
        @"dataModel": @{
            @"abstract": @"获取设置UICollectionView的属性contextMenuInteraction",
            @"title": @"@property (nonatomic, readonly, nullable) UIContextMenuInteraction *contextMenuInteraction API_AVAILABLE(ios(13.2)) API_UNAVAILABLE(watchos, tvos);",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectCollectionView_property_contextMenuInteraction:index],
            }
        },
    };
}

- (NSMutableArray *)TestProjectCollectionView_property_contextMenuInteraction:(NSInteger)index {
    return [self createModelSingleArrayWithIndex:index
                                        property:@"contextMenuInteraction"
                                           value:nil
                                       operation:TestProjectCreateModelOnlyGet
                                           block:nil];
}

- (NSDictionary *)method_10:(NSInteger)index {
    return @{
        @"dataModel": @{
            @"abstract": @"获取设置UICollectionView的属性reorderingCadence，设置cell拖拽的效果",
            @"title": @"@property (nonatomic) UICollectionViewReorderingCadence reorderingCadence API_AVAILABLE(ios(11.0)) API_UNAVAILABLE(tvos, watchos);",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectCollectionView_property_reorderingCadence:index],
            }
        },
    };
}

//typedef NS_ENUM(NSInteger, UICollectionViewReorderingCadence) {
//    UICollectionViewReorderingCadenceImmediate,
//    UICollectionViewReorderingCadenceFast,
//    UICollectionViewReorderingCadenceSlow
//} API_AVAILABLE(ios(11.0)) API_UNAVAILABLE(tvos, watchos);

- (NSMutableArray *)TestProjectCollectionView_property_reorderingCadence:(NSInteger)index {
    NSArray *arr = @[
        @{
            @"title": [NSString stringWithFormat:@"设置的属性值是UICollectionViewReorderingCadenceImmediate(%ld)", UICollectionViewReorderingCadenceImmediate],
            @"value": @(UICollectionViewReorderingCadenceImmediate),
        },
        @{
            @"title": [NSString stringWithFormat:@"设置的属性值是UICollectionViewReorderingCadenceFast(%ld)", UICollectionViewReorderingCadenceFast],
            @"value": @(UICollectionViewReorderingCadenceFast),
        },
        @{
            @"title": [NSString stringWithFormat:@"设置的属性值是UICollectionViewReorderingCadenceSlow(%ld)", UICollectionViewReorderingCadenceSlow],
            @"value": @(UICollectionViewReorderingCadenceSlow),
        },
    ];
    for (NSDictionary *dic in arr) {
        NSString *title = dic[@"title"];
        NSNumber *value = dic[@"value"];
        [self createModelWithIndex:index
                             title:title
                          property:@"reorderingCadence"
                             value:value
                         operation:TestProjectCreateModelGetBeforeClickSet
                             block:nil];
    }
    return self.dataMutArr;
}

- (NSDictionary *)method_11:(NSInteger)index {
    return @{
        @"dataModel": @{
            @"abstract": @"获取设置UICollectionView的属性selfSizingInvalidation，想要自动约束cell的宽高",
            @"title": @"@property (nonatomic) UICollectionViewSelfSizingInvalidation selfSizingInvalidation API_AVAILABLE(ios(16.0), tvos(16.0), watchos(9.0));",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectCollectionView_property_selfSizingInvalidation:index],
            }
        },
    };
}

//typedef NS_ENUM(NSInteger, UICollectionViewSelfSizingInvalidation) {
//    /// No updates will take place when -invalidateIntrinsicContentSize is called on a self-sizing cell or its contentView.
//    UICollectionViewSelfSizingInvalidationDisabled,
//    /// Calling -invalidateIntrinsicContentSize on a self-sizing cell or its contentView will cause it to be resized if necessary.
//    UICollectionViewSelfSizingInvalidationEnabled,
//    /// Calling -invalidateIntrinsicContentSize on a self-sizing cell or its contentView will cause it to be resized if necessary, and
//    /// any Auto Layout changes within the contentView of a self-sizing cell will automatically trigger -invalidateIntrinsicContentSize.
//    UICollectionViewSelfSizingInvalidationEnabledIncludingConstraints,
//} API_AVAILABLE(ios(16.0), tvos(16.0), watchos(9.0));

- (NSMutableArray *)TestProjectCollectionView_property_selfSizingInvalidation:(NSInteger)index {
    if (@available(iOS 16.0, *)) {
        NSArray *arr = @[
            @{
                @"title": [NSString stringWithFormat:@"设置的属性值是UICollectionViewSelfSizingInvalidationDisabled(%ld)", UICollectionViewSelfSizingInvalidationDisabled],
                @"value": @(UICollectionViewSelfSizingInvalidationDisabled),
            },
            @{
                @"title": [NSString stringWithFormat:@"设置的属性值是UICollectionViewSelfSizingInvalidationEnabled(%ld)", UICollectionViewSelfSizingInvalidationEnabled],
                @"value": @(UICollectionViewSelfSizingInvalidationEnabled),
            },
            @{
                @"title": [NSString stringWithFormat:@"设置的属性值是UICollectionViewSelfSizingInvalidationEnabledIncludingConstraints(%ld)", UICollectionViewSelfSizingInvalidationEnabledIncludingConstraints],
                @"value": @(UICollectionViewSelfSizingInvalidationEnabledIncludingConstraints),
            },
        ];
        for (NSDictionary *dic in arr) {
            NSString *title = dic[@"title"];
            NSNumber *value = dic[@"value"];
            [self createModelWithIndex:index
                                 title:title
                              property:@"selfSizingInvalidation"
                                 value:value
                             operation:TestProjectCreateModelGetBeforeClickSet
                                 block:nil];
        }
    } else {
        // Fallback on earlier versions
    }
    return self.dataMutArr;
}

- (NSDictionary *)method_12:(NSInteger)index {
    return @{
        @"dataModel": @{
            @"abstract": @"获取设置UICollectionView的属性backgroundView,可以设置一个想要的背景view",
            @"title": @"@property (nonatomic, strong, nullable) UIView *backgroundView;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectCollectionView_property_backgroundView:index],
            }
        },
    };
}

- (NSMutableArray *)TestProjectCollectionView_property_backgroundView:(NSInteger)index {
    UIView *backgroundView = [[UIView alloc] init];
    backgroundView.backgroundColor = [UIColor redColor];
    return [self createModelSingleArrayWithIndex:index
                                        property:@"backgroundView"
                                           value:backgroundView
                                       operation:TestProjectCreateModelGetBeforeClickSet
                                           block:nil];
}

- (NSDictionary *)method_13:(NSInteger)index {
    return @{
        @"dataModel": @{
            @"abstract": @"执行UICollectionView的方法, 通过Class和identifier注册cell",
            @"title": @"- (void)registerClass:(nullable Class)cellClass forCellWithReuseIdentifier:(NSString *)identifier;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectCollectionView_registerClass_forCellWithReuseIdentifier:index],
            }
        },
    };
}

- (NSMutableArray *)TestProjectCollectionView_registerClass_forCellWithReuseIdentifier:(NSInteger)index {
    return [self createModelSingleArrayWithIndex:index title:nil block:nil];
}

- (NSDictionary *)method_14:(NSInteger)index {
    return @{
        @"dataModel": @{
            @"abstract": @"执行UICollectionView的方法, 通过UINib和identifier注册cell",
            @"title": @"- (void)registerNib:(nullable UINib *)nib forCellWithReuseIdentifier:(NSString *)identifier;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectCollectionView_registerNib_forCellWithReuseIdentifier:index],
            }
        },
    };
}

- (NSMutableArray *)TestProjectCollectionView_registerNib_forCellWithReuseIdentifier:(NSInteger)index {
    return [self createModelSingleArrayWithIndex:index title:nil block:nil];
}

- (NSDictionary *)method_15:(NSInteger)index {
    return @{
        @"dataModel": @{
            @"abstract": @"执行UICollectionView的方法, 通过Class和identifier注册cell的headerSection和footerSection",
            @"title": @"- (void)registerClass:(nullable Class)viewClass forSupplementaryViewOfKind:(NSString *)elementKind withReuseIdentifier:(NSString *)identifier;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectCollectionView_registerClass_forSupplementaryViewOfKind:index],
            }
        },
    };
}

- (NSMutableArray *)TestProjectCollectionView_registerClass_forSupplementaryViewOfKind:(NSInteger)index {
    return [self createModelSingleArrayWithIndex:index title:nil block:nil];
}

- (NSDictionary *)method_16:(NSInteger)index {
    return @{
        @"dataModel": @{
            @"abstract": @"执行UICollectionView的方法, 通过UINib和identifier注册cell的headerSection和footerSection",
            @"title": @"- (void)registerNib:(nullable UINib *)nib forSupplementaryViewOfKind:(NSString *)kind withReuseIdentifier:(NSString *)identifier;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectCollectionView_registerNib_forSupplementaryViewOfKind:index],
            }
        },
    };
}

- (NSMutableArray *)TestProjectCollectionView_registerNib_forSupplementaryViewOfKind:(NSInteger)index {
    return [self createModelSingleArrayWithIndex:index title:nil block:nil];
}

- (NSDictionary *)method_17:(NSInteger)index {
    return @{
        @"dataModel": @{
            @"abstract": @"执行UICollectionView的方法, 通过NSIndexPath和identifier获取cell",
            @"title": @"- (__kindof UICollectionViewCell *)dequeueReusableCellWithReuseIdentifier:(NSString *)identifier forIndexPath:(NSIndexPath *)indexPath;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectCollectionView_dequeueReusableCellWithReuseIdentifier:index],
            }
        },
    };
}

- (NSMutableArray *)TestProjectCollectionView_dequeueReusableCellWithReuseIdentifier:(NSInteger)index {
    NSIndexPath *indexPath = [NSIndexPath indexPathForRow:0 inSection:0];
    WS(wSelf);
    return [self createModelSingleArrayWithIndex:index title:[NSString stringWithFormat:@"获取的是：%ld_%ld的cell", indexPath.section, indexPath.row] methodBlock:^NSString * _Nonnull{
        TestProjectCollectionCell *cell = [wSelf.collectionView dequeueReusableCellWithReuseIdentifier:@"TestProjectCollectionCell" forIndexPath:indexPath];
        return [NSString stringWithFormat:@"%@", cell];
    }];
}

- (NSDictionary *)method_18:(NSInteger)index {
    return @{
        @"dataModel": @{
            @"abstract": @"执行UICollectionView的方法, 通过NSIndexPath和identifier和elementKind获取cell的headerSection和footerSection",
            @"title": @"- (__kindof UICollectionReusableView *)dequeueReusableSupplementaryViewOfKind:(NSString *)elementKind withReuseIdentifier:(NSString *)identifier forIndexPath:(NSIndexPath *)indexPath;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectCollectionView_dequeueReusableSupplementaryViewOfKind_withReuseIdentifier_forIndexPath:index],
            }
        },
    };
}

- (NSMutableArray *)TestProjectCollectionView_dequeueReusableSupplementaryViewOfKind_withReuseIdentifier_forIndexPath:(NSInteger)index {
    NSIndexPath *indexPath = [NSIndexPath indexPathForRow:0 inSection:0];
    WS(wSelf);
    return [self createModelSingleArrayWithIndex:index title:[NSString stringWithFormat:@"获取的是：%ld_%ld的headerView和footerView", indexPath.section, indexPath.row] methodBlock:^NSString * _Nonnull{
        TestProjectCollectionReusableView *headerView = [wSelf.collectionView dequeueReusableSupplementaryViewOfKind:UICollectionElementKindSectionHeader withReuseIdentifier:@"TestProjectCollectionReusableView" forIndexPath:indexPath];
        TestProjectCollectionReusableView *footerView = [wSelf.collectionView dequeueReusableSupplementaryViewOfKind:UICollectionElementKindSectionFooter withReuseIdentifier:@"TestProjectCollectionReusableView" forIndexPath:indexPath];
        return [NSString stringWithFormat:@"headerView:%@\nfooterView:%@", headerView, footerView];
    }];
}

- (NSDictionary *)method_19:(NSInteger)index {
    return @{
        @"dataModel": @{
            @"abstract": @"执行UICollectionView的方法, 通过NSIndexPath和UICollectionViewCellRegistration获取cell",
            @"title": @"- (__kindof UICollectionViewCell *)dequeueConfiguredReusableCellWithRegistration:(UICollectionViewCellRegistration*)registration forIndexPath:(NSIndexPath*)indexPath item:(id)item API_AVAILABLE(ios(14.0),tvos(14.0));",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectCollectionView_dequeueConfiguredReusableCellWithRegistration_forIndexPath:index],
            }
        },
    };
}

- (NSMutableArray *)TestProjectCollectionView_dequeueConfiguredReusableCellWithRegistration_forIndexPath:(NSInteger)index {
    NSIndexPath *indexPath = [NSIndexPath indexPathForRow:0 inSection:0];
    WS(wSelf);
    return [self createModelSingleArrayWithIndex:index title:[NSString stringWithFormat:@"获取的是：%ld_%ld的cell", indexPath.section, indexPath.row] methodBlock:^NSString * _Nonnull{
        TestProjectCollectionCell *cell;
        if (@available(iOS 14.0, *)) {
            __block id blockItem;
            UICollectionViewCellRegistration *resist = [UICollectionViewCellRegistration registrationWithCellClass:TestProjectCollectionCell.class configurationHandler:^(__kindof UICollectionViewCell * _Nonnull cell, NSIndexPath * _Nonnull indexPath, id  _Nonnull item) {
                blockItem = item;
                NSLog(@"cell:%@ indexPath:%@ item:%@", cell, indexPath, item);
            }];
            cell = [wSelf.collectionView dequeueConfiguredReusableCellWithRegistration:resist forIndexPath:indexPath item:blockItem];
        } else {
            // Fallback on earlier versions
        }
        return [NSString stringWithFormat:@"%@", cell];
    }];
}

- (NSDictionary *)method_20:(NSInteger)index {
    return @{
        @"dataModel": @{
            @"abstract": @"执行UICollectionView的方法, 通过NSIndexPath和UICollectionViewSupplementaryRegistration获取cell的headerSection和footerSection",
            @"title": @"- (__kindof UICollectionReusableView *)dequeueConfiguredReusableSupplementaryViewWithRegistration:(UICollectionViewSupplementaryRegistration*)registration forIndexPath:(NSIndexPath *)indexPath API_AVAILABLE(ios(14.0),tvos(14.0));",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectCollectionView_dequeueConfiguredReusableSupplementaryViewWithRegistration_forIndexPath:index],
            }
        },
    };
}

- (NSMutableArray *)TestProjectCollectionView_dequeueConfiguredReusableSupplementaryViewWithRegistration_forIndexPath:(NSInteger)index {
    NSIndexPath *indexPath = [NSIndexPath indexPathForRow:0 inSection:0];
    WS(wSelf);
    return [self createModelSingleArrayWithIndex:index title:[NSString stringWithFormat:@"获取的是：%ld_%ld的的headerView和footerView", indexPath.section, indexPath.row] methodBlock:^NSString * _Nonnull{
        TestProjectCollectionReusableView *headerView, *footerView;
        if (@available(iOS 14.0, *)) {
            UICollectionViewSupplementaryRegistration *headerRegist = [UICollectionViewSupplementaryRegistration registrationWithSupplementaryClass:TestProjectCollectionReusableView.class elementKind:UICollectionElementKindSectionHeader configurationHandler:^(__kindof UICollectionReusableView * _Nonnull supplementaryView, NSString * _Nonnull elementKind, NSIndexPath * _Nonnull indexPath) {
                NSLog(@"supplementaryView:%@ elementKind:%@ indexPath:%@", supplementaryView, elementKind, indexPath);
            }];
            headerView = [wSelf.collectionView dequeueConfiguredReusableSupplementaryViewWithRegistration:headerRegist forIndexPath:indexPath];
            UICollectionViewSupplementaryRegistration *footerRegist = [UICollectionViewSupplementaryRegistration registrationWithSupplementaryClass:TestProjectCollectionReusableView.class elementKind:UICollectionElementKindSectionFooter configurationHandler:^(__kindof UICollectionReusableView * _Nonnull supplementaryView, NSString * _Nonnull elementKind, NSIndexPath * _Nonnull indexPath) {
                NSLog(@"supplementaryView:%@ elementKind:%@ indexPath:%@", supplementaryView, elementKind, indexPath);
            }];
            footerView = [wSelf.collectionView dequeueConfiguredReusableSupplementaryViewWithRegistration:footerRegist forIndexPath:indexPath];
        } else {
            // Fallback on earlier versions
        }
        return [NSString stringWithFormat:@"headerView:%@\nfooterView:%@", headerView, footerView];
    }];
}

- (NSDictionary *)method_21:(NSInteger)index {
    return @{
        @"dataModel": @{
            @"abstract": @"获取设置UICollectionView的属性allowsSelection，是否允许选择单个，默认是YES",
            @"title": @"@property (nonatomic) BOOL allowsSelection;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectCollectionView_property_allowsSelection:index],
            }
        },
    };
}

- (NSMutableArray *)TestProjectCollectionView_property_allowsSelection:(NSInteger)index {
    NSArray *arr = @[
        @{
            @"title": [NSString stringWithFormat:@"设置的属性值是YES"],
            @"value": @(YES),
        },
        @{
            @"title": [NSString stringWithFormat:@"设置的属性值是NO"],
            @"value": @(NO),
        },
    ];
    for (NSDictionary *dic in arr) {
        NSString *title = dic[@"title"];
        NSNumber *value = dic[@"value"];
        [self createModelWithIndex:index
                             title:title
                          property:@"allowsSelection"
                             value:value
                         operation:TestProjectCreateModelGetBeforeClickSet
                             block:nil];
    }
    return self.dataMutArr;
}

- (NSDictionary *)method_22:(NSInteger)index {
    return @{
        @"dataModel": @{
            @"abstract": @"获取设置UICollectionView的属性allowsMultipleSelection，是否允许选择多个，默认是NO",
            @"title": @"@property (nonatomic) BOOL allowsMultipleSelection;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectCollectionView_property_allowsMultipleSelection:index],
            }
        },
    };
}

- (NSMutableArray *)TestProjectCollectionView_property_allowsMultipleSelection:(NSInteger)index {
    NSArray *arr = @[
        @{
            @"title": [NSString stringWithFormat:@"设置的属性值是YES"],
            @"value": @(YES),
        },
        @{
            @"title": [NSString stringWithFormat:@"设置的属性值是NO"],
            @"value": @(NO),
        },
    ];
    for (NSDictionary *dic in arr) {
        NSString *title = dic[@"title"];
        NSNumber *value = dic[@"value"];
        [self createModelWithIndex:index
                             title:title
                          property:@"allowsMultipleSelection"
                             value:value
                         operation:TestProjectCreateModelGetBeforeClickSet
                             block:nil];
    }
    return self.dataMutArr;
}

- (NSDictionary *)method_23:(NSInteger)index {
    return @{
        @"dataModel": @{
            @"abstract": @"获取设置UICollectionView的属性indexPathsForSelectedItems,被选中的的cell",
            @"title": @"@property (nonatomic, readonly, nullable) NSArray<NSIndexPath *> *indexPathsForSelectedItems;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectCollectionView_property_indexPathsForSelectedItems:index],
            }
        },
    };
}

- (NSMutableArray *)TestProjectCollectionView_property_indexPathsForSelectedItems:(NSInteger)index {
    return [self createModelSingleArrayWithIndex:index
                                        property:@"indexPathsForSelectedItems"
                                           value:nil
                                       operation:TestProjectCreateModelGetBeforeClickGet
                                           block:nil];
}

- (NSDictionary *)method_24:(NSInteger)index {
    return @{
        @"dataModel": @{
            @"abstract": @"执行UICollectionView的方法, 选中并滚动到某个cell下",
            @"title": @"- (void)selectItemAtIndexPath:(nullable NSIndexPath *)indexPath animated:(BOOL)animated scrollPosition:(UICollectionViewScrollPosition)scrollPosition;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectCollectionView_selectItemAtIndexPath_animated_scrollPosition:index],
            }
        },
    };
}

//typedef NS_OPTIONS(NSUInteger, UICollectionViewScrollPosition) {
//    UICollectionViewScrollPositionNone                 = 0,
//
//    // The vertical positions are mutually exclusive to each other, but are bitwise or-able with the horizontal scroll positions.
//    // Combining positions from the same grouping (horizontal or vertical) will result in an NSInvalidArgumentException.
//    UICollectionViewScrollPositionTop                  = 1 << 0,
//    UICollectionViewScrollPositionCenteredVertically   = 1 << 1,
//    UICollectionViewScrollPositionBottom               = 1 << 2,
//
//    // Likewise, the horizontal positions are mutually exclusive to each other.
//    UICollectionViewScrollPositionLeft                 = 1 << 3,
//    UICollectionViewScrollPositionCenteredHorizontally = 1 << 4,
//    UICollectionViewScrollPositionRight                = 1 << 5
//};

- (NSMutableArray *)TestProjectCollectionView_selectItemAtIndexPath_animated_scrollPosition:(NSInteger)index {
    NSArray *arr = @[
        @{
            @"title": [NSString stringWithFormat:@"设置的属性值是UICollectionViewScrollPositionNone(%ld)，无作用", UICollectionViewScrollPositionNone],
            @"value": @(UICollectionViewScrollPositionNone),
        },
        @{
            @"title": [NSString stringWithFormat:@"设置的属性值是UICollectionViewScrollPositionTop(%ld)，某个cell滚动到页面顶部", UICollectionViewScrollPositionTop],
            @"value": @(UICollectionViewScrollPositionTop),
        },
        @{
            @"title": [NSString stringWithFormat:@"设置的属性值是UICollectionViewScrollPositionCenteredVertically(%ld)，某个cell滚动到页面Y中间", UICollectionViewScrollPositionCenteredVertically],
            @"value": @(UICollectionViewScrollPositionCenteredVertically),
        },
        @{
            @"title": [NSString stringWithFormat:@"设置的属性值是UICollectionViewScrollPositionBottom(%ld)，某个cell滚动到页面底部", UICollectionViewScrollPositionBottom],
            @"value": @(UICollectionViewScrollPositionBottom),
        },
        @{
            @"title": [NSString stringWithFormat:@"设置的属性值是UICollectionViewScrollPositionLeft(%ld)，某个cell滚动到左边", UICollectionViewScrollPositionLeft],
            @"value": @(UICollectionViewScrollPositionLeft),
        },
        @{
            @"title": [NSString stringWithFormat:@"设置的属性值是UICollectionViewScrollPositionCenteredHorizontally(%ld)，某个cell滚动到页面X中间", UICollectionViewScrollPositionCenteredHorizontally],
            @"value": @(UICollectionViewScrollPositionCenteredHorizontally),
        },
        @{
            @"title": [NSString stringWithFormat:@"设置的属性值是UICollectionViewScrollPositionRight(%ld)，某个cell滚动到右边", UICollectionViewScrollPositionRight],
            @"value": @(UICollectionViewScrollPositionRight),
        },
    ];
    NSIndexPath *indexPath = [NSIndexPath indexPathForRow:10 inSection:0];
    WS(wSelf);
    for (NSDictionary *dic in arr) {
        NSString *title = dic[@"title"];
        UICollectionViewScrollPosition position = [dic[@"value"] integerValue];
        [self createModelSingleArrayWithIndex:index title:[NSString stringWithFormat:@"%@,设置的是：%ld_%ld", title, indexPath.section, indexPath.row] block:^{
            [wSelf.collectionView selectItemAtIndexPath:indexPath animated:YES scrollPosition:position];
        }];
    }
    return self.dataMutArr;
}

- (NSDictionary *)method_25:(NSInteger)index {
    return @{
        @"dataModel": @{
            @"abstract": @"执行UICollectionView的方法，取消选中",
            @"title": @"- (void)deselectItemAtIndexPath:(NSIndexPath *)indexPath animated:(BOOL)animated;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectCollectionView_deselectItemAtIndexPath_animated:index],
            }
        },
    };
}

- (NSMutableArray *)TestProjectCollectionView_deselectItemAtIndexPath_animated:(NSInteger)index {
    NSIndexPath *indexPath = [NSIndexPath indexPathForRow:5 inSection:0];
    WS(wSelf);
    return [self createModelSingleArrayWithIndex:index title:[NSString stringWithFormat:@"设置的是：%ld_%ld", indexPath.section, indexPath.row] block:^{
        [wSelf.collectionView deselectItemAtIndexPath:indexPath animated:YES];
    }];
}

- (NSDictionary *)method_26:(NSInteger)index {
    return @{
        @"dataModel": @{
            @"abstract": @"获取设置UICollectionView的属性hasUncommittedUpdates",
            @"title": @"@property (nonatomic, readonly) BOOL hasUncommittedUpdates API_AVAILABLE(ios(11.0));",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectCollectionView_property_hasUncommittedUpdates:index],
            }
        },
    };
}

- (NSMutableArray *)TestProjectCollectionView_property_hasUncommittedUpdates:(NSInteger)index {
    return [self createModelSingleArrayWithIndex:index
                                        property:@"hasUncommittedUpdates"
                                           value:nil
                                       operation:TestProjectCreateModelGetBeforeClickGet
                                           block:nil];
}

- (NSDictionary *)method_27:(NSInteger)index {
    return @{
        @"dataModel": @{
            @"abstract": @"执行UICollectionView的方法，重新刷数据",
            @"title": @"- (void)reloadData;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectCollectionView_reloadData:index],
            }
        },
    };
}

- (NSMutableArray *)TestProjectCollectionView_reloadData:(NSInteger)index {
    return [self createModelSingleArrayWithIndex:index title:nil block:nil];
}

- (NSDictionary *)method_29:(NSInteger)index {
    return @{
        @"dataModel": @{
            @"abstract": @"执行UICollectionView的方法，重新设置layout会立即生效，如果是同一个layout不会生效",
            @"title": @"- (void)setCollectionViewLayout:(UICollectionViewLayout *)layout animated:(BOOL)animated;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectCollectionView_setCollectionViewLayout_animated:index],
            }
        },
    };
}

- (NSMutableArray *)TestProjectCollectionView_setCollectionViewLayout_animated:(NSInteger)index {
    WS(wSelf);
    UICollectionViewFlowLayout *layout = [[UICollectionViewFlowLayout alloc] init];
    layout.sectionInset = UIEdgeInsetsZero;
    layout.minimumLineSpacing = 10;
    layout.minimumInteritemSpacing = 10;
    layout.itemSize = CGSizeMake(150, 100);
    layout.headerReferenceSize = CGSizeMake(0, 50);
    layout.footerReferenceSize = CGSizeMake(0, 50);
    return [self createModelSingleArrayWithIndex:index title:[NSString stringWithFormat:@"重新设置的layout：%@", layout] block:^{
        [wSelf.collectionView setCollectionViewLayout:layout animated:YES];
    }];
}

- (NSDictionary *)method_30:(NSInteger)index {
    return @{
        @"dataModel": @{
            @"abstract": @"执行UICollectionView的方法, 重新设置layout会立即生效，如果是同一个layout不会生效，有一个完成的回调",
            @"title": @"- (void)setCollectionViewLayout:(UICollectionViewLayout *)layout animated:(BOOL)animated completion:(void (^ __nullable)(BOOL finished))completion NS_SWIFT_DISABLE_ASYNC API_AVAILABLE(ios(7.0));",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectCollectionView_setCollectionViewLayout_animated_completion:index],
            }
        },
    };
}

- (NSMutableArray *)TestProjectCollectionView_setCollectionViewLayout_animated_completion:(NSInteger)index {
    WS(wSelf);
    UICollectionViewFlowLayout *layout = [[UICollectionViewFlowLayout alloc] init];
    layout.sectionInset = UIEdgeInsetsZero;
    layout.minimumLineSpacing = 10;
    layout.minimumInteritemSpacing = 10;
    layout.itemSize = CGSizeMake(150, 50);
    layout.headerReferenceSize = CGSizeMake(0, 50);
    layout.footerReferenceSize = CGSizeMake(0, 50);
    return [self createModelSingleArrayWithIndex:index title:[NSString stringWithFormat:@"重新设置的layout：%@", layout] block:^{
        [wSelf.collectionView setCollectionViewLayout:layout animated:YES completion:^(BOOL finished) {
            [TestProjectToast showWithText:@"设置layout完成" withParentView:wSelf];
        }];
    }];
}

- (NSDictionary *)method_31:(NSInteger)index {
    return @{
        @"dataModel": @{
            @"abstract": @"执行UICollectionView的方法, 开始layout的InteractiveTransition转换",
            @"title": @"- (UICollectionViewTransitionLayout *)startInteractiveTransitionToCollectionViewLayout:(UICollectionViewLayout *)layout completion:(nullable UICollectionViewLayoutInteractiveTransitionCompletion)completion API_AVAILABLE(ios(7.0));",
            @"isDataModelExpand": @(YES),
            @"desc": @"在结束或者取消之前只能设置一次，否则会崩溃",
            @"dataModel": @{
                @"childItems": [self TestProjectCollectionView_startInteractiveTransitionToCollectionViewLayout_completion:index],
            }
        },
    };
}

- (NSMutableArray *)TestProjectCollectionView_startInteractiveTransitionToCollectionViewLayout_completion:(NSInteger)index {
    WS(wSelf);
    UICollectionViewFlowLayout *layout = [[UICollectionViewFlowLayout alloc] init];
    layout.sectionInset = UIEdgeInsetsZero;
    layout.minimumLineSpacing = 10;
    layout.minimumInteritemSpacing = 10;
    layout.itemSize = CGSizeMake(150, 150);
    layout.headerReferenceSize = CGSizeMake(0, 50);
    layout.footerReferenceSize = CGSizeMake(0, 50);
    return [self createModelSingleArrayWithIndex:index title:[NSString stringWithFormat:@"重新设置的layout：%@", layout] methodBlock:^NSString * _Nonnull{
        UICollectionViewTransitionLayout *trasitionLayout = [wSelf.collectionView startInteractiveTransitionToCollectionViewLayout:layout completion:^(BOOL completed, BOOL finished) {
            [TestProjectToast showWithText:@"设置trasitionLayout完成" withParentView:wSelf];
        }];
        return [NSString stringWithFormat:@"%@", trasitionLayout];
    }];
}

- (NSDictionary *)method_32:(NSInteger)index {
    return @{
        @"dataModel": @{
            @"abstract": @"执行UICollectionView的方法, 结束layout的InteractiveTransition转换",
            @"title": @"- (void)finishInteractiveTransition API_AVAILABLE(ios(7.0));",
            @"isDataModelExpand": @(YES),
            @"desc": @"在开始之后，如果已经取消或者结束了，不能在设置，否则崩溃",
            @"dataModel": @{
                @"childItems": [self TestProjectCollectionView_finishInteractiveTransition:index],
            }
        },
    };
}

- (NSMutableArray *)TestProjectCollectionView_finishInteractiveTransition:(NSInteger)index {
    WS(wSelf);
    return [self createModelSingleArrayWithIndex:index title:@"finishInteractiveTransition" block:^{
        [wSelf.collectionView finishInteractiveTransition];
    }];
}

- (NSDictionary *)method_33:(NSInteger)index {
    return @{
        @"dataModel": @{
            @"abstract": @"执行UICollectionView的方法, 取消layout的InteractiveTransition转换",
            @"title": @"- (void)cancelInteractiveTransition API_AVAILABLE(ios(7.0));",
            @"isDataModelExpand": @(YES),
            @"desc": @"在开始之后，如果已经取消或者结束了，不能在设置，否则崩溃",
            @"dataModel": @{
                @"childItems": [self TestProjectCollectionView_cancelInteractiveTransition:index],
            }
        },
    };
}

- (NSMutableArray *)TestProjectCollectionView_cancelInteractiveTransition:(NSInteger)index {
    WS(wSelf);
    return [self createModelSingleArrayWithIndex:index title:@"cancelInteractiveTransition" block:^{
        [wSelf.collectionView cancelInteractiveTransition];
    }];
}

- (NSDictionary *)method_34:(NSInteger)index {
    return @{
        @"dataModel": @{
            @"abstract": @"获取设置UICollectionView的属性numberOfSections,有多少个sections",
            @"title": @"@property (nonatomic, readonly) NSInteger numberOfSections;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectCollectionView_property_numberOfSections:index],
            }
        },
    };
}

- (NSMutableArray *)TestProjectCollectionView_property_numberOfSections:(NSInteger)index {
    return [self createModelSingleArrayWithIndex:index
                                        property:@"numberOfSections"
                                           value:nil
                                       operation:TestProjectCreateModelGetBeforeClickGet
                                           block:nil];
}

- (NSDictionary *)method_35:(NSInteger)index {
    return @{
        @"dataModel": @{
            @"abstract": @"执行UICollectionView的方法, 某个section下有多少个cellItem",
            @"title": @"- (NSInteger)numberOfItemsInSection:(NSInteger)section;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectCollectionView_numberOfItemsInSection:index],
            }
        },
    };
}

- (NSMutableArray *)TestProjectCollectionView_numberOfItemsInSection:(NSInteger)index {
    WS(wSelf);
    return [self createModelSingleArrayWithIndex:index title:@"在第0个section" methodBlock:^NSString * _Nonnull{
         NSInteger count = [wSelf.collectionView numberOfItemsInSection:0];
        return [NSString stringWithFormat:@"有%ld个cell", count];
    }];
}

- (NSDictionary *)method_36:(NSInteger)index {
    return @{
        @"dataModel": @{
            @"abstract": @"执行UICollectionView的方法, 获取某个NSIndexPath下的cell的layout信息",
            @"title": @"- (nullable UICollectionViewLayoutAttributes *)layoutAttributesForItemAtIndexPath:(NSIndexPath *)indexPath;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectCollectionView_layoutAttributesForItemAtIndexPath:index],
            }
        },
    };
}

- (NSMutableArray *)TestProjectCollectionView_layoutAttributesForItemAtIndexPath:(NSInteger)index {
    NSIndexPath *indexPath = [NSIndexPath indexPathForRow:0 inSection:0];
    WS(wSelf);
    return [self createModelSingleArrayWithIndex:index title:[NSString stringWithFormat:@"获取的是%ld_%ldcell的layout", indexPath.section, indexPath.row] methodBlock:^NSString * _Nonnull{
        UICollectionViewLayoutAttributes *cellLayout = [wSelf.collectionView layoutAttributesForItemAtIndexPath:indexPath];
        return [NSString stringWithFormat:@"cellLayout:%@", cellLayout];
    }];
}

- (NSDictionary *)method_37:(NSInteger)index {
    return @{
        @"dataModel": @{
            @"abstract": @"执行UICollectionView的方法, 获取某个NSIndexPath下的kind的layout信息",
            @"title": @"- (nullable UICollectionViewLayoutAttributes *)layoutAttributesForSupplementaryElementOfKind:(NSString *)kind atIndexPath:(NSIndexPath *)indexPath;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectCollectionView_layoutAttributesForSupplementaryElementOfKind_atIndexPath:index],
            }
        },
    };
}

- (NSMutableArray *)TestProjectCollectionView_layoutAttributesForSupplementaryElementOfKind_atIndexPath:(NSInteger)index {
    NSIndexPath *indexPath = [NSIndexPath indexPathForRow:0 inSection:0];
    NSString *kind = UICollectionElementKindSectionHeader;
    WS(wSelf);
    return [self createModelSingleArrayWithIndex:index title:[NSString stringWithFormat:@"获取的是%@下的%ld_%ld", kind, indexPath.section, indexPath.row] methodBlock:^NSString * _Nonnull{
        UICollectionViewLayoutAttributes *headerLayout = [wSelf.collectionView layoutAttributesForSupplementaryElementOfKind:kind atIndexPath:indexPath];
        return [NSString stringWithFormat:@"headerLayout:%@", headerLayout];
    }];
}

- (NSDictionary *)method_38:(NSInteger)index {
    return @{
        @"dataModel": @{
            @"abstract": @"执行UICollectionView的方法, 某个CGPoint是哪个cell下的NSIndexPath",
            @"title": @"- (nullable NSIndexPath *)indexPathForItemAtPoint:(CGPoint)point;",
            @"isDataModelExpand": @(YES),
            @"desc": @"如果CGPoint在header或者footer或者在cell之间的间距上则返回的是null，该点必须在cell的rect中",
            @"dataModel": @{
                @"childItems": [self TestProjectCollectionView_indexPathForItemAtPoint:index],
            }
        },
    };
}

- (NSMutableArray *)TestProjectCollectionView_indexPathForItemAtPoint:(NSInteger)index {
    WS(wSelf);
    CGPoint point = CGPointMake(0, 101);
    return [self createModelSingleArrayWithIndex:index title:[NSString stringWithFormat:@"%@", NSStringFromCGPoint(point)] methodBlock:^NSString * _Nonnull{
        NSIndexPath *indexPath = [wSelf.collectionView indexPathForItemAtPoint:point];
        return [NSString stringWithFormat:@"%@", indexPath];
    }];
}

- (NSDictionary *)method_39:(NSInteger)index {
    return @{
        @"dataModel": @{
            @"abstract": @"执行UICollectionView的方法, 获取某个cell的是哪个NSIndexPath",
            @"title": @"- (nullable NSIndexPath *)indexPathForCell:(UICollectionViewCell *)cell;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectCollectionView_indexPathForCell:index],
            }
        },
    };
}

- (NSMutableArray *)TestProjectCollectionView_indexPathForCell:(NSInteger)index {
    WS(wSelf);
    return [self createModelSingleArrayWithIndex:index title:[NSString stringWithFormat:@"%@", self.cell] methodBlock:^NSString * _Nonnull{
        NSIndexPath *indexPath = [wSelf.collectionView indexPathForCell:self.cell];
        return [NSString stringWithFormat:@"%@", indexPath];
    }];
}

- (NSDictionary *)method_40:(NSInteger)index {
    return @{
        @"dataModel": @{
            @"abstract": @"执行UICollectionView的方法, 某个NSIndexPath下的cellItem",
            @"title": @"- (nullable UICollectionViewCell *)cellForItemAtIndexPath:(NSIndexPath *)indexPath;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectCollectionView_cellForItemAtIndexPath:index],
            }
        },
    };
}

- (NSMutableArray *)TestProjectCollectionView_cellForItemAtIndexPath:(NSInteger)index {
    NSIndexPath *indexPath = [NSIndexPath indexPathForRow:0 inSection:0];
    WS(wSelf);
    return [self createModelSingleArrayWithIndex:index title:[NSString stringWithFormat:@"获取%ld_%ld下的cell", indexPath.section, indexPath.row] methodBlock:^NSString * _Nonnull{
        UICollectionViewCell *cell = [wSelf.collectionView cellForItemAtIndexPath:indexPath];
        return [NSString stringWithFormat:@"%@", cell];
    }];
}

- (NSDictionary *)method_41:(NSInteger)index {
    return @{
        @"dataModel": @{
            @"abstract": @"获取设置UICollectionView的属性visibleCells, 获取可视化的cell",
            @"title": @"@property (nonatomic, readonly) NSArray<__kindof UICollectionViewCell *> *visibleCells;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectCollectionView_property_visibleCells:index],
            }
        },
    };
}

- (NSMutableArray *)TestProjectCollectionView_property_visibleCells:(NSInteger)index {
    return [self createModelSingleArrayWithIndex:index
                                        property:@"visibleCells"
                                           value:nil
                                       operation:TestProjectCreateModelGetBeforeClickGet
                                           block:nil];
}

- (NSDictionary *)method_42:(NSInteger)index {
    return @{
        @"dataModel": @{
            @"abstract": @"获取设置UICollectionView的属性indexPathsForVisibleItems,获取可视化的NSIndexPath",
            @"title": @"@property (nonatomic, readonly) NSArray<NSIndexPath *> *indexPathsForVisibleItems;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectCollectionView_property_indexPathsForVisibleItems:index],
            }
        },
    };
}

- (NSMutableArray *)TestProjectCollectionView_property_indexPathsForVisibleItems:(NSInteger)index {
    return [self createModelSingleArrayWithIndex:index
                                        property:@"indexPathsForVisibleItems"
                                           value:nil
                                       operation:TestProjectCreateModelGetBeforeClickGet
                                           block:nil];
}

- (NSDictionary *)method_43:(NSInteger)index {
    return @{
        @"dataModel": @{
            @"abstract": @"执行UICollectionView的方法, 某个NSIndexPath下的section view",
            @"title": @"- (nullable UICollectionReusableView *)supplementaryViewForElementKind:(NSString *)elementKind atIndexPath:(NSIndexPath *)indexPath API_AVAILABLE(ios(9.0));",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectCollectionView_supplementaryViewForElementKind_atIndexPath:index],
            }
        },
    };
}

- (NSMutableArray *)TestProjectCollectionView_supplementaryViewForElementKind_atIndexPath:(NSInteger)index {
    NSIndexPath *indexPath = [NSIndexPath indexPathForRow:0 inSection:0];
    WS(wSelf);
    return [self createModelSingleArrayWithIndex:index title:[NSString stringWithFormat:@"获取%ld_%ld下的header section", indexPath.section, indexPath.row] methodBlock:^NSString * _Nonnull{
        UICollectionReusableView *headerView = [wSelf.collectionView supplementaryViewForElementKind:UICollectionElementKindSectionHeader atIndexPath:indexPath];
        return [NSString stringWithFormat:@"headerView:%@", headerView];
    }];
}

- (NSDictionary *)method_44:(NSInteger)index {
    return @{
        @"dataModel": @{
            @"abstract": @"执行UICollectionView的方法, 获取可视化的section View",
            @"title": @"- (NSArray<UICollectionReusableView *> *)visibleSupplementaryViewsOfKind:(NSString *)elementKind API_AVAILABLE(ios(9.0));",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectCollectionView_visibleSupplementaryViewsOfKind:index],
            }
        },
    };
}

- (NSMutableArray *)TestProjectCollectionView_visibleSupplementaryViewsOfKind:(NSInteger)index {
    WS(wSelf);
    return [self createModelSingleArrayWithIndex:index title:@"获取可视化的header section" methodBlock:^NSString * _Nonnull{
        NSArray *arr = [wSelf.collectionView visibleSupplementaryViewsOfKind:UICollectionElementKindSectionHeader];
        return [NSString stringWithFormat:@"%@", arr];
    }];
}

- (NSDictionary *)method_45:(NSInteger)index {
    return @{
        @"dataModel": @{
            @"abstract": @"执行UICollectionView的方法, 获取可视化的section的NSIndexPath",
            @"title": @"- (NSArray<NSIndexPath *> *)indexPathsForVisibleSupplementaryElementsOfKind:(NSString *)elementKind API_AVAILABLE(ios(9.0));",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectCollectionView_indexPathsForVisibleSupplementaryElementsOfKind:index],
            }
        },
    };
}

- (NSMutableArray *)TestProjectCollectionView_indexPathsForVisibleSupplementaryElementsOfKind:(NSInteger)index {
    WS(wSelf);
    return [self createModelSingleArrayWithIndex:index title:@"获取可视化的header Section" methodBlock:^NSString * _Nonnull{
        NSArray *arr = [wSelf.collectionView indexPathsForVisibleSupplementaryElementsOfKind:UICollectionElementKindSectionHeader];
        return [NSString stringWithFormat:@"%@", arr];
    }];
}

- (NSDictionary *)method_46:(NSInteger)index {
    return @{
        @"dataModel": @{
            @"abstract": @"执行UICollectionView的方法, 滚动到某个NSIndexPath的cell下，不选中cell",
            @"title": @"- (void)scrollToItemAtIndexPath:(NSIndexPath *)indexPath atScrollPosition:(UICollectionViewScrollPosition)scrollPosition animated:(BOOL)animated;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectCollectionView_scrollToItemAtIndexPath_atScrollPosition_animated:index],
            }
        },
    };
}

- (NSMutableArray *)TestProjectCollectionView_scrollToItemAtIndexPath_atScrollPosition_animated:(NSInteger)index {
    NSIndexPath *indexPath = [NSIndexPath indexPathForRow:5 inSection:0];
    WS(wSelf);
    return [self createModelSingleArrayWithIndex:index title:[NSString stringWithFormat:@"滚动到%ld_%ld下的cell", indexPath.section, indexPath.row] block:^{
        [wSelf.collectionView scrollToItemAtIndexPath:indexPath atScrollPosition:UICollectionViewScrollPositionBottom animated:YES];
    }];
}

- (NSDictionary *)method_47:(NSInteger)index {
    return @{
        @"dataModel": @{
            @"abstract": @"执行UICollectionView的方法, 插入一个section数据",
            @"title": @"- (void)insertSections:(NSIndexSet *)sections;",
            @"isDataModelExpand": @(YES),
            @"desc": @"insertSections用的是NSIndexSet.count, 因此NSIndexSet.count不能超过数据源的数量",
            @"dataModel": @{
                @"childItems": [self TestProjectCollectionView_insertSections:index],
            }
        },
    };
}

- (NSMutableArray *)TestProjectCollectionView_insertSections:(NSInteger)index {
    NSIndexSet *set = [NSIndexSet indexSetWithIndex:1];
    NSInteger itemCount = 10;
    
    WS(wSelf);
    return [self createModelSingleArrayWithIndex:index title:[NSString stringWithFormat:@"%@, 插入的itemCount:%ld", set, itemCount] block:^{
        wSelf.sectionCount++;
        NSMutableArray *itemArr = [NSMutableArray array];
        for (NSInteger i = 0; i < itemCount; i++) {
            [itemArr addObject:[NSString stringWithFormat:@"insert:%ld_%ld", set.firstIndex, i]];
        }
        [wSelf.headerSectionArray insertObject:[NSString stringWithFormat:@"insert header %ld", set.firstIndex] atIndex:set.firstIndex];
        [wSelf.footerSectionArray insertObject:[NSString stringWithFormat:@"insert footer %ld", set.firstIndex] atIndex:set.firstIndex];
        [wSelf.itemCountArray insertObject:itemArr atIndex:set.firstIndex];
        [wSelf.collectionView insertSections:set];
    }];
}

- (NSDictionary *)method_48:(NSInteger)index {
    return @{
        @"dataModel": @{
            @"abstract": @"执行UICollectionView的方法, 删除一个section数据",
            @"title": @"- (void)deleteSections:(NSIndexSet *)sections;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectCollectionView_deleteSections:index],
            }
        },
    };
}

- (NSMutableArray *)TestProjectCollectionView_deleteSections:(NSInteger)index {
    NSIndexSet *set = [NSIndexSet indexSetWithIndex:1];
    
    WS(wSelf);
    return [self createModelSingleArrayWithIndex:index title:[NSString stringWithFormat:@"%@", set] block:^{
        wSelf.sectionCount--;
        [wSelf.headerSectionArray removeObjectAtIndex:set.firstIndex];
        [wSelf.footerSectionArray removeObjectAtIndex:set.firstIndex];
        [wSelf.itemCountArray removeObjectAtIndex:set.firstIndex];
        [wSelf.collectionView deleteSections:set];
    }];
}

- (NSDictionary *)method_49:(NSInteger)index {
    return @{
        @"dataModel": @{
            @"abstract": @"执行UICollectionView的方法, 把一个section移动到另一个section中",
            @"title": @"- (void)moveSection:(NSInteger)section toSection:(NSInteger)newSection;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectCollectionView_moveSection_toSection:index],
            }
        },
    };
}

- (NSMutableArray *)TestProjectCollectionView_moveSection_toSection:(NSInteger)index {
    NSInteger moveSection = 0, toSection = 1;
    WS(wSelf);
    return [self createModelSingleArrayWithIndex:index title:[NSString stringWithFormat:@"moveSection:%ld toSection:%ld", moveSection, toSection] block:^{
        [wSelf.headerSectionArray exchangeObjectAtIndex:moveSection withObjectAtIndex:toSection];
        [wSelf.footerSectionArray exchangeObjectAtIndex:moveSection withObjectAtIndex:toSection];
        [wSelf.itemCountArray exchangeObjectAtIndex:moveSection withObjectAtIndex:toSection];
        [wSelf.collectionView moveSection:moveSection toSection:toSection];
    }];
}

- (NSDictionary *)method_50:(NSInteger)index {
    return @{
        @"dataModel": @{
            @"abstract": @"执行UICollectionView的方法, 刷新一个section数据",
            @"title": @"- (void)reloadSections:(NSIndexSet *)sections;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectCollectionView_reloadSections:index],
            }
        },
    };
}

- (NSMutableArray *)TestProjectCollectionView_reloadSections:(NSInteger)index {
    NSIndexSet *set = [NSIndexSet indexSetWithIndex:1];
    WS(wSelf);
    return [self createModelSingleArrayWithIndex:index title:[NSString stringWithFormat:@"%@", set] block:^{
        [wSelf.headerSectionArray replaceObjectAtIndex:set.firstIndex withObject:[NSString stringWithFormat:@"relaod header:%ld", set.firstIndex]];
        [wSelf.collectionView reloadSections:set];
    }];
}

- (NSDictionary *)method_51:(NSInteger)index {
    return @{
        @"dataModel": @{
            @"abstract": @"执行UICollectionView的方法, 插入一堆NSIndexPath",
            @"title": @"- (void)insertItemsAtIndexPaths:(NSArray<NSIndexPath *> *)indexPaths;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectCollectionView_insertItemsAtIndexPaths:index],
            }
        },
    };
}

- (NSMutableArray *)TestProjectCollectionView_insertItemsAtIndexPaths:(NSInteger)index {
    NSArray *arr = @[
        [NSIndexPath indexPathForRow:0 inSection:0],
        [NSIndexPath indexPathForRow:0 inSection:1],
        [NSIndexPath indexPathForRow:0 inSection:2],
    ];
    WS(wSelf);
    return [self createModelSingleArrayWithIndex:index title:[NSString stringWithFormat:@"要插入的NSIndexPath：%@", arr] block:^{
        for (NSIndexPath *indexPath in arr) {
            NSMutableArray *mutArr = self.itemCountArray[indexPath.section];
            [mutArr insertObject:[NSString stringWithFormat:@"insert:%ld_%ld", indexPath.section, indexPath.row] atIndex:indexPath.row];
        }
        [wSelf.collectionView insertItemsAtIndexPaths:arr];
    }];
}

- (NSDictionary *)method_52:(NSInteger)index {
    return @{
        @"dataModel": @{
            @"abstract": @"执行UICollectionView的方法, 删除一堆NSIndexPath数据",
            @"title": @"- (void)deleteItemsAtIndexPaths:(NSArray<NSIndexPath *> *)indexPaths;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectCollectionView_deleteItemsAtIndexPaths:index],
            }
        },
    };
}

- (NSMutableArray *)TestProjectCollectionView_deleteItemsAtIndexPaths:(NSInteger)index {
    NSArray *arr = @[
        [NSIndexPath indexPathForRow:0 inSection:0],
        [NSIndexPath indexPathForRow:0 inSection:1],
        [NSIndexPath indexPathForRow:0 inSection:2],
    ];
    WS(wSelf);
    return [self createModelSingleArrayWithIndex:index title:[NSString stringWithFormat:@"要删除的NSIndexPath：%@", arr] block:^{
        for (NSIndexPath *indexPath in arr) {
            NSMutableArray *mutArr = self.itemCountArray[indexPath.section];
            [mutArr removeObjectAtIndex:indexPath.row];
        }
        [wSelf.collectionView deleteItemsAtIndexPaths:arr];
    }];
}

- (NSDictionary *)method_53:(NSInteger)index {
    return @{
        @"dataModel": @{
            @"abstract": @"执行UICollectionView的方法, 移动某个NSIndexPath到另一个NSIndexPath",
            @"title": @"- (void)moveItemAtIndexPath:(NSIndexPath *)indexPath toIndexPath:(NSIndexPath *)newIndexPath;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectCollectionView_moveItemAtIndexPath_toIndexPath:index],
            }
        },
    };
}

- (NSMutableArray *)TestProjectCollectionView_moveItemAtIndexPath_toIndexPath:(NSInteger)index {
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

- (NSDictionary *)method_54:(NSInteger)index {
    return @{
        @"dataModel": @{
            @"abstract": @"执行UICollectionView的方法, 刷新一个section数据",
            @"title": @"- (void)reloadItemsAtIndexPaths:(NSArray<NSIndexPath *> *)indexPaths;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectCollectionView_reloadItemsAtIndexPaths:index],
            }
        },
    };
}

- (NSMutableArray *)TestProjectCollectionView_reloadItemsAtIndexPaths:(NSInteger)index {
    NSArray *arr = @[
        [NSIndexPath indexPathForRow:0 inSection:0],
        [NSIndexPath indexPathForRow:0 inSection:1],
        [NSIndexPath indexPathForRow:0 inSection:2],
    ];
    WS(wSelf);
    return [self createModelSingleArrayWithIndex:index title:[NSString stringWithFormat:@"要reload的NSIndexPath%@", arr] block:^{
        for (NSIndexPath *indexPath in arr) {
            NSMutableArray *mutArr = self.itemCountArray[indexPath.section];
            [mutArr replaceObjectAtIndex:indexPath.row withObject:[NSString stringWithFormat:@"reload:%ld_%ld", indexPath.section, indexPath.row]];
        }
        [wSelf.collectionView reloadItemsAtIndexPaths:arr];
    }];
}

- (NSDictionary *)method_55:(NSInteger)index {
    return @{
        @"dataModel": @{
            @"abstract": @"执行UICollectionView的方法, 如果不是非必要 是重新配置cell而不是新建cell",
            @"title": @"- (void)reconfigureItemsAtIndexPaths:(NSArray<NSIndexPath *> *)indexPaths API_AVAILABLE(ios(15.0), tvos(15.0), watchos(8.0));",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectCollectionView_reconfigureItemsAtIndexPaths:index],
            }
        },
    };
}

- (NSMutableArray *)TestProjectCollectionView_reconfigureItemsAtIndexPaths:(NSInteger)index {
    NSArray *arr = @[
        [NSIndexPath indexPathForRow:0 inSection:0],
        [NSIndexPath indexPathForRow:0 inSection:1],
        [NSIndexPath indexPathForRow:0 inSection:2],
    ];
    WS(wSelf);
    return [self createModelSingleArrayWithIndex:index title:[NSString stringWithFormat:@"要reload的NSIndexPath%@", arr] block:^{
        for (NSIndexPath *indexPath in arr) {
            NSMutableArray *mutArr = self.itemCountArray[indexPath.section];
            [mutArr replaceObjectAtIndex:indexPath.row withObject:[NSString stringWithFormat:@"reload:%ld_%ld", indexPath.section, indexPath.row]];
        }
        if (@available(iOS 15.0, *)) {
            [wSelf.collectionView reconfigureItemsAtIndexPaths:arr];
        } else {
            // Fallback on earlier versions
        }
    }];
}

- (NSDictionary *)method_56:(NSInteger)index {
    return @{
        @"dataModel": @{
            @"abstract": @"执行UICollectionView的方法, 一次性完成插入、删除、更新等操作",
            @"title": @"- (void)performBatchUpdates:(void (NS_NOESCAPE ^ _Nullable)(void))updates completion:(void (^ _Nullable)(BOOL finished))completion NS_SWIFT_DISABLE_ASYNC;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectCollectionView_performBatchUpdates_completion:index],
            }
        },
    };
}

- (NSMutableArray *)TestProjectCollectionView_performBatchUpdates_completion:(NSInteger)index {
    NSArray *arr = @[
        [NSIndexPath indexPathForRow:0 inSection:0],
        [NSIndexPath indexPathForRow:0 inSection:1],
        [NSIndexPath indexPathForRow:0 inSection:2],
    ];
    WS(wSelf);
    return [self createModelSingleArrayWithIndex:index title:[NSString stringWithFormat:@"要performBatchUpdates的NSIndexPath%@", arr] block:^{
        [wSelf.collectionView performBatchUpdates:^{
            for (NSIndexPath *indexPath in arr) {
                NSMutableArray *mutArr = self.itemCountArray[indexPath.section];
                [mutArr insertObject:[NSString stringWithFormat:@"insert:%ld_%ld", indexPath.section, indexPath.row] atIndex:indexPath.row];
            }
            [wSelf.collectionView insertItemsAtIndexPaths:arr];
            for (NSIndexPath *indexPath in arr) {
                NSMutableArray *mutArr = self.itemCountArray[indexPath.section];
                [mutArr replaceObjectAtIndex:indexPath.row withObject:[NSString stringWithFormat:@"reload:%ld_%ld", indexPath.section, indexPath.row]];
            }
            [wSelf.collectionView reloadItemsAtIndexPaths:arr];
        } completion:^(BOOL finished) {
            [TestProjectToast showWithText:@"performBatchUpdates 完成" withParentView:wSelf];
        }];
    }];
}

- (NSDictionary *)method_57:(NSInteger)index {
    return @{
        @"dataModel": @{
            @"abstract": @"执行UICollectionView的方法, 开始排序移动，暂时不了解",
            @"title": @"- (BOOL)beginInteractiveMovementForItemAtIndexPath:(NSIndexPath *)indexPath API_AVAILABLE(ios(9.0));",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectCollectionView_beginInteractiveMovementForItemAtIndexPath:index],
            }
        },
    };
}

- (NSMutableArray *)TestProjectCollectionView_beginInteractiveMovementForItemAtIndexPath:(NSInteger)index {
    WS(wSelf);
    return [self createModelSingleArrayWithIndex:index title:@"beginInteractiveMovementForItemAtIndexPath" methodBlock:^NSString * _Nonnull{
        BOOL res = [wSelf.collectionView beginInteractiveMovementForItemAtIndexPath:[NSIndexPath indexPathForRow:0 inSection:1]];
        return [NSString stringWithFormat:@"%u", res];
    }];
}

- (NSDictionary *)method_58:(NSInteger)index {
    return @{
        @"dataModel": @{
            @"abstract": @"执行UICollectionView的方法, 更新排序移动位置，暂时不了解",
            @"title": @"- (void)updateInteractiveMovementTargetPosition:(CGPoint)targetPosition API_AVAILABLE(ios(9.0));",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectCollectionView_updateInteractiveMovementTargetPosition:index],
            }
        },
    };
}

- (NSMutableArray *)TestProjectCollectionView_updateInteractiveMovementTargetPosition:(NSInteger)index {
    WS(wSelf);
    return [self createModelSingleArrayWithIndex:index title:@"updateInteractiveMovementTargetPosition" block:^{
        [wSelf.collectionView updateInteractiveMovementTargetPosition:CGPointMake(0, 50)];
    }];
}

- (NSDictionary *)method_59:(NSInteger)index {
    return @{
        @"dataModel": @{
            @"abstract": @"执行UICollectionView的方法, 结束排序移动，暂时不了解",
            @"title": @"- (void)endInteractiveMovement API_AVAILABLE(ios(9.0));",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectCollectionView_endInteractiveMovement:index],
            }
        },
    };
}

- (NSMutableArray *)TestProjectCollectionView_endInteractiveMovement:(NSInteger)index {
    WS(wSelf);
    return [self createModelSingleArrayWithIndex:index title:@"endInteractiveMovement" block:^{
        [wSelf.collectionView endInteractiveMovement];
    }];
}

- (NSDictionary *)method_60:(NSInteger)index {
    return @{
        @"dataModel": @{
            @"abstract": @"执行UICollectionView的方法, 取消排序移动，暂时不了解",
            @"title": @"- (void)cancelInteractiveMovement API_AVAILABLE(ios(9.0));",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectCollectionView_cancelInteractiveMovement:index],
            }
        },
    };
}

- (NSMutableArray *)TestProjectCollectionView_cancelInteractiveMovement:(NSInteger)index {
    WS(wSelf);
    return [self createModelSingleArrayWithIndex:index title:@"cancelInteractiveTransition" block:^{
        [wSelf.collectionView cancelInteractiveTransition];
    }];
}

- (NSDictionary *)method_61:(NSInteger)index {
    return @{
        @"dataModel": @{
            @"abstract": @"获取设置UICollectionView的属性remembersLastFocusedIndexPath",
            @"title": @"@property (nonatomic) BOOL remembersLastFocusedIndexPath API_AVAILABLE(ios(9.0));",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectCollectionView_property_remembersLastFocusedIndexPath:index],
            }
        },
    };
}

- (NSMutableArray *)TestProjectCollectionView_property_remembersLastFocusedIndexPath:(NSInteger)index {
    NSArray *arr = @[
        @{
            @"title": [NSString stringWithFormat:@"设置的属性值是YES"],
            @"value": @(YES),
        },
        @{
            @"title": [NSString stringWithFormat:@"设置的属性值是NO"],
            @"value": @(NO),
        },
    ];
    for (NSDictionary *dic in arr) {
        NSString *title = dic[@"title"];
        NSNumber *value = dic[@"value"];
        [self createModelWithIndex:index
                             title:title
                          property:@"remembersLastFocusedIndexPath"
                             value:value
                         operation:TestProjectCreateModelGetBeforeClickSet
                             block:nil];
    }
    return self.dataMutArr;
}

- (NSDictionary *)method_62:(NSInteger)index {
    return @{
        @"dataModel": @{
            @"abstract": @"获取设置UICollectionView的属性selectionFollowsFocus",
            @"title": @"@property (nonatomic) BOOL selectionFollowsFocus API_AVAILABLE(ios(14.0)) API_UNAVAILABLE(watchos, tvos);",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectCollectionView_property_selectionFollowsFocus:index],
            }
        },
    };
}

- (NSMutableArray *)TestProjectCollectionView_property_selectionFollowsFocus:(NSInteger)index {
    NSArray *arr = @[
        @{
            @"title": [NSString stringWithFormat:@"设置的属性值是YES"],
            @"value": @(YES),
        },
        @{
            @"title": [NSString stringWithFormat:@"设置的属性值是NO"],
            @"value": @(NO),
        },
    ];
    for (NSDictionary *dic in arr) {
        NSString *title = dic[@"title"];
        NSNumber *value = dic[@"value"];
        [self createModelWithIndex:index
                             title:title
                          property:@"selectionFollowsFocus"
                             value:value
                         operation:TestProjectCreateModelGetBeforeClickSet
                             block:nil];
    }
    return self.dataMutArr;
}

- (NSDictionary *)method_63:(NSInteger)index {
    return @{
        @"dataModel": @{
            @"abstract": @"获取设置UICollectionView的属性allowsFocus",
            @"title": @"@property (nonatomic) BOOL allowsFocus API_AVAILABLE(ios(15.0), tvos(15.0));",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectCollectionView_property_allowsFocus:index],
            }
        },
    };
}

- (NSMutableArray *)TestProjectCollectionView_property_allowsFocus:(NSInteger)index {
    NSArray *arr = @[
        @{
            @"title": [NSString stringWithFormat:@"设置的属性值是YES"],
            @"value": @(YES),
        },
        @{
            @"title": [NSString stringWithFormat:@"设置的属性值是NO"],
            @"value": @(NO),
        },
    ];
    for (NSDictionary *dic in arr) {
        NSString *title = dic[@"title"];
        NSNumber *value = dic[@"value"];
        [self createModelWithIndex:index
                             title:title
                          property:@"allowsFocus"
                             value:value
                         operation:TestProjectCreateModelGetBeforeClickSet
                             block:nil];
    }
    return self.dataMutArr;
}

- (NSDictionary *)method_64:(NSInteger)index {
    return @{
        @"dataModel": @{
            @"abstract": @"获取设置UICollectionView的属性allowsFocusDuringEditing",
            @"title": @"@property (nonatomic) BOOL allowsFocusDuringEditing API_AVAILABLE(ios(15.0), tvos(15.0));",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectCollectionView_property_allowsFocusDuringEditing:index],
            }
        },
    };
}

- (NSMutableArray *)TestProjectCollectionView_property_allowsFocusDuringEditing:(NSInteger)index {
    NSArray *arr = @[
        @{
            @"title": [NSString stringWithFormat:@"设置的属性值是YES"],
            @"value": @(YES),
        },
        @{
            @"title": [NSString stringWithFormat:@"设置的属性值是NO"],
            @"value": @(NO),
        },
    ];
    for (NSDictionary *dic in arr) {
        NSString *title = dic[@"title"];
        NSNumber *value = dic[@"value"];
        [self createModelWithIndex:index
                             title:title
                          property:@"allowsFocusDuringEditing"
                             value:value
                         operation:TestProjectCreateModelGetBeforeClickSet
                             block:nil];
    }
    return self.dataMutArr;
}

- (NSDictionary *)method_65:(NSInteger)index {
    return @{
        @"dataModel": @{
            @"abstract": @"获取设置UICollectionView的属性hasActiveDrag",
            @"title": @"@property (nonatomic, readonly) BOOL hasActiveDrag API_AVAILABLE(ios(11.0)) API_UNAVAILABLE(tvos, watchos);",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectCollectionView_property_hasActiveDrag:index],
            }
        },
    };
}

- (NSMutableArray *)TestProjectCollectionView_property_hasActiveDrag:(NSInteger)index {
    return [self createModelSingleArrayWithIndex:index
                                        property:@"hasActiveDrag"
                                           value:nil
                                       operation:TestProjectCreateModelGetBeforeClickGet
                                           block:nil];
}

- (NSDictionary *)method_66:(NSInteger)index {
    return @{
        @"dataModel": @{
            @"abstract": @"获取设置UICollectionView的属性hasActiveDrop",
            @"title": @"@property (nonatomic, readonly) BOOL hasActiveDrop API_AVAILABLE(ios(11.0)) API_UNAVAILABLE(tvos, watchos);",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectCollectionView_property_hasActiveDrop:index],
            }
        },
    };
}

- (NSMutableArray *)TestProjectCollectionView_property_hasActiveDrop:(NSInteger)index {
    return [self createModelSingleArrayWithIndex:index
                                        property:@"hasActiveDrop"
                                           value:nil
                                       operation:TestProjectCreateModelGetBeforeClickGet
                                           block:nil];
}

- (NSDictionary *)method_67:(NSInteger)index {
    return @{
        @"dataModel": @{
            @"abstract": @"获取设置UICollectionView的属性editing, 暂不知道作用",
            @"title": @"@property (nonatomic, getter=isEditing) BOOL editing API_AVAILABLE(ios(14.0), tvos(14.0), watchos(7.0));",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectCollectionView_property_editing:index],
            }
        },
    };
}

- (NSMutableArray *)TestProjectCollectionView_property_editing:(NSInteger)index {
    NSArray *arr = @[
        @{
            @"title": [NSString stringWithFormat:@"设置的属性值是YES"],
            @"value": @(YES),
        },
        @{
            @"title": [NSString stringWithFormat:@"设置的属性值是NO"],
            @"value": @(NO),
        },
    ];
    for (NSDictionary *dic in arr) {
        NSString *title = dic[@"title"];
        NSNumber *value = dic[@"value"];
        [self createModelWithIndex:index
                             title:title
                          property:@"editing"
                             value:value
                         operation:TestProjectCreateModelGetBeforeClickSet
                             block:nil];
    }
    return self.dataMutArr;
}

- (NSDictionary *)method_68:(NSInteger)index {
    return @{
        @"dataModel": @{
            @"abstract": @"获取设置UICollectionView的属性allowsSelectionDuringEditing, 暂不知道作用",
            @"title": @"@property (nonatomic) BOOL allowsSelectionDuringEditing API_AVAILABLE(ios(14.0), tvos(14.0), watchos(7.0));",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectCollectionView_property_allowsSelectionDuringEditing:index],
            }
        },
    };
}

- (NSMutableArray *)TestProjectCollectionView_property_allowsSelectionDuringEditing:(NSInteger)index {
    NSArray *arr = @[
        @{
            @"title": [NSString stringWithFormat:@"设置的属性值是YES"],
            @"value": @(YES),
        },
        @{
            @"title": [NSString stringWithFormat:@"设置的属性值是NO"],
            @"value": @(NO),
        },
    ];
    for (NSDictionary *dic in arr) {
        NSString *title = dic[@"title"];
        NSNumber *value = dic[@"value"];
        [self createModelWithIndex:index
                             title:title
                          property:@"allowsSelectionDuringEditing"
                             value:value
                         operation:TestProjectCreateModelGetBeforeClickSet
                             block:nil];
    }
    return self.dataMutArr;
}

- (NSDictionary *)method_69:(NSInteger)index {
    return @{
        @"dataModel": @{
            @"abstract": @"获取设置UICollectionView的属性allowsMultipleSelectionDuringEditing, 暂不知道作用",
            @"title": @"@property (nonatomic) BOOL allowsMultipleSelectionDuringEditing API_AVAILABLE(ios(14.0), tvos(14.0), watchos(7.0));",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectCollectionView_property_allowsMultipleSelectionDuringEditing:index],
            }
        },
    };
}

- (NSMutableArray *)TestProjectCollectionView_property_allowsMultipleSelectionDuringEditing:(NSInteger)index {
    NSArray *arr = @[
        @{
            @"title": [NSString stringWithFormat:@"设置的属性值是YES"],
            @"value": @(YES),
        },
        @{
            @"title": [NSString stringWithFormat:@"设置的属性值是NO"],
            @"value": @(NO),
        },
    ];
    for (NSDictionary *dic in arr) {
        NSString *title = dic[@"title"];
        NSNumber *value = dic[@"value"];
        [self createModelWithIndex:index
                             title:title
                          property:@"allowsMultipleSelectionDuringEditing"
                             value:value
                         operation:TestProjectCreateModelGetBeforeClickSet
                             block:nil];
    }
    return self.dataMutArr;
}

@end
