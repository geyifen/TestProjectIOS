//
//  TestProjectUICollectionViewDelegate.m
//  TestProjectIOS
//
//  Created by liwenfan on 2023/8/7.
//

#import "TestProjectUICollectionViewDelegate.h"

#import "TestProjectUICollectionCell.h"

@interface TestProjectUICollectionViewDelegate () <UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout>

@property (nonatomic, strong) UICollectionView *collectionView;
@property (nonatomic, strong) UICollectionViewFlowLayout *layout;
@property (nonatomic, assign) NSInteger sectionCount;
@property (nonatomic, strong) NSMutableArray *headerSectionArray;
@property (nonatomic, strong) NSMutableArray *footerSectionArray;
@property (nonatomic, strong) NSMutableArray<NSMutableArray *> *itemCountArray;

@end

@implementation TestProjectUICollectionViewDelegate

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

- (UIWindowSceneActivationConfiguration *)collectionView:(UICollectionView *)collectionView sceneActivationConfigurationForItemAtIndexPath:(nonnull NSIndexPath *)indexPath point:(CGPoint)point  API_AVAILABLE(ios(15.0)) API_AVAILABLE(ios(15.0)){
    NSLog(@"%@ indexPath:%@ point:%@", NSStringFromSelector(_cmd), indexPath, NSStringFromCGPoint(point));
    return nil;
}

- (NSMutableArray *)TestProjectCollectionViewDelegate_optional_collectionView_sceneActivationConfigurationForItemAtIndexPath_point:(TestProjectTableViewParams *)params {
    return [self createModelSingleArrayWithParams:params title:nil block:nil];
}

- (NSDictionary *)method_33:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"执行UICollectionViewDataSource的@optional方法, 暂不知道作用",
            @"title": @"- (nullable UIWindowSceneActivationConfiguration *)collectionView:(UICollectionView *)collectionView sceneActivationConfigurationForItemAtIndexPath:(NSIndexPath *)indexPath point:(CGPoint)point API_AVAILABLE(ios(15.0)) API_UNAVAILABLE(watchos, tvos);",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectCollectionViewDelegate_optional_collectionView_sceneActivationConfigurationForItemAtIndexPath_point:params],
            }
        },
    };
}

- (void)collectionView:(UICollectionView *)collectionView willEndContextMenuInteractionWithConfiguration:(nonnull UIContextMenuConfiguration *)configuration animator:(nullable id<UIContextMenuInteractionAnimating>)animator {
    NSLog(@"%@ configuration:%@ animator:%@", NSStringFromSelector(_cmd), configuration, animator);
}

- (NSMutableArray *)TestProjectCollectionViewDelegate_optional_collectionView_willEndContextMenuInteractionWithConfiguration_animator:(TestProjectTableViewParams *)params {
    return [self createModelSingleArrayWithParams:params title:nil block:nil];
}

- (NSDictionary *)method_32:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"执行UICollectionViewDataSource的@optional方法",
            @"title": @"- (void)collectionView:(UICollectionView *)collectionView willEndContextMenuInteractionWithConfiguration:(UIContextMenuConfiguration *)configuration animator:(nullable id<UIContextMenuInteractionAnimating>)animator API_AVAILABLE(ios(13.2)) API_UNAVAILABLE(watchos, tvos);",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectCollectionViewDelegate_optional_collectionView_willEndContextMenuInteractionWithConfiguration_animator:params],
            }
        },
    };
}

- (void)collectionView:(UICollectionView *)collectionView willDisplayContextMenuWithConfiguration:(nonnull UIContextMenuConfiguration *)configuration animator:(nullable id<UIContextMenuInteractionAnimating>)animator {
    NSLog(@"%@ configuration:%@ animator:%@", NSStringFromSelector(_cmd), configuration, animator);
}

- (NSMutableArray *)TestProjectCollectionViewDelegate_optional_collectionView_willDisplayContextMenuWithConfiguration_animator:(TestProjectTableViewParams *)params {
    return [self createModelSingleArrayWithParams:params title:nil block:nil];
}

- (NSDictionary *)method_31:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"执行UICollectionViewDataSource的@optional方法",
            @"title": @"- (void)collectionView:(UICollectionView *)collectionView willDisplayContextMenuWithConfiguration:(UIContextMenuConfiguration *)configuration animator:(nullable id<UIContextMenuInteractionAnimating>)animator API_AVAILABLE(ios(13.2)) API_UNAVAILABLE(watchos, tvos);",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectCollectionViewDelegate_optional_collectionView_willDisplayContextMenuWithConfiguration_animator:params],
            }
        },
    };
}

