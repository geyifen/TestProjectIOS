//
//  TestProjectLinkageSideTableViewModel.h
//  TestProjectIOS
//
//  Created by liwenfan on 2023/12/18.
//

#import "TestProjectTableViewModel.h"

NS_ASSUME_NONNULL_BEGIN

@interface TestProjectLinkageSideTableViewModel : TestProjectTableViewModel

/**当属性childItems为空时则代表是最后一个子叶点**/
/**右边的tableView的宽度**/
@property (nonatomic, assign) CGFloat rightSideWidth;

@end

NS_ASSUME_NONNULL_END
