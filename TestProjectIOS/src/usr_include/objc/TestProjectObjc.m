//
//  TestProjectObjc.m
//  TestProjectIOS
//
//  Created by liwenfan on 2022/6/10.
//

#import "TestProjectObjc.h"

#import "TestProjectModel.h"
#import "TestProjectUsrHeader.h"

#import <objc/message.h>
#import <objc/runtime.h>
#import <objc/objc-auto.h>
#import <UIKit/UIKit.h>

extern void instrumentObjcMessageSends(BOOL flag);

@interface TestProjectObjc ()

//@property (nonatomic, strong) TestProjectGrandMotherModel *grandM;
//@property (nonatomic, strong) TestProjectMotherModel *mother;

@property (nonatomic, strong) TestProjectMeModel *currentMeM;


@end

@implementation TestProjectObjc

- (instancetype)init {
    if (self = [super init]) {
        [self testRunObjc_hook];

        [self testObjcCopy];
        [self testRunLoad];
        [self testRunInitialize];
        [self testRunSuperInit];
        [self testRunObjcMethodCrash];
        [self testRunObjcClass];
        [self testRunObjcObjc];
        [self testRunObjcRutime];
        [self testRunObjc_getClass];
        [self testRunObjc_classList];
        [self testRunObjc_instanceSize];
        [self testRunObjc_ivar];
        [self testRunObjc_method];
        [self testRunObjc_protocol];
        [self testRunObjc_property];
        [self testRunObjc_weakStrong];
        [self testRunObjc_image];
        [self testRunObjc_impl];
    }
    return self;
}

- (TestProjectMeModel *)currentMeM {
    if (!_currentMeM) {
        _currentMeM = [[TestProjectMeModel alloc] init];
    }
    return _currentMeM;
}

const char *getLazyClass(Class cls) {
    const char *c = [NSStringFromClass(cls) UTF8String];
    NSLog(@"getLazyClass:%s", c);
    return c;
}


BOOL getImageName(Class cls, const char *_Nullable * _Nonnull outImageName) {
    
//    NSLog(@"cls:%@ %s", NSStringFromClass(cls), *outImageName);
    NSLog(@"");
    return YES;
}

BOOL getClassName(const char *outImageName, Class *cls) {

    NSLog(@"hookGetClass cls:%s %s", class_getName(*cls), outImageName);
    return YES;
}


- (void)testRunObjc_hook {
    if (@available(iOS 12.2, *)) {
        objc_hook_getClass hookGetClass;
        objc_setHook_getClass(getClassName, &hookGetClass);
    } else {
        // Fallback on earlier versions
    }
    NSLog(@"objc_setHook_getClass()只能捕捉到objc_allocateClassPair()实现时的类");
    
//        objc_hook_getImageName hookGetImage;
//        if (@available(iOS 12.0, *)) {
//            objc_setHook_getImageName(getImageName, &hookGetImage);
//        } else {
//        }
    
    NSLog(@"objc_setHook_getImageName()会崩溃");
    
    objc_hook_lazyClassNamer hooklazyClass;
    if (@available(iOS 14.0, *)) {
        objc_setHook_lazyClassNamer(getLazyClass, &hooklazyClass);
    } else {
    }

    [self.currentMeM setMeAge:10];
}

- (void)testRunObjc_impl {
    typedef void (^TestProjectBlock)(void);
    TestProjectBlock block = ^(void) {
        NSLog(@"TestProjectBlock");
    };
    SEL sel = NSSelectorFromString(@"testImplWithBlock");
    IMP blockIMP = imp_implementationWithBlock(block);
    NSLog(@"imp_implementationWithBlock()获取block的实现的IMP");
    BOOL addMethod = class_addMethod(TestProjectMeModel.class, sel, blockIMP, "v@:@");
    TestProjectMeModel *meM = [[TestProjectMeModel alloc] init];
    if (addMethod) {
        [meM performSelector:sel];
    }
    TestProjectBlock b = imp_getBlock(blockIMP);
    NSLog(@"imp_getBlock:%@", b);
    NSLog(@"imp_getBlock()根据IMP的到block");
    imp_removeBlock(blockIMP);
    NSLog(@"imp_removeBlock之后内存保留的:%@", b);
    NSLog(@"imp_removeBlock之后重新获取的:%@", imp_getBlock(blockIMP));
    block();
    NSLog(@"imp_removeBlock()根据IMP移除blockIMP,直接运行block还是可以执行的");
}

- (void)testRunObjc_image {
//    unsigned int copyImageCount = 0;
//    const char **imageList = objc_copyImageNames(&copyImageCount);
//    for (int i = 0; i < copyImageCount; i++) {
//        const char *c = imageList[i];
//        NSLog(@"%s", c);
//    }
//    NSLog(@"objc_copyImageNames()获取的framework和动态库的数量:%d", copyImageCount);
//    free(imageList);
//    const char *class_image = class_getImageName(TestProjectMeModel.class);
//    NSLog(@"class_getImageName():%s", class_image);
//    NSLog(@"class_getImageName()获取该类所在的动态库或者framework");
//    unsigned int class_imageCount = 0;
//    const char **copyClassImages = objc_copyClassNamesForImage(class_image, &class_imageCount);
//    for (int i = 0; i < class_imageCount; i++) {
//        const char *c = copyClassImages[i];
//        NSLog(@"%s", c);
//    }
//    free(copyClassImages);
    NSLog(@"objc_copyClassNamesForImage()获取该类所在的动态库或者framework中的所有类的名称");
}



- (void)testRunObjc_weakStrong {
    Ivar currentMeMIvar = class_getInstanceVariable(self.class, "_currentMeM");
    object_setIvarWithStrongDefault(self, currentMeMIvar, [[TestProjectMeModel alloc] init]);
    NSLog(@"class_getInstanceVariable()只是把当前的实例对象的其它属性变成strong属性");
    
    TestProjectDaughterModel *daughterM = [[TestProjectDaughterModel alloc] init];
    Ivar daughterSelfName5 = class_getInstanceVariable(daughterM.class, "_daughterSelfName5");
    object_setIvarWithStrongDefault(daughterM, daughterSelfName5, @"daughterSelfName5");
    
    Class objcClass = objc_getClass("TestProjectDaughterModel");
    const uint8_t *strong_ivarLayout = class_getIvarLayout(objcClass);
    if (strong_ivarLayout) {
        int i = 0;
        uint8_t value = strong_ivarLayout[i];
        while (value != 0x0) {
            NSLog(@"%02x", value);
            value = strong_ivarLayout[++i];
        }
    }
//    根据size进行排序[self testRunObjc_instanceSize]
    NSLog(@"class_getIvarLayout()计算strong和非是strong的个数");
    NSLog(@"第一位数代表是非strong的类型的字符个数，第二位是代表strong的字符个数");
    NSLog(@"超过16的倍数，则从下行继续开始计算");
    const uint8_t *weak_ivarLayout = class_getWeakIvarLayout(objcClass);
    if (weak_ivarLayout) {
        int i = 0;
        uint8_t value = weak_ivarLayout[i];
        while (value != 0x0) {
            NSLog(@"%02x", value);
            value = weak_ivarLayout[++i];
        }
    }
    NSLog(@"class_getWeakIvarLayout()计算weak和非是weak的个数");
    NSLog(@"第一位数代表是非weak的类型的字符个数，第二位是代表weak的字符个数");
    NSLog(@"超过16的倍数，则从下行继续开始计算");
    
    NSLog(@"class_setIvarLayout()、class_setWeakIvarLayout()只能在之前objc_registerClassPair()使用");
    
    TestProjectMeModel *meM = [[TestProjectMeModel alloc] init];
    TestProjectMeModel *keyMeM = [[TestProjectMeModel alloc] init];
    id set = objc_storeWeak(&keyMeM, meM);
    id get = objc_loadWeak(&keyMeM);
    keyMeM = nil;
    NSLog(@"%@", set);
}

