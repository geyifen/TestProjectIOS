//
//  TestProjectAttributeStringKitCell.h
//  TestProjectIOS
//
//  Created by zjrcumac on 2023/3/3.
//

#import "TestProjectTableViewCell.h"

@interface TestProjectAttributeStringKitModel : TestProjectTableModel

@property (nonatomic, copy) NSMutableAttributedString *mutAttrString;

@end


NS_ASSUME_NONNULL_BEGIN

@interface TestProjectAttributeStringKitCell : TestProjectTableViewCell

@end

NS_ASSUME_NONNULL_END
