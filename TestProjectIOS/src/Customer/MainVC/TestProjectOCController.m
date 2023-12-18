//
//  TestProjectOCController.m
//  TestProjectIOS
//
//  Created by liwenfan on 2023/2/22.
//

#import "TestProjectOCController.h"

#import "TestProjectNestScrollTabController.h"
#import "TestProjectGetUIKitMethod.h"
#import "TestProjectGetFoundationMethod.h"
#import "TestProjectGetCoreGraphicsMethod.h"
#import "TestProjectGetPhotosUIMethod.h"

#import <YYModel/YYModel.h>

@interface TestProjectOCController ()

@property (nonatomic, strong) TestProjectNestScrollTabController *nestScrollTabVC;

@end

@implementation TestProjectOCController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    NSArray *project = [self project];
    NSMutableArray *mutArr = [self converToModel:project tabType:TestProjectTab_AutoDivede];
    self.nestScrollTabVC = [[TestProjectNestScrollTabController alloc] initWithTabType:TestProjectTab_EqualDivede viewModelList:mutArr];
    self.nestScrollTabVC.pageTitle = @"Framework";
    [self addChildViewController:self.nestScrollTabVC];
    [self.view addSubview:self.nestScrollTabVC.view];
}

- (NSMutableArray *)converToModel:(NSArray *)arr tabType:(TestProjectTabType)tabType {
    NSMutableArray *mutArr = [NSMutableArray array];
    for (NSInteger i = 0; i < arr.count; i++) {
        NSDictionary *dic = arr[i];
        TestProjectViewModelTab *tabViewModel = [TestProjectViewModelTab yy_modelWithDictionary:dic];
        tabViewModel.tabType = tabType;
        [mutArr addObject:tabViewModel];
    }
    return mutArr;
}

- (NSArray *)project {
    return @[[self FrameWork]];
}

- (NSDictionary *)FrameWork {
    return @{
        @"title": @"Frameworks",
        @"atIndex": @0,
        @"itemChilds": @[
            [TestProjectGetUIKitMethod getImplementationProject],
            [TestProjectGetFoundationMethod getImplementationProject],
            [TestProjectGetCoreGraphicsMethod getImplementationProject],
            [TestProjectGetPhotosUIMethod getImplementationProject],
        ]
    };
}

@end
