//
//  TestProjectUICollectionView.m
//  TestProjectIOS
//
//  Created by liwenfan on 2023/7/17.
//

#import "TestProjectUICollectionView.h"

#import "TestProjectUICollectionCell.h"

@interface TestProjectUICollectionView () <UICollectionViewDelegate, UICollectionViewDataSource>

@property (nonatomic, strong) UICollectionView *collectionView;
@property (nonatomic, strong) UICollectionViewFlowLayout *layout;
@property (nonatomic, strong) TestProjectUICollectionCell *cell;
@property (nonatomic, assign) NSInteger sectionCount;
@property (nonatomic, strong) NSMutableArray *headerSectionArray;
@property (nonatomic, strong) NSMutableArray *footerSectionArray;
@property (nonatomic, strong) NSMutableArray<NSMutableArray *> *itemCountArray;

@property (nonatomic, strong) UITextField *textField;

@end

@implementation TestProjectUICollectionView

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
        [_collectionView registerClass:TestProjectUICollectionCell.class forCellWithReuseIdentifier:@"TestProjectUICollectionCell"];
        [_collectionView registerClass:TestProjectUICollectionReusableView.class forSupplementaryViewOfKind:UICollectionElementKindSectionHeader withReuseIdentifier:@"TestProjectUICollectionReusableView"];
        [_collectionView registerClass:TestProjectUICollectionReusableView.class forSupplementaryViewOfKind:UICollectionElementKindSectionFooter withReuseIdentifier:@"TestProjectUICollectionReusableView"];
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

- (id)setPropertyValueObject:(TestProjectTableViewParams *)params {
    return self.collectionView;
}

- (void)scrollViewDidScroll:(UIScrollView *)scrollView {
    if (scrollView != self.collectionView) {
        return;
    }
    NSLog(@"contentOffset:%@ hasActiveDrag:%u hasActiveDrop:%u", NSStringFromCGPoint(self.collectionView.contentOffset), self.collectionView.hasActiveDrag, self.collectionView.hasActiveDrop);
}

- (NSMutableArray *)TestProjectCollectionView_property_allowsMultipleSelectionDuringEditing:(TestProjectTableViewParams *)params {
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
        [self createModelWithParams:params
                              title:title
                           property:@"allowsMultipleSelectionDuringEditing"
                              value:value
                          operation:TestProjectCreateModelGetBeforeClickSet
                              block:nil];
    }
    return self.dataMutArr;
}

- (NSDictionary *)method_69:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"获取设置UICollectionView的属性allowsMultipleSelectionDuringEditing, 暂不知道作用",
            @"title": @"@property (nonatomic) BOOL allowsMultipleSelectionDuringEditing API_AVAILABLE(ios(14.0), tvos(14.0), watchos(7.0));",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectCollectionView_property_allowsMultipleSelectionDuringEditing:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectCollectionView_property_allowsSelectionDuringEditing:(TestProjectTableViewParams *)params {
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
        [self createModelWithParams:params
                              title:title
                           property:@"allowsSelectionDuringEditing"
                              value:value
                          operation:TestProjectCreateModelGetBeforeClickSet
                              block:nil];
    }
    return self.dataMutArr;
}

- (NSDictionary *)method_68:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"获取设置UICollectionView的属性allowsSelectionDuringEditing, 暂不知道作用",
            @"title": @"@property (nonatomic) BOOL allowsSelectionDuringEditing API_AVAILABLE(ios(14.0), tvos(14.0), watchos(7.0));",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectCollectionView_property_allowsSelectionDuringEditing:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectCollectionView_property_editing:(TestProjectTableViewParams *)params {
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
        [self createModelWithParams:params
                              title:title
                           property:@"editing"
                              value:value
                          operation:TestProjectCreateModelGetBeforeClickSet
                              block:nil];
    }
    return self.dataMutArr;
}

- (NSDictionary *)method_67:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"获取设置UICollectionView的属性editing, 暂不知道作用",
            @"title": @"@property (nonatomic, getter=isEditing) BOOL editing API_AVAILABLE(ios(14.0), tvos(14.0), watchos(7.0));",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectCollectionView_property_editing:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectCollectionView_property_hasActiveDrop:(TestProjectTableViewParams *)params {
    return [self createModelSingleArrayWithParams:params
                                         property:@"hasActiveDrop"
                                            value:nil
                                        operation:TestProjectCreateModelGetBeforeClickGet
                                            block:nil];
}

- (NSDictionary *)method_66:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"获取设置UICollectionView的属性hasActiveDrop",
            @"title": @"@property (nonatomic, readonly) BOOL hasActiveDrop API_AVAILABLE(ios(11.0)) API_UNAVAILABLE(tvos, watchos);",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectCollectionView_property_hasActiveDrop:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectCollectionView_property_hasActiveDrag:(TestProjectTableViewParams *)params {
    return [self createModelSingleArrayWithParams:params
                                         property:@"hasActiveDrag"
                                            value:nil
                                        operation:TestProjectCreateModelGetBeforeClickGet
                                            block:nil];
}

- (NSDictionary *)method_65:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"获取设置UICollectionView的属性hasActiveDrag",
            @"title": @"@property (nonatomic, readonly) BOOL hasActiveDrag API_AVAILABLE(ios(11.0)) API_UNAVAILABLE(tvos, watchos);",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectCollectionView_property_hasActiveDrag:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectCollectionView_property_allowsFocusDuringEditing:(TestProjectTableViewParams *)params {
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
        [self createModelWithParams:params
                              title:title
                           property:@"allowsFocusDuringEditing"
                              value:value
                          operation:TestProjectCreateModelGetBeforeClickSet
                              block:nil];
    }
    return self.dataMutArr;
}

- (NSDictionary *)method_64:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"获取设置UICollectionView的属性allowsFocusDuringEditing",
            @"title": @"@property (nonatomic) BOOL allowsFocusDuringEditing API_AVAILABLE(ios(15.0), tvos(15.0));",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectCollectionView_property_allowsFocusDuringEditing:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectCollectionView_property_allowsFocus:(TestProjectTableViewParams *)params {
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
        [self createModelWithParams:params
                              title:title
                           property:@"allowsFocus"
                              value:value
                          operation:TestProjectCreateModelGetBeforeClickSet
                              block:nil];
    }
    return self.dataMutArr;
}

- (NSDictionary *)method_63:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"获取设置UICollectionView的属性allowsFocus",
            @"title": @"@property (nonatomic) BOOL allowsFocus API_AVAILABLE(ios(15.0), tvos(15.0));",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectCollectionView_property_allowsFocus:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectCollectionView_property_selectionFollowsFocus:(TestProjectTableViewParams *)params {
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
        [self createModelWithParams:params
                              title:title
                           property:@"selectionFollowsFocus"
                              value:value
                          operation:TestProjectCreateModelGetBeforeClickSet
                              block:nil];
    }
    return self.dataMutArr;
}

- (NSDictionary *)method_62:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"获取设置UICollectionView的属性selectionFollowsFocus",
            @"title": @"@property (nonatomic) BOOL selectionFollowsFocus API_AVAILABLE(ios(14.0)) API_UNAVAILABLE(watchos, tvos);",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectCollectionView_property_selectionFollowsFocus:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectCollectionView_property_remembersLastFocusedIndexPath:(TestProjectTableViewParams *)params {
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
        [self createModelWithParams:params
                              title:title
                           property:@"remembersLastFocusedIndexPath"
                              value:value
                          operation:TestProjectCreateModelGetBeforeClickSet
                              block:nil];
    }
    return self.dataMutArr;
}

