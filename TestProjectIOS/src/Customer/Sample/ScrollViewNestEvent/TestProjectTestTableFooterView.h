//
//  TestProjectTestTableFooterView.h
//  TestProjectIOS
//
//  Created by zjrcumac on 2023/10/20.
//

#import <UIKit/UIKit.h>

#import "TestProjectCustomerHeader.h"

NS_ASSUME_NONNULL_BEGIN

@interface TestProjectTestTableFooterView : UIView

@property (nonatomic, strong) TestProjectScrollTabController *tabScrollController;

- (void)updateData;

@end

NS_ASSUME_NONNULL_END
