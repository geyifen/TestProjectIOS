//
//  TestProjectObjectController.m
//  TestProjectIOS
//
//  Created by liwenfan on 2023/2/8.
//

#import "TestProjectObjectController.h"

#import "TestProjectSectionViewTab.h"
#import "TestProjectCategoryHeader.h"

@interface TestProjectObjectController () <TestProjectPreviewProtocol>

@property (nonatomic, strong) TestProjectViewModelTab *viewModel;
@property (nonatomic, strong) UIView *childView;

@end

@implementation TestProjectObjectController

- (instancetype)initWithTabViewModel:(TestProjectViewModelTab *)viewModel {
    if (self = [super init]) {
        self.viewModel = viewModel;
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    Class viewClass = NSClassFromString(self.viewModel.viewKey);
    self.childView = [[viewClass alloc] init];
    [self.view addSubview:self.childView];
    [self.childView testproject_makeConstraints:^(TestProjectViewConstrainMake * _Nonnull make) {
        make.top.bottom.leading.trainling.equal(self.view);
    }];
}

#pragma mark - TestProjectPreviewProtocol
- (TestProjectPreviewState)optionPreviewForExpand:(id<TestProjectPreviewProtocol>)previewTarget {
    if ([self.childView respondsToSelector:@selector(optionPreviewForExpand:)]) {
        return [((UIView<TestProjectPreviewProtocol> *)self.childView) optionPreviewForExpand:previewTarget];
    }
    return TestProjectPreviewStateOfAnimated;
}

@end