- (NSDictionary *)method_61:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"获取设置UICollectionView的属性remembersLastFocusedIndexPath",
            @"title": @"@property (nonatomic) BOOL remembersLastFocusedIndexPath API_AVAILABLE(ios(9.0));",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectCollectionView_property_remembersLastFocusedIndexPath:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectCollectionView_cancelInteractiveMovement:(TestProjectTableViewParams *)params {
    WS(wSelf);
    return [self createModelSingleArrayWithParams:params title:@"cancelInteractiveTransition" block:^{
        [wSelf.collectionView cancelInteractiveTransition];
    }];
}

- (NSDictionary *)method_60:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"执行UICollectionView的方法, 取消排序移动，会把标记的cell原位放回不会调用该方法- (void)collectionView:(UICollectionView *)collectionView moveItemAtIndexPath:(NSIndexPath *)sourceIndexPath toIndexPath:(NSIndexPath *)destinationIndexPath)",
            @"title": @"- (void)cancelInteractiveMovement API_AVAILABLE(ios(9.0));",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectCollectionView_cancelInteractiveMovement:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectCollectionView_endInteractiveMovement:(TestProjectTableViewParams *)params {
    WS(wSelf);
    return [self createModelSingleArrayWithParams:params title:@"endInteractiveMovement" block:^{
        [wSelf.collectionView endInteractiveMovement];
    }];
}

- (NSDictionary *)method_59:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"执行UICollectionView的方法, 结束排序移动，结束cell的移动，并且会把标记的cell放到最后的手指指向位置上并且会调用- (void)collectionView:(UICollectionView *)collectionView moveItemAtIndexPath:(NSIndexPath *)sourceIndexPath toIndexPath:(NSIndexPath *)destinationIndexPath",
            @"title": @"- (void)endInteractiveMovement API_AVAILABLE(ios(9.0));",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectCollectionView_endInteractiveMovement:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectCollectionView_updateInteractiveMovementTargetPosition:(TestProjectTableViewParams *)params {
    WS(wSelf);
    return [self createModelSingleArrayWithParams:params title:@"updateInteractiveMovementTargetPosition" block:^{
        [wSelf.collectionView updateInteractiveMovementTargetPosition:CGPointMake(0, 50)];
    }];
}

- (NSDictionary *)method_58:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"执行UICollectionView的方法, 更新排序移动位置, 会把标记的cell移动到手指的指向的cell位置上",
            @"title": @"- (void)updateInteractiveMovementTargetPosition:(CGPoint)targetPosition API_AVAILABLE(ios(9.0));",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectCollectionView_updateInteractiveMovementTargetPosition:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectCollectionView_beginInteractiveMovementForItemAtIndexPath:(TestProjectTableViewParams *)params {
    WS(wSelf);
    return [self createModelSingleArrayWithParams:params title:@"beginInteractiveMovementForItemAtIndexPath" methodBlock:^NSString * _Nonnull{
        BOOL res = [wSelf.collectionView beginInteractiveMovementForItemAtIndexPath:[NSIndexPath indexPathForRow:2 inSection:0]];
        return [NSString stringWithFormat:@"%u", res];
    }];
}

- (void)collectionView:(UICollectionView *)collectionView moveItemAtIndexPath:(NSIndexPath *)sourceIndexPath toIndexPath:(NSIndexPath *)destinationIndexPath {
    NSMutableArray *moveArray = self.itemCountArray[sourceIndexPath.section];
    NSMutableArray *toArray = self.itemCountArray[destinationIndexPath.section];
    id moveObj = moveArray[sourceIndexPath.row];
    //这是移动到
    [moveArray removeObjectAtIndex:sourceIndexPath.row];
    [toArray insertObject:moveObj atIndex:destinationIndexPath.row];
    [self.collectionView reloadData];
}