- (void)testRunObjc_property {
    Class objcClass = objc_getClass("TestProjectMeModel");
    Class objcMetaClass = objc_getMetaClass("TestProjectMeModel");
    objc_property_t pro = class_getProperty(objcClass, "meName");
    objc_property_t pro_selfName = class_getProperty(objcClass, "selfName");
    objc_property_t pro_motherAge = class_getProperty(objcClass, "motherAge");
    objc_property_t pro_testAName = class_getProperty(objcClass, "testAName");
    objc_property_t metaPro = class_getProperty(objcMetaClass, "meName");
    NSLog(@"pro:%p;pro_selfName:%p;pro_motherAge:%p;pro_testAName:%p;metaPro:%p", pro, pro_selfName, pro_motherAge, pro_testAName, metaPro);
    NSLog(@"class_getProperty()只能获取该类的@property，包括扩展类；不包含父类和类别的@property");
    //type类型
    objc_property_attribute_t types = {"T", "@\"NSString\""};
    //C == copy
    objc_property_attribute_t ownership0 = {"C", ""};
    //N == nonatomic
    objc_property_attribute_t ownership = {"N", ""};
    //instance variable name
    objc_property_attribute_t backingIvar = {"V", "_addPropertyName"};
    objc_property_attribute_t attrs[] = {types, ownership0, ownership, backingIvar};
    BOOL addProperty_success = class_addProperty(objcClass, "addPropertyName", attrs, 4);
    NSLog(@"addProperty_success:%u", addProperty_success);
    TestProjectMeModel *meM = [[TestProjectMeModel alloc] init];
    [meM setValue:@"我是：addPropertyName1" forKey:@"addPropertyName"];
    NSLog(@"%@", [meM valueForKey:@"addPropertyName"]);
    NSLog(@"class_addProperty()可以添加@property属性，但是添加不了成员属性，因此[obj setValue:@"" forKey:@""]使用不了，得用额外的key值进行保存，而且还要实现set和get方法");
    NSLog(@"class的size不会进行改变");
    
    unsigned int proCount = 0;
    objc_property_t *proList = class_copyPropertyList(objcClass, &proCount);
    for (int i = 0; i < proCount; i++) {
        objc_property_t p = proList[i];
        NSLog(@"property==========>start");
        NSLog(@"class_property:             %p", p);
        NSLog(@"property_getName():         %s", property_getName(p));
        NSLog(@"property_getAttributes():   %s", property_getAttributes(p));
        unsigned int pOutCount = 0;
        objc_property_attribute_t *property_attribute = property_copyAttributeList(p, &pOutCount);
        for (int j = 0; j < pOutCount; j++) {
            objc_property_attribute_t attribute = property_attribute[j];
            NSLog(@"attribute.name:%s .value:%s", attribute.name, attribute.value);
            NSLog(@"property_copyAttributeValue():%s", property_copyAttributeValue(p, attribute.name));
        }
        NSLog(@"property==========>end");
    }
    free(proList);
    unsigned int metaProCount = 0;
    objc_property_t *metaProList = class_copyPropertyList(objcMetaClass, &metaProCount);
    for (int i = 0; i < metaProCount; i++) {
        objc_property_t p = metaProList[i];
        NSLog(@"metaClass:%p %s", p, property_getName(p));
    }
    free(metaProList);
    NSLog(@"class_copyPropertyList()获取该类的所有的@property属性，包含遵守的协议和扩展里的@property；但不包含父类和类别里的@property");
    NSLog(@"property_getName()获取属性的名称");
    NSLog(@"property_getAttributes()获取属性的类型组合");
    NSLog(@"property_attribute()获取属性的类型组合list");
    NSLog(@"property_copyAttributeValue()根据属性的类型name获取value值");
}

- (void)testRunObjc_protocol {
    Class objcClass = objc_getClass("TestProjectMeModel");
    Class objcMetaClass = objc_getMetaClass("TestProjectMeModel");
    
    BOOL class_isProtocol = class_conformsToProtocol(objcClass, @protocol(TestProjectProtocol));
    BOOL metaClass_isProtocol = class_conformsToProtocol(objcMetaClass, @protocol(TestProjectProtocol));
    NSLog(@"class_isProtocol:%u;metaClass_isProtocol:%u", class_isProtocol, metaClass_isProtocol);
    NSLog(@"metaClass_isProtocol()获取的是该类是否遵循了某个协议；class和metaClass是一致的");
    
    Protocol *customer_protocol = @protocol(TestProjectCustomerProtocol);
    BOOL addProtocol_success = class_addProtocol(objcClass, customer_protocol);
    NSLog(@"addProtocol_success:%u", addProtocol_success);
    NSLog(@"class_addProtocol()给该类添加协议，已经遵守的协议(包含类别遵守的协议)添加是不成功的；父类遵守的协议也可以添加成功");
    unsigned int class_protocolCount = 0;
    Protocol *__unsafe_unretained*class_protocols = class_copyProtocolList(objcClass, &class_protocolCount);
    for (int i = 0; i < class_protocolCount; i++) {
        Protocol *p = class_protocols[i];
        NSLog(@"class_protocol==========>start");
        NSLog(@"class_protocol:%p", p);
        NSString *pStr = NSStringFromProtocol(p);
        Protocol *getP = objc_getProtocol([pStr UTF8String]);
        NSLog(@"objc_getProtocol():%@ %p", getP, getP);
        NSLog(@"protocol_getName():%s", protocol_getName(p));
        NSLog(@"class_protocol==========>start");
    }
    free(class_protocols);
    NSLog(@"objc_getProtocol()根据协议的名字转成Protocol");
    NSLog(@"protocol_getName()获取协议的名称");
    
    //    unsigned int objc_copyProtocolCount = 0;
    //    Protocol *__unsafe_unretained*objc_copyProtocols = objc_copyProtocolList(&objc_copyProtocolCount);
    //    for (int i = 0; i < objc_copyProtocolCount; i++) {
    //        Protocol *p = objc_copyProtocols[i];
    //        NSLog(@"objc_protocol==========>start");
    //        NSLog(@"objc_protocol:%p", p);
    //        NSString *pStr = NSStringFromProtocol(p);
    //        Protocol *getP = objc_getProtocol([pStr UTF8String]);
    //        NSLog(@"objc_getProtocol():%@ %p", getP, getP);
    //        NSLog(@"protocol_getName():%s", protocol_getName(p));
    //        NSLog(@"objc_protocol==========>start");
    //    }
    //    free(objc_copyProtocols);
    //    NSLog(@"objc_copyProtocolList()获取的是所有的协议");
    
    unsigned int metaClass_protocolCount = 0;
    Protocol * __unsafe_unretained *metaClass_protocols = class_copyProtocolList(objcMetaClass, &metaClass_protocolCount);
    for (int i = 0; i < metaClass_protocolCount; i++) {
        Protocol *p = metaClass_protocols[i];
        NSLog(@"metaClass_protocol:%s %p", protocol_getName(p), p);
    }
    free(metaClass_protocols);
    NSLog(@"class_copyProtocolList()获取该类遵循的所有协议;包含扩展遵守的协议，类别的遵守的协议(会有两次)");
    
    Protocol *pSelf = @protocol(TestProjectProtocol);
    Protocol *pOther = @protocol(TestProjectSuperProtocol);
    NSLog(@"protocol_conformsToProtocol():%u", protocol_conformsToProtocol(pSelf, pOther));
    NSLog(@"protocol_conformsToProtocol()判断协议A是否遵守协议B了");
    NSLog(@"protocol_isEqual():%u", protocol_isEqual(pSelf, pOther));
    NSLog(@"protocol_isEqual()判断两个协议是否是一样的");
    
    struct objc_method_description method_description = protocol_getMethodDescription(pSelf, @selector(subtractTestProjectPortocol), NO, YES);
    NSLog(@"protocol_getMethodDescription():name:%@ types:%s", NSStringFromSelector(method_description.name), method_description.types);
    NSLog(@"protocol_getMethodDescription()根据提供的SEL，返回协议的的方法的描述信息");
    unsigned int protocol_copyMethodCount = 0;
    struct objc_method_description *protocl_copyMethodDescList = protocol_copyMethodDescriptionList(pSelf, NO, NO, &protocol_copyMethodCount);
    for (int i = 0; i < protocol_copyMethodCount; i++) {
        struct objc_method_description methodDesc = protocl_copyMethodDescList[i];
        NSLog(@"name:%@ types:%s", NSStringFromSelector(methodDesc.name), methodDesc.types);
    }
    free(protocl_copyMethodDescList);
    NSLog(@"protocol_copyMethodDescriptionList()获取某个协议里实现的+方法或者-方法的描述信息，包含set方法和get方法");
    
    objc_property_t protocol_property = protocol_getProperty(pSelf, "testProjectProtocolName", YES, YES);
    NSLog(@"protocol_getProperty():name:%s attr:%s", property_getName(protocol_property), property_getAttributes(protocol_property));
    NSLog(@"protocol_getProperty()获取协议的属性，isRequiredProperty必须设置为YES， 否则返回的是空的");
    
    unsigned int protocol_copyProCount = 0;
    objc_property_t *protocol_copyProList = protocol_copyPropertyList(pSelf, &protocol_copyProCount);
    for (int i = 0; i < protocol_copyProCount; i++) {
        objc_property_t protocol_pro = protocol_copyProList[i];
        NSLog(@"protocol_copyPropertyList====>start");
        NSLog(@"%s %s", property_getName(protocol_pro), property_getAttributes(protocol_pro));
        NSLog(@"protocol_copyPropertyList====>end");
    }
    free(protocol_copyProList);
    NSLog(@"protocol_copyPropertyList()获取该协议中所有的@property，和protocol_copyPropertyList2(,,YES,YES)设置的是一样的");
    
    unsigned int protocol_copyPro2Count = 0;
    objc_property_t *protocol_copy2ProList = protocol_copyPropertyList2(pSelf, &protocol_copyPro2Count, YES, YES);
    for (int i = 0; i < protocol_copyPro2Count; i++) {
        objc_property_t protocol_pro = protocol_copy2ProList[i];
        NSLog(@"protocol_copyPropertyList2====>start");
        NSLog(@"%s %s", property_getName(protocol_pro), property_getAttributes(protocol_pro));
        NSLog(@"protocol_copyPropertyList2====>end");
    }
    free(protocol_copy2ProList);
    NSLog(@"protocol_copyPropertyList2()获取该协议中所有的@property，isRequiredProperty必须设置为YES，否则取不到");
    
    unsigned int protocol_copyProtocolCount = 0;
    Protocol *__unsafe_unretained *protocol_copyProtocolL = protocol_copyProtocolList(pSelf, &protocol_copyProtocolCount);
    for (int i = 0; i < protocol_copyProtocolCount; i++) {
        Protocol *p = protocol_copyProtocolL[i];
        NSLog(@"getName:%s", protocol_getName(p));
    }
    NSLog(@"protocol_copyProtocolList()获取该协议的所有遵守的协议");
    free(protocol_copyProtocolL);
    
    Protocol *TestProjectAllocP = objc_allocateProtocol("TestProjectAllocProtocol");
    NSLog(@"objc_allocateProtocol():name:%s", protocol_getName(TestProjectAllocP));
    protocol_addProtocol(TestProjectAllocP, pSelf);
    protocol_addMethodDescription(TestProjectAllocP, @selector(getName), "v16@0:8", YES, YES);
    
    objc_property_attribute_t types = {"T", "@\"NSString\""};
    //C == copy
    objc_property_attribute_t ownership0 = {"C", ""};
    //N == nonatomic
    objc_property_attribute_t ownership = {"N", ""};
    //instance variable name
    objc_property_attribute_t backingIvar = {"V", "name"};
    objc_property_attribute_t attrs[] = {types, ownership0, ownership, backingIvar};
    protocol_addProperty(TestProjectAllocP, "name", attrs, 4, YES, YES);
    objc_registerProtocol(TestProjectAllocP);
    NSLog(@"protocol_addProtocol()、protocol_addMethodDescription()、protocol_addProperty()必须是在objc_allocateProtocol()之后并且在objc_registerProtocol()之后才可以");

    unsigned int protocol_allocProtocolCount = 0;
    Protocol *__unsafe_unretained *protocol_allocProtocolL = protocol_copyProtocolList(TestProjectAllocP, &protocol_allocProtocolCount);
    for (int i = 0; i < protocol_allocProtocolCount; i++) {
        Protocol *p = protocol_allocProtocolL[i];
        NSLog(@"getName:%s", protocol_getName(p));
    }
    free(protocol_allocProtocolL);

}