- (void)collectionView:(UICollectionView *)collectionView willPerformPreviewActionForMenuWithConfiguration:(UIContextMenuConfiguration *)configuration animator:(id<UIContextMenuInteractionCommitAnimating>)animator {
    NSLog(@"%@ configuration:%@ animator:%@", NSStringFromSelector(_cmd), configuration, animator);
}

- (NSMutableArray *)TestProjectCollectionViewDelegate_optional_collectionView_willPerformPreviewActionForMenuWithConfiguration_animator:(TestProjectTableViewParams *)params {
    return [self createModelSingleArrayWithParams:params title:nil block:nil];
}

- (NSDictionary *)method_30:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"执行UICollectionViewDataSource的@optional方法",
            @"title": @"- (void)collectionView:(UICollectionView *)collectionView willPerformPreviewActionForMenuWithConfiguration:(UIContextMenuConfiguration *)configuration animator:(id<UIContextMenuInteractionCommitAnimating>)animator API_AVAILABLE(ios(13.0)) API_UNAVAILABLE(watchos, tvos);",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectCollectionViewDelegate_optional_collectionView_willPerformPreviewActionForMenuWithConfiguration_animator:params],
            }
        },
    };
}

- (UITargetedPreview *)collectionView:(UICollectionView *)collectionView contextMenuConfiguration:(UIContextMenuConfiguration *)configuration dismissalPreviewForItemAtIndexPath:(NSIndexPath *)indexPath {
    NSLog(@"%@ configuration:%@ indexPath:%@", NSStringFromSelector(_cmd), configuration, indexPath);
    return nil;
}

- (NSMutableArray *)TestProjectCollectionViewDelegate_optional_contextMenuConfiguration_dismissalPreviewForItemAtIndexPath:(TestProjectTableViewParams *)params {
    return [self createModelSingleArrayWithParams:params title:nil block:nil];
}

- (NSDictionary *)method_29:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"执行UICollectionViewDataSource的@optional方法",
            @"title": @"- (nullable UITargetedPreview *)collectionView:(UICollectionView *)collectionView contextMenuConfiguration:(UIContextMenuConfiguration *)configuration dismissalPreviewForItemAtIndexPath:(NSIndexPath *)indexPath API_AVAILABLE(ios(16.0)) API_UNAVAILABLE(watchos, tvos);",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectCollectionViewDelegate_optional_contextMenuConfiguration_dismissalPreviewForItemAtIndexPath:params],
            }
        },
    };
}

- (UITargetedPreview *)collectionView:(UICollectionView *)collectionView contextMenuConfiguration:(UIContextMenuConfiguration *)configuration highlightPreviewForItemAtIndexPath:(NSIndexPath *)indexPath {
    NSLog(@"%@ configuration:%@ indexPath:%@", NSStringFromSelector(_cmd), configuration, indexPath);
    return nil;
}

- (NSMutableArray *)TestProjectCollectionViewDelegate_optional_contextMenuConfiguration_highlightPreviewForItemAtIndexPath:(TestProjectTableViewParams *)params {
    return [self createModelSingleArrayWithParams:params title:nil block:nil];
}

- (NSDictionary *)method_28:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"执行UICollectionViewDataSource的@optional方法",
            @"title": @"- (nullable UITargetedPreview *)collectionView:(UICollectionView *)collectionView contextMenuConfiguration:(UIContextMenuConfiguration *)configuration highlightPreviewForItemAtIndexPath:(NSIndexPath *)indexPath API_AVAILABLE(ios(16.0)) API_UNAVAILABLE(watchos, tvos);",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectCollectionViewDelegate_optional_contextMenuConfiguration_highlightPreviewForItemAtIndexPath:params],
            }
        },
    };
}

- (UIContextMenuConfiguration *)collectionView:(UICollectionView *)collectionView contextMenuConfigurationForItemsAtIndexPaths:(NSArray<NSIndexPath *> *)indexPaths point:(CGPoint)point {
    NSLog(@"%@ indexPaths:%@ point:%@", NSStringFromSelector(_cmd), indexPaths, NSStringFromCGPoint(point));
    return nil;
}

- (NSMutableArray *)TestProjectCollectionViewDelegate_optional_contextMenuConfigurationForItemsAtIndexPaths_point:(TestProjectTableViewParams *)params {
    return [self createModelSingleArrayWithParams:params title:nil block:nil];
}

