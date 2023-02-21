//
//  TestProjectTabViewModel.m
//  TestProjectIOS
//
//  Created by zjrcumac on 2023/1/29.
//

#import "TestProjectTabViewModel.h"

@implementation TestProjectTabViewModel

- (NSString *)viewIdentifier {
    return @"TestProjectTabSectionView";
}

- (CGFloat)tabView:(TestProjectTabView *)tabView leadingAtIndex:(NSInteger)atIndex {
    return 15;
}

- (CGFloat)tabView:(TestProjectTabView *)tabView trailingAtIndex:(NSInteger)atIndex {
    return 15;
}

@end
