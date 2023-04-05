//
//  TestProjectTableModel.h
//  TestProjectIOS
//
//  Created by zjrcumac on 2023/2/22.
//

#import <Foundation/Foundation.h>

#import "TestProjectCustomerHeader.h"

typedef NS_ENUM(NSInteger, TestProjectJumpType) {
    TestProjectJumpTypeOfPresent = 0,
    TestProjectJumpTypeOfPush,
    TestProjectJumpTypeOfAlert,
    TestProjectJumpTypeOfSheet,
    TestProjectJumpTypeOfClick,
};
NS_ASSUME_NONNULL_BEGIN

@interface TestProjectJumpModel : NSObject

@property (nonatomic, copy) NSString *jumpMethod;

@end

@interface TestProjectTableModel : NSObject <TestProjectViewModelProtocol> {

@public
    CGFloat _titleHeight;
    CGFloat _descHeight;
    NSMutableAttributedString *_titleAttr;
    NSMutableAttributedString *_descAttr;
}

@property (nonatomic, copy) NSString *title;
@property (nonatomic, strong) NSMutableAttributedString *titleMutAttrStr;
@property (nonatomic, copy) NSString *desc;
@property (nonatomic, strong) NSMutableAttributedString *descMutAttrStr;
@property (nonatomic, copy) NSString *method;
@property (nonatomic, copy) NSString *viewKey;
@property (nonatomic, copy) void(^clickBlock)(void);
@property (nonatomic, assign) TestProjectJumpType jumpType;
@property (nonatomic, strong) TestProjectJumpModel *jumpModel;

- (void)calculDataViewHeight;

@end

NS_ASSUME_NONNULL_END
