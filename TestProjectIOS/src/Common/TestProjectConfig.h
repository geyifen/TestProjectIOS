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
#define NSLog(FORMAT, ...) if (isNSLog) { fprintf(stderr, "%s:%d\t%s\n", [[[NSString stringWithUTF8String: __FILE__] lastPathComponent] UTF8String], __LINE__, [[NSString stringWithFormat: FORMAT, ## __VA_ARGS__] UTF8String]);}
#else
#define NSLog(FORMAT, ...) nil
#endif

#endif /* TestProjectConfig_h */