- (NSDictionary *)method_27:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"执行UICollectionViewDataSource的@optional方法, 长按UICollectionView的时候调用",
            @"title": @"- (nullable UIContextMenuConfiguration *)collectionView:(UICollectionView *)collectionView contextMenuConfigurationForItemsAtIndexPaths:(NSArray<NSIndexPath *> *)indexPaths point:(CGPoint)point API_AVAILABLE(ios(16.0)) API_UNAVAILABLE(watchos, tvos);",
            @"isDataModelExpand": @(YES),
            @"desc": @"@params indexPaths:只有当位置在cell上才会返回\n@params point:是UICollectionView在父view上被长按的位置",
            @"dataModel": @{
                @"childItems": [self TestProjectCollectionViewDelegate_optional_contextMenuConfigurationForItemsAtIndexPaths_point:params],
            }
        },
    };
}

- (void)collectionViewDidEndMultipleSelectionInteraction:(UICollectionView *)collectionView {
    NSLog(@"%@", NSStringFromSelector(_cmd));
}

- (NSMutableArray *)TestProjectCollectionViewDelegate_optional_collectionViewDidEndMultipleSelectionInteraction:(TestProjectTableViewParams *)params {
    return [self createModelSingleArrayWithParams:params title:nil block:nil];
}

- (NSDictionary *)method_26:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"执行UICollectionViewDataSource的@optional方法",
            @"title": @"- (void)collectionViewDidEndMultipleSelectionInteraction:(UICollectionView *)collectionView API_AVAILABLE(ios(13.0)) API_UNAVAILABLE(tvos, watchos);",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectCollectionViewDelegate_optional_collectionViewDidEndMultipleSelectionInteraction:params],
            }
        },
    };
}

- (void)collectionView:(UICollectionView *)collectionView didBeginMultipleSelectionInteractionAtIndexPath:(nonnull NSIndexPath *)indexPath {
    NSLog(@"%@ indexPath:%@", NSStringFromSelector(_cmd), indexPath);
}

- (NSMutableArray *)TestProjectCollectionViewDelegate_optional_collectionView_didBeginMultipleSelectionInteractionAtIndexPath:(TestProjectTableViewParams *)params {
    return [self createModelSingleArrayWithParams:params title:nil block:nil];
}

- (NSDictionary *)method_25:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"执行UICollectionViewDataSource的@optional方法",
            @"title": @"- (void)collectionView:(UICollectionView *)collectionView didBeginMultipleSelectionInteractionAtIndexPath:(NSIndexPath *)indexPath API_AVAILABLE(ios(13.0)) API_UNAVAILABLE(tvos, watchos);",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectCollectionViewDelegate_optional_collectionView_didBeginMultipleSelectionInteractionAtIndexPath:params],
            }
        },
    };
}

- (BOOL)collectionView:(UICollectionView *)collectionView shouldBeginMultipleSelectionInteractionAtIndexPath:(nonnull NSIndexPath *)indexPath {
    NSLog(@"%@ indexPath:%@", NSStringFromSelector(_cmd), indexPath);
    return YES;
}

- (NSMutableArray *)TestProjectCollectionViewDelegate_optional_collectionView_shouldBeginMultipleSelectionInteractionAtIndexPath:(TestProjectTableViewParams *)params {
    return [self createModelSingleArrayWithParams:params title:nil block:nil];
}

- (NSDictionary *)method_24:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"执行UICollectionViewDataSource的@optional方法",
            @"title": @"- (BOOL)collectionView:(UICollectionView *)collectionView shouldBeginMultipleSelectionInteractionAtIndexPath:(NSIndexPath *)indexPath API_AVAILABLE(ios(13.0)) API_UNAVAILABLE(tvos, watchos);",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectCollectionViewDelegate_optional_collectionView_shouldBeginMultipleSelectionInteractionAtIndexPath:params],
            }
        },
    };
}

- (BOOL)collectionView:(UICollectionView *)collectionView shouldSpringLoadItemAtIndexPath:(nonnull NSIndexPath *)indexPath withContext:(nonnull id<UISpringLoadedInteractionContext>)context {
    NSLog(@"%@ indexPath:%@ context:%@", NSStringFromSelector(_cmd), indexPath, context);
    return YES;
}

- (NSMutableArray *)TestProjectCollectionViewDelegate_optional_collectionView_shouldSpringLoadItemAtIndexPath_withContext:(TestProjectTableViewParams *)params {
    return [self createModelSingleArrayWithParams:params title:nil block:nil];
}

- (NSDictionary *)method_23:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"执行UICollectionViewDataSource的@optional方法",
            @"title": @"- (BOOL)collectionView:(UICollectionView *)collectionView shouldSpringLoadItemAtIndexPath:(NSIndexPath *)indexPath withContext:(id<UISpringLoadedInteractionContext>)context API_AVAILABLE(ios(11.0)) API_UNAVAILABLE(tvos, watchos);",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectCollectionViewDelegate_optional_collectionView_shouldSpringLoadItemAtIndexPath_withContext:params],
            }
        },
    };
}

