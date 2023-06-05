//
//  TestProjectViewModelTab.m
//  TestProjectIOS
//
//  Created by zjrcumac on 2023/1/29.
//

#import "TestProjectViewModelTab.h"

@implementation TestProjectViewModelTab

- (NSString *)viewIdentifier {
    return @"TestProjectSectionViewTab";
}

- (CGFloat)tabView:(TestProjectViewTab *)tabView leadingAtIndex:(NSInteger)atIndex {
    return 15;
}

- (CGFloat)tabView:(TestProjectViewTab *)tabView trailingAtIndex:(NSInteger)atIndex {
    return 15;
}

+ (NSDictionary *)modelContainerPropertyGenericClass{
    return @{@"itemChilds" : TestProjectViewModelTab.class};
}

@end
