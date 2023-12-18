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

@interface TestProjectTableViewParams : NSObject

@property (nonatomic, assign) NSInteger selectIndex;
@property (nonatomic, assign) NSInteger methodIndex;
@property (nonatomic, copy) NSString *methodPrefix;

@end

@interface TestProjectMethodModel : NSObject

@property (nonatomic, strong) TestProjectTableViewParams *params;
@property (nonatomic, copy) NSDictionary *dataDic;

@end

@interface TestProjectTableViewModel : TestProjectBaseModel <TestProjectViewModelProtocol, NSCopying> {

@public
    CGFloat _titleHeight;
    CGFloat _descHeight;
    CGFloat _abstractHeight;
    CGFloat _dataViewHeight;
    NSMutableAttributedString *_titleAttr;
    NSMutableAttributedString *_descAttr;
    NSMutableAttributedString *_abstractAttr;
    CGFloat _customerViewHeight;
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

@property (nonatomic, assign) NSInteger atIndex;

- (BOOL)needAutoCalculViewHeight;

- (void)calculDataViewHeight:(TestProjectTableViewParams *__nullable)params;

- (CGFloat)calculDataModelViewHeight;

- (CGFloat)calculCustomerViewHeight:(TestProjectTableViewParams *__nullable)params;

@end

NS_ASSUME_NONNULL_END
