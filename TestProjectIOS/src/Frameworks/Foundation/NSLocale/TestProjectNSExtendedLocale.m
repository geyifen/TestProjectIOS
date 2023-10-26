//
//  TestProjectNSExtendedLocale.m
//  TestProjectIOS
//
//  Created by liwenfan on 2023/6/13.
//

#import "TestProjectNSExtendedLocale.h"

@interface TestProjectNSExtendedLocale ()

@property (nonatomic, strong) NSLocale *childLocale;

@end

@implementation TestProjectNSExtendedLocale

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
            @"abstract": @"获取NSLocale的属性localeIdentifier",
            @"title": @"@property (readonly, copy) NSString *localeIdentifier;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectExtendedLocale_property_localeIdentifier:index],
            }
        },
    };
}

- (NSDictionary *)method_2:(NSInteger)index {
    return @{
        @"dataModel": @{
            @"abstract": @"执行NSLocale的方法localizedStringForLocaleIdentifier:",
            @"title": @"- (NSString *)localizedStringForLocaleIdentifier:(NSString *)localeIdentifier API_AVAILABLE(macosx(10.12), ios(10.0), watchos(3.0), tvos(10.0));",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectExtendedLocale_localizedStringForLocaleIdentifier:index],
            }
        },
    };
}

- (NSDictionary *)method_3:(NSInteger)index {
    return @{
        @"dataModel": @{
            @"abstract": @"获取NSLocale的属性languageCode",
            @"title": @"@property (readonly, copy) NSString *languageCode API_AVAILABLE(macosx(10.12), ios(10.0), watchos(3.0), tvos(10.0));",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectExtendedLocale_property_languageCode:index],
            }
        },
    };
}

- (NSDictionary *)method_4:(NSInteger)index {
    return @{
        @"dataModel": @{
            @"abstract": @"执行NSLocale的方法localizedStringForLanguageCode:",
            @"title": @"- (nullable NSString *)localizedStringForLanguageCode:(NSString *)languageCode API_AVAILABLE(macosx(10.12), ios(10.0), watchos(3.0), tvos(10.0));",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectExtendedLocale_localizedStringForLanguageCode:index],
            }
        },
    };
}

- (NSDictionary *)method_5:(NSInteger)index {
    return @{
        @"dataModel": @{
            @"abstract": @"获取NSLocale的属性countryCode",
            @"title": @"@property (nullable, readonly, copy) NSString *countryCode API_AVAILABLE(macosx(10.12), ios(10.0), watchos(3.0), tvos(10.0));",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectExtendedLocale_property_countryCode:index],
            }
        },
    };
}

- (NSDictionary *)method_6:(NSInteger)index {
    return @{
        @"dataModel": @{
            @"abstract": @"执行NSLocale的方法localizedStringForCountryCode:",
            @"title": @"- (nullable NSString *)localizedStringForCountryCode:(NSString *)countryCode API_AVAILABLE(macosx(10.12), ios(10.0), watchos(3.0), tvos(10.0));",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectExtendedLocale_localizedStringForCountryCode:index],
            }
        },
    };
}

- (NSDictionary *)method_7:(NSInteger)index {
    return @{
        @"dataModel": @{
            @"abstract": @"获取NSLocale的属性scriptCode",
            @"title": @"@property (nullable, readonly, copy) NSString *scriptCode API_AVAILABLE(macosx(10.12), ios(10.0), watchos(3.0), tvos(10.0));",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectExtendedLocale_property_scriptCode:index],
            }
        },
    };
}

- (NSDictionary *)method_8:(NSInteger)index {
    return @{
        @"dataModel": @{
            @"abstract": @"执行NSLocale的方法localizedStringForScriptCode:",
            @"title": @"- (nullable NSString *)localizedStringForScriptCode:(NSString *)scriptCode API_AVAILABLE(macosx(10.12), ios(10.0), watchos(3.0), tvos(10.0));",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectExtendedLocale_localizedStringForScriptCode:index],
            }
        },
    };
}

- (NSDictionary *)method_9:(NSInteger)index {
    return @{
        @"dataModel": @{
            @"abstract": @"获取NSLocale的属性variantCode",
            @"title": @"@property (nullable, readonly, copy) NSString *variantCode API_AVAILABLE(macosx(10.12), ios(10.0), watchos(3.0), tvos(10.0));",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectExtendedLocale_property_variantCode:index],
            }
        },
    };
}

