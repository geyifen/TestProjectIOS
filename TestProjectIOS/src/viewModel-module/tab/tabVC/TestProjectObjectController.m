//
//  TestProjectObjectController.m
//  TestProjectIOS
//
//  Created by zjrcumac on 2023/2/8.
//

#import "TestProjectObjectController.h"

#import "TestProjectCategoryHeader.h"

@interface TestProjectObjectController ()

@property (nonatomic, strong) TestProjectTabViewModel *viewModel;

@end

@implementation TestProjectObjectController

- (instancetype)initWithTabViewModel:(TestProjectTabViewModel *)viewModel {
    if (self = [super init]) {
        self.viewModel = viewModel;
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    Class viewClass = NSClassFromString(self.viewModel.viewKey);
    UIView *view = [[viewClass alloc] init];
    [self.view addSubview:view];
    [view testproject_makeConstraints:^(TestProjectViewConstrainMake * _Nonnull make) {
        make.top.bottom.leading.trainling.equal(self.view);
    }];
//    if (self.viewModel.backgroundColor) {
//        self.view.backgroundColor = self.viewModel.backgroundColor;
//    }
}

@end