- (NSDictionary *)method_57:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"执行UICollectionView的方法, 开始排序移动",
            @"title": @"- (BOOL)beginInteractiveMovementForItemAtIndexPath:(NSIndexPath *)indexPath API_AVAILABLE(ios(9.0));",
            @"isDataModelExpand": @(YES),
            @"desc": @"必须要实现该代理方法才能执行- (void)collectionView:(UICollectionView *)collectionView moveItemAtIndexPath:(NSIndexPath *)sourceIndexPath toIndexPath:(NSIndexPath *)destinationIndexPath",
            @"dataModel": @{
                @"childItems": [self TestProjectCollectionView_beginInteractiveMovementForItemAtIndexPath:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectCollectionView_performBatchUpdates_completion:(TestProjectTableViewParams *)params {
    NSArray *arr = @[
        [NSIndexPath indexPathForRow:0 inSection:0],
        [NSIndexPath indexPathForRow:0 inSection:1],
        [NSIndexPath indexPathForRow:0 inSection:2],
    ];
    WS(wSelf);
    return [self createModelSingleArrayWithParams:params title:[NSString stringWithFormat:@"要performBatchUpdates的NSIndexPath%@", arr] block:^{
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

- (NSDictionary *)method_56:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"执行UICollectionView的方法, 一次性完成插入、删除、更新等操作",
            @"title": @"- (void)performBatchUpdates:(void (NS_NOESCAPE ^ _Nullable)(void))updates completion:(void (^ _Nullable)(BOOL finished))completion NS_SWIFT_DISABLE_ASYNC;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectCollectionView_performBatchUpdates_completion:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectCollectionView_reconfigureItemsAtIndexPaths:(TestProjectTableViewParams *)params {
    NSArray *arr = @[
        [NSIndexPath indexPathForRow:0 inSection:0],
        [NSIndexPath indexPathForRow:0 inSection:1],
        [NSIndexPath indexPathForRow:0 inSection:2],
    ];
    WS(wSelf);
    return [self createModelSingleArrayWithParams:params title:[NSString stringWithFormat:@"要reload的NSIndexPath%@", arr] block:^{
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

- (NSDictionary *)method_55:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"执行UICollectionView的方法, 如果不是非必要 是重新配置cell而不是新建cell",
            @"title": @"- (void)reconfigureItemsAtIndexPaths:(NSArray<NSIndexPath *> *)indexPaths API_AVAILABLE(ios(15.0), tvos(15.0), watchos(8.0));",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectCollectionView_reconfigureItemsAtIndexPaths:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectCollectionView_reloadItemsAtIndexPaths:(TestProjectTableViewParams *)params {
    NSArray *arr = @[
        [NSIndexPath indexPathForRow:0 inSection:0],
        [NSIndexPath indexPathForRow:0 inSection:1],
        [NSIndexPath indexPathForRow:0 inSection:2],
    ];
    WS(wSelf);
    return [self createModelSingleArrayWithParams:params title:[NSString stringWithFormat:@"要reload的NSIndexPath%@", arr] block:^{
        for (NSIndexPath *indexPath in arr) {
            NSMutableArray *mutArr = self.itemCountArray[indexPath.section];
            [mutArr replaceObjectAtIndex:indexPath.row withObject:[NSString stringWithFormat:@"reload:%ld_%ld", indexPath.section, indexPath.row]];
        }
        [wSelf.collectionView reloadItemsAtIndexPaths:arr];
    }];
}

- (NSDictionary *)method_54:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"执行UICollectionView的方法, 刷新一个section数据",
            @"title": @"- (void)reloadItemsAtIndexPaths:(NSArray<NSIndexPath *> *)indexPaths;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectCollectionView_reloadItemsAtIndexPaths:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectCollectionView_moveItemAtIndexPath_toIndexPath:(TestProjectTableViewParams *)params {
    NSIndexPath *moveIndexPath = [NSIndexPath indexPathForRow:0 inSection:0];
    NSIndexPath *toIndexPath = [NSIndexPath indexPathForRow:0 inSection:1];
    WS(wSelf);
    return [self createModelSingleArrayWithParams:params title:[NSString stringWithFormat:@"moveIndexPath:%@ toIndexPath:%@", moveIndexPath, toIndexPath] block:^{
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

- (NSDictionary *)method_53:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"执行UICollectionView的方法, 移动某个NSIndexPath到另一个NSIndexPath",
            @"title": @"- (void)moveItemAtIndexPath:(NSIndexPath *)indexPath toIndexPath:(NSIndexPath *)newIndexPath;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectCollectionView_moveItemAtIndexPath_toIndexPath:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectCollectionView_deleteItemsAtIndexPaths:(TestProjectTableViewParams *)params {
    NSArray *arr = @[
        [NSIndexPath indexPathForRow:0 inSection:0],
        [NSIndexPath indexPathForRow:0 inSection:1],
        [NSIndexPath indexPathForRow:0 inSection:2],
    ];
    WS(wSelf);
    return [self createModelSingleArrayWithParams:params title:[NSString stringWithFormat:@"要删除的NSIndexPath：%@", arr] block:^{
        for (NSIndexPath *indexPath in arr) {
            NSMutableArray *mutArr = self.itemCountArray[indexPath.section];
            [mutArr removeObjectAtIndex:indexPath.row];
        }
        [wSelf.collectionView deleteItemsAtIndexPaths:arr];
    }];
}

- (NSDictionary *)method_52:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"执行UICollectionView的方法, 删除一堆NSIndexPath数据",
            @"title": @"- (void)deleteItemsAtIndexPaths:(NSArray<NSIndexPath *> *)indexPaths;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectCollectionView_deleteItemsAtIndexPaths:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectCollectionView_insertItemsAtIndexPaths:(TestProjectTableViewParams *)params {
    NSArray *arr = @[
        [NSIndexPath indexPathForRow:0 inSection:0],
        [NSIndexPath indexPathForRow:0 inSection:1],
        [NSIndexPath indexPathForRow:0 inSection:2],
    ];
    WS(wSelf);
    return [self createModelSingleArrayWithParams:params title:[NSString stringWithFormat:@"要插入的NSIndexPath：%@", arr] block:^{
        for (NSIndexPath *indexPath in arr) {
            NSMutableArray *mutArr = self.itemCountArray[indexPath.section];
            [mutArr insertObject:[NSString stringWithFormat:@"insert:%ld_%ld", indexPath.section, indexPath.row] atIndex:indexPath.row];
        }
        [wSelf.collectionView insertItemsAtIndexPaths:arr];
    }];
}

- (NSDictionary *)method_51:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"执行UICollectionView的方法, 插入一堆NSIndexPath",
            @"title": @"- (void)insertItemsAtIndexPaths:(NSArray<NSIndexPath *> *)indexPaths;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectCollectionView_insertItemsAtIndexPaths:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectCollectionView_reloadSections:(TestProjectTableViewParams *)params {
    NSIndexSet *set = [NSIndexSet indexSetWithIndex:1];
    WS(wSelf);
    return [self createModelSingleArrayWithParams:params title:[NSString stringWithFormat:@"%@", set] block:^{
        [wSelf.headerSectionArray replaceObjectAtIndex:set.firstIndex withObject:[NSString stringWithFormat:@"relaod header:%ld", set.firstIndex]];
        [wSelf.collectionView reloadSections:set];
    }];
}

- (NSDictionary *)method_50:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"执行UICollectionView的方法, 刷新一个section数据",
            @"title": @"- (void)reloadSections:(NSIndexSet *)sections;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectCollectionView_reloadSections:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectCollectionView_moveSection_toSection:(TestProjectTableViewParams *)params {
    NSInteger moveSection = 0, toSection = 1;
    WS(wSelf);
    return [self createModelSingleArrayWithParams:params title:[NSString stringWithFormat:@"moveSection:%ld toSection:%ld", moveSection, toSection] block:^{
        [wSelf.headerSectionArray exchangeObjectAtIndex:moveSection withObjectAtIndex:toSection];
        [wSelf.footerSectionArray exchangeObjectAtIndex:moveSection withObjectAtIndex:toSection];
        [wSelf.itemCountArray exchangeObjectAtIndex:moveSection withObjectAtIndex:toSection];
        [wSelf.collectionView moveSection:moveSection toSection:toSection];
    }];
}

- (NSDictionary *)method_49:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"执行UICollectionView的方法, 把一个section移动到另一个section中",
            @"title": @"- (void)moveSection:(NSInteger)section toSection:(NSInteger)newSection;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectCollectionView_moveSection_toSection:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectCollectionView_deleteSections:(TestProjectTableViewParams *)params {
    NSIndexSet *set = [NSIndexSet indexSetWithIndex:1];
    
    WS(wSelf);
    return [self createModelSingleArrayWithParams:params title:[NSString stringWithFormat:@"%@", set] block:^{
        wSelf.sectionCount--;
        [wSelf.headerSectionArray removeObjectAtIndex:set.firstIndex];
        [wSelf.footerSectionArray removeObjectAtIndex:set.firstIndex];
        [wSelf.itemCountArray removeObjectAtIndex:set.firstIndex];
        [wSelf.collectionView deleteSections:set];
    }];
}

- (NSDictionary *)method_48:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"执行UICollectionView的方法, 删除一个section数据",
            @"title": @"- (void)deleteSections:(NSIndexSet *)sections;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectCollectionView_deleteSections:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectCollectionView_insertSections:(TestProjectTableViewParams *)params {
    NSIndexSet *set = [NSIndexSet indexSetWithIndex:1];
    NSInteger itemCount = 10;
    
    WS(wSelf);
    return [self createModelSingleArrayWithParams:params title:[NSString stringWithFormat:@"%@, 插入的itemCount:%ld", set, itemCount] block:^{
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

- (NSDictionary *)method_47:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"执行UICollectionView的方法, 插入一个section数据",
            @"title": @"- (void)insertSections:(NSIndexSet *)sections;",
            @"isDataModelExpand": @(YES),
            @"desc": @"insertSections用的是NSIndexSet.count, 因此NSIndexSet.count不能超过数据源的数量",
            @"dataModel": @{
                @"childItems": [self TestProjectCollectionView_insertSections:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectCollectionView_scrollToItemAtIndexPath_atScrollPosition_animated:(TestProjectTableViewParams *)params {
    NSIndexPath *indexPath = [NSIndexPath indexPathForRow:5 inSection:0];
    WS(wSelf);
    return [self createModelSingleArrayWithParams:params title:[NSString stringWithFormat:@"滚动到%ld_%ld下的cell", indexPath.section, indexPath.row] block:^{
        [wSelf.collectionView scrollToItemAtIndexPath:indexPath atScrollPosition:UICollectionViewScrollPositionBottom animated:YES];
    }];
}

- (NSDictionary *)method_46:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"执行UICollectionView的方法, 滚动到某个NSIndexPath的cell下，不选中cell",
            @"title": @"- (void)scrollToItemAtIndexPath:(NSIndexPath *)indexPath atScrollPosition:(UICollectionViewScrollPosition)scrollPosition animated:(BOOL)animated;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectCollectionView_scrollToItemAtIndexPath_atScrollPosition_animated:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectCollectionView_indexPathsForVisibleSupplementaryElementsOfKind:(TestProjectTableViewParams *)params {
    WS(wSelf);
    return [self createModelSingleArrayWithParams:params title:@"获取可视化的header Section" methodBlock:^NSString * _Nonnull{
        NSArray *arr = [wSelf.collectionView indexPathsForVisibleSupplementaryElementsOfKind:UICollectionElementKindSectionHeader];
        return [NSString stringWithFormat:@"%@", arr];
    }];
}

- (NSDictionary *)method_45:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"执行UICollectionView的方法, 获取可视化的section的NSIndexPath",
            @"title": @"- (NSArray<NSIndexPath *> *)indexPathsForVisibleSupplementaryElementsOfKind:(NSString *)elementKind API_AVAILABLE(ios(9.0));",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectCollectionView_indexPathsForVisibleSupplementaryElementsOfKind:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectCollectionView_visibleSupplementaryViewsOfKind:(TestProjectTableViewParams *)params {
    WS(wSelf);
    return [self createModelSingleArrayWithParams:params title:@"获取可视化的header section" methodBlock:^NSString * _Nonnull{
        NSArray *arr = [wSelf.collectionView visibleSupplementaryViewsOfKind:UICollectionElementKindSectionHeader];
        return [NSString stringWithFormat:@"%@", arr];
    }];
}

- (NSDictionary *)method_44:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"执行UICollectionView的方法, 获取可视化的section View",
            @"title": @"- (NSArray<UICollectionReusableView *> *)visibleSupplementaryViewsOfKind:(NSString *)elementKind API_AVAILABLE(ios(9.0));",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectCollectionView_visibleSupplementaryViewsOfKind:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectCollectionView_supplementaryViewForElementKind_atIndexPath:(TestProjectTableViewParams *)params {
    NSIndexPath *indexPath = [NSIndexPath indexPathForRow:0 inSection:0];
    WS(wSelf);
    return [self createModelSingleArrayWithParams:params title:[NSString stringWithFormat:@"获取%ld_%ld下的header section", indexPath.section, indexPath.row] methodBlock:^NSString * _Nonnull{
        UICollectionReusableView *headerView = [wSelf.collectionView supplementaryViewForElementKind:UICollectionElementKindSectionHeader atIndexPath:indexPath];
        return [NSString stringWithFormat:@"headerView:%@", headerView];
    }];
}

- (NSDictionary *)method_43:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"执行UICollectionView的方法, 某个NSIndexPath下的section view",
            @"title": @"- (nullable UICollectionReusableView *)supplementaryViewForElementKind:(NSString *)elementKind atIndexPath:(NSIndexPath *)indexPath API_AVAILABLE(ios(9.0));",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectCollectionView_supplementaryViewForElementKind_atIndexPath:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectCollectionView_property_indexPathsForVisibleItems:(TestProjectTableViewParams *)params {
    return [self createModelSingleArrayWithParams:params
                                         property:@"indexPathsForVisibleItems"
                                            value:nil
                                        operation:TestProjectCreateModelGetBeforeClickGet
                                            block:nil];
}

- (NSDictionary *)method_42:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"获取设置UICollectionView的属性indexPathsForVisibleItems,获取可视化的NSIndexPath",
            @"title": @"@property (nonatomic, readonly) NSArray<NSIndexPath *> *indexPathsForVisibleItems;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectCollectionView_property_indexPathsForVisibleItems:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectCollectionView_property_visibleCells:(TestProjectTableViewParams *)params {
    return [self createModelSingleArrayWithParams:params
                                         property:@"visibleCells"
                                            value:nil
                                        operation:TestProjectCreateModelGetBeforeClickGet
                                            block:nil];
}

- (NSDictionary *)method_41:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"获取设置UICollectionView的属性visibleCells, 获取可视化的cell",
            @"title": @"@property (nonatomic, readonly) NSArray<__kindof UICollectionViewCell *> *visibleCells;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectCollectionView_property_visibleCells:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectCollectionView_cellForItemAtIndexPath:(TestProjectTableViewParams *)params {
    NSIndexPath *indexPath = [NSIndexPath indexPathForRow:0 inSection:0];
    WS(wSelf);
    return [self createModelSingleArrayWithParams:params title:[NSString stringWithFormat:@"获取%ld_%ld下的cell", indexPath.section, indexPath.row] methodBlock:^NSString * _Nonnull{
        UICollectionViewCell *cell = [wSelf.collectionView cellForItemAtIndexPath:indexPath];
        return [NSString stringWithFormat:@"%@", cell];
    }];
}

- (NSDictionary *)method_40:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"执行UICollectionView的方法, 某个NSIndexPath下的cellItem",
            @"title": @"- (nullable UICollectionViewCell *)cellForItemAtIndexPath:(NSIndexPath *)indexPath;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectCollectionView_cellForItemAtIndexPath:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectCollectionView_indexPathForCell:(TestProjectTableViewParams *)params {
    WS(wSelf);
    return [self createModelSingleArrayWithParams:params title:[NSString stringWithFormat:@"%@", self.cell] methodBlock:^NSString * _Nonnull{
        NSIndexPath *indexPath = [wSelf.collectionView indexPathForCell:self.cell];
        return [NSString stringWithFormat:@"%@", indexPath];
    }];
}

- (NSDictionary *)method_39:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"执行UICollectionView的方法, 获取某个cell的是哪个NSIndexPath",
            @"title": @"- (nullable NSIndexPath *)indexPathForCell:(UICollectionViewCell *)cell;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectCollectionView_indexPathForCell:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectCollectionView_indexPathForItemAtPoint:(TestProjectTableViewParams *)params {
    WS(wSelf);
    CGPoint point = CGPointMake(0, 101);
    return [self createModelSingleArrayWithParams:params title:[NSString stringWithFormat:@"%@", NSStringFromCGPoint(point)] methodBlock:^NSString * _Nonnull{
        NSIndexPath *indexPath = [wSelf.collectionView indexPathForItemAtPoint:point];
        return [NSString stringWithFormat:@"%@", indexPath];
    }];
}

- (NSDictionary *)method_38:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"执行UICollectionView的方法, 某个CGPoint是哪个cell下的NSIndexPath",
            @"title": @"- (nullable NSIndexPath *)indexPathForItemAtPoint:(CGPoint)point;",
            @"isDataModelExpand": @(YES),
            @"desc": @"如果CGPoint在header或者footer或者在cell之间的间距上则返回的是null，该点必须在cell的rect中",
            @"dataModel": @{
                @"childItems": [self TestProjectCollectionView_indexPathForItemAtPoint:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectCollectionView_layoutAttributesForSupplementaryElementOfKind_atIndexPath:(TestProjectTableViewParams *)params {
    NSIndexPath *indexPath = [NSIndexPath indexPathForRow:0 inSection:0];
    NSString *kind = UICollectionElementKindSectionHeader;
    WS(wSelf);
    return [self createModelSingleArrayWithParams:params title:[NSString stringWithFormat:@"获取的是%@下的%ld_%ld", kind, indexPath.section, indexPath.row] methodBlock:^NSString * _Nonnull{
        UICollectionViewLayoutAttributes *headerLayout = [wSelf.collectionView layoutAttributesForSupplementaryElementOfKind:kind atIndexPath:indexPath];
        return [NSString stringWithFormat:@"headerLayout:%@", headerLayout];
    }];
}

- (NSDictionary *)method_37:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"执行UICollectionView的方法, 获取某个NSIndexPath下的kind的layout信息",
            @"title": @"- (nullable UICollectionViewLayoutAttributes *)layoutAttributesForSupplementaryElementOfKind:(NSString *)kind atIndexPath:(NSIndexPath *)indexPath;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectCollectionView_layoutAttributesForSupplementaryElementOfKind_atIndexPath:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectCollectionView_layoutAttributesForItemAtIndexPath:(TestProjectTableViewParams *)params {
    NSIndexPath *indexPath = [NSIndexPath indexPathForRow:0 inSection:0];
    WS(wSelf);
    return [self createModelSingleArrayWithParams:params title:[NSString stringWithFormat:@"获取的是%ld_%ldcell的layout", indexPath.section, indexPath.row] methodBlock:^NSString * _Nonnull{
        UICollectionViewLayoutAttributes *cellLayout = [wSelf.collectionView layoutAttributesForItemAtIndexPath:indexPath];
        return [NSString stringWithFormat:@"cellLayout:%@", cellLayout];
    }];
}

- (NSDictionary *)method_36:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"执行UICollectionView的方法, 获取某个NSIndexPath下的cell的layout信息",
            @"title": @"- (nullable UICollectionViewLayoutAttributes *)layoutAttributesForItemAtIndexPath:(NSIndexPath *)indexPath;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectCollectionView_layoutAttributesForItemAtIndexPath:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectCollectionView_numberOfItemsInSection:(TestProjectTableViewParams *)params {
    WS(wSelf);
    return [self createModelSingleArrayWithParams:params title:@"在第0个section" methodBlock:^NSString * _Nonnull{
         NSInteger count = [wSelf.collectionView numberOfItemsInSection:0];
        return [NSString stringWithFormat:@"有%ld个cell", count];
    }];
}

- (NSDictionary *)method_35:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"执行UICollectionView的方法, 某个section下有多少个cellItem",
            @"title": @"- (NSInteger)numberOfItemsInSection:(NSInteger)section;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectCollectionView_numberOfItemsInSection:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectCollectionView_property_numberOfSections:(TestProjectTableViewParams *)params {
    return [self createModelSingleArrayWithParams:params
                                         property:@"numberOfSections"
                                            value:nil
                                        operation:TestProjectCreateModelGetBeforeClickGet
                                            block:nil];
}

- (NSDictionary *)method_34:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"获取设置UICollectionView的属性numberOfSections,有多少个sections",
            @"title": @"@property (nonatomic, readonly) NSInteger numberOfSections;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectCollectionView_property_numberOfSections:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectCollectionView_cancelInteractiveTransition:(TestProjectTableViewParams *)params {
    WS(wSelf);
    return [self createModelSingleArrayWithParams:params title:@"cancelInteractiveTransition" block:^{
        [wSelf.collectionView cancelInteractiveTransition];
    }];
}

- (NSDictionary *)method_33:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"执行UICollectionView的方法, 取消layout的InteractiveTransition转换",
            @"title": @"- (void)cancelInteractiveTransition API_AVAILABLE(ios(7.0));",
            @"isDataModelExpand": @(YES),
            @"desc": @"在开始之后，如果已经取消或者结束了，不能在设置，否则崩溃",
            @"dataModel": @{
                @"childItems": [self TestProjectCollectionView_cancelInteractiveTransition:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectCollectionView_finishInteractiveTransition:(TestProjectTableViewParams *)params {
    WS(wSelf);
    return [self createModelSingleArrayWithParams:params title:@"finishInteractiveTransition" block:^{
        [wSelf.collectionView finishInteractiveTransition];
    }];
}

- (NSDictionary *)method_32:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"执行UICollectionView的方法, 结束layout的InteractiveTransition转换",
            @"title": @"- (void)finishInteractiveTransition API_AVAILABLE(ios(7.0));",
            @"isDataModelExpand": @(YES),
            @"desc": @"在开始之后，如果已经取消或者结束了，不能在设置，否则崩溃",
            @"dataModel": @{
                @"childItems": [self TestProjectCollectionView_finishInteractiveTransition:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectCollectionView_startInteractiveTransitionToCollectionViewLayout_completion:(TestProjectTableViewParams *)params {
    WS(wSelf);
    UICollectionViewFlowLayout *layout = [[UICollectionViewFlowLayout alloc] init];
    layout.sectionInset = UIEdgeInsetsZero;
    layout.minimumLineSpacing = 10;
    layout.minimumInteritemSpacing = 10;
    layout.itemSize = CGSizeMake(150, 150);
    layout.headerReferenceSize = CGSizeMake(0, 50);
    layout.footerReferenceSize = CGSizeMake(0, 50);
    return [self createModelSingleArrayWithParams:params title:[NSString stringWithFormat:@"重新设置的layout：%@", layout] methodBlock:^NSString * _Nonnull{
        UICollectionViewTransitionLayout *trasitionLayout = [wSelf.collectionView startInteractiveTransitionToCollectionViewLayout:layout completion:^(BOOL completed, BOOL finished) {
            [TestProjectToast showWithText:@"设置trasitionLayout完成" withParentView:wSelf];
        }];
        return [NSString stringWithFormat:@"%@", trasitionLayout];
    }];
}

- (NSDictionary *)method_31:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"执行UICollectionView的方法, 开始layout的InteractiveTransition转换",
            @"title": @"- (UICollectionViewTransitionLayout *)startInteractiveTransitionToCollectionViewLayout:(UICollectionViewLayout *)layout completion:(nullable UICollectionViewLayoutInteractiveTransitionCompletion)completion API_AVAILABLE(ios(7.0));",
            @"isDataModelExpand": @(YES),
            @"desc": @"在结束或者取消之前只能设置一次，否则会崩溃",
            @"dataModel": @{
                @"childItems": [self TestProjectCollectionView_startInteractiveTransitionToCollectionViewLayout_completion:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectCollectionView_setCollectionViewLayout_animated_completion:(TestProjectTableViewParams *)params {
    WS(wSelf);
    UICollectionViewFlowLayout *layout = [[UICollectionViewFlowLayout alloc] init];
    layout.sectionInset = UIEdgeInsetsZero;
    layout.minimumLineSpacing = 10;
    layout.minimumInteritemSpacing = 10;
    layout.itemSize = CGSizeMake(150, 50);
    layout.headerReferenceSize = CGSizeMake(0, 50);
    layout.footerReferenceSize = CGSizeMake(0, 50);
    return [self createModelSingleArrayWithParams:params title:[NSString stringWithFormat:@"重新设置的layout：%@", layout] block:^{
        [wSelf.collectionView setCollectionViewLayout:layout animated:YES completion:^(BOOL finished) {
            [TestProjectToast showWithText:@"设置layout完成" withParentView:wSelf];
        }];
    }];
}

- (NSDictionary *)method_30:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"执行UICollectionView的方法, 重新设置layout会立即生效，如果是同一个layout不会生效，有一个完成的回调",
            @"title": @"- (void)setCollectionViewLayout:(UICollectionViewLayout *)layout animated:(BOOL)animated completion:(void (^ __nullable)(BOOL finished))completion NS_SWIFT_DISABLE_ASYNC API_AVAILABLE(ios(7.0));",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectCollectionView_setCollectionViewLayout_animated_completion:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectCollectionView_setCollectionViewLayout_animated:(TestProjectTableViewParams *)params {
    WS(wSelf);
    UICollectionViewFlowLayout *layout = [[UICollectionViewFlowLayout alloc] init];
    layout.sectionInset = UIEdgeInsetsZero;
    layout.minimumLineSpacing = 10;
    layout.minimumInteritemSpacing = 10;
    layout.itemSize = CGSizeMake(150, 100);
    layout.headerReferenceSize = CGSizeMake(0, 50);
    layout.footerReferenceSize = CGSizeMake(0, 50);
    return [self createModelSingleArrayWithParams:params title:[NSString stringWithFormat:@"重新设置的layout：%@", layout] block:^{
        [wSelf.collectionView setCollectionViewLayout:layout animated:YES];
    }];
}

- (NSDictionary *)method_29:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"执行UICollectionView的方法，重新设置layout会立即生效，如果是同一个layout不会生效",
            @"title": @"- (void)setCollectionViewLayout:(UICollectionViewLayout *)layout animated:(BOOL)animated;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectCollectionView_setCollectionViewLayout_animated:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectCollectionView_reloadData:(TestProjectTableViewParams *)params {
    return [self createModelSingleArrayWithParams:params title:nil block:nil];
}

- (NSDictionary *)method_27:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"执行UICollectionView的方法，重新刷数据",
            @"title": @"- (void)reloadData;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectCollectionView_reloadData:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectCollectionView_property_hasUncommittedUpdates:(TestProjectTableViewParams *)params {
    return [self createModelSingleArrayWithParams:params
                                         property:@"hasUncommittedUpdates"
                                            value:nil
                                        operation:TestProjectCreateModelGetBeforeClickGet
                                            block:nil];
}

- (NSDictionary *)method_26:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"获取设置UICollectionView的属性hasUncommittedUpdates",
            @"title": @"@property (nonatomic, readonly) BOOL hasUncommittedUpdates API_AVAILABLE(ios(11.0));",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectCollectionView_property_hasUncommittedUpdates:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectCollectionView_deselectItemAtIndexPath_animated:(TestProjectTableViewParams *)params {
    NSIndexPath *indexPath = [NSIndexPath indexPathForRow:5 inSection:0];
    WS(wSelf);
    return [self createModelSingleArrayWithParams:params title:[NSString stringWithFormat:@"设置的是：%ld_%ld", indexPath.section, indexPath.row] block:^{
        [wSelf.collectionView deselectItemAtIndexPath:indexPath animated:YES];
    }];
}

- (NSDictionary *)method_25:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"执行UICollectionView的方法，取消选中",
            @"title": @"- (void)deselectItemAtIndexPath:(NSIndexPath *)indexPath animated:(BOOL)animated;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectCollectionView_deselectItemAtIndexPath_animated:params],
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

- (NSMutableArray *)TestProjectCollectionView_selectItemAtIndexPath_animated_scrollPosition:(TestProjectTableViewParams *)params {
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
        [self createModelSingleArrayWithParams:params title:[NSString stringWithFormat:@"%@,设置的是：%ld_%ld", title, indexPath.section, indexPath.row] block:^{
            [wSelf.collectionView selectItemAtIndexPath:indexPath animated:YES scrollPosition:position];
        }];
    }
    return self.dataMutArr;
}

- (NSDictionary *)method_24:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"执行UICollectionView的方法, 选中并滚动到某个cell下",
            @"title": @"- (void)selectItemAtIndexPath:(nullable NSIndexPath *)indexPath animated:(BOOL)animated scrollPosition:(UICollectionViewScrollPosition)scrollPosition;",
            @"isDataModelExpand": @(YES),
            @"desc": @"不会触发- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath",
            @"dataModel": @{
                @"childItems": [self TestProjectCollectionView_selectItemAtIndexPath_animated_scrollPosition:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectCollectionView_property_indexPathsForSelectedItems:(TestProjectTableViewParams *)params {
    return [self createModelSingleArrayWithParams:params
                                         property:@"indexPathsForSelectedItems"
                                            value:nil
                                        operation:TestProjectCreateModelGetBeforeClickGet
                                            block:nil];
}

- (NSDictionary *)method_23:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"获取设置UICollectionView的属性indexPathsForSelectedItems,被选中的的cell",
            @"title": @"@property (nonatomic, readonly, nullable) NSArray<NSIndexPath *> *indexPathsForSelectedItems;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectCollectionView_property_indexPathsForSelectedItems:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectCollectionView_property_allowsMultipleSelection:(TestProjectTableViewParams *)params {
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
        [self createModelWithParams:params
                              title:title
                           property:@"allowsMultipleSelection"
                              value:value
                          operation:TestProjectCreateModelGetBeforeClickSet
                              block:nil];
    }
    return self.dataMutArr;
}

- (NSDictionary *)method_22:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"获取设置UICollectionView的属性allowsMultipleSelection，是否允许选择多个，默认是NO",
            @"title": @"@property (nonatomic) BOOL allowsMultipleSelection;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectCollectionView_property_allowsMultipleSelection:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectCollectionView_property_allowsSelection:(TestProjectTableViewParams *)params {
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
        [self createModelWithParams:params
                              title:title
                           property:@"allowsSelection"
                              value:value
                          operation:TestProjectCreateModelGetBeforeClickSet
                              block:nil];
    }
    return self.dataMutArr;
}

- (NSDictionary *)method_21:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"获取设置UICollectionView的属性allowsSelection，是否允许选择单个，默认是YES",
            @"title": @"@property (nonatomic) BOOL allowsSelection;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectCollectionView_property_allowsSelection:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectCollectionView_dequeueConfiguredReusableSupplementaryViewWithRegistration_forIndexPath:(TestProjectTableViewParams *)params {
    NSIndexPath *indexPath = [NSIndexPath indexPathForRow:0 inSection:0];
    WS(wSelf);
    return [self createModelSingleArrayWithParams:params title:[NSString stringWithFormat:@"获取的是：%ld_%ld的的headerView和footerView", indexPath.section, indexPath.row] methodBlock:^NSString * _Nonnull{
        TestProjectUICollectionReusableView *headerView, *footerView;
        if (@available(iOS 14.0, *)) {
            UICollectionViewSupplementaryRegistration *headerRegist = [UICollectionViewSupplementaryRegistration registrationWithSupplementaryClass:TestProjectUICollectionReusableView.class elementKind:UICollectionElementKindSectionHeader configurationHandler:^(__kindof UICollectionReusableView * _Nonnull supplementaryView, NSString * _Nonnull elementKind, NSIndexPath * _Nonnull indexPath) {
                NSLog(@"supplementaryView:%@ elementKind:%@ indexPath:%@", supplementaryView, elementKind, indexPath);
            }];
            headerView = [wSelf.collectionView dequeueConfiguredReusableSupplementaryViewWithRegistration:headerRegist forIndexPath:indexPath];
            UICollectionViewSupplementaryRegistration *footerRegist = [UICollectionViewSupplementaryRegistration registrationWithSupplementaryClass:TestProjectUICollectionReusableView.class elementKind:UICollectionElementKindSectionFooter configurationHandler:^(__kindof UICollectionReusableView * _Nonnull supplementaryView, NSString * _Nonnull elementKind, NSIndexPath * _Nonnull indexPath) {
                NSLog(@"supplementaryView:%@ elementKind:%@ indexPath:%@", supplementaryView, elementKind, indexPath);
            }];
            footerView = [wSelf.collectionView dequeueConfiguredReusableSupplementaryViewWithRegistration:footerRegist forIndexPath:indexPath];
        } else {
            // Fallback on earlier versions
        }
        return [NSString stringWithFormat:@"headerView:%@\nfooterView:%@", headerView, footerView];
    }];
}

- (NSDictionary *)method_20:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"执行UICollectionView的方法, 通过NSIndexPath和UICollectionViewSupplementaryRegistration获取cell的headerSection和footerSection",
            @"title": @"- (__kindof UICollectionReusableView *)dequeueConfiguredReusableSupplementaryViewWithRegistration:(UICollectionViewSupplementaryRegistration*)registration forIndexPath:(NSIndexPath *)indexPath API_AVAILABLE(ios(14.0),tvos(14.0));",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectCollectionView_dequeueConfiguredReusableSupplementaryViewWithRegistration_forIndexPath:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectCollectionView_dequeueConfiguredReusableCellWithRegistration_forIndexPath:(TestProjectTableViewParams *)params {
    NSIndexPath *indexPath = [NSIndexPath indexPathForRow:0 inSection:0];
    WS(wSelf);
    return [self createModelSingleArrayWithParams:params title:[NSString stringWithFormat:@"获取的是：%ld_%ld的cell", indexPath.section, indexPath.row] methodBlock:^NSString * _Nonnull{
        TestProjectUICollectionCell *cell;
        if (@available(iOS 14.0, *)) {
            __block id blockItem;
            UICollectionViewCellRegistration *resist = [UICollectionViewCellRegistration registrationWithCellClass:TestProjectUICollectionCell.class configurationHandler:^(__kindof UICollectionViewCell * _Nonnull cell, NSIndexPath * _Nonnull indexPath, id  _Nonnull item) {
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

- (NSDictionary *)method_19:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"执行UICollectionView的方法, 通过NSIndexPath和UICollectionViewCellRegistration获取cell",
            @"title": @"- (__kindof UICollectionViewCell *)dequeueConfiguredReusableCellWithRegistration:(UICollectionViewCellRegistration*)registration forIndexPath:(NSIndexPath*)indexPath item:(id)item API_AVAILABLE(ios(14.0),tvos(14.0));",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectCollectionView_dequeueConfiguredReusableCellWithRegistration_forIndexPath:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectCollectionView_dequeueReusableSupplementaryViewOfKind_withReuseIdentifier_forIndexPath:(TestProjectTableViewParams *)params {
    NSIndexPath *indexPath = [NSIndexPath indexPathForRow:0 inSection:0];
    WS(wSelf);
    return [self createModelSingleArrayWithParams:params title:[NSString stringWithFormat:@"获取的是：%ld_%ld的headerView和footerView", indexPath.section, indexPath.row] methodBlock:^NSString * _Nonnull{
        TestProjectUICollectionReusableView *headerView = [wSelf.collectionView dequeueReusableSupplementaryViewOfKind:UICollectionElementKindSectionHeader withReuseIdentifier:@"TestProjectUICollectionReusableView" forIndexPath:indexPath];
        TestProjectUICollectionReusableView *footerView = [wSelf.collectionView dequeueReusableSupplementaryViewOfKind:UICollectionElementKindSectionFooter withReuseIdentifier:@"TestProjectUICollectionReusableView" forIndexPath:indexPath];
        return [NSString stringWithFormat:@"headerView:%@\nfooterView:%@", headerView, footerView];
    }];
}

- (NSDictionary *)method_18:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"执行UICollectionView的方法, 通过NSIndexPath和identifier和elementKind获取cell的headerSection和footerSection",
            @"title": @"- (__kindof UICollectionReusableView *)dequeueReusableSupplementaryViewOfKind:(NSString *)elementKind withReuseIdentifier:(NSString *)identifier forIndexPath:(NSIndexPath *)indexPath;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectCollectionView_dequeueReusableSupplementaryViewOfKind_withReuseIdentifier_forIndexPath:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectCollectionView_dequeueReusableCellWithReuseIdentifier:(TestProjectTableViewParams *)params {
    NSIndexPath *indexPath = [NSIndexPath indexPathForRow:0 inSection:0];
    WS(wSelf);
    return [self createModelSingleArrayWithParams:params title:[NSString stringWithFormat:@"获取的是：%ld_%ld的cell", indexPath.section, indexPath.row] methodBlock:^NSString * _Nonnull{
        TestProjectUICollectionCell *cell = [wSelf.collectionView dequeueReusableCellWithReuseIdentifier:@"TestProjectUICollectionCell" forIndexPath:indexPath];
        return [NSString stringWithFormat:@"%@", cell];
    }];
}

- (NSDictionary *)method_17:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"执行UICollectionView的方法, 通过NSIndexPath和identifier获取cell",
            @"title": @"- (__kindof UICollectionViewCell *)dequeueReusableCellWithReuseIdentifier:(NSString *)identifier forIndexPath:(NSIndexPath *)indexPath;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectCollectionView_dequeueReusableCellWithReuseIdentifier:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectCollectionView_registerNib_forSupplementaryViewOfKind:(TestProjectTableViewParams *)params {
    return [self createModelSingleArrayWithParams:params title:nil block:nil];
}

- (NSDictionary *)method_16:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"执行UICollectionView的方法, 通过UINib和identifier注册cell的headerSection和footerSection",
            @"title": @"- (void)registerNib:(nullable UINib *)nib forSupplementaryViewOfKind:(NSString *)kind withReuseIdentifier:(NSString *)identifier;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectCollectionView_registerNib_forSupplementaryViewOfKind:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectCollectionView_registerClass_forSupplementaryViewOfKind:(TestProjectTableViewParams *)params {
    return [self createModelSingleArrayWithParams:params title:nil block:nil];
}

- (NSDictionary *)method_15:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"执行UICollectionView的方法, 通过Class和identifier注册cell的headerSection和footerSection",
            @"title": @"- (void)registerClass:(nullable Class)viewClass forSupplementaryViewOfKind:(NSString *)elementKind withReuseIdentifier:(NSString *)identifier;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectCollectionView_registerClass_forSupplementaryViewOfKind:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectCollectionView_registerNib_forCellWithReuseIdentifier:(TestProjectTableViewParams *)params {
    return [self createModelSingleArrayWithParams:params title:nil block:nil];
}

- (NSDictionary *)method_14:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"执行UICollectionView的方法, 通过UINib和identifier注册cell",
            @"title": @"- (void)registerNib:(nullable UINib *)nib forCellWithReuseIdentifier:(NSString *)identifier;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectCollectionView_registerNib_forCellWithReuseIdentifier:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectCollectionView_registerClass_forCellWithReuseIdentifier:(TestProjectTableViewParams *)params {
    return [self createModelSingleArrayWithParams:params title:nil block:nil];
}

- (NSDictionary *)method_13:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"执行UICollectionView的方法, 通过Class和identifier注册cell",
            @"title": @"- (void)registerClass:(nullable Class)cellClass forCellWithReuseIdentifier:(NSString *)identifier;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectCollectionView_registerClass_forCellWithReuseIdentifier:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectCollectionView_property_backgroundView:(TestProjectTableViewParams *)params {
    UIView *backgroundView = [[UIView alloc] init];
    backgroundView.backgroundColor = [UIColor redColor];
    return [self createModelSingleArrayWithParams:params
                                         property:@"backgroundView"
                                            value:backgroundView
                                        operation:TestProjectCreateModelGetBeforeClickSet
                                            block:nil];
}

- (NSDictionary *)method_12:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"获取设置UICollectionView的属性backgroundView,可以设置一个想要的背景view",
            @"title": @"@property (nonatomic, strong, nullable) UIView *backgroundView;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectCollectionView_property_backgroundView:params],
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

- (NSMutableArray *)TestProjectCollectionView_property_selfSizingInvalidation:(TestProjectTableViewParams *)params {
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
            [self createModelWithParams:params
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

- (NSDictionary *)method_11:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"获取设置UICollectionView的属性selfSizingInvalidation，想要自动约束cell的宽高",
            @"title": @"@property (nonatomic) UICollectionViewSelfSizingInvalidation selfSizingInvalidation API_AVAILABLE(ios(16.0), tvos(16.0), watchos(9.0));",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectCollectionView_property_selfSizingInvalidation:params],
            }
        },
    };
}

