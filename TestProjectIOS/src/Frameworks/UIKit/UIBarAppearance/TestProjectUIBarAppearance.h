//
//  TestProjectUIBarAppearance.h
//  TestProjectIOS
//
//  Created by liwenfan on 2023/4/12.
//

#import "TestProjectUIViewController.h"

NS_ASSUME_NONNULL_BEGIN

@interface TestProjectUIBarAppearance : TestProjectUIViewController

@property (nonatomic, strong) UINavigationBarAppearance *barApperance;

- (void)setConfigAppear;

@end

NS_ASSUME_NONNULL_END
