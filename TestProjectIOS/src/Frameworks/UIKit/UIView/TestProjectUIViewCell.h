//
//  TestProjectUIViewCell.h
//  TestProjectIOS
//
//  Created by zjrcumac on 2023/3/31.
//

#import "TestProjectTableViewCell.h"

NS_ASSUME_NONNULL_BEGIN

@interface TestProjectUIViewModel : TestProjectTableModel

@property (nonatomic, assign) CGFloat cellViewHeight;
@property (nonatomic, strong) id cellViewModel;

@end

@interface TestProjectUIViewCell : TestProjectTableViewCell

@end

NS_ASSUME_NONNULL_END
