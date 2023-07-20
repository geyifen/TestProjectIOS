//
//  TestProjectLocaleCreation.m
//  TestProjectIOS
//
//  Created by zjrcumac on 2023/6/13.
//

#import "TestProjectLocaleCreation.h"

@interface TestProjectLocaleCreation ()

@property (nonatomic, strong) NSLocale *childLocale;

@end

@implementation TestProjectLocaleCreation

- (id)setPropertyValueObject {
    return self.childLocale;
}

- (NSLocale *)childLocale {
    if (!_childLocale) {
        _childLocale = [NSLocale currentLocale];
    }
    return _childLocale;
}

- (NSDictionary *)method_1:(NSInteger)index {
    return @{
        @"dataModel": @{
            @"abstract": @"获取NSLocale的属性autoupdatingCurrentLocale",
            @"title": @"@property (class, readonly, strong) NSLocale *autoupdatingCurrentLocale API_AVAILABLE(macos(10.5), ios(2.0), watchos(2.0), tvos(9.0));",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectLocaleCreation_class_property_autoupdatingCurrentLocale:index],
            }
        },
    };
}

- (NSDictionary *)method_2:(NSInteger)index {
    return @{
        @"dataModel": @{
            @"abstract": @"获取NSLocale的属性currentLocale",
            @"title": @"@property (class, readonly, copy) NSLocale *currentLocale;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectLocaleCreation_class_property_currentLocale:index],
            }
        },
    };
}

- (NSDictionary *)method_3:(NSInteger)index {
    return @{
        @"dataModel": @{
            @"abstract": @"获取NSLocale的属性systemLocale",
            @"title": @"@property (class, readonly, copy) NSLocale *systemLocale;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectLocaleCreation_class_property_systemLocale:index],
            }
        },
    };
}

- (NSDictionary *)method_6 {
    return @{
        @"dataModel": @{
            @"abstract": @"获取NSLocale的class方法localeWithLocaleIdentifier:",
            @"title": @"+ (instancetype)localeWithLocaleIdentifier:(NSString *)ident API_AVAILABLE(macos(10.6), ios(4.0), watchos(2.0), tvos(9.0));",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectLocaleCreation_class_localeWithLocaleIdentifier],
            }
        },
    };
}

- (NSMutableArray *)TestProjectLocaleCreation_class_localeWithLocaleIdentifier {
    NSArray *arr = [NSLocale availableLocaleIdentifiers];
    for (NSString *identifier in arr) {
        NSLocale *locale = [NSLocale localeWithLocaleIdentifier:identifier];
        [self createTableModelWithTitle:[NSString stringWithFormat:@"%@", [locale objectForKey:NSLocaleIdentifier]] block:nil];
    }
    return self.dataMutArr;
}

- (NSMutableArray *)TestProjectLocaleCreation_class_property_systemLocale:(NSInteger)index {
    [self createTableModelWithMethodBlock:^NSString * _Nonnull{
        return [NSString stringWithFormat:@"%@", [NSLocale systemLocale]];
    } title:@"[NSLocale systemLocale]" index:index];
    return self.dataMutArr;
}

- (NSMutableArray *)TestProjectLocaleCreation_class_property_currentLocale:(NSInteger)index {
    [self createTableModelWithMethodBlock:^NSString * _Nonnull{
        return [NSString stringWithFormat:@"%@", [NSLocale currentLocale]];
    } title:@"[NSLocale currentLocale]" index:index];
    return self.dataMutArr;
}

- (NSMutableArray *)TestProjectLocaleCreation_class_property_autoupdatingCurrentLocale:(NSInteger)index {
    [self createTableModelWithMethodBlock:^NSString * _Nonnull{
        return [NSString stringWithFormat:@"%@", [NSLocale autoupdatingCurrentLocale]];
    } title:@"[NSLocale autoupdatingCurrentLocale]" index:index];
    return self.dataMutArr;
}

@end