- (NSDictionary *)method_10:(NSInteger)index {
    return @{
        @"dataModel": @{
            @"abstract": @"执行NSLocale的方法localizedStringForVariantCode:",
            @"title": @"- (nullable NSString *)localizedStringForVariantCode:(NSString *)variantCode API_AVAILABLE(macosx(10.12), ios(10.0), watchos(3.0), tvos(10.0));",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectExtendedLocale_localizedStringForVariantCode:index],
            }
        },
    };
}

- (NSDictionary *)method_11:(NSInteger)index {
    return @{
        @"dataModel": @{
            @"abstract": @"获取NSLocale的属性calendarIdentifier",
            @"title": @"@property (readonly, copy) NSString *calendarIdentifier API_AVAILABLE(macosx(10.12), ios(10.0), watchos(3.0), tvos(10.0));",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectExtendedLocale_property_calendarIdentifier:index],
            }
        },
    };
}

- (NSDictionary *)method_12:(NSInteger)index {
    return @{
        @"dataModel": @{
            @"abstract": @"执行NSLocale的方法localizedStringForCalendarIdentifier:",
            @"title": @"- (nullable NSString *)localizedStringForCalendarIdentifier:(NSString *)calendarIdentifier API_AVAILABLE(macosx(10.12), ios(10.0), watchos(3.0), tvos(10.0));",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectExtendedLocale_localizedStringForCalendarIdentifier:index],
            }
        },
    };
}

- (NSDictionary *)method_13:(NSInteger)index {
    return @{
        @"dataModel": @{
            @"abstract": @"获取NSLocale的属性collationIdentifier",
            @"title": @"@property (nullable, readonly, copy) NSString *collationIdentifier API_AVAILABLE(macosx(10.12), ios(10.0), watchos(3.0), tvos(10.0));",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectExtendedLocale_property_collationIdentifier:index],
            }
        },
    };
}

- (NSDictionary *)method_14:(NSInteger)index {
    return @{
        @"dataModel": @{
            @"abstract": @"执行NSLocale的方法localizedStringForCollationIdentifier:",
            @"title": @"- (nullable NSString *)localizedStringForCollationIdentifier:(NSString *)collationIdentifier API_AVAILABLE(macosx(10.12), ios(10.0), watchos(3.0), tvos(10.0));",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectExtendedLocale_localizedStringForCollationIdentifier:index],
            }
        },
    };
}

- (NSDictionary *)method_15:(NSInteger)index {
    return @{
        @"dataModel": @{
            @"abstract": @"获取NSLocale的属性currencyCode",
            @"title": @"@property (nullable, readonly, copy) NSString *currencyCode API_AVAILABLE(macosx(10.12), ios(10.0), watchos(3.0), tvos(10.0));",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectExtendedLocale_property_currencyCode:index],
            }
        },
    };
}

- (NSDictionary *)method_16:(NSInteger)index {
    return @{
        @"dataModel": @{
            @"abstract": @"执行NSLocale的方法localizedStringForCurrencyCode:",
            @"title": @"- (nullable NSString *)localizedStringForCurrencyCode:(NSString *)currencyCode API_AVAILABLE(macosx(10.12), ios(10.0), watchos(3.0), tvos(10.0));",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectExtendedLocale_localizedStringForCurrencyCode:index],
            }
        },
    };
}

- (NSDictionary *)method_17:(NSInteger)index {
    return @{
        @"dataModel": @{
            @"abstract": @"获取NSLocale的属性collatorIdentifier",
            @"title": @"@property (readonly, copy) NSString *collatorIdentifier API_AVAILABLE(macosx(10.12), ios(10.0), watchos(3.0), tvos(10.0));",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectExtendedLocale_property_collatorIdentifier:index],
            }
        },
    };
}

- (NSDictionary *)method_18:(NSInteger)index {
    return @{
        @"dataModel": @{
            @"abstract": @"执行NSLocale的方法localizedStringForCollatorIdentifier:",
            @"title": @"- (nullable NSString *)localizedStringForCollatorIdentifier:(NSString *)collatorIdentifier API_AVAILABLE(macosx(10.12), ios(10.0), watchos(3.0), tvos(10.0));",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectExtendedLocale_localizedStringForCollatorIdentifier:index],
            }
        },
    };
}

