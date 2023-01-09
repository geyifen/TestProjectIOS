//
//  TestProjectModel.m
//  TestProjectIOS
//
//  Created by zjrcumac on 2022/6/13.
//

#import "TestProjectModel.h"

#import <objc/runtime.h>

@protocol TestProjectImplementationProtocol <NSObject>

@end

@implementation TestProjectGrandFaterModel

//+ (void)load {
//    NSLog(@"+load 原类 TestProjectGrandFaterModel");
//}

//+ (void)initialize {
//    NSLog(@"+initialize 原类 TestProjectGrandFaterModel");
//}

//- (instancetype)init {
//    if (self = [super init]) {
//        NSLog(@"-init 原类 TestProjectGrandFaterModel");
//    }
//    return self;
//}

//- (instancetype)init {
//    NSLog(@"-init 原类 NO super TestProjectGrandFaterModel");
//    return self;
//}

@end

@implementation TestProjectGrandMotherModel

//+ (void)load {
//    NSLog(@"+load 原类 TestProjectGrandMotherModel");
//}

//+ (void)initialize {
//    NSLog(@"+initialize 原类 TestProjectGrandMotherModel");
//}

//- (instancetype)init {
//    if (self = [super init]) {
//        NSLog(@"-init 原类 TestProjectGrandMotherModel");
//    }
//    return self;
//}

- (instancetype)init {
    NSLog(@"-init 原类 NO super TestProjectGrandMotherModel");
    return self;
}

@end

@implementation TestProjectFatherModel

//+ (void)load {
//    NSLog(@"+load 原类 TestProjectFatherModel");
//}

//+ (void)initialize {
//    NSLog(@"+initialize 原类 TestProjectFatherModel");
//}

//- (instancetype)init {
//    if (self = [super init]) {
//        NSLog(@"-init 原类 TestProjectFatherModel");
//    }
//    return self;
//}

//- (instancetype)init {
//    NSLog(@"-init 原类 NO super TestProjectFatherModel");
//    return self;
//}

- (void)subtractTestProjectPortocol {
    NSLog(@"-subtractTestProjectPortocol 原类 TestProjectFatherModel");
}

+ (void)addTestProjectProtocol {
    NSLog(@"+addTestProjectProtocol 原类 TestProjectFatherModel");
}

@end

@implementation TestProjectMotherModel

//+ (void)load {
//    NSLog(@"+load 原类 TestProjectMotherModel");
//}

//+ (void)initialize {
//    NSLog(@"+initialize 原类 TestProjectMotherModel");
//}

//- (instancetype)init {
//    if (self = [super init]) {
//        NSLog(@"-init 原类 TestProjectMotherModel");
//    }
//    return self;
//}

- (instancetype)init {
    NSLog(@"-init 原类 NO super TestProjectMotherModel");
    return self;
}

@end

@interface TestProjectMeModel () <TestProjectImplementationProtocol> {
//  默认是私有的，不可以在其它地方被调用
    NSInteger _wifeAge;
@private
//  私有的，不可以在其它地方被调用
    NSInteger _grandMotherAge;
@public
//  只可以在同一个.m文件下才能被调用, 和父类在同一个.m文件里的子类.m文件中可以调用
    NSInteger _grandFatherAge;
@protected
//  被保护的，不可以在其它地方被调用, 和父类在同一个.m文件里的子类.m文件中可以调用
    NSInteger _sonAge;
}

//  默认是私有的，不可以在其它地方被调用
@property (nonatomic, assign) NSInteger motherAge;
@property (nonatomic, assign) NSInteger fatherAge;
@property (nonatomic, assign) NSInteger daughterAge;

@end

@implementation TestProjectMeModel {
@private
//  私有的，不可以在其它地方被调用
    NSString *_grandMotherName;
@public
//  只可以在同一个.m文件下才能被调用, 和父类在同一个.m文件里的子类.m文件中可以调用
    NSString *_grandFatherName;
//    NSString *addPropertyName;
@protected
//  被保护的，不可以在其它地方被调用, 和父类在同一个.m文件里的子类.m文件中可以调用
    NSString *_sonName;
}

- (void)setAddPropertyName:(NSString *)addPropertyName {
//    Ivar ivar = class_getInstanceVariable(TestProjectMeModel.class, "addPropertyName");
//    object_setIvar(self, ivar, addPropertyName);
    objc_setAssociatedObject(self, "addPropertyName", addPropertyName, OBJC_ASSOCIATION_COPY);
}

