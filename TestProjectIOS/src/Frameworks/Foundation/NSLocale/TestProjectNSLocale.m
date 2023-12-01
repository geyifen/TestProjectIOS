//
//  TestProjectNSLocale.m
//  TestProjectIOS
//
//  Created by liwenfan on 2023/6/13.
//

#import "TestProjectNSLocale.h"

@interface TestProjectNSLocale ()

@property (nonatomic, strong) NSLocale *childLocale;

@end

@implementation TestProjectNSLocale

- (id)setPropertyValueObject:(TestProjectTableViewParams *)params {
    return self.childLocale;
}

- (NSLocale *)childLocale {
    if (!_childLocale) {
        _childLocale = [NSLocale currentLocale];
    }
    return _childLocale;
}

- (NSMutableArray *)TestProjectLocale_displayNameForKey_value:(TestProjectTableViewParams *)params {
    NSArray *arr = [self getLocaleKey];
    for (NSDictionary *dic in arr) {
        NSString *title = dic[@"title"];
        NSLocaleKey value = dic[@"value"];
        id result = [self.childLocale objectForKey:value];
        if ([value isEqualToString:NSLocaleExemplarCharacterSet] || [value isEqualToString:NSLocaleCalendar] || [value isEqualToString:NSLocaleUsesMetricSystem]) {
            continue;
        }
        NSString *displayName = [self.childLocale displayNameForKey:value value:result];
        [self createModelWithParams:params title:[NSString stringWithFormat:@"%@\n%@", title, displayName] block:nil];
    }
    return self.dataMutArr;
}

- (NSDictionary *)method_2:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"执行NSLocale的方法objectForKey",
            @"title": @"- (nullable NSString *)displayNameForKey:(NSLocaleKey)key value:(id)value;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectLocale_displayNameForKey_value:params],
            }
        },
    };
}

