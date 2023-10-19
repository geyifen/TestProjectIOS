//
//  TestProjectAModel.m
//  TestProjectIOS
//
//  Created by liwenfan on 2022/8/30.
//

#import "TestProjectAModel.h"

@implementation TestProjectGrandFaterModel (TestProjectA)

//+ (void)load {
//    NSLog(@"+load TestProjectA TestProjectGrandFaterModel");
//}

//+ (void)initialize {
//    NSLog(@"+initialize TestProjectA TestProjectGrandFaterModel");
//}

//- (instancetype)init {
//    if (self = [super init]) {
//        NSLog(@"-init TestProjectA TestProjectGrandFaterModel");
//    }
//    return self;
//}

@end

@implementation TestProjectGrandMotherModel (TestProjectA)

//+ (void)load {
//    NSLog(@"+load TestProjectA TestProjectGrandMotherModel");
//}

//+ (void)initialize {
//    NSLog(@"+initialize TestProjectA TestProjectGrandMotherModel");
//}

//- (instancetype)init {
//    if (self = [super init]) {
//        NSLog(@"-init TestProjectA TestProjectGrandMotherModel");
//    }
//    return self;
//}

@end

@interface TestProjectFatherModel (TestProjectA) 

@end

@implementation TestProjectFatherModel (TestProjectA)

//+ (void)load {
//    NSLog(@"+load TestProjectA TestProjectFatherModel");
//}

//+ (void)initialize {
//    NSLog(@"+initialize TestProjectA TestProjectFatherModel");
//}

//- (instancetype)init {
//    if (self = [super init]) {
//        NSLog(@"-init TestProjectA TestProjectFatherModel");
//    }
//    return self;
//}

@end

@implementation TestProjectMotherModel (TestProjectA)

//+ (void)load {
//    NSLog(@"+load TestProjectA TestProjectMotherModel");
//}

//+ (void)initialize {
//    NSLog(@"+initialize TestProjectA TestProjectMotherModel");
//}

//- (instancetype)init {
//    if (self = [super init]) {
//        NSLog(@"-init TestProjectA TestProjectMotherModel");
//    }
//    return self;
//}

@end

@interface TestProjectMeModel (TestProjectA)

@end

@implementation TestProjectMeModel (TestProjectA)

//+ (void)load {
//    NSLog(@"+load TestProjectA TestProjectMeModel");
//}

//+ (void)initialize {
//    NSLog(@"+initialize TestProjectA TestProjectMeModel");
//}

//- (instancetype)init {
//    if (self = [super init]) {
//        NSLog(@"-init TestProjectA TestProjectMeModel");
//    }
//    return self;
//}

+ (void)say {
    NSLog(@"+say TestProjectA TestProjectMeModel");
}

- (void)subtractTestProjectPortocol {
    NSLog(@"-subtractTestProjectPortocol TestProjectA TestProjectMeModel");
}

+ (void)addTestProjectProtocol {
    NSLog(@"+addTestProjectProtocol TestProjectA TestProjectMeModel");
}


@end

@implementation TestProjectWifeModel (TestProjectA)

//+ (void)load {
//    NSLog(@"+load TestProjectA TestProjectWifeModel");
//}

//+ (void)initialize {
//    NSLog(@"+initialize TestProjectA TestProjectWifeModel");
//}

//- (instancetype)init {
//    if (self = [super init]) {
//        NSLog(@"-init TestProjectA TestProjectWifeModel");
//    }
//    return self;
//}

@end

@implementation TestProjectSonModel (TestProjectA)

//+ (void)load {
//    NSLog(@"+load TestProjectA TestProjectSonModel");
//}

//+ (void)initialize {
//    NSLog(@"+initialize TestProjectA TestProjectSonModel");
//}

//- (instancetype)init {
//    if (self = [super init]) {
//        NSLog(@"-init TestProjectA TestProjectSonModel");
//    }
//    return self;
//}

- (void)setMeModelInfo {
    self.meName = @"this is me";
//    _meName = @"this is me";
    _wifeName = @"wo shi wifeName";
//    _motherName = @"wo shi motherName";
    _daughterName = @"wo shi daugtherName";
    _fatherName = @"wo shi fatherName";
//    _grandFatherName = @"wo shi grandFatherName";
//    _grandMotherName = @"wo shi grandMotherName";
//    _sonName = @"wo shi son name";
//    _wifeAge = 25;
//    _grandFatherAge = 90;
//    _grandMotherAge = 80;
//    _sonAge = 4;
//    _motherAge = 55;
//    _fatherAge = 50;
//    _daughterAge = 2;
}

@end

@implementation TestProjectDaughterModel (TestProjectA)

//+ (void)load {
//    NSLog(@"+load TestProjectA TestProjectDaughterModel");
//}

//+ (void)initialize {
//    NSLog(@"+initialize TestProjectA TestProjectDaughterModel");
//}

//- (instancetype)init {
//    if (self = [super init]) {
//        NSLog(@"-init TestProjectA TestProjectDaughterModel");
//    }
//    return self;
//}

@end

@implementation TestProjectExtraFatherModel

//+ (void)load {
//    NSLog(@"+load TestProjectA TestProjectA TestProjectExtraFatherModel");
//}

//+ (void)initialize {
//    NSLog(@"+initialize TestProjectA TestProjectExtraFatherModel");
//}

//- (instancetype)init {
//    if (self = [super init]) {
//        NSLog(@"-init TestProjectA TestProjectExtraFatherModel");
//    }
//    return self;
//}

@end

@implementation TestProjectYMeModel (TestProjectA)

//+ (void)load {
//    NSLog(@"+load TestProjectA TestProjectYMeModel");
//}

//+ (void)initialize {
//    NSLog(@"+initialize TestProjectA TestProjectYMeModel");
//}

//- (instancetype)init {
//    if (self = [super init]) {
//        NSLog(@"-init TestProjectA TestProjectYMeModel");
//    }
//    return self;
//}

@end