- (BOOL)collectionView:(UICollectionView *)collectionView canEditItemAtIndexPath:(nonnull NSIndexPath *)indexPath {
    NSLog(@"%@ indexPath:%@", NSStringFromSelector(_cmd), indexPath);
    return YES;
}

- (NSMutableArray *)TestProjectCollectionViewDelegate_optional_collectionView_canEditItemAtIndexPath:(TestProjectTableViewParams *)params {
    return [self createModelSingleArrayWithParams:params title:nil block:nil];
}

- (NSDictionary *)method_22:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"执行UICollectionViewDataSource的@optional方法",
            @"title": @"- (BOOL)collectionView:(UICollectionView *)collectionView canEditItemAtIndexPath:(NSIndexPath *)indexPath API_AVAILABLE(ios(14.0), tvos(14.0), watchos(7.0));",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectCollectionViewDelegate_optional_collectionView_canEditItemAtIndexPath:params],
            }
        },
    };
}

- (CGPoint)collectionView:(UICollectionView *)collectionView targetContentOffsetForProposedContentOffset:(CGPoint)proposedContentOffset {
    NSLog(@"%@ proposedContentOffset:%@", NSStringFromSelector(_cmd), NSStringFromCGPoint(proposedContentOffset));
    return proposedContentOffset;
}

- (NSMutableArray *)TestProjectCollectionViewDelegate_optional_collectionView_targetContentOffsetForProposedContentOffset:(TestProjectTableViewParams *)params {
    return [self createModelSingleArrayWithParams:params title:nil block:nil];
}

- (NSDictionary *)method_21:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"执行UICollectionViewDataSource的@optional方法",
            @"title": @"- (CGPoint)collectionView:(UICollectionView *)collectionView targetContentOffsetForProposedContentOffset:(CGPoint)proposedContentOffset API_AVAILABLE(ios(9.0));",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectCollectionViewDelegate_optional_collectionView_targetContentOffsetForProposedContentOffset:params],
            }
        },
    };
}

- (NSIndexPath *)collectionView:(UICollectionView *)collectionView targetIndexPathForMoveOfItemFromOriginalIndexPath:(NSIndexPath *)originalIndexPath atCurrentIndexPath:(NSIndexPath *)currentIndexPath toProposedIndexPath:(NSIndexPath *)proposedIndexPath {
    NSLog(@"%@ originalIndexPath:%@ currentIndexPath:%@ proposedIndexPath:%@", NSStringFromSelector(_cmd), originalIndexPath, currentIndexPath, proposedIndexPath);
    return [NSIndexPath indexPathForRow:2 inSection:0];
}

- (NSMutableArray *)TestProjectCollectionViewDelegate_optional_collectionView_targetIndexPathForMoveOfItemFromOriginalIndexPath_atCurrentIndexPath_toProposedIndexPath:(TestProjectTableViewParams *)params {
    return [self createModelSingleArrayWithParams:params title:nil block:nil];
}

- (NSDictionary *)method_20:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"执行UICollectionViewDataSource的@optional方法",
            @"title": @"- (NSIndexPath *)collectionView:(UICollectionView *)collectionView targetIndexPathForMoveOfItemFromOriginalIndexPath:(NSIndexPath *)originalIndexPath atCurrentIndexPath:(NSIndexPath *)currentIndexPath toProposedIndexPath:(NSIndexPath *)proposedIndexPath API_AVAILABLE(ios(15.0), tvos(15.0), watchos(8.0));",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectCollectionViewDelegate_optional_collectionView_targetIndexPathForMoveOfItemFromOriginalIndexPath_atCurrentIndexPath_toProposedIndexPath:params],
            }
        },
    };
}

- (BOOL)collectionView:(UICollectionView *)collectionView selectionFollowsFocusForItemAtIndexPath:(NSIndexPath *)indexPath{
    NSLog(@"%@ indexPath:%@", NSStringFromSelector(_cmd), indexPath);
    return [NSIndexPath indexPathForRow:2 inSection:0];
}

- (NSMutableArray *)TestProjectCollectionViewDelegate_optional_collectionView_selectionFollowsFocusForItemAtIndexPath:(TestProjectTableViewParams *)params {
    return [self createModelSingleArrayWithParams:params title:nil block:nil];
}

- (NSDictionary *)method_19:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"执行UICollectionViewDataSource的@optional方法",
            @"title": @"- (BOOL)collectionView:(UICollectionView *)collectionView selectionFollowsFocusForItemAtIndexPath:(NSIndexPath *)indexPath API_AVAILABLE(ios(15.0)) API_UNAVAILABLE(watchos, tvos);",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectCollectionViewDelegate_optional_collectionView_selectionFollowsFocusForItemAtIndexPath:params],
            }
        },
    };
}

