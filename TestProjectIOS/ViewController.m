//
//  ViewController.m
//  TestProjectIOS
//
//  Created by zjrcumac on 2022/4/19.
//

#import "ViewController.h"

#import "TestProjectUsrHeader.h"

@interface People : NSObject

@property (nonatomic, copy) NSString *name;

@end

@implementation People

@end

@interface ViewController () <UIDocumentInteractionControllerDelegate>

@property (nonatomic, strong) TestProjectDispatchData *dispatchData;

@property (nonatomic, copy) NSString *filePath;


@property (nonatomic, strong) TestProjectDispatchIO *dispatchIO;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
//    self.dispatchData = [[TestProjectDispatchData alloc] init];
//    [[TestProjectDispatchBlock alloc] init];
    
//    [[TestProjectDispatchGroup alloc] init];
//      self.dispatchIO = [[TestProjectDispatchIO alloc] init];
    [[TestProjectDispatchObject alloc] init];
    
//    UIButton *btn1 = [UIButton buttonWithType:UIButtonTypeCustom];
//    [btn1 setBackgroundColor:[UIColor redColor]];
//    btn1.frame = CGRectMake(0, 100, 100, 50);
//    [btn1 setTitle:@"点击" forState:UIControlStateNormal];
//    [btn1 addTarget:self action:@selector(clickEvent1) forControlEvents:UIControlEventTouchUpInside];
//    [self.view addSubview:btn1];
//    
//    UIButton *btn2 = [UIButton buttonWithType:UIButtonTypeCustom];
//    [btn2 setBackgroundColor:[UIColor blueColor]];
//    btn2.frame = CGRectMake(0, 200, 100, 50);
//    [btn2 setTitle:@"点击" forState:UIControlStateNormal];
//    [btn2 addTarget:self action:@selector(clickEvent2) forControlEvents:UIControlEventTouchUpInside];
//    [self.view addSubview:btn2];

//    [self test1];
//    self.filePath = [NSHomeDirectory() stringByAppendingPathComponent:@"Documents/file.txt"];
////    NSLog(@"%@", self.filePath);
//    NSFileManager *fileManager = [NSFileManager defaultManager];
//    if (![fileManager fileExistsAtPath:self.filePath]) {
//        [fileManager createFileAtPath:self.filePath contents:nil attributes:nil];
//    }
    
}

- (void)clickEvent1 {
//    [self.dispatchData mapData];
    [self.dispatchIO testRunWriteDispatchIO];
}

- (void)clickEvent2 {
    [self.dispatchIO testRunConcurrentReadDispatchIO];
}

//- (BOOL)documentInteractionController:(UIDocumentInteractionController *)controller canPerformAction:(SEL)action {
//    return YES;
//}
//
//- (BOOL)documentInteractionController:(UIDocumentInteractionController *)controller performAction:(SEL)action {
//    return YES;
//}

- (UIView *)documentInteractionControllerViewForPreview:(UIDocumentInteractionController *)controller {
    return self.view;
}

- (UIViewController *)documentInteractionControllerViewControllerForPreview:(UIDocumentInteractionController *)controller {
    return self;
}

- (CGRect)documentInteractionControllerRectForPreview:(UIDocumentInteractionController *)controller {
    return self.view.frame;
}

@end