- (NSDictionary *)method_19 {
    return @{
        @"dataModel": @{
            @"abstract": @"获取NSLocale的属性exemplarCharacterSet",
            @"title": @"@property (readonly, copy) NSCharacterSet *exemplarCharacterSet API_AVAILABLE(macosx(10.12), ios(10.0), watchos(3.0), tvos(10.0));",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectExtendedLocale_property_exemplarCharacterSet],
            }
        },
    };
}

- (NSDictionary *)method_20 {
    return @{
        @"dataModel": @{
            @"abstract": @"获取NSLocale的属性quotationBeginDelimiter",
            @"title": @"@property (readonly, copy) NSString *quotationBeginDelimiter API_AVAILABLE(macosx(10.12), ios(10.0), watchos(3.0), tvos(10.0));",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectExtendedLocale_property_quotationBeginDelimiter],
            }
        },
    };
}

- (NSDictionary *)method_21 {
    return @{
        @"dataModel": @{
            @"abstract": @"获取NSLocale的属性quotationEndDelimiter",
            @"title": @"@property (readonly, copy) NSString *quotationEndDelimiter API_AVAILABLE(macosx(10.12), ios(10.0), watchos(3.0), tvos(10.0));",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectExtendedLocale_property_quotationEndDelimiter],
            }
        },
    };
}

- (NSDictionary *)method_22 {
    return @{
        @"dataModel": @{
            @"abstract": @"获取NSLocale的属性alternateQuotationBeginDelimiter",
            @"title": @"@property (readonly, copy) NSString *alternateQuotationBeginDelimiter API_AVAILABLE(macosx(10.12), ios(10.0), watchos(3.0), tvos(10.0));",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectExtendedLocale_property_alternateQuotationBeginDelimiter],
            }
        },
    };
}

- (NSDictionary *)method_23 {
    return @{
        @"dataModel": @{
            @"abstract": @"获取NSLocale的属性alternateQuotationEndDelimiter",
            @"title": @"@property (readonly, copy) NSString *alternateQuotationEndDelimiter API_AVAILABLE(macosx(10.12), ios(10.0), watchos(3.0), tvos(10.0));",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectExtendedLocale_property_alternateQuotationEndDelimiter],
            }
        },
    };
}

- (NSMutableArray *)TestProjectExtendedLocale_property_alternateQuotationEndDelimiter {
    return [self createTableModelSingleArrayWithProperty:@"alternateQuotationEndDelimiter" value:nil];
}

- (NSMutableArray *)TestProjectExtendedLocale_property_alternateQuotationBeginDelimiter {
    return [self createTableModelSingleArrayWithProperty:@"alternateQuotationBeginDelimiter" value:nil];
}

- (NSMutableArray *)TestProjectExtendedLocale_property_quotationEndDelimiter {
    return [self createTableModelSingleArrayWithProperty:@"quotationEndDelimiter" value:nil];
}

- (NSMutableArray *)TestProjectExtendedLocale_property_quotationBeginDelimiter {
    return [self createTableModelSingleArrayWithProperty:@"quotationBeginDelimiter" value:nil];
}

- (NSMutableArray *)TestProjectExtendedLocale_property_exemplarCharacterSet {
    return [self createTableModelSingleArrayWithProperty:@"exemplarCharacterSet" value:nil];
}

- (NSMutableArray *)TestProjectExtendedLocale_localizedStringForCollatorIdentifier:(NSInteger)index {
    WS(wSelf);
    [self createTableModelWithMethodBlock:^NSString * _Nonnull{
        return [wSelf.childLocale localizedStringForCollatorIdentifier:@"nil"];
    } title:@"设置CollatorIdentifier为'nil'" index:index];
    return self.dataMutArr;
}

- (NSMutableArray *)TestProjectExtendedLocale_property_collatorIdentifier:(NSInteger)index {
    return [self createTableModelSingleArrayWithProperty:@"collatorIdentifier" index:index];
}

- (NSMutableArray *)TestProjectExtendedLocale_localizedStringForCurrencyCode:(NSInteger)index {
    WS(wSelf);
    [self createTableModelWithMethodBlock:^NSString * _Nonnull{
        return [wSelf.childLocale localizedStringForCurrencyCode:@"USD"];
    } title:@"设置CurrencyCode为'USD'" index:index];
    return self.dataMutArr;
}

