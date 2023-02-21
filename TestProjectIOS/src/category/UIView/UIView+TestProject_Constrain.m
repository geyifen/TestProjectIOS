//
//  UIView+TestProject_Constrain.m
//  TestProjectIOS
//
//  Created by zjrcumac on 2023/1/30.
//

#import "UIView+TestProject_Constrain.h"

@interface TestProjectViewConstrainProperty ()

@property (nonatomic, weak) UIView *firstView;
@property (nonatomic, strong) NSMutableArray *attributeMutArr;
@property (nonatomic, strong) NSMutableArray<NSLayoutConstraint *> *constraintMutArr;
@property (nonatomic, strong) id secondProperty;
@property (nonatomic, weak) UIView *commonView;

@property (nonatomic, assign) NSLayoutRelation relation;
@property (nonatomic, assign) CGFloat constant;
@property (nonatomic, assign) CGFloat multiplier;
@property (nonatomic, assign) UILayoutPriority priority;

@end

@implementation TestProjectViewConstrainProperty

- (instancetype)init {
    if (self = [super init]) {
        self.multiplier = 1;
        self.priority = UILayoutPriorityRequired;
    }
    return self;
}

- (TestProjectViewConstrainProperty *)leading {
    [self.attributeMutArr addObject:@(NSLayoutAttributeLeading)];
    return self;
}

- (TestProjectViewConstrainProperty *)trainling {
    [self.attributeMutArr addObject:@(NSLayoutAttributeTrailing)];
    return self;
}

- (TestProjectViewConstrainProperty *)top {
    [self.attributeMutArr addObject:@(NSLayoutAttributeTop)];
    return self;
}

- (TestProjectViewConstrainProperty *)bottom {
    [self.attributeMutArr addObject:@(NSLayoutAttributeBottom)];
    return self;
}

- (TestProjectViewConstrainProperty *)width {
    [self.attributeMutArr addObject:@(NSLayoutAttributeWidth)];
    return self;
}

- (TestProjectViewConstrainProperty *)height {
    [self.attributeMutArr addObject:@(NSLayoutAttributeHeight)];
    return self;
}

- (TestProjectViewConstrainProperty *)centerX {
    [self.attributeMutArr addObject:@(NSLayoutAttributeCenterX)];
    return self;
}

- (TestProjectViewConstrainProperty *)centerY {
    [self.attributeMutArr addObject:@(NSLayoutAttributeCenterY)];
    return self;
}

- (TestProjectViewConstrainProperty *(^)(id))equal {
    return ^id(id property) {
        self.relation = NSLayoutRelationEqual;
        self.secondProperty = property;
        return self;
    };
}

- (TestProjectViewConstrainProperty *(^)(CGFloat))offset {
    return ^(CGFloat offset) {
        self.constant = offset;
        return self;
    };
}

- (void)install:(BOOL)isUpdateConstrain {
    NSLayoutAttribute secondLayoutAttr = 0;
    UIView *secondView;
    UIView *commondView;
    if ([self.secondProperty isKindOfClass:[UIView class]]) {
        secondView = self.secondProperty;
        commondView = [self lookCommonView:secondView];
    } else if ([self.secondProperty isKindOfClass:[TestProjectViewConstrainProperty class]]) {
        TestProjectViewConstrainProperty *secondProperty = (TestProjectViewConstrainProperty *)self.secondProperty;
        secondLayoutAttr = [secondProperty.attributeMutArr.firstObject integerValue];
        secondView = secondProperty.firstView;
        commondView = [self lookCommonView:secondView];
    } else if ([self.secondProperty isKindOfClass:[NSNumber class]]) {
        self.constant += [self.secondProperty integerValue];
        secondView = nil;
        commondView = self.firstView;
    } else {
        NSAssert(YES, @"约束没有作用在view上:%@", self.secondProperty);
    }
    if (!commondView) {
        NSAssert(YES, @"没有共同约束的view");
    }
    NSMutableArray *constraintMutArr = [NSMutableArray array];
    NSArray *commonViewConstrainArr;
    if (isUpdateConstrain) {
        commonViewConstrainArr = commondView.constraints;
    }
    for (NSNumber *num in self.attributeMutArr) {
        NSLayoutAttribute layoutAttr = [num integerValue];
        NSLayoutAttribute toLayoutAttr = secondLayoutAttr?:layoutAttr;
        if (commonViewConstrainArr) {
            NSLayoutConstraint *lookConstrain;
            for (NSLayoutConstraint *constraint in commonViewConstrainArr) {
                if (constraint.firstItem != self.firstView) continue;
                if (constraint.secondItem != secondView) continue;
                if (constraint.firstAttribute != layoutAttr) continue;
                //如果只是设置高度或者宽度为数值时，constraint的secondAttribute是NSLayoutAttributeNotAnAttribute
                if (constraint.secondAttribute != toLayoutAttr && constraint.secondAttribute != NSLayoutAttributeNotAnAttribute) continue;
                if (constraint.relation != self.relation) continue;
                if (constraint.multiplier != self.multiplier) continue;
                if (constraint.priority != self.priority) continue;
                constraint.constant = self.constant;
                lookConstrain = constraint;
                break;
            }
            if (lookConstrain) {
                continue;
            }
        }
        NSLayoutConstraint *layoutConstraint = [NSLayoutConstraint constraintWithItem:self.firstView attribute:layoutAttr relatedBy:self.relation toItem:secondView attribute:toLayoutAttr multiplier:1.0 constant:self.constant];
        [constraintMutArr addObject:layoutConstraint];
    }
    [commondView addConstraints:constraintMutArr];
    [_attributeMutArr removeAllObjects];
    _attributeMutArr = nil;
    self.commonView = commondView;
    [self.constraintMutArr addObjectsFromArray:constraintMutArr];
}