- (void)testRunObjc_method {
    SEL sel = @selector(write:);
    Method method = class_getInstanceMethod(TestProjectMeModel.class, sel);
    NSLog(@"method:%p", method);
    NSLog(@"class_getInstanceMethod()获取某个类的方法地址");
    SEL sel_write = @selector(write:);
    NSLog(@"%p %p", TestProjectMeModel.class, objc_getMetaClass("TestProjectMeModel"));
    Method classMethod = class_getClassMethod(TestProjectMeModel.class, sel_write);
    Method metaClassMethod = class_getClassMethod(objc_getMetaClass("TestProjectMeModel"), sel_write);
    
    SEL classMethodSel_say = @selector(say);
    Method classMethod_say = class_getClassMethod(TestProjectMeModel.class, classMethodSel_say);
    Method metaClassMethod_say = class_getClassMethod(objc_getMetaClass("TestProjectMeModel"), classMethodSel_say);
    
    
    NSLog(@"classMethod:%p metaClassMethod:%p;classMethod_say:%p;metaClassMethod_say:%p", classMethod, metaClassMethod, classMethod_say, metaClassMethod_say);
    NSLog(@"class_getClassMethod()获取的是某个类的+方法, metaClass和class获取的方法地址是同一个");
    
    Class clazz = TestProjectMeModel.class;
    Class metaClazz = objc_getMetaClass("TestProjectMeModel");
    
    IMP classIMP_Write = class_getMethodImplementation(clazz, sel_write);
    IMP metaClassIMP_Write = class_getMethodImplementation(metaClazz, sel_write);
    SEL sel_Say = @selector(say);
    IMP classIMP_Say = class_getMethodImplementation(clazz, sel_Say);
    IMP metaClassIMP_Say = class_getMethodImplementation(metaClazz, sel_Say);
    SEL sel_Eating = @selector(eating:);
    IMP classIMP_Eating = class_getMethodImplementation(clazz, sel_Eating);
    IMP metaClassIMP_Eating = class_getMethodImplementation(metaClazz, sel_Eating);
    SEL sel_playing = @selector(playing:);
    IMP classIMP_playing = class_getMethodImplementation(clazz, sel_playing);
    IMP metaClassIMP_playing = class_getMethodImplementation(metaClazz, sel_playing);
    SEL sel_sleep = @selector(sleep);
    IMP classIMP_sleep = class_getMethodImplementation(clazz, sel_sleep);
    IMP metaClassIMP_sleep = class_getMethodImplementation(metaClazz, sel_sleep);
    SEL sel_doing = @selector(doing:);
    IMP classIMP_Doing = class_getMethodImplementation(clazz, sel_doing);
    IMP metaClassIMP_Doing = class_getMethodImplementation(metaClazz, sel_doing);
    
    //崩溃
    //    ((void(*)(id, SEL, NSString *))classIMP_Write)(clazz, classMethodSel, @"write some thing");
    //    ((void(*)(id, SEL, NSString *))classIMP_Write)(metaClazz, classMethodSel, @"write some thing");
    ((void(*)(id, SEL, NSString *))metaClassIMP_Write)(clazz, sel_write, @"write some thing");
    ((void(*)(id, SEL, NSString *))metaClassIMP_Write)(metaClazz, sel_write, @"write some thing");
    
    //崩溃
    //    ((void(*)(id, SEL, NSString *))classIMP_Say)(clazz, sel_Say, @"say some thing");
    //    ((void(*)(id, SEL, NSString *))classIMP_Say)(metaClazz, sel_Say, @"say some thing");
    ((void(*)(id, SEL, NSString *))metaClassIMP_Say)(clazz, sel_Say, @"say some thing");
    ((void(*)(id, SEL, NSString *))metaClassIMP_Say)(metaClazz, sel_Say, @"say some thing");
    
    //崩溃
    //    ((void(*)(id, SEL, NSString *))classIMP_Eating)(clazz, sel_Eating, @"eating some thing");
    //    ((void(*)(id, SEL, NSString *))classIMP_Eating)(metaClazz, sel_Eating, @"eating some thing");
    ((void(*)(id, SEL, NSString *))metaClassIMP_Eating)(clazz, sel_Eating, @"eating some thing");
    ((void(*)(id, SEL, NSString *))metaClassIMP_Eating)(metaClazz, sel_Eating, @"eating some thing");
    
    ((void(*)(id, SEL, NSString *))classIMP_playing)(clazz, sel_playing, @"playing some thing");
    ((void(*)(id, SEL, NSString *))classIMP_playing)(metaClazz, sel_playing, @"playing some thing");
    //崩溃
    //    ((void(*)(id, SEL, NSString *))metaClassIMP_playing)(clazz, sel_playing, @"playing some thing");
    //    ((void(*)(id, SEL, NSString *))metaClassIMP_playing)(metaClazz, sel_playing, @"playing some thing");
    
    ((void(*)(id, SEL, NSString *))classIMP_sleep)(clazz, sel_sleep, @"sleep some thing");
    ((void(*)(id, SEL, NSString *))classIMP_sleep)(metaClazz, sel_sleep, @"sleep some thing");
    ((void (*)(id, SEL))classIMP_sleep)(clazz, sel_sleep);
    ((void (*)(id, SEL))classIMP_sleep)(metaClazz, sel_sleep);
    //崩溃
    //    ((void(*)(id, SEL, NSString *))metaClassIMP_sleep)(clazz, sel_sleep, @"sleep some thing");
    //    ((void(*)(id, SEL, NSString *))metaClassIMP_sleep)(metaClazz, sel_sleep, @"sleep some thing");
    //    ((void (*)(id, SEL))metaClassIMP_sleep)(clazz, sel_sleep);
    //    ((void (*)(id, SEL))metaClassIMP_sleep)(metaClazz, sel_sleep);
    
    //崩溃
    //    ((void(*)(id, SEL, NSString *))classIMP_Doing)(clazz, sel_sleep, @"doing some thing");
    //    ((void(*)(id, SEL, NSString *))classIMP_Doing)(metaClazz, sel_sleep, @"doing some thing");
    ((void(*)(id, SEL, NSString *))metaClassIMP_Doing)(clazz, sel_sleep, @"doing some thing");
    ((void(*)(id, SEL, NSString *))metaClassIMP_Doing)(metaClazz, sel_sleep, @"doing some thing");
    
    
    NSLog(@"classIMP_Write:%p;metaClassIMP_Write:%p;classIMP_Say:%p;metaClassIMP_Say:%p;classIMP_Eating:%p;metaClassIMP_Eating:%p;classIMP_playing:%p;metaClassIMP_playing:%p;classIMP_sleep:%p;metaClassIMP_sleep:%p;classIMP_Doing:%p;metaClassIMP_Doing:%p;", classIMP_Write, metaClassIMP_Write, classIMP_Say, metaClassIMP_Say, classIMP_Eating, metaClassIMP_Eating, classIMP_playing, metaClassIMP_playing, classIMP_sleep, metaClassIMP_sleep, classIMP_Doing, metaClassIMP_Doing);
    NSLog(@"class_getMethodImplementation():");
    NSLog(@"metaClass和+方法获取的IMP或者是 class和-方法获取的IMPh获取的指针是不同的；");
    NSLog(@"class和+方法获取的IMP或者是 metaClass和-方法获取的IMPh获取的指针的所有方法获取的IMP都是同一个的；");
    NSLog(@"metaClass和+方法获取的IMP可以运行，class和+方法获取的IMP不可以运行");
    NSLog(@"metaClass和-方法获取的IMP不可以运行，class和-方法获取的IMP可以运行");
    
    IMP class_opAddOCSub = class_getMethodImplementation(clazz, @selector(operationAddOCSubtractMethod));
    IMP class_addOCSub = class_getMethodImplementation(clazz, @selector(addTestProjectMeOCSubtractMethod:));
    IMP class_replaceOCSub = class_getMethodImplementation(clazz, @selector(replaceTestProjectOCSubtractMethod:));
    NSLog(@"添加前：class_opAddOCSub:%p, class_addOCSub:%p, class_replaceOCSub:%p", class_opAddOCSub, class_addOCSub, class_replaceOCSub);

    [TestProjectMeModel addOCSubtractMethod];
    TestProjectMeModel *meM = [[TestProjectMeModel alloc] init];
    ((void(*)(id, SEL, NSString *, NSString *))objc_msgSend)(meM, @selector(operationAddOCSubtractMethod), @"t1", @"t2");
    NSLog(@"%@", meM.fatherSelfName);
    [TestProjectMeModel addOCAddMethod];
    ((void(*)(id, SEL, NSString *, NSString *))objc_msgSend)(TestProjectMeModel.class, @selector(operationAddOCAddMethod), @"t3", @"t4");

    [TestProjectMeModel addCSubtractMethod];
    ((void(*)(id, SEL, NSString *, NSString *))objc_msgSend)(meM, @selector(operationAddCSubtractMethod), @"t5", @"t6");
    [TestProjectMeModel addCAddMethod];
    ((void(*)(id, SEL, NSString *, NSString *))objc_msgSend)(TestProjectMeModel.class, @selector(operationAddCAddMethod), @"t7", @"t8");
    NSLog(@"class_addMethod()给某类添加方法，添加的方法可以是本class的或者是其它class");
    NSLog(@"添加+方法使用metaClass，添加-方法使用class");
    NSLog(@"已经存在的方法不会进行添加");
    NSLog(@"添加后：class_opAddOCSub:%p, class_addOCSub:%p, class_replaceOCSub:%p", class_opAddOCSub, class_addOCSub, class_replaceOCSub);
    class_opAddOCSub = class_getMethodImplementation(clazz, @selector(operationAddOCSubtractMethod));
    class_addOCSub = class_getMethodImplementation(clazz, @selector(addTestProjectMeOCSubtractMethod:));
    class_replaceOCSub = class_getMethodImplementation(clazz, @selector(replaceTestProjectOCSubtractMethod:));
    [TestProjectMeModel replaceOCSubtractMethod];
    ((void(*)(id, SEL, NSString *, NSString *))objc_msgSend)(meM, @selector(operationAddOCSubtractMethod), @"t9", @"t10");
    ((void(*)(id, SEL, NSString *, NSString *))objc_msgSend)(meM, @selector(addTestProjectMeOCSubtractMethod:), @"t11", @"t12");
    class_opAddOCSub = class_getMethodImplementation(clazz, @selector(operationAddOCSubtractMethod));
    class_addOCSub = class_getMethodImplementation(clazz, @selector(addTestProjectMeOCSubtractMethod:));
    class_replaceOCSub = class_getMethodImplementation(clazz, @selector(replaceTestProjectOCSubtractMethod:));
    NSLog(@"替换后：class_opAddOCSub:%p, class_addOCSub:%p, class_replaceOCSub:%p", class_opAddOCSub, class_addOCSub, class_replaceOCSub);
    [TestProjectMeModel replaceNextOCSubtractMethod];
    class_opAddOCSub = class_getMethodImplementation(clazz, @selector(operationAddOCSubtractMethod));
    class_addOCSub = class_getMethodImplementation(clazz, @selector(addTestProjectMeOCSubtractMethod:));
    class_replaceOCSub = class_getMethodImplementation(clazz, @selector(replaceTestProjectOCSubtractMethod:));
    IMP class_replaceNextOCSub = class_getMethodImplementation(clazz, @selector(replaceNextTestProjectOCSubtractMethod:));
    ((void(*)(id, SEL, NSString *, NSString *))objc_msgSend)(meM, @selector(operationAddOCSubtractMethod), @"t13", @"t14");
    ((void(*)(id, SEL, NSString *, NSString *))objc_msgSend)(meM, @selector(addTestProjectMeOCSubtractMethod:), @"t15", @"t16");
    ((void(*)(id, SEL, NSString *, NSString *))objc_msgSend)(meM, @selector(replaceTestProjectOCSubtractMethod:), @"t17", @"t18");
    ((void(*)(id, SEL, NSString *, NSString *))objc_msgSend)(meM, @selector(replaceNextTestProjectOCSubtractMethod:), @"t19", @"t20");
    NSLog(@"替换后：class_opAddOCSub:%p, class_addOCSub:%p, class_replaceOCSub:%p, class_replaceNextOCSub:%p", class_opAddOCSub, class_addOCSub, class_replaceOCSub, class_replaceNextOCSub);
    [TestProjectMeModel replaceOCAddMethod];
    ((void(*)(id, SEL, NSString *, NSString *))objc_msgSend)(TestProjectMeModel.class, @selector(operationAddOCAddMethod), @"21", @"22");
    NSLog(@"class_replaceMethod()只是替换当前这个方法的IMP，不会把所有相同的IMP替换掉；当这个IMP不存在则相当于添加(class_addMethod())");
    
    unsigned int classMethodCount = 0;
    Method *methodList = class_copyMethodList(clazz, &classMethodCount);
    for (int i = 0; i < classMethodCount; i++) {
        Method m = methodList[i];
        NSLog(@"class_method========>start");
        NSLog(@"methodName():                           %@", NSStringFromSelector(method_getName(m)));
        NSLog(@"method_getImplementation():             %p", method_getImplementation(m));
        NSLog(@"method_getTypeEncoding():               %s", method_getTypeEncoding(m));
        int numOfArguments = method_getNumberOfArguments(m);
        NSLog(@"method_getNumberOfArguments():          %d", numOfArguments);
        char *copyReturnType = method_copyReturnType(m);
        NSLog(@"method_copyReturnType():                %s", copyReturnType);
        free(copyReturnType);
        for (int j = 0; j < numOfArguments; j++) {
            char *copyArgumentType = method_copyArgumentType(m, j);
            NSLog(@"method_copyArgumentType():第%d个参数类型  %s", j+1, copyArgumentType);
            free(copyArgumentType);
            char argumentDst;
            method_getArgumentType(m, j, &argumentDst, sizeof(id));
            NSLog(@"method_getArgumentType():第%d个参数类型   %c", j+1, argumentDst);
        }
        char dst;
        method_getReturnType(m, &dst, sizeof(id));
        NSLog(@"method_getReturnType():                 %c", dst);
        struct objc_method_description *method_description = method_getDescription(m);
        NSLog(@"method_getDescription():%@ %s", NSStringFromSelector(method_description->name), method_description->types);
        NSLog(@"class_method========>end");
    }
    free(methodList);
    unsigned int metaClassMethodCount = 0;
    Method *metaMethodList = class_copyMethodList(metaClazz, &metaClassMethodCount);
    for (int i = 0; i < metaClassMethodCount; i++) {
        Method m = metaMethodList[i];
        NSLog(@"metaClass_methodName:%@", NSStringFromSelector(method_getName(m)));
    }
    free(metaMethodList);
    NSLog(@"class_copyMethodList()获取该类的方法，class获取的是所有的-方法；metaClass获取的是所有的+方法");
    NSLog(@"包含实现协议的方法，扩展的类实现的方法，有重复的方法也会包含");
    
    NSLog(@"methodName():获取方法的名字");
    NSLog(@"method_getImplementation():获取方法的实现的IMP指针");
    NSLog(@"method_getTypeEncoding():获取方法组成的类型");
    NSLog(@"method_getNumberOfArguments():获取方法的参数总数");
    NSLog(@"method_copyReturnType():获取方法返回的类型，需要free()得到的数据");
    NSLog(@"method_copyArgumentType():获取方法指定的参数类型需要free()得到的数据");
    NSLog(@"method_getArgumentType():获取方法指定的参数类型");
    NSLog(@"method_getReturnType():获取方法返回的类型");
    NSLog(@"method_getDescription():获取方法的描述，包含方法名和方法组成的类型");
    
    Method originM = class_getInstanceMethod(clazz, @selector(originIMPMethod));
    NSLog(@"method_setImplementation()重新设置方法实现的IMP指针，不会套环设置");
    Method exchangeM = class_getInstanceMethod(clazz, @selector(exchangeMethod));
    method_exchangeImplementations(exchangeM, originM);
    [meM originIMPMethod];
    [meM exchangeMethod];
    NSLog(@"method_exchangeImplementations()交换两个方法的IMP指针实现");
    IMP setIMP = class_getMethodImplementation(clazz, @selector(setIMPMethod));
    method_setImplementation(originM, setIMP);
    Method setIMPM = class_getInstanceMethod(clazz, @selector(setIMPMethod));
    IMP nextSetIMP = class_getMethodImplementation(clazz, @selector(nextSetIMPMethod));
    method_setImplementation(setIMPM, nextSetIMP);
    [meM originIMPMethod];
    [meM setIMPMethod];
    [meM exchangeMethod];
}