//typedef NS_ENUM(NSInteger, UICollectionViewReorderingCadence) {
//    UICollectionViewReorderingCadenceImmediate,
//    UICollectionViewReorderingCadenceFast,
//    UICollectionViewReorderingCadenceSlow
//} API_AVAILABLE(ios(11.0)) API_UNAVAILABLE(tvos, watchos);

- (NSMutableArray *)TestProjectCollectionView_property_reorderingCadence:(TestProjectTableViewParams *)params {
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
        [self createModelWithParams:params
                              title:title
                           property:@"reorderingCadence"
                              value:value
                          operation:TestProjectCreateModelGetBeforeClickSet
                              block:nil];
    }
    return self.dataMutArr;
}

- (NSDictionary *)method_10:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"获取设置UICollectionView的属性reorderingCadence，设置cell拖拽的效果",
            @"title": @"@property (nonatomic) UICollectionViewReorderingCadence reorderingCadence API_AVAILABLE(ios(11.0)) API_UNAVAILABLE(tvos, watchos);",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectCollectionView_property_reorderingCadence:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectCollectionView_property_contextMenuInteraction:(TestProjectTableViewParams *)params {
    return [self createModelSingleArrayWithParams:params
                                         property:@"contextMenuInteraction"
                                            value:nil
                                        operation:TestProjectCreateModelOnlyGet
                                            block:nil];
}

