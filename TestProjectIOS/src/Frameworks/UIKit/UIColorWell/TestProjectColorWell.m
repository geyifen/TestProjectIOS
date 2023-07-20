//
//  TestProjectColorWell.m
//  TestProjectIOS
//
//  Created by zjrcumac on 2023/6/19.
//

#import "TestProjectColorWell.h"

API_AVAILABLE(ios(14.0))
@interface TestProjectColorWell ()

@property (nonatomic, strong) UIColorWell *childColorWell;

@end

API_AVAILABLE(ios(14.0))
@implementation TestProjectColorWell

- (instancetype)initCreate {
    if (self = [super initCreate]) {
        [self.tableView testproject_updateConstraints:^(TestProjectViewConstrainMake * _Nonnull make) {
            make.height.equal(self).offset(-50);
        }];
        self.childColorWell.backgroundColor = [UIColor redColor];
    }
    return self;
}

- (UIColorWell *)childColorWell {
    if (!_childColorWell) {
        _childColorWell = [[UIColorWell alloc] init];
        [self addSubview:_childColorWell];
        [_childColorWell testproject_makeConstraints:^(TestProjectViewConstrainMake * _Nonnull make) {
            make.top.leading.trainling.equal(self);
            make.height.equal(@50);
        }];
    }
    return _childColorWell;
}

- (id)setPropertyValueObject {
    return self.childColorWell;
}

- (NSDictionary *)method_1 {
    return @{
        @"dataModel": @{
            @"abstract": @"设置获取UIColorWell的属性title",
            @"title": @"@property (nullable, nonatomic, copy) NSString *title;",
            @"isDataModelExpand": @(YES),
            @"desc": @"不设置时，默认时colors",
            @"dataModel": @{
                @"childItems": [self TestProjectColorWell_property_title],
            }
        },
    };
}

- (NSDictionary *)method_2:(NSInteger)index {
    return @{
        @"dataModel": @{
            @"abstract": @"设置获取UIColorWell的属性selectedColor",
            @"title": @"@property (strong, nonatomic) UIColor *selectedColor;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectColorWell_property_selectedColor:index],
            }
        },
    };
}

- (NSDictionary *)method_3 {
    return @{
        @"dataModel": @{
            @"abstract": @"设置获取UIColorWell的属性supportsAlpha, 是否支持透明度",
            @"title": @"@property (nonatomic) BOOL supportsAlpha",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectColorWell_property_supportsAlpha],
            }
        },
    };
}

- (NSMutableArray *)TestProjectColorWell_property_supportsAlpha {
    NSArray *arr = @[
        @{
            @"title": @"设置的属性是YES, 有透明度选项",
            @"value": @(YES),
        },
        @{
            @"title": @"设置的属性是NO, 没有透明度选项，所有的颜色透明度为1",
            @"value": @(NO),
        },
    ];
    for (NSDictionary *dic in arr) {
        NSString *title = dic[@"title"];
        NSNumber *value = dic[@"value"];
        [self createClickSetTableModelWithProperty:@"supportsAlpha" value:value title:title block:nil];
    }
    return self.dataMutArr;
}

- (NSMutableArray *)TestProjectColorWell_property_selectedColor:(NSInteger)index {
    return [self createTableModelSingleArrayWithProperty:@"selectedColor" index:index];
}

- (NSMutableArray *)TestProjectColorWell_property_title {
    return [self createTableModelSingleArrayWithProperty:@"title" value:@"colorWell"];
}

@end