- (void)testRunObjc_ivar {
    Ivar _meNameInstanceIvar = class_getInstanceVariable(TestProjectMeModel.class, "_meName");
    Ivar _motherNamenstanceIvar = class_getInstanceVariable(TestProjectMeModel.class, "_motherName");
    Ivar _grandMotherNamenstanceIvar = class_getInstanceVariable(TestProjectMeModel.class, "_grandMotherName");
    Ivar _grandMotherAgenstanceIvar = class_getInstanceVariable(TestProjectMeModel.class, "_grandMotherAge");
    Ivar selfNamenstanceIvar = class_getInstanceVariable(TestProjectMeModel.class, "selfName");
    Ivar isaInstanceIvar = class_getInstanceVariable(TestProjectMeModel.class, "isa");
    NSLog(@"_meNameInstanceIvar:%p;_motherNamenstanceIvar:%p;_grandMotherNamenstanceIvar:%p;_grandMotherAgenstanceIvar:%p;selfNamenstanceIvar:%p;isaInstanceIvar:%p", _meNameInstanceIvar, _motherNamenstanceIvar, _grandMotherNamenstanceIvar, _grandMotherAgenstanceIvar, selfNamenstanceIvar, isaInstanceIvar);

    Ivar isaClassIvar = class_getClassVariable(TestProjectMeModel.class, "isa");
    Ivar isaMetaClassIvar = class_getClassVariable(objc_getMetaClass("TestProjectMeModel"), "isa");
    Ivar isaMetaClassInstanceIvar = class_getInstanceVariable(objc_getMetaClass("TestProjectMeModel"), "isa");
    NSLog(@"isaClassIvar:%p;isaMetaClassIvar:%p;isaMetaClassInstanceIvar:%p", isaClassIvar, isaMetaClassIvar, isaMetaClassInstanceIvar);
    NSLog(@"获取类的属性地址，只能用%@打印,不能用%@打印,@property只能用_property获取", @"%p", @"%@");
    NSLog(@"class_getInstanceVariable获取该类的属性，class_getClassVariable获取该meta类的属性");
    NSLog(@"isa的ivar都是一样的");
    
    
    id isaObjc = object_getIvar(TestProjectMeModel.class, isaMetaClassInstanceIvar);
    TestProjectMeModel *meM = [[TestProjectMeModel alloc] init];
    [meM setMeModelInfo];
    id grandMotherName = object_getIvar(meM, _grandMotherNamenstanceIvar);
    NSLog(@"object_getIvar:isaObjc:%@ %p;grandMotherName:%@ %p", isaObjc, isaObjc, grandMotherName, grandMotherName);
    NSLog(@"object_getIvar根据ivar获取实例对象的属性值, 但是不能获取已经赋值值类型(如int、bool)的数据，会奔溃，还没有赋值的返回null");
    object_setIvar(meM, _grandMotherNamenstanceIvar, @"通过object_setIvar重新赋值了");
    NSLog(@"%@ %@ %@", grandMotherName, object_getIvar(meM, _grandMotherNamenstanceIvar), [meM valueForKey:@"_grandMotherName"]);
    NSLog(@"object_setIvar能改变属性值，但是改变不了通过object_getIvar获取到的值");
    
    NSLog(@"meM.meName:%p meM.class:%p", meM.meName, meM.class);
    NSLog(@"object_getIndexedIvars(meM.meName):%p", object_getIndexedIvars(meM.meName));
    NSLog(@"object_getIndexedIvars(meM.class):%p", object_getIndexedIvars(meM.class));
    NSLog(@"object_getIndexedIvars()返回额外的指针，不太懂");
    
    Class TestProjectCustomerCreaterModel = objc_allocateClassPair(NSObject.class, "TestProjectCustomerCreaterModel", 0);
    NSLog(@"objc_allocateClassPair()新建一个类");
    uint8_t str2_size = log2(sizeof(NSString *));
    size_t str_size = sizeof(NSString *);
    BOOL addIvar1_success = class_addIvar(TestProjectCustomerCreaterModel, "_addTestProjectIvar1", str_size, str2_size, "@");
    BOOL addIvar2_success = class_addIvar(TestProjectCustomerCreaterModel, "_addTestProjectIvar2", str_size, str2_size, "@");
    NSLog(@"addIvar1_success:%u;addIvar2_success:%u", addIvar1_success, addIvar2_success);

//    objc_disposeClassPair(TestProjectCustomerCreaterModel);
    TestProjectMeModel *meM1 = [[TestProjectMeModel alloc] init];
    [meM1 setMeModelInfo];
    [meM1 getMeModelInfo];
    NSLog(@"objc_disposeClassPair()只能销毁掉运行时注册的类");
    objc_registerClassPair(TestProjectCustomerCreaterModel);
    NSLog(@"objc_registerClassPair()把新建的类注册");

    Class duplicateClass = objc_duplicateClass(TestProjectMeModel.class, "TestProjectMeModel", 0);
    NSLog(@"duplicateClass:%p %@", duplicateClass, duplicateClass);
    
    unsigned int customerIvarCount = 0;
    Ivar *customerClass_ivarList = class_copyIvarList(TestProjectCustomerCreaterModel, &customerIvarCount);
    for (int i = 0; i < customerIvarCount; i++) {
        Ivar ivar = customerClass_ivarList[i];
        NSLog(@"%s: %p", ivar_getName(ivar), ivar);
    }
    free(customerClass_ivarList);
    NSLog(@"class_addIvar()给一个类添加成员变量，但必须是在这个类的objc_allocateClassPair之后并且在objc_registerClassPair之前添加；已经注册好的类添加不成功");
    NSLog(@"不能给metaClass添加成员变量");
    NSLog(@"已经存在的成员变量添加不成功");
    
    unsigned int class_ivarCount = 0;
    Ivar *class_ivarList = class_copyIvarList(TestProjectMeModel.class, &class_ivarCount);
    for (int i = 0; i < class_ivarCount; i++) {
        Ivar class_ivar = class_ivarList[i];
        NSLog(@"class_ivar======>start");
        NSLog(@"class_ivar:                 %p", class_ivar);
        NSLog(@"ivar_getName():             %s", ivar_getName(class_ivar));
        NSLog(@"ivar_getTypeEncoding():     %s", ivar_getTypeEncoding(class_ivar));
        NSLog(@"ivar_getOffset():           %td", ivar_getOffset(class_ivar));
        NSLog(@"class_ivar======>end");
    }
    free(class_ivarList);
    NSLog(@"class_copyIvarList()获取的是某个类的所有的属性, 父类和子类的属性获取不了");
    NSLog(@"ivar_getName():获取成员变量的名字");
    NSLog(@"ivar_getTypeEncoding():获取成员变量的类型");
    NSLog(@"ivar_getOffset():获取成员变量的开始位置");
}