//FOUNDATION_EXPORT NSLocaleKey const NSLocaleIdentifier;        // NSString
//FOUNDATION_EXPORT NSLocaleKey const NSLocaleLanguageCode;    // NSString
//FOUNDATION_EXPORT NSLocaleKey const NSLocaleCountryCode;        // NSString
//FOUNDATION_EXPORT NSLocaleKey const NSLocaleScriptCode;        // NSString
//FOUNDATION_EXPORT NSLocaleKey const NSLocaleVariantCode;        // NSString
//FOUNDATION_EXPORT NSLocaleKey const NSLocaleExemplarCharacterSet;// NSCharacterSet
//FOUNDATION_EXPORT NSLocaleKey const NSLocaleCalendar;        // NSCalendar
//FOUNDATION_EXPORT NSLocaleKey const NSLocaleCollationIdentifier; // NSString
//FOUNDATION_EXPORT NSLocaleKey const NSLocaleUsesMetricSystem;    // NSNumber boolean
//FOUNDATION_EXPORT NSLocaleKey const NSLocaleMeasurementSystem;    // NSString
//FOUNDATION_EXPORT NSLocaleKey const NSLocaleDecimalSeparator;    // NSString
//FOUNDATION_EXPORT NSLocaleKey const NSLocaleGroupingSeparator;    // NSString
//FOUNDATION_EXPORT NSLocaleKey const NSLocaleCurrencySymbol;      // NSString
//FOUNDATION_EXPORT NSLocaleKey const NSLocaleCurrencyCode;    // NSString
//FOUNDATION_EXPORT NSLocaleKey const NSLocaleCollatorIdentifier API_AVAILABLE(macos(10.6), ios(4.0), watchos(2.0), tvos(9.0));  // NSString
//FOUNDATION_EXPORT NSLocaleKey const NSLocaleQuotationBeginDelimiterKey API_AVAILABLE(macos(10.6), ios(4.0), watchos(2.0), tvos(9.0));    // NSString
//FOUNDATION_EXPORT NSLocaleKey const NSLocaleQuotationEndDelimiterKey API_AVAILABLE(macos(10.6), ios(4.0), watchos(2.0), tvos(9.0));    // NSString
//FOUNDATION_EXPORT NSLocaleKey const NSLocaleAlternateQuotationBeginDelimiterKey API_AVAILABLE(macos(10.6), ios(4.0), watchos(2.0), tvos(9.0));    // NSString
//FOUNDATION_EXPORT NSLocaleKey const NSLocaleAlternateQuotationEndDelimiterKey API_AVAILABLE(macos(10.6), ios(4.0), watchos(2.0), tvos(9.0));    // NSString
- (NSArray *)getLocaleKey {
    return @[
        @{
            @"title": @"设置的属性值是NSLocaleIdentifier",
            @"value": NSLocaleIdentifier,
        },
        @{
            @"title": @"设置的属性值是NSLocaleLanguageCode",
            @"value": NSLocaleLanguageCode,
        },
        @{
            @"title": @"设置的属性值是NSLocaleCountryCode",
            @"value": NSLocaleCountryCode,
        },
        @{
            @"title": @"设置的属性值是NSLocaleScriptCode",
            @"value": NSLocaleScriptCode,
        },
        @{
            @"title": @"设置的属性值是NSLocaleVariantCode",
            @"value": NSLocaleVariantCode,
        },
        @{
            @"title": @"设置的属性值是NSLocaleExemplarCharacterSet",
            @"value": NSLocaleExemplarCharacterSet,
        },
        @{
            @"title": @"设置的属性值是NSLocaleCalendar",
            @"value": NSLocaleCalendar,
        },
        @{
            @"title": @"设置的属性值是NSLocaleCollationIdentifier",
            @"value": NSLocaleCollationIdentifier,
        },
        @{
            @"title": @"设置的属性值是NSLocaleUsesMetricSystem",
            @"value": NSLocaleUsesMetricSystem,
        },
        @{
            @"title": @"设置的属性值是NSLocaleMeasurementSystem",
            @"value": NSLocaleMeasurementSystem,
        },
        @{
            @"title": @"设置的属性值是NSLocaleDecimalSeparator",
            @"value": NSLocaleDecimalSeparator,
        },
        @{
            @"title": @"设置的属性值是NSLocaleGroupingSeparator",
            @"value": NSLocaleGroupingSeparator,
        },
        @{
            @"title": @"设置的属性值是NSLocaleCurrencySymbol",
            @"value": NSLocaleCurrencySymbol,
        },
        @{
            @"title": @"设置的属性值是NSLocaleCurrencyCode",
            @"value": NSLocaleCurrencyCode,
        },
        @{
            @"title": @"设置的属性值是NSLocaleCollatorIdentifier",
            @"value": NSLocaleCollatorIdentifier,
        },
        @{
            @"title": @"设置的属性值是NSLocaleQuotationBeginDelimiterKey",
            @"value": NSLocaleQuotationBeginDelimiterKey,
        },
        @{
            @"title": @"设置的属性值是NSLocaleQuotationEndDelimiterKey",
            @"value": NSLocaleQuotationEndDelimiterKey,
        },
        @{
            @"title": @"设置的属性值是NSLocaleAlternateQuotationBeginDelimiterKey",
            @"value": NSLocaleAlternateQuotationBeginDelimiterKey,
        },
        @{
            @"title": @"设置的属性值是NSLocaleAlternateQuotationEndDelimiterKey",
            @"value": NSLocaleAlternateQuotationEndDelimiterKey,
        },
    ];
}

- (NSMutableArray *)TestProjectLocale_objectForKey:(TestProjectTableViewParams *)params {
    NSArray *arr = [self getLocaleKey];
    for (NSDictionary *dic in arr) {
        NSString *title = dic[@"title"];
        NSLocaleKey value = dic[@"value"];
        id result = [self.childLocale objectForKey:value];
        [self createModelWithParams:params title:[NSString stringWithFormat:@"%@\n%@", title, result] block:nil];
    }
    return self.dataMutArr;
}

- (NSDictionary *)method_1:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"执行NSLocale的方法objectForKey",
            @"title": @"- (nullable id)objectForKey:(NSLocaleKey)key;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectLocale_objectForKey:params],
            }
        },
    };
}

@end
