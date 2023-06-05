//
//  TestProjectAttributeStringFoundationCell.h
//  TestProjectIOS
//
//  Created by zjrcumac on 2023/3/3.
//

#import "TestProjectTableModel.h"

#import "TestProjectBaseTableViewTableCell.h"
#import "TestProjectViewTable.h"

NS_ASSUME_NONNULL_BEGIN

@interface TestProjectAttributeStringFoundationModel : TestProjectTableModel

@end

@interface TestProjectAttributeStringFoundationCell : TestProjectBaseTableViewTableCell

@end

@interface TestProjectAttributeStringFoundViewTable : TestProjectViewTable

@property (nonatomic, copy) NSString *firstAttrText;
@property (nonatomic, copy) NSString *secondAttrText;
@property (nonatomic, copy) NSString *thirdAttrText;
@property (nonatomic, copy) NSString *fourthAttrText;
@property (nonatomic, copy) NSString *fivthAttrText;
@property (nonatomic, copy) NSString *sixthAttrText;

- (TestProjectAttributeStringFoundationModel *)createAttrStrModel;

- (TestProjectAttributeStringFoundationModel *)createAttrStrModelWithAttributes:(NSDictionary *)keyValue;

- (TestProjectAttributeStringFoundationModel *)compareViewModel;

- (TestProjectAttributeStringFoundationModel *)createAttrStrModelWithNeedAdd:(BOOL)needAdd;

@end

NS_ASSUME_NONNULL_END