- (NSString *)addPropertyName {
//    Ivar ivar = class_getInstanceVariable(self.class, "_addPropertyName");
//    return object_getIvar(self, ivar);
    return objc_getAssociatedObject(self, "addPropertyName");
}

- (void)setMeModelInfo {
    _meName = @"this is me";
    _wifeName = @"wo shi wifeName";
    _motherName = @"wo shi motherName";
    _daughterName = @"wo shi daugtherName";
    _fatherName = @"wo shi fatherName";
    _grandFatherName = @"wo shi grandFatherName";
    _grandMotherName = @"wo shi grandMotherName";
    _sonName = @"wo shi son name";
    _wifeAge = 25;
    _grandFatherAge = 90;
    _grandMotherAge = 80;
    _sonAge = 4;
    _motherAge = 55;
    _fatherAge = 50;
    _daughterAge = 2;
}

- (void)getMeModelInfo {
    NSLog(@"%@", _meName);
    NSLog(@"%@", _wifeName);
    NSLog(@"%@", _motherName);
    NSLog(@"%@", _daughterName);
    NSLog(@"%@", _fatherName);
    NSLog(@"%@", _grandFatherName);
    NSLog(@"%@", _grandMotherName);
    NSLog(@"%@", _sonName);
    NSLog(@"_wifeAge %ld", _wifeAge);
    NSLog(@"_grandFatherAge %ld", _grandFatherAge);
    NSLog(@"_grandMotherAge %ld", _grandMotherAge);
    NSLog(@"_sonAge %ld", _sonAge);
    NSLog(@"_motherAge %ld", _motherAge);
    NSLog(@"_fatherAge %ld", _fatherAge);
    NSLog(@"_daughterAge %ld", _daughterAge);
}

+ (void)load {
    NSLog(@"+load 原类 TestProjectMeModel");
}

+ (void)initialize {
    NSLog(@"+initialize 原类 TestProjectMeModel");
}

- (instancetype)init {
    if (self = [super init]) {
        NSLog(@"-init 原类 TestProjectMeModel");
    }
    return self;
}

//- (void)write:(NSString *)writeThing listen:(NSString *)listenThing smell:(NSString *)smellThing {
//    NSLog(@"write:%@ listen:%@ smell:%@", writeThing, listenThing, smellThing);
//}

- (void)write:(NSString *)writeThing listen:(NSString *)listenThing smell:(NSString *)smellThing seeing:(NSString *)seeThing {
    NSLog(@"write:%@ listen:%@ smell:%@ seeing:%@", writeThing, listenThing, smellThing, seeThing);
}

+ (void)write:(NSString *)writeThing listen:(NSString *)listenThing smell:(NSString *)smellThing {
    NSLog(@"write:%@ listen:%@ smell:%@", writeThing, listenThing, smellThing);
}

+ (void)write:(NSString *)writeThing listen:(NSString *)listenThing smell:(NSString *)smellThing seeing:(NSString *)seeThing {
    NSLog(@"write:%@ listen:%@ smell:%@ seeing:%@", writeThing, listenThing, smellThing, seeThing);
}

+ (void)write:(NSString *)writeThing {
    NSLog(@"+(void)write:%@", writeThing);
}

+ (void)eating:(NSString *)eatThing {
    NSLog(@"+(void)eating:%@", eatThing);
}

- (void)playing:(NSString *)playThing {
    NSLog(@"-(void)playing:%@", playThing);
}

- (void)subtractTestProjectPortocol {
    NSLog(@"-subtractTestProjectPortocol 原类 TestProjectMeModel");
}

+ (void)addTestProjectProtocol {
    NSLog(@"+addTestProjectProtocol 原类 TestProjectMeModel");
}

- (void)sleep {
    NSLog(@"-(void)sleep");
}

+ (void)doing:(NSString *)doing {
    NSLog(@"+(void)doing:%@", doing);
}

- (void)write {
    NSLog(@"I want write something");
}

- (void)write:(NSString *)writeThing {
    NSLog(@"write:%@", writeThing);
}

- (void)write:(NSString *)writeThing listen:(NSString *)listenThing {
    NSLog(@"write:%@ listen:%@", writeThing, listenThing);
}

