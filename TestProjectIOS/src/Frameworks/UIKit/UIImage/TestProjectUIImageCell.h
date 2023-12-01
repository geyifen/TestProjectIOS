//
//  TestProjectUIImageCell.h
//  TestProjectIOS
//
//  Created by liwenfan on 2023/10/25.
//

#import "TestProjectBaseChildTableViewCell.h"

NS_ASSUME_NONNULL_BEGIN

@interface TestProjectUIImageModel : TestProjectTableViewModel

@property (nonatomic, strong) UIImage *image;

@end

@interface TestProjectUIImageCell : TestProjectBaseChildTableViewCell

@end

NS_ASSUME_NONNULL_END