- (void)testRunObjc_instanceSize {
    NSLog(@"float:%ld,CGFloat:%ld,short:%ld,long:%ld,long long:%ld,int:%ld,NSInteger:%ld,NSUInteger:%ld,NSString *:%ld,NSArray *:%ld,NSDictionary *:%ld,NSMutableString *:%ld,NSMutableArray *:%ld,NSMutableDictionary *:%ld,NSDate *:%ld,NSData *:%ld,char *:%ld,char:%ld,SEL:%ld,Boolean:%ld,BOOL:%ld,bool:%ld,int *:%ld", sizeof(float), sizeof(CGFloat), sizeof(short), sizeof(long), sizeof(long long), sizeof(int), sizeof(NSInteger), sizeof(NSUInteger), sizeof(NSString *), sizeof(NSArray *), sizeof(NSDictionary *), sizeof(NSMutableString *), sizeof(NSMutableArray *), sizeof(NSMutableDictionary *), sizeof(NSDate *), sizeof(NSData *), sizeof(char *), sizeof(char), sizeof(SEL), sizeof(Boolean), sizeof(BOOL), sizeof(bool), sizeof(int *));
    TestProjectDaughterModel *daughterM = [[TestProjectDaughterModel alloc] init];
    NSLog(@"%zu", class_getInstanceSize(daughterM.class));
    NSLog(@"class_getInstanceSize()获取的是本类的size大小，不包含父类和子类的");
    NSLog(@"先计算.h{}里的属性，再计算.m扩展{}里的，再计算.m@implementation{}里的，最后计算@property里的");
    NSLog(@"除了@property会自动从小到大排，其它的都是根据添加的先后顺序计算的，字符是8个字符对齐");
    NSLog(@"如果把当前的size加起来超过了8的倍数，则先把size以8的倍数对齐，在加上当前的size；否则直接加上当前的size；最后size不是8的倍数，则以8的倍数对齐");
}

- (void)testRunObjc_classList {
    Class *clazzes = NULL;
    int clazzCount = 0;
    unsigned int newClazzCount = objc_getClassList(clazzes, clazzCount);
//    NSLog(@"newClazzCount:%d", newClazzCount);
//    while (clazzCount < newClazzCount) {
//        clazzCount = newClazzCount;
//        clazzes = (Class *)malloc(clazzCount * sizeof(Class));
//        newClazzCount = objc_getClassList(clazzes, clazzCount);
//    }
    
    clazzes = objc_copyClassList(&newClazzCount);
    dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^{
        for (int i = 0; i < newClazzCount; i++) {
            const char *className = class_getName(clazzes[i]);
            NSLog(@"%s", className);
        }
        free(clazzes);
    });
    NSLog(@"objc_getClassList获取到已经注册的类的总数");
    NSLog(@"objc_copyClassList获取到所有已经注册的类");
}

