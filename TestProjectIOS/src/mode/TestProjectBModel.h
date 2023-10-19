//
//  TestProjectBModel.h
//  TestProjectIOS
//
//  Created by liwenfan on 2022/8/30.
//

#import <Foundation/Foundation.h>
#import "TestProjectModel.h"
#import "TestProjectAModel.h"
#import "TestProjectZModel.h"

NS_ASSUME_NONNULL_BEGIN

@interface TestProjectGrandFaterModel (TestProjectB)

@end

@interface TestProjectGrandMotherModel (TestProjectB)

@end

@interface TestProjectFatherModel (TestProjectB)

@end

@interface TestProjectMotherModel (TestProjectB)

@end

@interface TestProjectMeModel (TestProjectB)

@end

@interface TestProjectWifeModel (TestProjectB)

@end

@interface TestProjectSonModel (TestProjectB)

@end

@interface TestProjectDaughterModel (TestProjectB)

@end

@interface TestProjectGrandFaterModel (TestProjectA_B)

@end

@interface TestProjectGrandMotherModel (TestProjectA_B)

@end

@interface TestProjectFatherModel (TestProjectA_B)

@end

@interface TestProjectMotherModel (TestProjectA_B)

@end

@interface TestProjectMeModel (TestProjectA_B)

@end

@interface TestProjectWifeModel (TestProjectA_B)

@end

@interface TestProjectSonModel (TestProjectA_B)

@end

@interface TestProjectDaughterModel (TestProjectA_B)

@end

@interface TestProjectExtraMeModel : TestProjectExtraFatherModel

@end

@interface TestProjectZFatherModel (TestProjectB)

@end

NS_ASSUME_NONNULL_END
