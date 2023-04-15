//
//  TestProjectConfig.h
//  TestProjectIOS
//
//  Created by zjrcumac on 2023/3/6.
//

#ifndef TestProjectConfig_h
#define TestProjectConfig_h

#define isNSLog 1

#ifdef DEBUG
#define NSLog(FORMAT, ...) if (isNSLog && [self enableLog]) { fprintf(stderr, "%s:%d\t%s\n", [[[NSString stringWithUTF8String: __FILE__] lastPathComponent] UTF8String], __LINE__, [[NSString stringWithFormat: FORMAT, ## __VA_ARGS__] UTF8String]);}
#else
#define NSLog(FORMAT, ...) nil
#endif

//弱引用
#define WS(wSelf)   __weak typeof(self) wSelf = self
//强引用
#define SS(sSelf)   __strong typeof(wSelf) sSelf = wSelf

//弱引用
#define WO(wObjc, objc)   __weak typeof(objc) wObjc = objc
//强引用
#define SO(sObjc, objc)   __strong typeof(wObjc) sObjc = wObjc


#endif /* TestProjectConfig_h */
