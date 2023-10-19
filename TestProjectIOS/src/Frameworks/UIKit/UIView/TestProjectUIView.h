//
//  TestProjectUIView.h
//  TestProjectIOS
//
//  Created by liwenfan on 2023/3/31.
//

#import "TestProjectViewController.h"

NS_ASSUME_NONNULL_BEGIN

@interface TestProjectUIChildView : UIView

@end

@interface TestProjectUIView : TestProjectViewController

@property (nonatomic, strong) TestProjectUIChildView *childView;
@property (nonatomic, strong) UILabel *grandChildView;

@end

NS_ASSUME_NONNULL_END
