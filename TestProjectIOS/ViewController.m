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

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
//    self.dispatchData = [[TestProjectDispatchData alloc] init];
//    [[TestProjectDispatchBlock alloc] init];
    
//    [[TestProjectDispatchGroup alloc] init];
    [[TestProjectDispatchIO alloc] init];
//    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
//    [btn setBackgroundColor:[UIColor redColor]];
//    btn.frame = CGRectMake(0, 100, 100, 50);
//    [btn setTitle:@"点击" forState:UIControlStateNormal];
//    [btn addTarget:self action:@selector(clickEvent) forControlEvents:UIControlEventTouchUpInside];
//    [self.view addSubview:btn];
}

- (void)clickEvent {
    [self.dispatchData mapData];
}

@end
