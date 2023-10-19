//
//  TestProjectToast.m
//  TestProjectIOS
//
//  Created by liwenfan on 2023/7/27.
//

#import "TestProjectToast.h"

#import "TestProjectCategoryHeader.h"

@interface TestProjectToast ()

@property (nonatomic, weak) UIView *parentView;

@property (nonatomic, strong) UILabel *titleLabel;
@property (nonatomic, strong) NSTimer *timer;

@end

@implementation TestProjectToast

- (instancetype)init {
    if (self = [super init]) {
        self.backgroundColor = [[UIColor blackColor] colorWithAlphaComponent:0.8];
        self.clipsToBounds = YES;
        self.layer.cornerRadius = 8;
    }
    return self;
}

- (void)dealloc {
    NSLog(@"TestProjectToast dealloc");
}

+ (void)showWithText:(NSString *)text {
    [self showWithText:text parentView:nil duration:0 position:TestProjectToastPositionCenter];
}

+ (void)showWithText:(NSString *)text withParentView:(UIView *)parentView {
    [self showWithText:text parentView:parentView duration:0 position:TestProjectToastPositionCenter];
}

+ (void)showWithText:(NSString *)text
          parentView:(UIView *)parentView
            duration:(NSTimeInterval)duration
            position:(TestProjectToastPosition)position {
    duration = duration > 0 ? duration : 2;
    parentView = parentView ? parentView : UIApplication.mainKeyWindon;
    TestProjectToast *toast = [[TestProjectToast alloc] init];
    toast.tag = UIWindowLevelAlert;
    toast.titleLabel.text = text;
    WO(wObjc, toast);
    dispatch_main_queue_work(
                             [parentView addSubview:toast];
                             [toast testproject_makeConstraints:^(TestProjectViewConstrainMake * _Nonnull make) {
                                 make.centerX.equal(parentView);
                                 make.width.greaterThanOrEqual(@100);
                                 make.height.greaterThanOrEqual(@40);
                                 make.leading.greaterThanOrEqual(parentView).offset(16);
                                 switch (position) {
                                     case TestProjectToastPositionTop: {
                                         make.top.equal(parentView);
                                     } break;
                                     case TestProjectToastPositionCenter: {
                                         make.centerY.equal(parentView);
                                     } break;
                                     case TestProjectToastPositionBottom: {
                                         make.bottom.equal(parentView);
                                     } break;
                                     default: {
                                         make.centerY.equal(parentView);
                                     } break;
                                 }
                             }];
                             );
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, duration * NSEC_PER_SEC), dispatch_get_main_queue(), ^{
        [wObjc removeFromSuperview];
    });
}

- (UILabel *)titleLabel {
    if (!_titleLabel) {
        _titleLabel = [[UILabel alloc] init];
        _titleLabel.textColor = [UIColor colorFromString:@"#CCCCCC"];
        _titleLabel.font = [UIFont systemFontOfSize:16];
        _titleLabel.numberOfLines = 0;
        _titleLabel.textAlignment = NSTextAlignmentCenter;
        [self addSubview:_titleLabel];
        [_titleLabel testproject_makeConstraints:^(TestProjectViewConstrainMake * _Nonnull make) {
            make.top.equal(self).offset(12);
            make.bottom.equal(self).offset(-12);
            make.leading.equal(self).offset(16);
            make.trainling.equal(self).offset(-16);
        }];
    }
    return _titleLabel;
}

@end
