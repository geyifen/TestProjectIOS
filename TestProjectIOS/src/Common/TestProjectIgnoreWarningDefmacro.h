//
//  TestProjectIgnoreWarningDefmacro.h
//  TestProjectIOS
//
//  Created by liwenfan on 2022/6/9.
//

#ifndef TestProjectIgnoreWarningDefmacro_h
#define TestProjectIgnoreWarningDefmacro_h

/**方法未在本类实现的警告*/
#define CancelPerformSelectorLeakWarning(work) CancelWarning(work, "clang diagnostic ignored \"-Warc-performSelector-leaks\"")
/**分母为0的警告 "division by zero" */
#define CancelDivisionByZeroWarning(work) CancelWarning(work, "clang diagnostic ignored \"-Wdivision-by-zero\"")
/**返回的值未被使用的的警告 "Expression result unused" "Unused variable **" */
#define CancelUnusedValue(work) CancelWarning(work, "clang diagnostic ignored \"-Wunused-value\"")
/**返回的值未被使用的的警告 "Unused variable **" */
#define CancelUnusedVariable(work) CancelWarning(work, "clang diagnostic ignored \"-Wunused-variable\"")
/**方法被废弃**/
#define CancelDeprecated(work) CancelWarning(work, "clang diagnostic ignored \"-Wdeprecated\"")
/**返回的对象类型和声明的对象类型不一致**/
#define CancelIncompatiblePointerTypes(work) CancelWarning(work, "clang diagnostic ignored \"-Wincompatible-pointer-types\"")

#define CancelWarning(work, warning) \
_Pragma("clang diagnostic push") \
_Pragma(warning) \
work; \
_Pragma("clang diagnostic pop") \

#endif /* TestProjectIgnoreWarningDefmacro_h */


//#pragma clang diagnostic push
//#pragma clang diagnostic ignored "warning"
//work;
//#pragma clang diagnostic pop