- (void)testRunObjc_getClass {
    TestProjectMeModel *meM = [[TestProjectMeModel alloc] init];
    Class objcClass = objc_getClass("TestProjectMeModel");
    Class objcMetaClass = objc_getMetaClass("TestProjectMeModel");
    Class objcInstanceClass = [meM class];
    NSLog(@"objc_getClass isClasss %u %p %@", object_isClass(objcClass), objcClass, objcClass);
    NSLog(@"objcMetaClass isClasss %u %p %@", object_isClass(objcMetaClass), objcMetaClass, objcMetaClass);
    NSLog(@"[objc class] isClasss %u %p %@", object_isClass(objcInstanceClass), objcInstanceClass, objcInstanceClass);
    Class objcLookClass = objc_lookUpClass("TestProjectMeModel");
    NSLog(@"objc_lookUpClass isClasss %u %p %@", object_isClass(objcLookClass), objcLookClass, objcLookClass);
    Class objcRequestClass = objc_getRequiredClass("TestProjectMeModel");
    NSLog(@"objc_getRequiredClass isClasss %u %p %@", object_isClass(objcRequestClass), objcRequestClass, objcRequestClass);
    NSLog(@"objc_getClass、[objc class]、objc_lookUpClass、objc_getRequiredClass获取的是同一个对象，objc_getRequiredClass必须是注册了的class，否则会崩溃，其它的则返回nil，objc_getMetaClass获取的是metaClass对象");
    NSLog(@"class_isMetaClass %u %u %u %u %u", class_isMetaClass(objcClass), class_isMetaClass(objcMetaClass), class_isMetaClass(objcInstanceClass), class_isMetaClass(objcLookClass), class_isMetaClass(objcRequestClass));
    NSLog(@"class_isMetaClass 只有通过objc_getMetaClass获得的class是MetaClass");
    Class superObjcClass = class_getSuperclass(objcClass);
    Class superObjcMetaClass = class_getSuperclass(objcMetaClass);
    Class superObjcInstanceClass = class_getSuperclass(objcInstanceClass);
    Class superObjcLookClass = class_getSuperclass(objcLookClass);
    Class superObjcRequestClass = class_getSuperclass(objcRequestClass);
    Class objcFatherClass = objc_getClass("TestProjectFatherModel");
    Class objcFatherMetaClass = objc_getMetaClass("TestProjectFatherModel");
    NSLog(@"%@ %p", objcFatherMetaClass, objcFatherMetaClass);
    NSLog(@"%@ %p", objcFatherClass, objcFatherClass);
    
    NSLog(@"class_getSuperclass %@ %@ %@ %@ %@ %p %p %p %p %p", superObjcClass, superObjcMetaClass, superObjcInstanceClass, superObjcLookClass, superObjcRequestClass, superObjcClass, superObjcMetaClass, superObjcInstanceClass, superObjcLookClass, superObjcRequestClass);
    NSLog(@"class_getSuperclass 获得的是父类的class, mataClass获得的是父类的mataClass");
    
    NSLog(@"class_getVersion: 修改前%d", class_getVersion(objcInstanceClass));
    class_setVersion(objcInstanceClass, 2);
    NSLog(@"class_getVersion: 修改后%d", class_getVersion(objcInstanceClass));
    
    BOOL class_isRespons = class_respondsToSelector(objcClass, @selector(write:));
    BOOL metaClass_isRespons = class_respondsToSelector(objcMetaClass, @selector(write:));
    NSLog(@"class_isRespons:%u;metaClass_isRespons:%u", class_isRespons, metaClass_isRespons);
    NSLog(@"class_respondsToSelector()获取的是该类是否实现相应的方法");
    NSLog(@"class是获取是否实现了-方法；metaClass是获取是否实现了+方法；");
}

- (void)testRunObjcRutime {
    TestProjectMeModel *meM = [[TestProjectMeModel alloc] init];
    meM->selfName = @"I am selfName";
    meM.meName = @"I am meName";
    
    NSString *selfName = ((NSString*(*)(id, SEL))objc_msgSend)(meM, sel_registerName("isSelfName"));
    NSLog(@"selfName:%@", selfName);
    NSLog(@"object_getClass(meM):%@", object_getClass(meM));
    NSLog(@"object_getClass(meM.class):%@", object_getClass(meM.class));
    NSLog(@"object_getClass的实例和class返回的都是calss");
    
    NSLog(@"object_isClass(meM):%u", object_isClass(meM));
    NSLog(@"object_isClass(meM.class):%u", object_isClass(meM.class));
    NSLog(@"object_isClass的实例返回的是false，class返回的是true");

    object_setClass(meM, TestProjectFatherModel.class);
    NSLog(@"已经转成TestProjectFatherModel.class");
    NSLog(@"object_getClass(meM):%@", object_getClass(meM));
    NSLog(@"object_getClass(meM.class):%@", object_getClass(meM.class));
    NSLog(@"object_isClass(meM):%u", object_isClass(meM));
    NSLog(@"object_isClass(meM.class):%u", object_isClass(meM.class));
    
    NSLog(@"已经转成TestProjectFatherModel.class, 调用下面方法会崩溃");
//    meM.meName = @"this is me";
//    meM->_meName = @"this is me";
//    meM->_wifeName = @"wo shi wifeName";
//    meM->_motherName = @"wo shi motherName";
//    meM->_daughterName = @"wo shi daugtherName";
    meM->_fatherName = @"wo shi fatherName";
    meM->selfName = @"wo shi selfName";
//    meM->_grandFatherName = @"wo shi grandFatherName";
//    meM->_grandMotherName = @"wo shi grandMotherName";
//    meM->_sonName = @"wo shi son name";
//    meM->_wifeAge = 25;
//    meM->_grandFatherAge = 90;
//    meM->_grandMotherAge = 80;
//    meM->_sonAge = 4;
//    meM->_motherAge = 55;
//    meM->_fatherAge = 50;
//    meM->_daughterAge = 2;
//    [meM write];
    NSLog(@"_fatherName:%@", meM->_fatherName);
    NSLog(@"selfName:%@", meM->selfName);
    NSLog(@"meName:%@", meM.meName);
    
    object_setClass(meM, [TestProjectMotherModel class]);
    ((void(*)(id, SEL, NSString *))objc_msgSend)(meM, @selector(setDaughterName:), @"I am is Mother Daughter");
    NSString *dautherName = ((NSString*(*)(id, SEL))objc_msgSend)(meM, @selector(daughterName));
    NSLog(@"dautherName:%@", dautherName);
    NSLog(@"object_setClass转换后，对原有的public的属性是可以继续设置并获取到，其它的属性和方法都会造成崩溃");
}

- (void)testRunObjcObjc {
    SEL sel = @selector(write:listen:smell:seeing:);
//    const char *selName = sel_getName(sel);
//    NSLog(@"sel_getName: %s", selName);
//    SEL registerSel = sel_registerName(selName);
//    ((void(*)(id, SEL, NSString *, NSString *, NSString *, NSString *))objc_msgSend)(self, registerSel, @"homework", @"music", @"aroma", @"moving");

    TestProjectMeModel *meM = [[TestProjectMeModel alloc] init];
    [meM setMeModelInfo];
    NSLog(@"object_getClassName(meM):%s", object_getClassName(meM));
    NSLog(@"object_getClassName(meM.class):%s", object_getClassName(meM.class));

    NSLog(@"%p %p", meM, meM.class);
    NSLog(@"%u", sel_isMapped(sel));
    
    ((void(*)(id, SEL, NSString *, NSString *, NSString *, NSString *))objc_msgSend)(self, sel_getUid("write:listen:smell:seeing:"), @"homework", @"music", @"aroma", @"moving");

    NSLog(@"sel_getUid、sel_registerName效果是一样的，使用objc_msgSend是直接执行方法");
    [meM setEnumerationHandler];
}

