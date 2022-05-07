//
//  ViewController.m
//  TestProjectIOS
//
//  Created by zjrcumac on 2022/4/19.
//

#import "ViewController.h"

#import "TestProjectUsrHeader.h"

@interface ViewController ()

@property (nonatomic, strong) TestProjectDispatchData *dispatchData;
@property (nonatomic, strong) TestProjectDispatchOnce *dispatchOnce1;
@property (nonatomic, strong) TestProjectDispatchOnce *dispatchOnce2;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    {
//    self.dispatchData = [[TestProjectDispatchData alloc] init];
//    [[TestProjectDispatchBlock alloc] init];
//    [[TestProjectDispatchGroup alloc] init];
//    self.dispatchIO = [[TestProjectDispatchIO alloc] init];
//    [[TestProjectDispatchObject alloc] init];
    [self testDispatchOnce1];
    }
    {
    UIButton *btn1 = [UIButton buttonWithType:UIButtonTypeCustom];
    [btn1 setBackgroundColor:[UIColor redColor]];
    btn1.frame = CGRectMake(0, 100, 100, 50);
    [btn1 setTitle:@"点击" forState:UIControlStateNormal];
    [btn1 addTarget:self action:@selector(clickEvent1) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn1];

//    UIButton *btn2 = [UIButton buttonWithType:UIButtonTypeCustom];
//    [btn2 setBackgroundColor:[UIColor blueColor]];
//    btn2.frame = CGRectMake(0, 200, 100, 50);
//    [btn2 setTitle:@"点击" forState:UIControlStateNormal];
//    [btn2 addTarget:self action:@selector(clickEvent2) forControlEvents:UIControlEventTouchUpInside];
//    [self.view addSubview:btn2];
    }
}

- (void)clickEvent1 {
    {
//    [self.dispatchData mapData];
//    [self.dispatchIO testRunWriteDispatchIO];
    [self testDispatchOnce2];
    }
}

- (void)clickEvent2 {
//    [self.dispatchIO testRunConcurrentReadDispatchIO];
}

- (void)testDispatchOnce1 {
    self.dispatchOnce1 = [TestProjectDispatchOnce sharedInstanced];
    NSLog(@"置为nil前的dispatchOnce1:%@", self.dispatchOnce1);
    self.dispatchOnce2 = [TestProjectDispatchOnce sharedInstanced];
    NSLog(@"置为nil前的dispatchOnce2:%@", self.dispatchOnce2);
    [self.dispatchOnce2 setNilForSharedInstanced];
    NSLog(@"置为nil后的dispatchOnce1:%@", self.dispatchOnce1);
    NSLog(@"置为nil后的dispatchOnce2:%@", self.dispatchOnce2);
}

- (void)testDispatchOnce2 {
    TestProjectDispatchOnce *tempDispatchOnce = [TestProjectDispatchOnce sharedInstanced];
    NSLog(@"点击后的dispatchOnce1:%@", self.dispatchOnce1);
    NSLog(@"点击后的dispatchOnce2:%@", self.dispatchOnce2);
    NSLog(@"点击后的tempDispatchOnce:%@", tempDispatchOnce);
}

@end