- (NSIndexPath *)indexPathForPreferredFocusedViewInCollectionView:(UICollectionView *)collectionView {
    NSLog(@"%@", NSStringFromSelector(_cmd));
    return [NSIndexPath indexPathForRow:2 inSection:0];
}

- (NSMutableArray *)TestProjectCollectionViewDelegate_optional_indexPathForPreferredFocusedViewInCollectionView:(TestProjectTableViewParams *)params {
    return [self createModelSingleArrayWithParams:params title:nil block:nil];
}

- (NSDictionary *)method_18:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"执行UICollectionViewDataSource的@optional方法",
            @"title": @"- (nullable NSIndexPath *)indexPathForPreferredFocusedViewInCollectionView:(UICollectionView *)collectionView API_AVAILABLE(ios(9.0));",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectCollectionViewDelegate_optional_indexPathForPreferredFocusedViewInCollectionView:params],
            }
        },
    };
}

- (void)collectionView:(UICollectionView *)collectionView didUpdateFocusInContext:(nonnull UICollectionViewFocusUpdateContext *)context withAnimationCoordinator:(nonnull UIFocusAnimationCoordinator *)coordinator {
    NSLog(@"%@ context:%@ coordinator:%@", NSStringFromSelector(_cmd), context, coordinator);
}

- (NSMutableArray *)TestProjectCollectionViewDelegate_optional_collectionView_didUpdateFocusInContext_withAnimationCoordinator:(TestProjectTableViewParams *)params {
    return [self createModelSingleArrayWithParams:params title:nil block:nil];
}

- (NSDictionary *)method_17:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"执行UICollectionViewDataSource的@optional方法",
            @"title": @"- (void)collectionView:(UICollectionView *)collectionView didUpdateFocusInContext:(UICollectionViewFocusUpdateContext *)context withAnimationCoordinator:(UIFocusAnimationCoordinator *)coordinator API_AVAILABLE(ios(9.0));",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectCollectionViewDelegate_optional_collectionView_didUpdateFocusInContext_withAnimationCoordinator:params],
            }
        },
    };
}

- (BOOL)collectionView:(UICollectionView *)collectionView shouldUpdateFocusInContext:(nonnull UICollectionViewFocusUpdateContext *)context {
    NSLog(@"%@ context:%@", NSStringFromSelector(_cmd), context);
    return YES;
}

- (NSMutableArray *)TestProjectCollectionViewDelegate_optional_collectionView_shouldUpdateFocusInContext:(TestProjectTableViewParams *)params {
    return [self createModelSingleArrayWithParams:params title:nil block:nil];
}

- (NSDictionary *)method_16:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"执行UICollectionViewDataSource的@optional方法",
            @"title": @"- (BOOL)collectionView:(UICollectionView *)collectionView shouldUpdateFocusInContext:(UICollectionViewFocusUpdateContext *)context API_AVAILABLE(ios(9.0));",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectCollectionViewDelegate_optional_collectionView_shouldUpdateFocusInContext:params],
            }
        },
    };
}

- (BOOL)collectionView:(UICollectionView *)collectionView canFocusItemAtIndexPath:(nonnull NSIndexPath *)indexPath {
    NSLog(@"%@ indexPath:%@", NSStringFromSelector(_cmd), indexPath);
    return YES;
}

- (NSMutableArray *)TestProjectCollectionViewDelegate_optional_collectionView_canFocusItemAtIndexPath:(TestProjectTableViewParams *)params {
    return [self createModelSingleArrayWithParams:params title:nil block:nil];
}

- (NSDictionary *)method_15:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"执行UICollectionViewDataSource的@optional方法",
            @"title": @"- (BOOL)collectionView:(UICollectionView *)collectionView canFocusItemAtIndexPath:(NSIndexPath *)indexPath API_AVAILABLE(ios(9.0));",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectCollectionViewDelegate_optional_collectionView_canFocusItemAtIndexPath:params],
            }
        },
    };
}

- (UICollectionViewTransitionLayout *)collectionView:(UICollectionView *)collectionView transitionLayoutForOldLayout:(UICollectionViewLayout *)fromLayout newLayout:(UICollectionViewLayout *)toLayout {
    NSLog(@"%@ fromLayout:%@ toLayout:%@", NSStringFromSelector(_cmd), fromLayout, toLayout);
    UICollectionViewTransitionLayout *transitionLayout = [[UICollectionViewTransitionLayout alloc] initWithCurrentLayout:fromLayout nextLayout:toLayout];
    return transitionLayout;
}