- (NSDictionary *)method_9:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"获取设置UICollectionView的属性contextMenuInteraction",
            @"title": @"@property (nonatomic, readonly, nullable) UIContextMenuInteraction *contextMenuInteraction API_AVAILABLE(ios(13.2)) API_UNAVAILABLE(watchos, tvos);",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectCollectionView_property_contextMenuInteraction:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectCollectionView_property_dragInteractionEnabled:(TestProjectTableViewParams *)params {
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
        [self createModelWithParams:params
                              title:title
                           property:@"dragInteractionEnabled"
                              value:value
                          operation:TestProjectCreateModelGetBeforeClickSet
                              block:nil];
    }
    return self.dataMutArr;
}

- (NSDictionary *)method_8:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"获取设置UICollectionView的属性dragInteractionEnabled",
            @"title": @"@property (nonatomic) BOOL dragInteractionEnabled API_AVAILABLE(ios(11.0)) API_UNAVAILABLE(tvos, watchos);",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectCollectionView_property_dragInteractionEnabled:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectCollectionView_property_dropDelegate:(TestProjectTableViewParams *)params {
    return [self createModelSingleArrayWithParams:params
                                         property:@"dropDelegate"
                                            value:nil
                                        operation:TestProjectCreateModelOnlyGet
                                            block:nil];
}