void addTestProjectMeCSubtractMethod(id objc, SEL sel, id args, ...) {
    if (args) {
        va_list list;
        NSMutableString *appendStr = [NSMutableString stringWithFormat:@":%@", args];
        va_start(list, args);
        id obj = va_arg(list, id);
        [appendStr appendFormat:@":%@", obj];
        va_end(list);
        NSLog(@"addTestProjectMeCSubtractMethod:参数为%@", appendStr);
    }
}

void addTestProjectMeCAddMethod(id objc, SEL sel, id args, ...) {
    if (args) {
        va_list list;
        NSMutableString *appendStr = [NSMutableString stringWithFormat:@":%@", args];
        va_start(list, args);
        id obj = va_arg(list, id);
        [appendStr appendFormat:@":%@", obj];
        va_end(list);
        NSLog(@"addTestProjectMeCAddMethod:参数为%@", appendStr);
    }
}

- (void)addTestProjectMeOCSubtractMethod:(id)args, ... {
    NSMutableString *appendStr = [NSMutableString stringWithFormat:@":%@", args];
    if (args) {
        va_list list;
        va_start(list, args);
        id obj = va_arg(list, id);
        [appendStr appendFormat:@":%@", obj];
        va_end(list);
        NSLog(@"addTestProjectMeOCSubtractMethod:参数为%@", appendStr);
    }
}

+ (void)addTestProjectMeOCAddMethod:(id)args, ... {
    NSMutableString *appendStr = [NSMutableString stringWithFormat:@":%@", args];
    if (args) {
        va_list list;
        va_start(list, args);
        id obj = va_arg(list, id);
        [appendStr appendFormat:@":%@", obj];
        va_end(list);
        NSLog(@"addTestProjectMeOCAddMethod:参数为%@", appendStr);
    }
}

+ (void)addCSubtractMethod {
    BOOL success = class_addMethod(self.class, @selector(operationAddCSubtractMethod), (IMP)addTestProjectMeCSubtractMethod, "v@:@");
    NSLog(@"添加-方法-operationAddCSubtractMethod()--->addOCMethod:%u", success);
}

+ (void)addCAddMethod {
    BOOL success = class_addMethod(objc_getMetaClass("TestProjectMeModel"), @selector(operationAddCAddMethod), (IMP)addTestProjectMeCAddMethod, "v@:@");
    NSLog(@"添加+方法+operationAddCAddMethod()--->addOCMethod:%u", success);
}

+ (void)addOCSubtractMethod {
    SEL sel = @selector(addTestProjectMeOCSubtractMethod:);
//    SEL sel = @selector(write:listen:);
    Class selfClass = self.class;
    Class wifeClass = TestProjectWifeModel.class;
    Class IMPClass = selfClass;
    IMP mIMP = class_getMethodImplementation(IMPClass, sel);
    BOOL success = class_addMethod(selfClass, @selector(operationAddOCSubtractMethod), mIMP, "v@:@");
    NSLog(@"添加-方法-operationAddOCSubtractMethod()--->addOCMethod:%u", success);
}

+ (void)addOCAddMethod {
    SEL sel = @selector(addTestProjectMeOCAddMethod:);
    Class selfClass = objc_getMetaClass("TestProjectMeModel");
    Class wifeClass = objc_getMetaClass("TestProjectWifeModel");
    Class IMPClass = selfClass;
    IMP mIMP = class_getMethodImplementation(IMPClass, sel);
    BOOL success = class_addMethod(selfClass, @selector(operationAddOCAddMethod), mIMP, "v@:@");
    NSLog(@"添加+方法+addTestProjectMeOCAddMethod()--->addOCMethod:%u", success);
}

- (void)replaceTestProjectOCSubtractMethod:(id)args, ... {
    NSMutableString *appendStr = [NSMutableString stringWithFormat:@":%@", args];
    if (args) {
        va_list list;
        va_start(list, args);
        id obj = va_arg(list, id);
        [appendStr appendFormat:@":%@", obj];
        va_end(list);
        NSLog(@"replaceTestProjectOCSubtractMethod:参数为%@", appendStr);
    }
}

+ (void)replaceTestProjectOCAddMethod:(id)args, ... {
    NSMutableString *appendStr = [NSMutableString stringWithFormat:@":%@", args];
    if (args) {
        va_list list;
        va_start(list, args);
        id obj = va_arg(list, id);
        [appendStr appendFormat:@":%@", obj];
        va_end(list);
        NSLog(@"+ (void)replaceTestProjectOCAddMethod:参数为%@", appendStr);
    }
}

