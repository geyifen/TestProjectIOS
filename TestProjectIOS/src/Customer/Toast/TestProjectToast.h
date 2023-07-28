//
//  TestProjectToast.h
//  TestProjectIOS
//
//  Created by zjrcumac on 2023/7/27.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

typedef NS_ENUM(NSInteger, TestProjectToastPosition) {
    //展示在view的顶部
    TestProjectToastPositionTop,
    //展示在view的中间，这是默认的选项
    TestProjectToastPositionCenter,
    //展示在view的底部
    TestProjectToastPositionBottom,
};

@interface TestProjectToast : UIView

//默认停留时长为2秒，在keyWindon上展示在中间
+ (void)showWithText:(NSString *)text;

+ (void)showWithText:(NSString *)text
      withParentView:( UIView * _Nullable)parentView;
/**
 @parma text 展示的文本
 @parma parentView 在哪个view上展示，nil默认是keyWindon
 @parma duration 展示的时间
 @parma position 展示的位置
 */
+ (void)showWithText:(NSString *)text
          parentView:(UIView *_Nullable)parentView
            duration:(NSTimeInterval)duration
            position:(TestProjectToastPosition)position;

@end

NS_ASSUME_NONNULL_END