- (NSDictionary *)method_7:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"获取设置UICollectionView的属性dropDelegate",
            @"title": @"@property (nonatomic, weak, nullable) id <UICollectionViewDropDelegate> dropDelegate API_AVAILABLE(ios(11.0)) API_UNAVAILABLE(tvos, watchos);",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectCollectionView_property_dropDelegate:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectCollectionView_property_dragDelegate:(TestProjectTableViewParams *)params {
    return [self createModelSingleArrayWithParams:params
                                         property:@"dragDelegate"
                                            value:nil
                                        operation:TestProjectCreateModelOnlyGet
                                            block:nil];
}

- (NSDictionary *)method_6:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"获取设置UICollectionView的属性dragDelegate",
            @"title": @"@property (nonatomic, weak, nullable) id <UICollectionViewDragDelegate> dragDelegate API_AVAILABLE(ios(11.0)) API_UNAVAILABLE(tvos, watchos);;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectCollectionView_property_dragDelegate:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectCollectionView_property_prefetchingEnabled:(TestProjectTableViewParams *)params {
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
        [self createModelWithParams:params
                              title:title
                           property:@"prefetchingEnabled"
                              value:value
                          operation:TestProjectCreateModelGetBeforeClickSet
                              block:nil];
    }
    return self.dataMutArr;
}