- (NSMutableArray *)TestProjectCollectionViewDelegate_optional_collectionView_transitionLayoutForOldLayout_newLayout:(TestProjectTableViewParams *)params {
    return [self createModelSingleArrayWithParams:params title:nil block:nil];
}

- (NSDictionary *)method_14:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"执行UICollectionViewDataSource的@optional方法, 可以自定义UICollectionViewTransitionLayout",
            @"title": @"- (nonnull UICollectionViewTransitionLayout *)collectionView:(UICollectionView *)collectionView transitionLayoutForOldLayout:(UICollectionViewLayout *)fromLayout newLayout:(UICollectionViewLayout *)toLayout;",
            @"isDataModelExpand": @(YES),
            @"desc": @"在调用该方法出现- (UICollectionViewTransitionLayout *)startInteractiveTransitionToCollectionViewLayout:(UICollectionViewLayout *)layout completion:(nullable UICollectionViewLayoutInteractiveTransitionCompletion)completion API_AVAILABLE(ios(7.0));",
            @"dataModel": @{
                @"childItems": [self TestProjectCollectionViewDelegate_optional_collectionView_transitionLayoutForOldLayout_newLayout:params],
            }
        },
    };
}

- (void)collectionView:(UICollectionView *)collectionView didEndDisplayingSupplementaryView:(nonnull UICollectionReusableView *)view forElementOfKind:(nonnull NSString *)elementKind atIndexPath:(nonnull NSIndexPath *)indexPath {
//    NSLog(@"%@ indexPath:%@", NSStringFromSelector(_cmd), indexPath);
}

- (NSMutableArray *)TestProjectCollectionViewDelegate_optional_collectionView_didEndDisplayingSupplementaryView_forElementOfKind_atIndexPath:(TestProjectTableViewParams *)params {
    return [self createModelSingleArrayWithParams:params title:nil block:nil];
}

- (NSDictionary *)method_13:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"执行UICollectionViewDataSource的@optional方法, cell的header或者footer的section已经完全出现",
            @"title": @"- (void)collectionView:(UICollectionView *)collectionView didEndDisplayingSupplementaryView:(UICollectionReusableView *)view forElementOfKind:(NSString *)elementKind atIndexPath:(NSIndexPath *)indexPath;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectCollectionViewDelegate_optional_collectionView_didEndDisplayingSupplementaryView_forElementOfKind_atIndexPath:params],
            }
        },
    };
}

- (void)collectionView:(UICollectionView *)collectionView didEndDisplayingCell:(nonnull UICollectionViewCell *)cell forItemAtIndexPath:(nonnull NSIndexPath *)indexPath {
//    NSLog(@"%@ indexPath:%@", NSStringFromSelector(_cmd), indexPath);
}

- (NSMutableArray *)TestProjectCollectionViewDelegate_optional_collectionView_didEndDisplayingCell_forItemAtIndexPath:(TestProjectTableViewParams *)params {
    return [self createModelSingleArrayWithParams:params title:nil block:nil];
}

- (NSDictionary *)method_12:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"执行UICollectionViewDataSource的@optional方法,  cell已经完全出现",
            @"title": @"- (void)collectionView:(UICollectionView *)collectionView didEndDisplayingCell:(UICollectionViewCell *)cell forItemAtIndexPath:(NSIndexPath *)indexPath;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectCollectionViewDelegate_optional_collectionView_didEndDisplayingCell_forItemAtIndexPath:params],
            }
        },
    };
}

- (void)collectionView:(UICollectionView *)collectionView willDisplaySupplementaryView:(nonnull UICollectionReusableView *)view forElementKind:(nonnull NSString *)elementKind atIndexPath:(nonnull NSIndexPath *)indexPath {
//    NSLog(@"%@ elementKind:%@ indexPath:%@", NSStringFromSelector(_cmd), elementKind, indexPath);
}

- (NSMutableArray *)TestProjectCollectionViewDelegate_optional_collectionView_willDisplaySupplementaryView_forElementKind_atIndexPath:(TestProjectTableViewParams *)params {
    return [self createModelSingleArrayWithParams:params title:nil block:nil];
}

- (NSDictionary *)method_11:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"执行UICollectionViewDataSource的@optional方法,  cell的header或者footer的section将出现",
            @"title": @"- (void)collectionView:(UICollectionView *)collectionView willDisplaySupplementaryView:(UICollectionReusableView *)view forElementKind:(NSString *)elementKind atIndexPath:(NSIndexPath *)indexPath API_AVAILABLE(ios(8.0));",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectCollectionViewDelegate_optional_collectionView_willDisplaySupplementaryView_forElementKind_atIndexPath:params],
            }
        },
    };
}

