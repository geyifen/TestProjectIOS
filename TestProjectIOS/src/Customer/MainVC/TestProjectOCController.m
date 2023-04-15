//
//  TestProjectOCController.m
//  TestProjectIOS
//
//  Created by zjrcumac on 2023/2/22.
//

#import "TestProjectOCController.h"

#import "TestProjectNestScrollTabController.h"
#import "TestProjectGetUIKitMethod.h"
#import "TestProjectGetFoundationImplementationMethod.h"

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
    for (NSInteger j = 0; j < arr.count; j++) {
        NSDictionary *dic = arr[j];
        NSArray *allKeys = [dic allKeys];
        for (NSInteger i = 0; i < allKeys.count; i++) {
            NSString *key = allKeys[i];
            UIColor *color = j % 2 == 0 ? [UIColor redColor] : [UIColor blueColor];
            TestProjectViewModelTab *tabViewModel = [[TestProjectViewModelTab alloc] init];
            tabViewModel.tabType = tabType;
            tabViewModel.backgroundColor = color;
            [mutArr addObject:tabViewModel];
            tabViewModel.title = key;
            
            NSDictionary *dataDic = [dic objectForKey:key];
            NSArray *itemChilds = [dataDic objectForKey:@"itemChilds"];
            if (itemChilds && itemChilds.count > 0) {
                tabViewModel.itemChilds = [self converToModel:itemChilds tabType:TestProjectTab_AutoDivede];
            } else {
                NSString *viewKey = [dataDic objectForKey:@"viewKey"];
                tabViewModel.viewKey = viewKey;
            }
            tabViewModel.atIndex = [[dataDic objectForKey:@"atIndex"] integerValue];
        }
    }
    return mutArr;
}

- (NSArray *)project {
    return @[[self FrameWork]];
}

- (NSDictionary *)FrameWork {
    return @{@"Frameworks": @{
        @"itemChilds":@[
            [TestProjectGetUIKitMethod getImplementationProject],
            [TestProjectGetFoundationImplementationMethod getImplementationProject],
        ],
        @"atIndex": @0,
    }, };
}

@end
