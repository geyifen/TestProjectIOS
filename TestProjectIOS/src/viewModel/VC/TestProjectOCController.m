//
//  TestProjectOCController.m
//  TestProjectIOS
//
//  Created by zjrcumac on 2023/2/22.
//

#import "TestProjectOCController.h"

#import "TestProjectNestScrollTabController.h"

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
    [self addChildViewController:self.nestScrollTabVC];
    [self.view addSubview:self.nestScrollTabVC.view];
}

- (NSMutableArray *)converToModel:(NSArray *)arr tabType:(TestProjectTabType)tabType {
    NSMutableArray *mutArr = [NSMutableArray array];
    for (NSDictionary *dic in arr) {
        TestProjectTabViewModel *tabViewModel = [[TestProjectTabViewModel alloc] init];
        tabViewModel.tabType = tabType;
        NSArray *allKeys = [dic allKeys];
        [mutArr addObject:tabViewModel];
        for (NSString *key in allKeys) {
            id data = [dic objectForKey:key];
            tabViewModel.title = key;
            if ([data isKindOfClass:[NSArray class]]) {
                tabViewModel.childItems = [self converToModel:(NSArray *)data tabType:TestProjectTab_AutoDivede];
            } else {
                tabViewModel.viewKey = data;
            }
        }
    }
    return mutArr;
}

- (NSArray *)project {
    return @[@{
        @"Frameworks":@[@{
            @"UIKit": @[@{
                @"UIColor":@"TestProjectColor"
            },],
        },],
    },];
}

@end