- (void)collectionView:(UICollectionView *)collectionView willDisplayCell:(nonnull UICollectionViewCell *)cell forItemAtIndexPath:(nonnull NSIndexPath *)indexPath {
//    NSLog(@"%@ indexPath:%@", NSStringFromSelector(_cmd), indexPath);
}

- (NSMutableArray *)TestProjectCollectionViewDelegate_optional_collectionView_willDisplayCell_forItemAtIndexPath:(TestProjectTableViewParams *)params {
    return [self createModelSingleArrayWithParams:params title:nil block:nil];
}

- (NSDictionary *)method_10:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"执行UICollectionViewDataSource的@optional方法,  cell即将出现",
            @"title": @"- (void)collectionView:(UICollectionView *)collectionView willDisplayCell:(UICollectionViewCell *)cell forItemAtIndexPath:(NSIndexPath *)indexPath API_AVAILABLE(ios(8.0));",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectCollectionViewDelegate_optional_collectionView_willDisplayCell_forItemAtIndexPath:params],
            }
        },
    };
}

- (void)collectionView:(UICollectionView *)collectionView performPrimaryActionForItemAtIndexPath:(NSIndexPath *)indexPath {
    NSLog(@"%@ indexPath:%@", NSStringFromSelector(_cmd), indexPath);
}

- (NSMutableArray *)TestProjectCollectionViewDelegate_optional_collectionView_performPrimaryActionForItemAtIndexPath:(TestProjectTableViewParams *)params {
    return [self createModelSingleArrayWithParams:params title:nil block:nil];
}

- (NSDictionary *)method_9:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"执行UICollectionViewDataSource的@optional方法",
            @"title": @"- (void)collectionView:(UICollectionView *)collectionView performPrimaryActionForItemAtIndexPath:(NSIndexPath *)indexPath API_AVAILABLE(ios(16.0), tvos(16.0), watchos(9.0));",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectCollectionViewDelegate_optional_collectionView_performPrimaryActionForItemAtIndexPath:params],
            }
        },
    };
}

- (BOOL)collectionView:(UICollectionView *)collectionView canPerformPrimaryActionForItemAtIndexPath:(NSIndexPath *)indexPath {
    NSLog(@"%@ indexPath:%@", NSStringFromSelector(_cmd), indexPath);
    return YES;
}

- (NSMutableArray *)TestProjectCollectionViewDelegate_optional_collectionView_canPerformPrimaryActionForItemAtIndexPath:(TestProjectTableViewParams *)params {
    return [self createModelSingleArrayWithParams:params title:nil block:nil];
}

- (NSDictionary *)method_8:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"执行UICollectionViewDataSource的@optional方法",
            @"title": @"- (BOOL)collectionView:(UICollectionView *)collectionView canPerformPrimaryActionForItemAtIndexPath:(NSIndexPath *)indexPath API_AVAILABLE(ios(16.0), tvos(16.0), watchos(9.0));",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectCollectionViewDelegate_optional_collectionView_canPerformPrimaryActionForItemAtIndexPath:params],
            }
        },
    };
}

- (void)collectionView:(UICollectionView *)collectionView didDeselectItemAtIndexPath:(NSIndexPath *)indexPath {
//    NSLog(@"%@ indexPath:%@", NSStringFromSelector(_cmd), indexPath);
}

- (NSMutableArray *)TestProjectCollectionViewDelegate_optional_collectionView_didDeselectItemAtIndexPath:(TestProjectTableViewParams *)params {
    return [self createModelSingleArrayWithParams:params title:nil block:nil];
}

- (NSDictionary *)method_7:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"执行UICollectionViewDataSource的@optional方法, cell已被点击取消选中的时候触发, 仅在UICollectionView是多选的时候",
            @"title": @"- (void)collectionView:(UICollectionView *)collectionView didDeselectItemAtIndexPath:(NSIndexPath *)indexPath;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectCollectionViewDelegate_optional_collectionView_didDeselectItemAtIndexPath:params],
            }
        },
    };
}

- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath {
//    NSLog(@"%@ indexPath:%@", NSStringFromSelector(_cmd), indexPath);
}

- (NSMutableArray *)TestProjectCollectionViewDelegate_optional_collectionView_didSelectItemAtIndexPath:(TestProjectTableViewParams *)params {
    return [self createModelSingleArrayWithParams:params title:nil block:nil];
}

- (NSDictionary *)method_6:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"执行UICollectionViewDataSource的@optional方法, cell已被点击选中的时候触发",
            @"title": @"- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectCollectionViewDelegate_optional_collectionView_didSelectItemAtIndexPath:params],
            }
        },
    };
}