- (void)testObjcCopy {
    /**
     不可变遇不可变还是不可变，指针不改变
     不可变遇可变变成可变， 指针改变
     可变遇不可变变成不可变， 指针改变
     可变遇可变还是可变，指针改变
     数组和字典里的数据内容和指针不变
     */
    NSLog(@"\nNSString==========================");
    NSString *str = @"abc";
    NSString *assignStr = str ;
    NSString *copyStr = [str copy];
    NSMutableString *mutCopy_str = [str mutableCopy];
    [mutCopy_str appendString:@"efg"];
    NSString *mutCopyStr = [str mutableCopy];
    ((void(*)(id, SEL, id))objc_msgSend)(mutCopyStr, sel_registerName("appendString:"), @"6");
    NSLog(@"str:%@ %p %@ assignStr:%@ %p %@ copyStr:%@ %p %@ mutCopy_str:%@ %p %@ mutCopyStr:%@ %p %@", str, str, [str class], assignStr, assignStr, [assignStr class], copyStr, copyStr, [copyStr class], mutCopy_str, mutCopy_str, [mutCopy_str class], mutCopyStr, mutCopyStr, [mutCopyStr class]);
    
    NSLog(@"\nNSMutableString==========================");
    NSMutableString *mutStr = [NSMutableString stringWithString:str];
    NSMutableString *assagin_mutStr = mutStr;
    NSString *copy_mutStr = [mutStr copy];
    ((void(*)(id, SEL, id))objc_msgSend)(copy_mutStr, sel_registerName("appendString:"), @"6");
    NSString *mutcopy_mutStr = [mutStr mutableCopy];
    ((void(*)(id, SEL, id))objc_msgSend)(mutcopy_mutStr, sel_registerName("appendString:"), @"6");
    NSMutableString *m_mutcopy_mutStr = [mutStr mutableCopy];
    [m_mutcopy_mutStr appendString:@"6"];
    NSLog(@"mutStr:%@ %p %@ assagin_mutStr:%@ %p %@ copy_mutStr:%@ %p %@ mutcopy_mutStr:%@ %p %@ m_mutcopy_mutStr:%@ %p %@", mutStr, mutStr, [mutStr class], assagin_mutStr, assagin_mutStr, [assagin_mutStr class], copy_mutStr, copy_mutStr, [copy_mutStr class], mutcopy_mutStr, mutcopy_mutStr, [mutcopy_mutStr class], m_mutcopy_mutStr, m_mutcopy_mutStr, [m_mutcopy_mutStr class]);

    NSLog(@"\nNSArray==========================");
    NSArray *arr = @[@"1", @"2", @"3", @"4"];
    NSArray *copyArr = [arr copy];
    NSMutableArray *m_copyArr = [arr copy];
    [m_copyArr addObject:@"5"];
    ((void(*)(id, SEL, id))objc_msgSend)(m_copyArr, sel_registerName("addObject:"), @"6");
    NSArray *mutCopyArr = [arr mutableCopy];
    ((void(*)(id, SEL, id))objc_msgSend)(mutCopyArr, sel_registerName("addObject:"), @"5");
    NSLog(@"arr:%@ %p %@ copyArr:%@ %p %@ m_copyArr:%@ %p %@ mutCopyArr:%@ %p %@", arr, arr, [arr class], copyArr, copyArr, [copyArr class], m_copyArr, m_copyArr, [m_copyArr class], mutCopyArr, mutCopyArr, [mutCopyArr class]);
    for (NSInteger i = 0; i < arr.count; i++) {
        id arr_id = [arr objectAtIndex:i];
        id copyArr_id = [copyArr objectAtIndex:i];
        id m_copyArrr_id = [m_copyArr objectAtIndex:i];
        id mutCopyArr_id = [mutCopyArr objectAtIndex:i];
        NSLog(@"arr_id:%@ %p %@ copyArr_id:%@ %p %@ m_copyArrr_id:%@ %p %@ mutCopyArr_id:%@ %p %@", arr_id, arr_id, [arr_id class], copyArr_id, copyArr_id, [copyArr_id class], m_copyArrr_id, m_copyArrr_id, [m_copyArrr_id class], mutCopyArr_id, mutCopyArr_id, [mutCopyArr_id class]);
    }

    NSLog(@"\nNSMutableArray==========================");
    NSMutableArray *mutArr = [NSMutableArray arrayWithArray:arr];
    NSArray *copy_mutArr = [mutArr copy];
    ((void(*)(id, SEL, id))objc_msgSend)(copy_mutArr, sel_registerName("addObject:"), @"5");
    NSMutableArray *mutcopy_mutArr = [mutArr mutableCopy];
    [mutcopy_mutArr addObject:@"5"];
    NSLog(@"mutArr:%@ %p %@ copy_mutArr:%@ %p %@ mutcopy_mutArr:%@ %p %@", mutArr, mutArr, [mutArr class], copy_mutArr, copy_mutArr, [copy_mutArr class], mutcopy_mutArr, mutcopy_mutArr, [mutcopy_mutArr class]);
    for (NSInteger i = 0; i < mutArr.count; i++) {
        id mutArr_id = [mutArr objectAtIndex:i];
        id copy_mutArr_id = [copy_mutArr objectAtIndex:i];
        id mutcopy_mutArr_id = [mutcopy_mutArr objectAtIndex:i];
        NSLog(@"mutArr_id:%@ %p %@ copy_mutArr_id:%@ %p %@ mutcopy_mutArr_id:%@ %p %@", mutArr_id, mutArr_id, [mutArr_id class], copy_mutArr_id, copy_mutArr_id, [copy_mutArr_id class], mutcopy_mutArr_id, mutcopy_mutArr_id, [mutcopy_mutArr_id class]);
    }
    
    NSLog(@"\nNSDictionary==========================");
    NSDictionary *dic = @{@"key1":@"value1", @"key2":@"value2"};
    NSMutableDictionary *copy_dic = [dic copy];
    [copy_dic setObject:@"value3" forKey:@"key3"];
    NSDictionary *mutcopy_dic = [dic mutableCopy];
    ((void(*)(id, SEL, id, id))objc_msgSend)(mutcopy_dic, sel_registerName("setObject:forKey:"), @"value3", @"key3");
    NSLog(@"dic:%@ %p %@ copy_dic:%@ %p %@ mutcopy_dic:%@ %p %@", dic, dic, [dic class], copy_dic, copy_dic, [copy_dic class], mutcopy_dic, mutcopy_dic, [mutcopy_dic class]);
    
    NSArray *allKeys = dic.allKeys;
    for (NSInteger i = 0; i < allKeys.count; i++) {
        NSString *key = allKeys[i];
        id dic_value = [dic objectForKey:key];
        id copy_dic_value = [copy_dic objectForKey:key];
        id mutcopy_dic_value = [mutcopy_dic objectForKey:key];
        NSLog(@"dic_value:%@ %p %@ copy_dic_value:%@ %p %@ mutcopy_dic_value:%@ %p %@", dic_value, dic_value, [dic_value class], copy_dic_value, copy_dic_value, [copy_dic_value class], mutcopy_dic_value, mutcopy_dic_value, [mutcopy_dic_value class]);
    }
    
    NSLog(@"\nNSMutableDictionary==========================");
    NSMutableDictionary *mutDic = [NSMutableDictionary dictionaryWithDictionary:dic];
    NSMutableDictionary *copy_mutDic = [mutDic copy];
    [copy_dic setObject:@"value3" forKey:@"key3"];
    NSDictionary *mutcopy_mutDic = [mutDic mutableCopy];
    ((void(*)(id, SEL, id, id))objc_msgSend)(mutcopy_dic, sel_registerName("setObject:forKey:"), @"value3", @"key3");
    NSLog(@"mutDic:%@ %p %@ copy_dic:%@ %p %@ mutcopy_mutDic:%@ %p %@", mutDic, mutDic, [mutDic class], copy_dic, copy_dic, [copy_dic class], mutcopy_mutDic, mutcopy_mutDic, [mutcopy_mutDic class]);
    
    NSArray *mutDic_allKeys = mutDic.allKeys;
    for (NSInteger i = 0; i < allKeys.count; i++) {
        NSString *key = mutDic_allKeys[i];
        id mutDic_value = [mutDic objectForKey:key];
        id copy_mutDic_value = [copy_mutDic objectForKey:key];
        id mutcopy_mutDic_value = [mutcopy_mutDic objectForKey:key];
        NSLog(@"mutDic_value:%@ %p %@ copy_dic_value:%@ %p %@ mutcopy_dic_value:%@ %p %@", mutDic_value, mutDic_value, [mutDic_value class], copy_mutDic_value, copy_mutDic_value, [copy_mutDic_value class], mutcopy_mutDic_value, mutcopy_mutDic_value, [mutcopy_mutDic_value class]);
    }

    NSLog(@"\n/**\n不可变遇不可变还是不可变，指针不会改变\n不可变遇可变变成可变， 指针改变\n可变遇不可变变成不可变， 指针改变\n可变遇可变还是可变，指针改变\n数组和字典里的数据内容和指针不变\n*/");
}

