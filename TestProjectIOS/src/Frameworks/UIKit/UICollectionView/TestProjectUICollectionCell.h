//
//  TestProjectUICollectionCell.h
//  TestProjectIOS
//
//  Created by liwenfan on 2023/7/26.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface TestProjectUICollectionCell : UICollectionViewCell

- (void)setTitle:(NSString *)title;

@end

@interface TestProjectUICollectionReusableView : UICollectionReusableView

- (void)setTitle:(NSString *)title;

@end

NS_ASSUME_NONNULL_END