- (BOOL)collectionView:(UICollectionView *)collectionView shouldDeselectItemAtIndexPath:(NSIndexPath *)indexPath {
    NSLog(@"%@ indexPath:%@", NSStringFromSelector(_cmd), indexPath);
    return YES;
}

- (NSMutableArray *)TestProjectCollectionViewDelegate_optional_collectionView_shouldDeselectItemAtIndexPath:(TestProjectTableViewParams *)params {
    return [self createModelSingleArrayWithParams:params title:nil block:nil];
}

- (NSDictionary *)method_5:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"执行UICollectionViewDataSource的@optional方法, cell将被点击取消选中的时候触发，暂不知道什么时候触发",
            @"title": @"- (BOOL)collectionView:(UICollectionView *)collectionView shouldDeselectItemAtIndexPath:(NSIndexPath *)indexPath;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectCollectionViewDelegate_optional_collectionView_shouldDeselectItemAtIndexPath:params],
            }
        },
    };
}

- (BOOL)collectionView:(UICollectionView *)collectionView shouldSelectItemAtIndexPath:(NSIndexPath *)indexPath {
//    NSLog(@"%@ indexPath:%@", NSStringFromSelector(_cmd), indexPath);
    return YES;
}

- (NSMutableArray *)TestProjectCollectionViewDelegate_optional_collectionView_shouldSelectItemAtIndexPath:(TestProjectTableViewParams *)params {
    return [self createModelSingleArrayWithParams:params title:nil block:nil];
}

- (NSDictionary *)method_4:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"执行UICollectionViewDataSource的@optional方法, cell将被点击选中的时候触发",
            @"title": @"- (BOOL)collectionView:(UICollectionView *)collectionView shouldSelectItemAtIndexPath:(NSIndexPath *)indexPath;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectCollectionViewDelegate_optional_collectionView_shouldSelectItemAtIndexPath:params],
            }
        },
    };
}

- (void)collectionView:(UICollectionView *)collectionView didUnhighlightItemAtIndexPath:(NSIndexPath *)indexPath {
//    NSLog(@"%@ indexPath:%@", NSStringFromSelector(_cmd), indexPath);
}

- (NSMutableArray *)TestProjectCollectionViewDelegate_optional_collectionView_didUnhighlightItemAtIndexPath:(TestProjectTableViewParams *)params {
    return [self createModelSingleArrayWithParams:params title:nil block:nil];
}

- (NSDictionary *)method_3:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"执行UICollectionViewDataSource的@optional方法, cell已取消点击高亮的时候触发",
            @"title": @"- (void)collectionView:(UICollectionView *)collectionView didUnhighlightItemAtIndexPath:(NSIndexPath *)indexPath;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectCollectionViewDelegate_optional_collectionView_didUnhighlightItemAtIndexPath:params],
            }
        },
    };
}

- (void)collectionView:(UICollectionView *)collectionView didHighlightItemAtIndexPath:(NSIndexPath *)indexPath {
//    NSLog(@"%@ indexPath:%@", NSStringFromSelector(_cmd), indexPath);
}

- (NSMutableArray *)TestProjectCollectionViewDelegate_optional_collectionView_didHighlightItemAtIndexPath:(TestProjectTableViewParams *)params {
    return [self createModelSingleArrayWithParams:params title:nil block:nil];
}

- (NSDictionary *)method_2:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"执行UICollectionViewDataSource的@optional方法, cell已经被点击高亮的时候触发",
            @"title": @"- (void)collectionView:(UICollectionView *)collectionView didHighlightItemAtIndexPath:(NSIndexPath *)indexPath;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectCollectionViewDelegate_optional_collectionView_didHighlightItemAtIndexPath:params],
            }
        },
    };
}

- (BOOL)collectionView:(UICollectionView *)collectionView shouldHighlightItemAtIndexPath:(NSIndexPath *)indexPath {
//    NSLog(@"%@ indexPath:%@", NSStringFromSelector(_cmd), indexPath);
    return YES;
}

- (NSMutableArray *)TestProjectCollectionViewDelegate_optional_collectionView_shouldHighlightItemAtIndexPath:(TestProjectTableViewParams *)params {
    return [self createModelSingleArrayWithParams:params title:nil block:nil];
}

- (NSDictionary *)method_1:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"执行UICollectionViewDataSource的@optional方法, cell将被点击高亮的时候触发",
            @"title": @"- (BOOL)collectionView:(UICollectionView *)collectionView shouldHighlightItemAtIndexPath:(NSIndexPath *)indexPath;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectCollectionViewDelegate_optional_collectionView_shouldHighlightItemAtIndexPath:params],
            }
        },
    };
}

@end