- (void)replaceNextTestProjectOCSubtractMethod:(id)args, ... {
    NSMutableString *appendStr = [NSMutableString stringWithFormat:@":%@", args];
    if (args) {
        va_list list;
        va_start(list, args);
        id obj = va_arg(list, id);
        [appendStr appendFormat:@":%@", obj];
        va_end(list);
        NSLog(@"replaceNextTestProjectOCSubtractMethod:参数为%@", appendStr);
    }
}

+ (void)replaceOCSubtractMethod {
    SEL sel = @selector(replaceTestProjectOCSubtractMethod:);
    Class selfClass = self.class;
    Class wifeClass = TestProjectWifeModel.class;
    Class IMPClass = selfClass;
    IMP mIMP = class_getMethodImplementation(IMPClass, sel);
    BOOL success = class_replaceMethod(selfClass, @selector(operationAddOCSubtractMethod), mIMP, "v@:@");
    NSLog(@"替换-方法-operationReplaceOCSubtractMethod()--->replaceOCMethod:%u", success);
}

+ (void)replaceNextOCSubtractMethod {
    SEL sel = @selector(replaceNextTestProjectOCSubtractMethod:);
    Class selfClass = self.class;
    Class wifeClass = TestProjectWifeModel.class;
    Class IMPClass = selfClass;
    IMP mIMP = class_getMethodImplementation(IMPClass, sel);
    BOOL success = class_replaceMethod(selfClass, @selector(operationAddOCSubtractMethod), mIMP, "v@:@");
    NSLog(@"替换-方法-operationReplaceOCSubtractMethod()--->replaceOCMethod:%u", success);
}

+ (void)replaceOCAddMethod {
    SEL sel = @selector(replaceTestProjectOCAddMethod:);
    Class selfClass = objc_getMetaClass("TestProjectMeModel");
    Class wifeClass = objc_getMetaClass("TestProjectWifeModel");
    Class IMPClass = selfClass;
    IMP mIMP = class_getMethodImplementation(IMPClass, sel);
    BOOL success = class_replaceMethod(selfClass, @selector(operationAddOCAddMethod), mIMP, "v@:@");
    NSLog(@"替换+方法+replaceNextOCSubtractMethod()--->replaceOCMethod:%u", success);
}


- (void)setIMPMethod {
    NSLog(@"setIMPMethod");
}

- (void)originIMPMethod {
    NSLog(@"originIMPMethod");
}

- (void)nextSetIMPMethod {
    NSLog(@"nextSetIMPMethod");
}

- (void)exchangeMethod {
    NSLog(@"exchangeMethod");
}

- (void)paramsWithString:(NSString *)str mutString:(NSMutableString *)mutString dictionary:(NSDictionary *)dictionary mutDictionary:(NSMutableDictionary *)mutDictionary array:(NSArray *)array mutArray:(NSMutableArray *)mutArray f:(float)f cgfloat:(CGFloat)cgfloat i:(int)i c:(char)c date:(NSDate *)date data:(NSData *)data b:(BOOL)b boolean:(Boolean)boolean sel:(SEL)sel {
}

void enumerationHandler(id obj) {
    NSLog(@"EnumerationHandler:%@", obj);
}

- (void)setEnumerationHandler {
    void (*funcEnumerationHandler)() = &enumerationHandler;
    objc_setEnumerationMutationHandler(funcEnumerationHandler);
    objc_enumerationMutation(self);
}

- (void)implWithBlock {
    
}

@end

@implementation TestProjectWifeModel

//+ (void)load {
//    NSLog(@"+load 原类 TestProjectWifeModel");
//}

//+ (void)initialize {
//    NSLog(@"+initialize 原类 TestProjectWifeModel");
//}

- (instancetype)init {
    if (self = [super init]) {
        NSLog(@"-init 原类 TestProjectWifeModel");
    }
    return self;
}

- (void)setMeModelInfo {
    TestProjectMeModel *meM = [[TestProjectMeModel alloc] init];
    meM.meName = @"this is me";
//    meM->_meName = @"this is me";
//    meM->_wifeName = @"wo shi wifeName";
//    meM->_motherName = @"wo shi motherName";
//    meM->_daughterName = @"wo shi daugtherName";
    meM->_fatherName = @"wo shi fatherName";
    meM->_grandFatherName = @"wo shi grandFatherName";
//    meM->_grandMotherName = @"wo shi grandMotherName";
//    meM->_sonName = @"wo shi son name";
//    meM->_wifeAge = 25;
    meM->_grandFatherAge = 90;
//    meM->_grandMotherAge = 80;
//    meM->_sonAge = 4;
//    meM->_motherAge = 55;
//    meM->_fatherAge = 50;
//    meM->_daughterAge = 2;
}

