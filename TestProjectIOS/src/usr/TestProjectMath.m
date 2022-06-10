//
//  TestProjectMath.m
//  TestProjectIOS
//
//  Created by zjrcumac on 2022/5/26.
//

#import "TestProjectMath.h"

#import "TestProjectIgnoreWarningDefmacro.h"

#import <math.h>

@implementation TestProjectMath

- (instancetype)init {
    if (self = [super init]) {
        [self testRunMath];
    }
    return self;
}

- (void)testRunMath {
CancelDivisionByZeroWarning(
    NSLog(@"0 is %d; 9/3 is %d; 9/0.0 is %f; 9/0 is %d; 2/3 is %d; 9.2/0 is %f; -3/2 is %d; 0/1 is %d; 0.0/1 is %f", 0, 9/3, 9/0.0, 9/0, 2/3, 9.2/0, -3/2, 0/1, 0.0/1);
    NSLog(@"0 is %d; 9/3 is %d; 9/0.0 is %f; 9/0 is %d; 2/3 is %d; 9.2/0 is %f; -3/2 is %d; 0/1 is %d; 0.0/1 is %f", 0, 9/3, 9/0.0, 9/0, 2/3, 9.2/0, -3/2, 0/1, 0.0/1);
    NSLog(@"====isnormal=====判断是不是返回0或者是不是无穷");
    NSLog(@"0 is %d; 9/3 is %d; 9/0 is %d; 9/0.0 is %d; 2/3 is %d; 9.2/0 is %d; -3/2 is %d; 0/1 is %d; 0.0/1 is %d", isnormal(0), isnormal(9/3), isnormal(9/0), isnormal(9/0.0), isnormal(2/3), isnormal(9.2/0), isnormal(-3/2), isnormal(0/1), isnormal(0.0/1));
    
    NSLog(@"====isfinite=====判断是不是有限的");
    NSLog(@"0 is %d; 9/3 is %d; 9/0.0 is %d; 9/0 is %d; 2/3 is %d; 9.2/0 is %d; -3/2 is %d; 0/1 is %d; 0.0/1 is %d", isfinite(0), isfinite(9/3), isfinite(9/0.0), isfinite(9/0), isfinite(2/3), isfinite(9.2/0), isfinite(-3/2), isfinite(0/1), isfinite(0.0/1));

    NSLog(@"====isinf=====判断是不是有限的");
    NSLog(@"0 is %d; 9/3 is %d; 9/0.0 is %d; 9/0 is %d; 2/3 is %d; 9.2/0 is %d; -3/2 is %d; 0/1 is %d; 0.0/1 is %d", isinf(0), isinf(9/3), isinf(9/0.0), isinf(9/0), isinf(2/3), isinf(9.2/0), isinf(-3/2), isinf(0/1), isinf(0.0/1));

    NSLog(@"====isnan=====判断是不是数字");
    NSLog(@"0 is %d; 9/3 is %d; 9/0.0 is %d; 9/0 is %d; 2/3 is %d; 9.2/0 is %d; -3/2 is %d; 0/1 is %d; 0.0/1 is %d; YES is %d", isnan(0), isnan(9/3), isnan(9/0.0), isnan(9/0), isnan(2/3), isnan(9.2/0), isnan(-3/2), isnan(0/1), isnan(0.0/1), isnan(YES));

    NSLog(@"====signbit=====判断是不是负号");
    NSLog(@"0 is %d; 9/3 is %d; 9/0.0 is %d; 9/0 is %d; 2/3 is %d; 9.2/0 is %d; -3/2 is %d; 0/1 is %d; 0.0/1 is %d", signbit(0), signbit(9/3), signbit(9/0.0), signbit(9/0), signbit(2/3), signbit(9.2/0), signbit(-3/2), signbit(0/1), signbit(0.0/1));
)
    double d;
    float f;
    NSLog(@"modf(16.7, &d) 取出小数点后面的数 %f 赋值给d: %f", modf(16.72, &d), d);
    NSLog(@"modff(16.7, &f) 取出小数点后面的数 %f 赋值给f: %f", modff(16.72, &f), f);

    int i;
    NSLog(@"frexp(16.72, &i) 取出小数点后面的数 %f 赋值给i: %d", frexp(100.0, &i), i);
    NSLog(@"scalb(3, 2) is {3.0 * (2^2)} %f", scalb(3.0, 2));
    NSLog(@"cbrt(27.0) is 立方根 %f", cbrt(27.0));
    NSLog(@"hypot(3.0, 4.0) is 直角斜边的长 %f", hypot(3.0, 4.0));
    NSLog(@"powf(2.0, 3.0) is 2.0的3次方 %f", powf(2.0, 3.0));
    NSLog(@"sqrt(4.0) is 平方根%f", sqrt(4.0));
    
    NSLog(@"erf(4.0) is 误差函数 %f", erf(4.0));
    NSLog(@"erfc(4.0) is 误差互补函数 %f", erfc(4.0));
    NSLog(@"erf(x) + erfc(x) = 1");
    
    NSLog(@"lgamma(4.0) is 伽马函数的自然对数 %f", lgamma(4.0));
    NSLog(@"tgamma(4.0) is 伽马函数 %f", tgamma(4.0));
    NSLog(@"nearbyint、rint都是靠近最近的整数，如果两边相等会先靠近偶数整数");
    NSLog(@"nearbyint(4.0) %f, nearbyint(4.20) %f, nearbyint(4.50) %f, nearbyint(4.51) %f, nearbyint(4.60) %f,  nearbyint(5.50) %f", nearbyint(4.0), nearbyint(4.20), nearbyint(4.50), nearbyint(4.51), nearbyint(4.60), nearbyint(5.50));
    NSLog(@"rint(4.0) %f, rint(4.20) %f, rint(4.50) %f, rint(4.51) %f, rint(4.60) %f, rint(5.50) %f", rint(4.0), rint(4.20), rint(4.50), rint(4.51), rint(4.60), rint(5.50));
    NSLog(@"lrint(4.0) %ld, lrint(4.20) %ld, lrint(4.50) %ld, lrint(4.51) %ld, lrint(4.60) %ld, lrint(5.50) %ld", lrint(4.0), lrint(4.20), lrint(4.50), lrint(4.51), lrint(4.60), lrint(5.50));
    NSLog(@"remainder(x,y) t = x/y的四舍五入的整数值，remainder(x,y)=x-ty, 4/2.7=1.48148...");
    NSLog(@"remainder(4.0, 2.7) is %f", remainder(4.0, 2.7));
    int t;
    NSLog(@"remquo(4.0, 2.7) is %f", remquo(4.0, 2.7, &t));
    NSLog(@"remquo中的t is %d", t);
    NSLog(@"nan(\"123.45\") is %f nan(\"π\") is %f nan(\"1\")%f", nan("123.45"), nan("π"), nan("1"));
    NSLog(@"copysign(4.0, -2.1) is 取4.0的值, -2.1的符号- %f", copysign(4.0, -2.1));
    NSLog(@"fdim(x,y) if x <= y, return 0; else return x - y");
    NSLog(@"fdim(4.0, 2.1) %f, fdim(2.1, 4.0) %f", fdim(4.0, 2.1), fdim(2.1, 4.0));
    NSLog(@"返回大值fmax(4.0, 2.1) %f, fmax(2.1, 4.0) %f", fmax(4.0, 2.1), fmax(2.1, 4.0));
    NSLog(@"返回小值fmin(4.0, 2.1) %f, fmin(2.1, 4.0) %f", fmin(4.0, 2.1), fmin(2.1, 4.0));
    NSLog(@"fma(4.0, 2.1, 2.0) is (4 * 2.1 + 2) %f", fma(4.0, 2.1, 2));
    
    NSLog(@"ceil是向上取整");
    NSLog(@"ceil(4.0) %f, ceil(4.20) %f, ceil(4.50) %f, ceil(4.60) %f", ceil(4.0), ceil(4.20), ceil(4.50), ceil(4.60));
    NSLog(@"floor是向下取整");
    NSLog(@"floor(4.0) %f, floor(4.20) %f, floor(4.50) %f, floor(4.60) %f", floor(4.0), floor(4.20), floor(4.50), floor(4.60));
    NSLog(@"round是四舍五入");
    NSLog(@"round(4.0) %f, round(4.20) %f, round(4.50) %f, round(4.51) %f, round(4.60) %f, round(5.50) %f", round(4.0), round(4.20), round(4.50), round(4.51), round(4.60), round(5.50));
    NSLog(@"lround(4.0) %ld, lround(4.20) %ld, lround(4.50) %ld, lround(4.51) %ld, lround(4.60) %ld, lround(5.50) %ld", lround(4.0), lround(4.20), lround(4.50), lround(4.51), lround(4.60), lround(5.50));
    
    NSLog(@"trunc是去除小数部分");
    NSLog(@"trunc(4.0) %f, trunc(4.20) %f, trunc(4.50) %f, trunc(4.51) %f, trunc(4.60) %f, trunc(5.50) %f", trunc(4.0), trunc(4.20), trunc(4.50), trunc(4.51), trunc(4.60), trunc(5.50));
    NSLog(@"fmod(4.0, 2.1) is 对小数取余 %f", fmod(4.0, 2.1));
}

@end
