//
//  TestProjectTestNibVC.m
//  TestProjectIOS
//
//  Created by liwenfan on 2023/4/6.
//

#import "TestProjectTestNibVC.h"

@interface TestProjectTestNibVC ()

@end

@implementation TestProjectTestNibVC

- (NSString *)title {
    return @"TestProjectTestNibVC";
}

- (void)awakeFromNib {
    [super awakeFromNib];
    NSLog(@"TestProjectTestNibVC %@", NSStringFromSelector(_cmd));
    NSLog(@"parentViewController:%@", self.parentViewController);
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    NSLog(@"TestProjectTestNibVC %@", NSStringFromSelector(_cmd));
}

- (void)viewWillDisappear:(BOOL)animated {
    [super viewWillDisappear:animated];
    NSLog(@"TestProjectTestNibVC %@", NSStringFromSelector(_cmd));
}

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
    NSLog(@"TestProjectTestNibVC %@", NSStringFromSelector(_cmd));
}

- (void)viewDidDisappear:(BOOL)animated {
    [super viewDidDisappear:animated];
    NSLog(@"TestProjectTestNibVC %@", NSStringFromSelector(_cmd));
}

- (void)viewWillLayoutSubviews {
    [super viewWillLayoutSubviews];
    NSLog(@"TestProjectTestNibVC %@", NSStringFromSelector(_cmd));
}

- (void)viewDidLayoutSubviews {
    [super viewDidLayoutSubviews];
    NSLog(@"TestProjectTestNibVC %@", NSStringFromSelector(_cmd));
}

- (void)viewLayoutMarginsDidChange {
    [super viewLayoutMarginsDidChange];
    NSLog(@"TestProjectTestNibVC %@", NSStringFromSelector(_cmd));
}

//- (BOOL)viewRespectsSystemMinimumLayoutMargins {
//    NSLog(@"TestProjectTestNibVC %@", NSStringFromSelector(_cmd));
//    return [super viewRespectsSystemMinimumLayoutMargins];
//}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    NSLog(@"TestProjectTestNibVC %@", NSStringFromSelector(_cmd));
    NSLog(@"parentViewController:%@", self.parentViewController);

}

@end
