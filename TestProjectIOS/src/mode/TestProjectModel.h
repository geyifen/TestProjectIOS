//
//  TestProjectModel.h
//  TestProjectIOS
//
//  Created by liwenfan on 2022/6/13.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

typedef NS_ENUM(NSInteger, TestProjectEnumType) {
    TestProjectEnumTypeOfNone,
};

@protocol TestProjectCustomerProtocol <NSObject>

@end

@protocol TestProjectSuperProtocol <NSObject>

@end

@protocol TestProjectProtocol <TestProjectSuperProtocol, TestProjectCustomerProtocol>

@optional
@property (nonatomic, copy) NSString *testProjectProtocolName;
@property (nonatomic, copy) NSString *phoneNum;
- (void)subtractTestProjectPortocol;
+ (void)addTestProjectProtocol;

@end

@interface TestProjectGrandFaterModel : NSObject

@end

@interface TestProjectGrandMotherModel : NSObject

@end

@interface TestProjectFatherModel : TestProjectGrandFaterModel <TestProjectSuperProtocol>

@property (nonatomic, copy) NSString *fatherSelfName;

@end

@interface TestProjectMotherModel : NSObject

@property (nonatomic, copy) NSString *daughterName;

@end

@interface TestProjectMeModel : TestProjectFatherModel <TestProjectProtocol> {
//  默认被保护的，不可以在其它地方被调用, 子类的.m文件中可以调用
    NSString *_wifeName;
@private
//  私有的，不可以在其它地方被调用
    NSString *_motherName;
@public
//  可以在其它地方被调用
    NSString *_fatherName;
    NSString *selfName;
@protected
//  被保护的，不可以在其它地方被调用, 子类.m文件中可以调用
    NSString *_daughterName;
}
@property (nonatomic, assign) int meAge1;

// _meName 默认为私有的不能在其它地方被调用，只能使用.meName
@property (nonatomic, copy) NSString *meName;
@property (nonatomic, assign) int meAge;
@property (nonatomic, strong) NSString *meName1;

@property (nonatomic, readonly, strong) TestProjectFatherModel *fatherM;
@property (nonatomic, weak, readonly) TestProjectFatherModel *fatherM1;
@property (atomic, assign) TestProjectFatherModel *fatherM2;
@property (nonatomic, strong) TestProjectFatherModel *fatherM3;
@property (nonatomic, weak) TestProjectFatherModel *fatherM4;
@property TestProjectFatherModel *fatherM5;
@property (nonatomic, assign) TestProjectEnumType enumType;

- (void)playing:(NSString *)playThing;
- (void)sleep;

- (void)setMeModelInfo;
- (void)getMeModelInfo;

- (void)eating:(NSString *)eatThing playing:(NSString *)playThing seeing:(NSString *)seeThing;
- (void)eating:(NSString *)eatThing playing:(NSString *)playThing;
- (void)eating:(NSString *)eatThing;

+ (void)eating:(NSString *)eatThing playing:(NSString *)playThing seeing:(NSString *)seeThing;
+ (void)eating:(NSString *)eatThing playing:(NSString *)playThing;
+ (void)eating:(NSString *)eatThing;

- (void)write;
- (void)write:(NSString *)writeThing;
- (void)write:(NSString *)writeThing listen:(NSString *)listenThing;
- (void)write:(NSString *)writeThing listen:(NSString *)listenThing smell:(NSString *)smellThing;
- (void)write:(NSString *)writeThing listen:(NSString *)listenThing smell:(NSString *)smellThing seeing:(NSString *)seeThing;

+ (void)write:(NSString *)writeThing;
+ (void)write:(NSString *)writeThing listen:(NSString *)listenThing smell:(NSString *)smellThing;
+ (void)write:(NSString *)writeThing listen:(NSString *)listenThing smell:(NSString *)smellThing seeing:(NSString *)seeThing;

+ (void)say;

+ (void)doing:(NSString *)doing;

+ (void)addCSubtractMethod;
+ (void)addCAddMethod;

+ (void)addOCSubtractMethod;
+ (void)addOCAddMethod;

+ (void)replaceOCSubtractMethod;
+ (void)replaceOCAddMethod;
+ (void)replaceNextOCSubtractMethod;

- (void)setIMPMethod;
- (void)originIMPMethod;
- (void)nextSetIMPMethod;

- (void)exchangeMethod;

- (void)paramsWithString:(NSString *)str
               mutString:(NSMutableString *)mutString
              dictionary:(NSDictionary *)dictionary
           mutDictionary:(NSMutableDictionary *)mutDictionary
                   array:(NSArray *)array
                mutArray:(NSMutableArray *)mutArray
                       f:(float)f
                 cgfloat:(CGFloat)cgfloat
                       i:(int)i
                       c:(char)c
                    date:(NSDate *)date
                    data:(NSData *)data
                       b:(BOOL)b
                 boolean:(Boolean)boolean
                     sel:(SEL)sel;

- (void)setEnumerationHandler;

- (void)implWithBlock;

@end

@interface TestProjectWifeModel : NSObject

@end

@interface TestProjectSonModel : TestProjectMeModel

//@property (nonatomic, copy) NSString *sonSelfName;

@end

@interface TestProjectDaughterModel : NSObject {
    int sex;
    NSString *birthDay;
    int sex1;
    NSString *birthDay1;
    NSString *birthDay2;
    NSString *birthDay3;
    NSString *birthDay4;
    NSString *birthDay5;
    NSString *birthDay6;
    NSString *birthDay7;
    NSString *birthDay8;
    NSString *birthDay9;
    NSString *birthDay10;
    NSString *birthDay11;
    NSString *birthDay12;
    NSString *birthDay13;
    NSString *birthDay14;
    NSString *birthDay15;
    NSString *birthDay16;
    NSString *birthDay17;
    NSString *birthDay18;
    NSString *birthDay19;
    NSString *birthDay20;
    NSString *birthDay21;
    NSString *birthDay22;
    NSString *birthDay23;
    NSString *birthDay24;
    NSString *birthDay25;
    NSString *birthDay26;
    NSString *birthDay27;
    NSString *birthDay28;
    NSString *birthDay29;
    int sex3;
}

@property (nonatomic, assign) int age;
@property (nonatomic, assign) int age1;
@property (nonatomic, strong) NSString *daughterName;

@property (nonatomic, assign) int age2;

@property (nonatomic, copy) NSDate *birthDayDate;
@property (nonatomic, weak) NSString *daughterSelfName10;
@property (nonatomic, weak) NSString *daughterSelfName11;
@property (nonatomic, weak) NSString *daughterSelfName12;
@property (nonatomic, weak) NSString *daughterSelfName13;
@property (nonatomic, weak) NSString *daughterSelfName14;
@property (nonatomic, weak) NSString *daughterSelfName15;
@property (nonatomic, weak) NSString *daughterSelfName16;
@property (nonatomic, weak) NSString *daughterSelfName17;
@property (nonatomic, weak) NSString *daughterSelfName18;
@property (nonatomic, weak) NSString *daughterSelfName19;

@end

@interface TestProjectExtraGrandFatherModel : NSObject

@end

@interface TestProjectGrandSonModel : TestProjectSonModel

@end

NS_ASSUME_NONNULL_END
