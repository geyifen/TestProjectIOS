//
//  TestProjectString.m
//  TestProjectIOS
//
//  Created by zjrcumac on 2023/1/17.
//

#import "TestProjectString.h"

@implementation TestProjectString

- (instancetype)init {
    if (self = [super init]) {
        [self testRun];
    }
    return self;
}

- (void)testRun {
    NSMutableString *mutStr = [NSMutableString string];
    for (NSInteger i = 0; i <= 200; i++) {
        NSLog(@" ascii:%c:%d---strerror(%d):%s", i, i, i, strerror(i));
    }
    NSLog(@"strerror()根据数值返回系统定义好的错误信息");
    
    char dst[2] = "a";
    char ch = 'o';
    char src[100] = "lhhea";
    size_t size = MAX(strlen(src), strlen(dst)) + 1;
    NSLog(@"strlen(dst):%lu strlen(src):%lu", strlen(dst), strlen(src));
    NSLog(@"strlen()获取字符串的大小");
            
//    size_t strxfrm_size = strxfrm(dst, src, 5);
//    NSLog(@"strxfrm_size:%zu dst:%s src:%s", strxfrm_size, dst, src);
//    NSLog(@"strlen(dst):%lu strlen(src):%lu", strlen(dst), strlen(src));
//    NSLog(@"strxfrm()把src的前几个字符串放到dst中，注意最后是会有\o做为结束符的");
//
//    char *p;
//    char *strtok_r_str = strtok_r(dst, src, &p);
//    NSLog(@"strtok_r_str:%s dst:%s src:%s p:%s", strtok_r_str, dst, src, p);
//
//    char *strtok_str = strtok(dst, src);
//    NSLog(@"strtok_str:%s dst:%s src:%s", strtok_str, dst, src);
//    NSLog(@"strtok()按每个字符一一分割，按照顺序对一个字符进行分割，分割后的字符为这个字符前面的所有字符，得到后的字符在按照下一个字符进行分割，直到数据为null或者分割字符走完;还会改变dst");
//    NSLog(@"strtok()分割比较复杂");
//
//    char *strstr_str = strstr(dst, src);
//    NSLog(@"strstr_str:%s dst:%s src:%s", strstr_str, dst, src);
//    NSLog(@"strstr()dst完全包含src的字符后的所有字符串");
//
//    size_t strcspn_size = strcspn(dst, src);
//    NSLog(@"strcspn_size:%d dst:%s src:%s", strcspn_size, dst, src);
//    NSLog(@"strcspn()dst的开头连续的%d个字符不在src中", strcspn_size);
//
//    char *strrchr_str = strrchr(dst, 'h');
//    NSLog(@"strrchr_str:%s dst:%s src:%s", strrchr_str, dst, src);
//    NSLog(@"strrchr()获取最后一个匹配字符的字符串");
//
//    char *strpbrk_str = strpbrk(dst, src);
//    NSLog(@"strpbrk_str:%s dst:%s src:%s", strpbrk_str, dst, src);
//    NSLog(@"strpbrk()在src中首个包含dst中字符的字符串数据");
//
//    char *strncpy_str = strncpy(dst, src, 30);
//    NSLog(@"strncpy_str:%s dst:%s src:%s", strncpy_str, dst, src);
//    NSLog(@"strncpy()只把src的前10个覆盖到dst上，dst的空间必须大于MIN(要拼接的长度,MAX(src的字符串长度, dst的字符串长度))");
//
//    int strncmp_int = strncmp(dst, src, 10);
//    NSLog(@"strncmp_int:%d dst:%s src:%s", strncmp_int, dst, src);
//    NSLog(@"strncmp()从0开始算的在10个字符内，比较dst和src首个不同字符的大小");
//
//    char *strncat_str = strncat(dst, src, 1);
//    NSLog(@"strncat_str:%s dst:%s src:%s", strncat_str, dst, src);
//    NSLog(@"strncat()把src拼接到dst字符串后面，dst的空间要大于dst的字符长度+MIN(要拼接的长度,src的字符串长度)");
//
//
//    char *p;
//    p = (char *)memchr(dst, ch, 11);
//    if (p == NULL) {
//        NSLog(@"memchr查找失败");
//    } else {
//        NSLog(@"memchr查找成功%s", p);
//    }
//    NSLog(@"void *memchr(const void *, int, size_t)从给定的字符里查找指定的字符并返回指定字符之后所有的字符，第三个参数设置为查找范围");
//
//
//    int memcmp_res = memcmp(dst, src, size);
//    NSLog(@"memcmp_res:%d", memcmp_res);
//    NSLog(@"memcmp()比较两个字符的大小,返回的是第一个不同字符的ascii差值, 注意最后一个隐藏的字符'\\o'");
//
//    memcpy(dst, src, size);
//    NSLog(@"memcpy:dst:%s src:%s", dst, src);
//    NSLog(@"memcpy()dst初始化的时候大小要超过dst和src两个字符的长度，否则会崩溃, 把dst设置成scr，最后一个参数是要修改dst的几个字符");
//
//    memmove(dst, src, 2);
//    NSLog(@"memmove:dst:%s src:%s", dst, src);
//    NSLog(@"memmove()dst，dst的大小要么超过src的大小，要么超过修改的大小，否则是会崩溃的，最后一个参数是要修改dst的几个字符");
//
//
//    int setCount = 10;
//    int *p = NULL;
//    p = (int *)malloc(sizeof(int) * setCount);
//    for (int i = 0; i < setCount; i++) {
//        NSLog(@"memset之前 i:%d value:%d", i, *(p + i));
//    }
//    memset(p, 0x0, sizeof(int) * setCount);
//    for (int i = 0; i < setCount; i++) {
//        NSLog(@"memset之后 i:%d value:%d", i, *(p + i));
//    }
//    free(p);
//    p = NULL;
//    NSLog(@"memset()重新设置内存数据");
//
//    char *newS = strcat(dst, src);
//    NSLog(@"strcat:dst:%s src:%s newS:%s", dst, src, newS);
//    NSLog(@"strcat()dst, 将src拷贝到dst中，dst的大小要么超过dst+src+2的大小，src的初始化大小要大于字符长度，否则是会崩溃的");
//
//    char *newS = strchr(dst, 'o');
//    NSLog(@"strchr:dst:%s src:%s newS:%s", dst, src, newS);
//    NSLog(@"strchr()从给定的字符里查找指定的字符并返回指定字符之后所有的字符");
//
//
//    int strcmp_res = strcmp(dst, src);
//    NSLog(@"strcmp_res:%d", strcmp_res);
//    NSLog(@"strcmp()比较两个字符的大小,返回的是第一个不同字符的ascii差值, 注意最后一个隐藏的字符'\\o'");
//
//    int strcoll_res = strcoll(dst, src);
//    NSLog(@"strcoll_res:%d", strcoll_res);
//    NSLog(@"strcoll()比较两个字符的大小,返回的是第一个不同字符的ascii差值, 注意最后一个隐藏的字符'\\o'");
//
//    char *strcpy_str = strcpy(dst, src);
//    NSLog(@"strcpy_str:%s dst:%s src:%s", strcpy_str, dst, src);
//    NSLog(@"strchr()把src的字符覆盖到dst，dst的大小必需大于dst字符长度&&大于src字符长度，否则崩溃");
//
//    size_t strspn_size = strspn(dst, src);
//    NSLog(@"strspn_size:%u dst:%s src:%s", strspn_size, dst, src);
//    NSLog(@"strspn() src字符中含有 dst中从开始的每个字符串 连续不中断的字符长度");
//    NSLog(@"for (每个字符串 in dst) {");
//    NSLog(@"    if (每个字符串被包含在src字符串中) {");
//    NSLog(@"        strspn_size++;");
//    NSLog(@"    else {");
//    NSLog(@"        break;");
//    NSLog(@"    }");
//    NSLog(@"}");

}


@end