- (NSDictionary *)method_5:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"获取设置UICollectionView的属性prefetchingEnabled, 是否开启预加载机制",
            @"title": @"@property (nonatomic, getter=isPrefetchingEnabled) BOOL prefetchingEnabled API_AVAILABLE(ios(10.0));",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectCollectionView_property_prefetchingEnabled:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectCollectionView_property_prefetchDataSource:(TestProjectTableViewParams *)params {
    return [self createModelSingleArrayWithParams:params
                                         property:@"prefetchDataSource"
                                            value:nil
                                        operation:TestProjectCreateModelOnlyGet
                                            block:nil];
}

- (NSDictionary *)method_4:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"获取设置UICollectionView的属性prefetchDataSource，开启预加载机制的数据代理源",
            @"title": @"@property (nonatomic, weak, nullable) id<UICollectionViewDataSourcePrefetching> prefetchDataSource API_AVAILABLE(ios(10.0));",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectCollectionView_property_prefetchDataSource:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectCollectionView_property_dataSource:(TestProjectTableViewParams *)params {
    return [self createModelSingleArrayWithParams:params
                                         property:@"dataSource"
                                            value:nil
                                        operation:TestProjectCreateModelOnlyGet
                                            block:nil];
}

- (NSDictionary *)method_3:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"获取设置UICollectionView的属性dataSource",
            @"title": @"@property (nonatomic, weak, nullable) id <UICollectionViewDataSource> dataSource;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectCollectionView_property_dataSource:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectCollectionView_property_delegate:(TestProjectTableViewParams *)params {
    return [self createModelSingleArrayWithParams:params
                                         property:@"delegate"
                                            value:nil
                                        operation:TestProjectCreateModelOnlyGet
                                            block:nil];
}

- (NSDictionary *)method_2:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"获取设置UICollectionView的属性delegate",
            @"title": @"@property (nonatomic, weak, nullable) id <UICollectionViewDelegate> delegate;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectCollectionView_property_delegate:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectCollectionView_property_collectionViewLayout:(TestProjectTableViewParams *)params {
    return [self createModelSingleArrayWithParams:params
                                         property:@"collectionViewLayout"
                                            value:nil
                                        operation:TestProjectCreateModelOnlyGet
                                            block:nil];
}

- (NSDictionary *)method_1:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"获取设置UICollectionView的属性collectionViewLayout，这是每个元素的展示信息，包括头部和底部的，可以继承它进行重构",
            @"title": @"@property (nonatomic, strong) UICollectionViewLayout *collectionViewLayout;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectCollectionView_property_collectionViewLayout:params],
            }
        },
    };
}

@end
