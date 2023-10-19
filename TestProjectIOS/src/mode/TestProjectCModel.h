//
//  TestProjectCModel.h
//  TestProjectIOS
//
//  Created by liwenfan on 2022/8/30.
//

#import <Foundation/Foundation.h>
#import "TestProjectModel.h"
#import "TestProjectBModel.h"
#import "TestProjectUModel.h"

NS_ASSUME_NONNULL_BEGIN

@interface TestProjectGrandFaterModel (TestProjectA)

@end

@interface TestProjectGrandMotherModel (TestProjectA)

@end

@interface TestProjectFatherModel (TestProjectA)

@end

@interface TestProjectMotherModel (TestProjectA)

@end

@interface TestProjectMeModel (TestProjectA)

@end

@interface TestProjectWifeModel (TestProjectA)

@end

@interface TestProjectSonModel (TestProjectA)

@end

@interface TestProjectDaughterModel (TestProjectA)

@end

@interface TestProjectExtraSonModel : TestProjectExtraMeModel

@end

@interface TestProjectUGrandFatherModel (TestProjectA)

@end

NS_ASSUME_NONNULL_END