- (void)uninstall {
    [self.commonView removeConstraints:self.constraintMutArr];
    [self.constraintMutArr removeAllObjects];
    self.constraintMutArr = nil;
}

- (UIView *)lookCommonView:(UIView *)secondView {
    UIView *closestCommonSuperview = nil;
    UIView *secondViewSuperview = secondView;
    while (!closestCommonSuperview && secondViewSuperview) {
        UIView *firstViewSuperview = self.firstView;
        while (!closestCommonSuperview && firstViewSuperview) {
            if (secondViewSuperview == firstViewSuperview) {
                closestCommonSuperview = secondViewSuperview;
            }
            firstViewSuperview = firstViewSuperview.superview;
        }
        secondViewSuperview = secondViewSuperview.superview;
    }
    return closestCommonSuperview;
}

- (NSMutableArray *)attributeMutArr {
    if (!_attributeMutArr) {
        _attributeMutArr = [NSMutableArray array];
    }
    return _attributeMutArr;
}

- (NSMutableArray<NSLayoutConstraint *> *)constraintMutArr {
    if (!_constraintMutArr) {
        _constraintMutArr = [NSMutableArray array];
    }
    return _constraintMutArr;
}

@end

@interface TestProjectViewConstrainMake ()

@property (nonatomic, weak) UIView *firstView;
@property (nonatomic, strong) NSMutableArray *propertyMutArr;
@property (nonatomic, assign) BOOL isUpdateConstrain;

@end

@implementation TestProjectViewConstrainMake

- (TestProjectViewConstrainProperty *)leading {
    return [self createViewConstrainProperty].leading;
}

- (TestProjectViewConstrainProperty *)trainling {
    return [self createViewConstrainProperty].trainling;
}

- (TestProjectViewConstrainProperty *)top {
    return [self createViewConstrainProperty].top;
}

- (TestProjectViewConstrainProperty *)bottom {
    return [self createViewConstrainProperty].bottom;
}

- (TestProjectViewConstrainProperty *)width {
    return [self createViewConstrainProperty].width;
}

- (TestProjectViewConstrainProperty *)height {
    return [self createViewConstrainProperty].height;
}

- (TestProjectViewConstrainProperty *)centerX {
    return [self createViewConstrainProperty].centerX;
}

- (TestProjectViewConstrainProperty *)centerY {
    return [self createViewConstrainProperty].centerY;
}

- (TestProjectViewConstrainProperty *)createViewConstrainProperty {
    TestProjectViewConstrainProperty *property = [[TestProjectViewConstrainProperty alloc] init];
    property.firstView = self.firstView;
    [self.propertyMutArr addObject:property];
    return property;
}

- (void)install {
    for (TestProjectViewConstrainProperty *property in self.propertyMutArr) {
        [property install:self.isUpdateConstrain];
    }
}

- (NSMutableArray *)propertyMutArr {
    if (!_propertyMutArr) {
        _propertyMutArr = [NSMutableArray array];
    }
    return _propertyMutArr;
}

@end


@implementation UIView (TestProject_Constrain)

- (void)mas_makeConstraints:(void (^)(TestProjectViewConstrainMake *make))block {
    [self make_constrain:block isUpdate:NO];
}

- (void)mas_updateConstraints:(void (^)(TestProjectViewConstrainMake *))block {
    [self make_constrain:block isUpdate:YES];
}

- (void)make_constrain:(void (^)(TestProjectViewConstrainMake *))block isUpdate:(BOOL)isUpdate {
    self.translatesAutoresizingMaskIntoConstraints = NO;
    TestProjectViewConstrainMake *viewConstrainMake = [[TestProjectViewConstrainMake alloc] init];
    viewConstrainMake.firstView = self;
    viewConstrainMake.isUpdateConstrain = isUpdate;
    block(viewConstrainMake);
    [viewConstrainMake install];
}

- (TestProjectViewConstrainProperty *)leading {
    return [self createViewConstrainProperty].leading;
}

- (TestProjectViewConstrainProperty *)trainling {
    return [self createViewConstrainProperty].trainling;
}

- (TestProjectViewConstrainProperty *)top {
    return [self createViewConstrainProperty].top;
}

- (TestProjectViewConstrainProperty *)bottom {
    return [self createViewConstrainProperty].bottom;
}

- (TestProjectViewConstrainProperty *)width {
    return [self createViewConstrainProperty].width;
}

- (TestProjectViewConstrainProperty *)height {
    return [self createViewConstrainProperty].height;
}

- (TestProjectViewConstrainProperty *)centerX {
    return [self createViewConstrainProperty].centerX;
}

- (TestProjectViewConstrainProperty *)centerY {
    return [self createViewConstrainProperty].centerY;
}

- (TestProjectViewConstrainProperty *)createViewConstrainProperty {
    TestProjectViewConstrainProperty *property = [[TestProjectViewConstrainProperty alloc] init];
    property.firstView = self;
    return property;
}

@end