- (void)testRunObjcClass {
    TestProjectMeModel *meModel = [[TestProjectMeModel alloc] init];
//    [meModel performSelector:@selector(write:listen:smell:)];
//    [meModel performSelector:@selector(write:listen:smell:) withObject:@"homework"];
//    [meModel performSelector:@selector(write:listen:smell:seeing:) withObject:@"homework" withObject:@"music"];
//    下面是不会崩溃
    [meModel performSelector:@selector(write) withObject:@"homework"];
//    [meModel performSelector:@selector(write:listen:) withObject:@"homework"];
//    [meModel performSelector:@selector(write:) withObject:@"homework" withObject:@"music"];
    NSLog(@"performSelector: sel方法必须实现 参数可以多;有参数的必需传入一个参数，多个参数的只能少一个参数，少的参数打印出来是上一个入参");
    
    NSProxy *proxy = [NSProxy alloc];
    NSLog(@"TestProjectMeModel isProxy:%u", [meModel isProxy]);
    NSLog(@"NSProxy isProxy:%u", [proxy isProxy]);
    NSLog(@"isProxy 返回0表示这个class是继承于NSObject， 否则这个class不是继承于NSObject，只是遵守NSObject协议\n");
    
    NSLog(@"instance TestProjectMeModel isKindOfClass TestProjectGrandFaterModel:%u", [meModel isKindOfClass:[TestProjectGrandFaterModel class]]);
    NSLog(@"class TestProjectMeModel isKindOfClass TestProjectGrandFaterModel:%u", [TestProjectMeModel isKindOfClass:[TestProjectGrandFaterModel class]]);
    
    NSLog(@"instance TestProjectMeModel isMemberOfClass TestProjectGrandFaterModel:%u", [meModel isMemberOfClass:[TestProjectGrandFaterModel class]]);
    NSLog(@"class TestProjectMeModel isMemberOfClass TestProjectGrandFaterModel:%u", [TestProjectMeModel isMemberOfClass:[TestProjectGrandFaterModel class]]);
    NSLog(@"instance TestProjectMeModel isMemberOfClass TestProjectMeModel:%u", [meModel isMemberOfClass:[TestProjectMeModel class]]);
    NSLog(@"class TestProjectMeModel isMemberOfClass TestProjectMeModel:%u", [TestProjectMeModel isMemberOfClass:[TestProjectMeModel class]]);

    NSLog(@"isKindOfClass 只有是子类或者本类的实例对象才是YES，其它的都是NO，isMemberOfClass只有本类的实例对象返回的是YES，其它的都是NO\n");
    NSLog(@"class TestProjectMeModel isSubclassOfClass TestProjectGrandFaterModel:%u", [TestProjectMeModel isSubclassOfClass:[TestProjectGrandFaterModel class]]);
    NSLog(@"isSubclassOfClass只有class方法\n");


    NSLog(@"[TestProjectMeModel conformsToProtocol:@protocol(NSObject)]: %u", [TestProjectMeModel conformsToProtocol:@protocol(NSObject)]);
    NSLog(@"[meModel conformsToProtocol:@protocol(NSObject)]: %u", [meModel conformsToProtocol:@protocol(NSObject)]);
    NSLog(@"conformsToProtocol class和实例都可以适用\n");
    
    NSLog(@"[TestProjectMeModel respondsToSelector:@selector(write:)]: %u", [TestProjectMeModel respondsToSelector:@selector(write:)]);
    NSLog(@"[meModel respondsToSelector:@selector(write:)]: %u", [meModel respondsToSelector:@selector(write:)]);
    NSLog(@"[TestProjectMeModel respondsToSelector:@selector(write:listen:smell:)]: %u", [TestProjectMeModel respondsToSelector:@selector(write:listen:smell:)]);
    NSLog(@"[meModel respondsToSelector:@selector(write:listen:smell:)]: %u", [meModel respondsToSelector:@selector(write:listen:smell:)]);
    NSLog(@"respondsToSelector class和实例都可以适用, class对应的是@implementation的+方法实现，实例对应的是-方法实现\n");
}

- (void)testRunObjcMethodCrash {
    TestProjectMeModel *meModel = [[TestProjectMeModel alloc] init];
//    [meModel eating:@"apple" playing:@"footerball"];
    [meModel eating:@"apple"];
//    [meModel eating:@"apple" playing:@"footerball" seeing:@"movie"];
//    [TestProjectMeModel eating:@"watermelon"];
}

- (void)testRunSuperInit {
    CancelUnusedVariable({
        TestProjectMeModel *meM = [[TestProjectMeModel alloc] init];
        TestProjectMotherModel *mother = [[TestProjectMotherModel alloc] init];
        TestProjectMeModel *grandSon_meM = [[TestProjectGrandSonModel alloc] init];
    })
    NSLog(@"-init 方法实现顺序:");
    NSLog(@"-init一次调用一次");
    NSLog(@"    谁先掉用init谁先执行，如果有category实现了-init，则category执行-init，原类不执行，有多个category，如果是不同文件里的，按照target--->Build phases--->compile sources的.m文件顺序在后面先执行该文件，在同文件里按照@implementation后面先实现顺序执行");
    NSLog(@"while1 (如果有父类) {");
    NSLog(@"     父类执行while1");
    NSLog(@"     if (自己有-init)");
    NSLog(@"         自己执行-init");
    NSLog(@"     }");
    NSLog(@"} do (当父类为NSObject)");
}

- (void)testRunInitialize {
    NSLog(@"+initialize 方法实现顺序:");
    CancelUnusedVariable({
        TestProjectGrandFaterModel *grandFatherM = [[TestProjectGrandFaterModel alloc] init];
        TestProjectMeModel *meM1 = [[TestProjectMeModel alloc] init];
        TestProjectMotherModel *motherM1 = [[TestProjectMotherModel alloc] init];
        TestProjectMotherModel *motherM2 = [[TestProjectMotherModel alloc] init];
        TestProjectMeModel *meM2 = [[TestProjectSonModel alloc] init];
        TestProjectMeModel *meM3 = [[TestProjectFatherModel alloc] init];
        TestProjectGrandSonModel *grandSon = [[TestProjectGrandSonModel alloc] init];
    });
    
    NSLog(@"在main函数之后执行，可能会执行多次");
    NSLog(@"    谁先掉用谁先执行，如果有category实现了+initialize，则category执行+initialize，原类不执行，有多个category，如果是不同文件里的，按照target--->Build phases--->compile sources的.m文件顺序在后面先执行该文件，在同文件里按照@implementation在后面先执行");
    NSLog(@"while1 (如果有父类) {");
    NSLog(@"     父类执行while1");
    NSLog(@"     if (自己有+initialize)");
    NSLog(@"         if (自己没有执行过+initialize) {");
    NSLog(@"              自己执行+initialize");
    NSLog(@"         }");
    NSLog(@"     } else {");
    NSLog(@"         while2 (有父类) {");
    NSLog(@"              if (父类有+initialize) {");
    NSLog(@"                  父类执行+initialize");
    NSLog(@"              } else {");
    NSLog(@"                  父类执行while2");
    NSLog(@"              }");
    NSLog(@"         } do (父类为nil或者父类实现了+initialize)");
    NSLog(@"     }");
    NSLog(@"} do (当父类为nil)");
}

- (void)testRunLoad  {
    NSLog(@"+load 方法实现顺序:");
    NSLog(@"在main函数之前执行并且只会执行一次");

    NSString *afterStr = @"在所有原类的+load方法执行完后再去执行";
    NSString *targetStr = @"如果是不同文件里的，按照target--->Build phases--->compile sources的.m文件顺序先执行该文件";
    NSString *implStr = @"再在同文件里按照@implementation实现顺序执行";
    
    NSLog(@"\n");
    NSLog(@"没有继承关系的原类+load方法执行逻辑：");
    NSLog(@"======>原类的+load方法执行顺序为：%@，%@\n", targetStr, implStr);
    
    NSLog(@"\n");
    NSLog(@"没有继承关系的categor类+load方法执行逻辑：");
    NSLog(@"======>category的+load方法执行顺序为：");
    NSLog(@"if (原类实现了+load) {");
    NSLog(@"    则category里的+load方法执行顺序为：%@，%@，%@", afterStr, targetStr, implStr);
    NSLog(@"} else if (原类有多个category实现了+load) {");
    NSLog(@"    %@，%@，%@", afterStr, targetStr, implStr);
    NSLog(@"} else if (原类只有一个category实现了+load) {");
    NSLog(@"    会先在其它所有原类的+load执行之前先执行，不管是否是在同一个文件里，先执行并且按照类名的字符串大小进行从小到大排序执行");
    NSLog(@"}");
    
    NSLog(@"\n");
    NSLog(@"有继承关系的原类+load方法执行逻辑：");
    NSLog(@"while1 (原类有+load方法执行)");
    NSLog(@"    原类的+load方法执行顺序为：%@，%@", targetStr, implStr);
    NSLog(@"    while2 (执行到某个类有父类) {");
    NSLog(@"         如果父类没有执行，则父类执行while2");
    NSLog(@"    } do (父类已经执行或者父类为NSObject)");
    NSLog(@"} do (没有了+load方法执行)");
    
    NSLog(@"\n");
    NSLog(@"有继承关系的categor类+load方法执行逻辑：");
    NSLog(@"while (有+load方法执行) {");
    NSLog(@"    whileA (原类只有一个category实现了+load) {");
    NSLog(@"        会先在其它所有原类的+load执行之前先执行，不管是否是在同一个文件里，先执行并且按照类名的字符串大小进行从小到大排序执行");
    NSLog(@"        while1 (执行到某个类有父类) {");
    NSLog(@"            如果父类没有执行，则父类执行while1");
    NSLog(@"        } do (父类已经执行或者父类为NSObject)");
    NSLog(@"    } do ((当原类只有一个category实现+load)的所有category全部执行完毕)");
    NSLog(@"    whileB (当有原类的多个categor实现了+load) {");
    NSLog(@"       此时category的+load方法放在所有原类的+load方法之后执行，%@，%@", targetStr, implStr);
    NSLog(@"    } do (所有的原类多个categor的+load全部执行完毕)");
    NSLog(@"    whileC (当有原类实现了+load) {");
    NSLog(@"        会先在其它所有原类的+load执行之前先执行，不管是否是在同一个文件里，先执行并且按照类名的字符串大小进行从小到大排序执行");
    NSLog(@"        while2 (执行到某个类有父类) {");
    NSLog(@"            如果父类没有执行，则父类执行while2");
    NSLog(@"            if (有原类实现了+load) {");
    NSLog(@"               则原类执行+load方法, 此时category的+load方法放在所有原类的+load方法之后执行，%@，%@", targetStr, implStr);
    NSLog(@"            }");
    NSLog(@"        } do (父类已经执行或者父类为NSObject)");
    NSLog(@"        if (有原类实现了+load) {");
    NSLog(@"            则原类执行+load方法, 此时category的+load方法放在所有原类的+load方法之后执行，%@，%@", targetStr, implStr);
    NSLog(@"         }");
    NSLog(@"    } do (所有的原类的+load全部执行完毕)");
    NSLog(@"} do (所有的+load方法执行完毕)");
}

@end
