//
//  TestProjectCollectionViewCustomLayout.h
//  TestProjectIOS
//
//  Created by zjrcumac on 2023/8/9.
//
#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@protocol TestProjectCollectionViewCustomLayoutDelegate <UICollectionViewDataSource>

@required
- (CGFloat)cellViewHeight:(NSIndexPath *)indexPath rect:(CGRect)rect;
- (NSInteger)numberInRow;

@optional
- (CGFloat)collectionViewWidth;
- (CGFloat)headerViewHeightInSection:(NSInteger)section rect:(CGRect)rect;
- (CGFloat)footerViewHeightInSection:(NSInteger)section rect:(CGRect)rect;

@end

@interface TestProjectCustomLayoutManager : NSObject

@property (nonatomic, strong) NSMutableArray *layoutAttrArray;
@property (nonatomic, assign) CGSize contentSize;

@property (nonatomic, weak) id<TestProjectCollectionViewCustomLayoutDelegate> delegate;

/** 重置所有的数据，重新计算layout数据  */
- (void)reloadAllData;
/**
 追加数据，从当前已经有的section后继续添加section数据
 如已经有了5个section数据，现在必须是添加第6个section的数据
 */
- (void)reloadAppendSectionData;
/**
 追加某个section的row数据
 如已经有了5个section数据，第4个section的有20个row数据，那追加的数据是从第21个数据开始计算追加
 */
- (void)reloadAppendRowDataInSection:(NSInteger)section;

@end

@interface TestProjectCollectionViewCustomLayout : UICollectionViewLayout

@property (nonatomic, strong) TestProjectCustomLayoutManager *layoutManager;

@end

@interface TestProjectCollectionViewCustomFlowLayout : UICollectionViewFlowLayout

@property (nonatomic, strong) TestProjectCustomLayoutManager *layoutManager;

@end

NS_ASSUME_NONNULL_END
