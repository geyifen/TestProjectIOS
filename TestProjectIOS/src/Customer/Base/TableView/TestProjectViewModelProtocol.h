//
//  TestProjectViewModelProtcol.h
//  TestProjectIOS
//
//  Created by liwenfan on 2023/1/29.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@protocol TestProjectViewModelProtocol <NSObject>

- (NSString *)viewIdentifier;

@optional
- (CGFloat)viewHeight;
- (NSString *)viewClassName;

@end

@protocol TestProjectViewProtocol <NSObject>

@property (nonatomic, strong) id viewModel;

@optional
@property (nonatomic, weak) id delegate;

@end

@protocol TestProjectCreateViewProtocol <TestProjectViewProtocol>

+ (UIView<TestProjectCreateViewProtocol> *)initCreateByViewModel;

@end

NS_ASSUME_NONNULL_END
