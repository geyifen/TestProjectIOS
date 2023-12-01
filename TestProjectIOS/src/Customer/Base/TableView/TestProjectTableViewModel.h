//
//  TestProjectTableViewModel.h
//  TestProjectIOS
//
//  Created by liwenfan on 2023/2/22.
//

#import <Foundation/Foundation.h>

#import "TestProjectCustomerHeader.h"
#import "TestProjectBaseModel.h"

typedef NS_ENUM(NSInteger, TestProjectJumpType) {
    TestProjectJumpTypeOfPresent = 0,
    TestProjectJumpTypeOfPush,
    TestProjectJumpTypeOfAlert,
    TestProjectJumpTypeOfSheet,
    TestProjectJumpTypeOfClick,
};
NS_ASSUME_NONNULL_BEGIN

@interface TestProjectTableViewModel : TestProjectBaseModel <TestProjectViewModelProtocol, NSCopying> {

@public
    CGFloat _titleHeight;
    CGFloat _descHeight;
    CGFloat _abstractHeight;
    CGFloat _dataViewHeight;
    NSMutableAttributedString *_titleAttr;
    NSMutableAttributedString *_descAttr;
    NSMutableAttributedString *_abstractAttr;
}

@property (nonatomic, copy) NSString *title;
@property (nonatomic, copy) NSString *desc;
@property (nonatomic, copy) NSString *abstract;
@property (nonatomic, assign) BOOL isDataModelExpand;
@property (nonatomic, assign) BOOL isTitleExpand;
@property (nonatomic, assign) BOOL isDescExpand;
@property (nonatomic, assign) BOOL isChild;
@property (nonatomic, strong) NSMutableArray *childItems;
@property (nonatomic, strong) id compareViewModel;
@property (nonatomic, copy) void(^clickBlock)(void);
@property (nonatomic, strong) NSMutableAttributedString *titleMutAttrStr;
@property (nonatomic, strong) NSMutableAttributedString *descMutAttrStr;

- (BOOL)needAutoCalculViewHeight;

- (void)calculDataViewHeight;

- (CGFloat)calculDataModelViewHeight;

@end

@interface TestProjectTableViewParams : NSObject

@property (nonatomic, assign) NSInteger selectIndex;
@property (nonatomic, assign) NSInteger methodIndex;

@end

NS_ASSUME_NONNULL_END