- (void)addTestProjectMeOCSubtractMethod:(id)args, ... {
    NSMutableString *appendStr = [NSMutableString stringWithFormat:@":%@", args];
    if (args) {
        va_list list;
        va_start(list, args);
        id obj = va_arg(list, id);
        [appendStr appendFormat:@":%@", obj];
        va_end(list);
        NSLog(@"TestProjectWifeModel:参数为%@", appendStr);
    }
}

+ (void)addTestProjectMeOCAddMethod:(id)args, ... {
    NSMutableString *appendStr = [NSMutableString stringWithFormat:@":%@", args];
    if (args) {
        va_list list;
        va_start(list, args);
        id obj = va_arg(list, id);
        [appendStr appendFormat:@":%@", obj];
        va_end(list);
        NSLog(@"TestProjectWifeModel:参数为%@", appendStr);
    }
}

@end

@implementation TestProjectSonModel

//+ (void)load {
//    NSLog(@"+load 原类 TestProjectSonModel");
//}

//+ (void)initialize {
//    NSLog(@"+initialize 原类 TestProjectSonModel");
//}

//- (instancetype)init {
//    if (self = [super init]) {
//        NSLog(@"-init 原类 TestProjectSonModel");
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
    _grandFatherName = @"wo shi grandFatherName";
//    _grandMotherName = @"wo shi grandMotherName";
    _sonName = @"wo shi son name";
//    _wifeAge = 25;
    _grandFatherAge = 90;
//    _grandMotherAge = 80;
    _sonAge = 4;
//    _motherAge = 55;
//    _fatherAge = 50;
//    _daughterAge = 2;
}

@end

@interface TestProjectDaughterModel () {
    NSString *birthDay99;
@public
//    int sex100;
    NSString *birthDay100;
@protected
//    int sex101;
@private
    NSString *birthDay101;
//    int sex102;
}

//@property (nonatomic, assign) int age100;
@property (nonatomic, copy) NSString *name100;
//@property (nonatomic, assign) int age101;
//@property (nonatomic, assign) int age102;
@property (nonatomic, weak) NSString *daughterSelfName0;
@property (nonatomic, weak) NSString *daughterSelfName1;
@property (nonatomic, weak) NSString *daughterSelfName2;
@property (nonatomic, weak) NSString *daughterSelfName3;
@property (nonatomic, weak) NSString *daughterSelfName4;
@property (nonatomic, weak) NSString *daughterSelfName5;
@property (nonatomic, weak) NSString *daughterSelfName6;
@property (nonatomic, weak) NSString *daughterSelfName7;
@property (nonatomic, weak) NSString *daughterSelfName8;
@property (nonatomic, weak) NSString *daughterSelfName9;

@end

@implementation TestProjectDaughterModel {
    int sex1000;
    NSString *birthDay1000;
}

//+ (void)load {
//    NSLog(@"+load 原类 TestProjectDaughterModel");
//}

//+ (void)initialize {
//    NSLog(@"+initialize 原类 TestProjectDaughterModel");
//}

- (instancetype)init {
    if (self = [super init]) {
        NSLog(@"-init 原类 TestProjectDaughterModel");
    }
    return self;
}

@end

@implementation TestProjectGrandSonModel

//+ (void)initialize {
//    NSLog(@"+initialize 原类 TestProjectGrandSonModel");
//}

//- (instancetype)init {
//    if (self = [super init]) {
//        NSLog(@"-init 原类 TestProjectGrandSonModel");
//    }
//    return self;
//}

@end

@implementation TestProjectExtraGrandFatherModel

//+ (void)load {
//    NSLog(@"+load 原类 TestProjectExtraGrandFatherModel");
//}

//+ (void)initialize {
//    NSLog(@"+initialize 原类 TestProjectExtraGrandFatherModel");
//}

//- (instancetype)init {
//    if (self = [super init]) {
//        NSLog(@"-init 原类 TestProjectExtraGrandFatherModel");
//    }
//    return self;
//}

@end
