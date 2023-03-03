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
            TestProjectTabViewModel *tabViewModel = [[TestProjectTabViewModel alloc] init];
            tabViewModel.tabType = tabType;
            tabViewModel.backgroundColor = color;
            [mutArr addObject:tabViewModel];
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
                @"CIColor":@[
                    @{@"CIColor":@"TestProjectCIColor"},
                    @{@"CIColor(UIKitAdditions)":@"TestProjectCIColorKitAdditions"},
                ],
                @"UIColor":@[
                    @{@"UIColor(TestProject)":@"TestProjectColorCategory"},
                    @{@"UIColor":@"TestProjectColor"},
                    @{@"UIColor(UIColorNamedColors)":@"TestProjectColorNamedColors"},
                    @{@"UIColor(DynamicColors)":@"TestProjectColorDynamicdColors"},
                ],
            },],
        },],
    },];
}

@end
