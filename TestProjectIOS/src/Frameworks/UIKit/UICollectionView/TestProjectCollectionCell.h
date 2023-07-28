//
//  TestProjectCollectionCell.h
//  TestProjectIOS
//
//  Created by zjrcumac on 2023/7/26.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface TestProjectCollectionCell : UICollectionViewCell

- (void)setTitle:(NSString *)title;

@end

@interface TestProjectCollectionReusableView : UICollectionReusableView

- (void)setTitle:(NSString *)title;

@end

NS_ASSUME_NONNULL_END
