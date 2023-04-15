//
//  TestProjectUIColorCell.h
//  TestProjectIOS
//
//  Created by 李文凡 on 2023/2/25.
//

#import "TestProjectBaseTableViewCell.h"

@interface TestProjectUIColorModel : TestProjectTableModel

@property (nonatomic, strong) UIColor *backgroundColor;
@property (nonatomic, assign) BOOL isSection;
@property (nonatomic, strong) UIColor *textColor;
@property (nonatomic) CGColorRef cgColor;

@end

NS_ASSUME_NONNULL_BEGIN

@interface TestProjectUIColorCell : TestProjectBaseTableViewCell

@end

NS_ASSUME_NONNULL_END
