//
//  TestProjectTableModel.h
//  TestProjectIOS
//
//  Created by zjrcumac on 2023/2/22.
//

#import <Foundation/Foundation.h>

#import "TestProjectViewModelProtocol.h"

NS_ASSUME_NONNULL_BEGIN

@interface TestProjectTableModel : NSObject <TestProjectViewModelProtocol> {
    CGFloat _titleHeight;
    CGFloat _descHeight;
}

@property (nonatomic, copy) NSString *title;
@property (nonatomic, copy) NSString *desc;
@property (nonatomic, copy) NSString *method;
@property (nonatomic, copy) NSString *viewKey;

- (void)calculDataViewHeight;

@end

NS_ASSUME_NONNULL_END
