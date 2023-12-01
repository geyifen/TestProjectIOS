//
//  TestProjectNSLocaleCreation.m
//  TestProjectIOS
//
//  Created by liwenfan on 2023/6/13.
//

#import "TestProjectNSLocaleCreation.h"

@interface TestProjectNSLocaleCreation ()

@property (nonatomic, strong) NSLocale *childLocale;

@end

@implementation TestProjectNSLocaleCreation

- (id)setPropertyValueObject:(TestProjectTableViewParams *)params {
    return self.childLocale;
}

- (NSLocale *)childLocale {
    if (!_childLocale) {
        _childLocale = [NSLocale currentLocale];
    }
    return _childLocale;
}


- (NSMutableArray *)TestProjectLocaleCreation_class_localeWithLocaleIdentifier:(TestProjectTableViewParams *)params {
    NSArray *arr = [NSLocale availableLocaleIdentifiers];
    for (NSString *identifier in arr) {
        NSLocale *locale = [NSLocale localeWithLocaleIdentifier:identifier];
        [self createModelWithParams:params title:[NSString stringWithFormat:@"%@", [locale objectForKey:NSLocaleIdentifier]] block:nil];
    }
    return self.dataMutArr;
}

- (NSDictionary *)method_6:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"获取NSLocale的class方法localeWithLocaleIdentifier:",
            @"title": @"+ (instancetype)localeWithLocaleIdentifier:(NSString *)ident API_AVAILABLE(macos(10.6), ios(4.0), watchos(2.0), tvos(9.0));",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectLocaleCreation_class_localeWithLocaleIdentifier:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectLocaleCreation_class_property_systemLocale:(TestProjectTableViewParams *)params {
    return [self createModelSingleArrayWithParams:params title:@"[NSLocale systemLocale]" methodBlock:^NSString * _Nonnull{
        return [NSString stringWithFormat:@"%@", [NSLocale systemLocale]];
    }];
}

- (NSDictionary *)method_3:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"获取NSLocale的属性systemLocale",
            @"title": @"@property (class, readonly, copy) NSLocale *systemLocale;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectLocaleCreation_class_property_systemLocale:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectLocaleCreation_class_property_currentLocale:(TestProjectTableViewParams *)params {
    return [self createModelSingleArrayWithParams:params title:@"[NSLocale currentLocale]" methodBlock:^NSString * _Nonnull{
        return [NSString stringWithFormat:@"%@", [NSLocale currentLocale]];
    }];
}

- (NSDictionary *)method_2:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"获取NSLocale的属性currentLocale",
            @"title": @"@property (class, readonly, copy) NSLocale *currentLocale;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectLocaleCreation_class_property_currentLocale:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectLocaleCreation_class_property_autoupdatingCurrentLocale:(TestProjectTableViewParams *)params {
    return [self createModelSingleArrayWithParams:params title:@"[NSLocale autoupdatingCurrentLocale]" methodBlock:^NSString * _Nonnull{
        return [NSString stringWithFormat:@"%@", [NSLocale autoupdatingCurrentLocale]];
    }];
}

- (NSDictionary *)method_1:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"获取NSLocale的属性autoupdatingCurrentLocale",
            @"title": @"@property (class, readonly, strong) NSLocale *autoupdatingCurrentLocale API_AVAILABLE(macos(10.5), ios(2.0), watchos(2.0), tvos(9.0));",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectLocaleCreation_class_property_autoupdatingCurrentLocale:params],
            }
        },
    };
}

@end
