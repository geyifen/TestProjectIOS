//
//  TestProjectAModel.h
//  TestProjectIOS
//
//  Created by liwenfan on 2022/8/30.
//

#import <Foundation/Foundation.h>
#import "TestProjectModel.h"
#import "TestProjectYModel.h"

NS_ASSUME_NONNULL_BEGIN

@protocol TestProjectAProtocol <NSObject>

@end

@interface TestProjectGrandFaterModel (TestProjectA)

@end

@interface TestProjectGrandMotherModel (TestProjectA)

@end

@interface TestProjectFatherModel (TestProjectA)

@end

@interface TestProjectMotherModel (TestProjectA)

@property (nonatomic, copy) NSString *testAName;

@end

@interface TestProjectMeModel (TestProjectA) <TestProjectAProtocol>

- (void)subtractTestProjectMeModelForTestProjectA;
+ (void)addTestProjectMeModelForTestProjectA;

@end

@interface TestProjectWifeModel (TestProjectA)

@end

@interface TestProjectSonModel (TestProjectA)

@end

@interface TestProjectDaughterModel (TestProjectA)

//@property (nonatomic, copy) NSString *birthDay10000;

@end

@interface TestProjectExtraFatherModel : TestProjectExtraGrandFatherModel

@end

@interface TestProjectYMeModel (TestProjectA)

@end

NS_ASSUME_NONNULL_END
