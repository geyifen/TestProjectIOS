//
//  TestProjectCustomModel.h
//  TestProjectIOS
//
//  Created by liwenfan on 2022/6/24.
//

#import <Foundation/Foundation.h>

#import "TestProjectModel.h"

NS_ASSUME_NONNULL_BEGIN

@interface TestProjectCustomGrandFaterModel : NSObject

@end

@interface TestProjectCustomGrandMotherModel : NSObject

@end

@interface TestProjectCustomFatherModel : TestProjectCustomGrandFaterModel

@end

@interface TestProjectCustomMotherModel : NSObject

@end

@interface TestProjectCustomMeModel : TestProjectCustomFatherModel

- (void)eating:(NSString *)eatThing;

@end

@interface TestProjectCustomWifeModel : NSObject

@end

@interface TestProjectCustomSonModel : TestProjectCustomMeModel

@end

@interface TestProjectCustomDaughterModel : NSObject

@end

NS_ASSUME_NONNULL_END
