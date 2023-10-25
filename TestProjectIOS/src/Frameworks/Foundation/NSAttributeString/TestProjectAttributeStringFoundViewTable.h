//
//  TestProjectAttributeStringFoundViewTable.h
//  TestProjectIOS
//
//  Created by liwenfan on 2023/3/3.
//

#import "TestProjectTableViewModel.h"

#import "TestProjectViewModelTableViewCell.h"
#import "TestProjectViewTable.h"

NS_ASSUME_NONNULL_BEGIN

@interface TestProjectAttributeStringFoundViewTable : TestProjectViewTable

@property (nonatomic, copy) NSString *firstAttrText;
@property (nonatomic, copy) NSString *secondAttrText;
@property (nonatomic, copy) NSString *thirdAttrText;
@property (nonatomic, copy) NSString *fourthAttrText;
@property (nonatomic, copy) NSString *fivthAttrText;
@property (nonatomic, copy) NSString *sixthAttrText;

- (TestProjectTableViewModel *)createAttrStrModel;

- (TestProjectTableViewModel *)createAttrStrModelWithAttributes:(NSDictionary *)keyValue;

- (TestProjectTableViewModel *)compareViewModel;

- (TestProjectTableViewModel *)createAttrStrModelWithNeedAdd:(BOOL)needAdd;

@end

NS_ASSUME_NONNULL_END