- (NSMutableArray *)TestProjectExtendedLocale_property_currencyCode:(NSInteger)index {
    return [self createTableModelSingleArrayWithProperty:@"currencyCode" index:index];
}

- (NSMutableArray *)TestProjectExtendedLocale_localizedStringForCollationIdentifier:(NSInteger)index {
    WS(wSelf);
    [self createTableModelWithMethodBlock:^NSString * _Nonnull{
        return [wSelf.childLocale localizedStringForCollationIdentifier:@"CollationIdentifier"];
    } title:@"设置CollationIdentifier为'nil'" index:index];
    return self.dataMutArr;
}

- (NSMutableArray *)TestProjectExtendedLocale_property_collationIdentifier:(NSInteger)index {
    return [self createTableModelSingleArrayWithProperty:@"collationIdentifier" index:index];
}

- (NSMutableArray *)TestProjectExtendedLocale_localizedStringForCalendarIdentifier:(NSInteger)index {
    WS(wSelf);
    [self createTableModelWithMethodBlock:^NSString * _Nonnull{
        return [wSelf.childLocale localizedStringForCalendarIdentifier:@"gregorian"];
    } title:@"设置CalendarIdentifier为'gregorian'" index:index];
    return self.dataMutArr;
}

- (NSMutableArray *)TestProjectExtendedLocale_property_calendarIdentifier:(NSInteger)index {
    return [self createTableModelSingleArrayWithProperty:@"calendarIdentifier" index:index];
}

- (NSMutableArray *)TestProjectExtendedLocale_localizedStringForVariantCode:(NSInteger)index {
    WS(wSelf);
    [self createTableModelWithMethodBlock:^NSString * _Nonnull{
        return [wSelf.childLocale localizedStringForVariantCode:nil];
    } title:@"设置VariantCode为'nil'" index:index];
    return self.dataMutArr;
}

- (NSMutableArray *)TestProjectExtendedLocale_property_variantCode:(NSInteger)index {
    return [self createTableModelSingleArrayWithProperty:@"variantCode" index:index];
}

- (NSMutableArray *)TestProjectExtendedLocale_localizedStringForScriptCode:(NSInteger)index {
    WS(wSelf);
    [self createTableModelWithMethodBlock:^NSString * _Nonnull{
        return [wSelf.childLocale localizedStringForScriptCode:nil];
    } title:@"设置ScriptCode为'nil'" index:index];
    return self.dataMutArr;
}

- (NSMutableArray *)TestProjectExtendedLocale_property_scriptCode:(NSInteger)index {
    return [self createTableModelSingleArrayWithProperty:@"scriptCode" index:index];
}

- (NSMutableArray *)TestProjectExtendedLocale_localizedStringForCountryCode:(NSInteger)index {
    WS(wSelf);
    [self createTableModelWithMethodBlock:^NSString * _Nonnull{
        return [wSelf.childLocale localizedStringForCountryCode:@"en_US"];
    } title:@"设置CountryCode为'en_US'" index:index];
    return self.dataMutArr;
}

- (NSMutableArray *)TestProjectExtendedLocale_property_countryCode:(NSInteger)index {
    return [self createTableModelSingleArrayWithProperty:@"countryCode" index:index];
}

- (NSMutableArray *)TestProjectExtendedLocale_localizedStringForLanguageCode:(NSInteger)index {
    WS(wSelf);
    [self createTableModelWithMethodBlock:^NSString * _Nonnull{
        return [wSelf.childLocale localizedStringForLanguageCode:@"en"];
    } title:@"设置LanguageCode为'en'" index:index];
    return self.dataMutArr;
}

- (NSMutableArray *)TestProjectExtendedLocale_property_languageCode:(NSInteger)index {
    return [self createTableModelSingleArrayWithProperty:@"languageCode" index:index];
}

- (NSMutableArray *)TestProjectExtendedLocale_localizedStringForLocaleIdentifier:(NSInteger)index {
    WS(wSelf);
    [self createTableModelWithMethodBlock:^NSString * _Nonnull{
        return [wSelf.childLocale localizedStringForLocaleIdentifier:@"en_US"];
    } title:@"设置LocaleIdentifier为'en_US'" index:index];
    return self.dataMutArr;
}

- (NSMutableArray *)TestProjectExtendedLocale_property_localeIdentifier:(NSInteger)index {
    return [self createTableModelSingleArrayWithProperty:@"localeIdentifier" index:index];
}

@end
