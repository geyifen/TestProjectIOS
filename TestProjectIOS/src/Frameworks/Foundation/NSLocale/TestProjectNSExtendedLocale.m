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

- (id)setPropertyValueObject:(TestProjectTableViewParams *)params {
    return self.childLocale;
}

- (NSLocale *)childLocale {
    if (!_childLocale) {
        _childLocale = [NSLocale currentLocale];
    }
    return _childLocale;
}

- (NSMutableArray *)TestProjectExtendedLocale_property_alternateQuotationEndDelimiter:(TestProjectTableViewParams *)params {
    return [self createModelSingleArrayWithParams:params
                                         property:@"alternateQuotationEndDelimiter"
                                            value:nil
                                        operation:TestProjectCreateModelGetBeforeClickGet
                                            block:nil];
}

- (NSDictionary *)method_23:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"获取NSLocale的属性alternateQuotationEndDelimiter",
            @"title": @"@property (readonly, copy) NSString *alternateQuotationEndDelimiter API_AVAILABLE(macosx(10.12), ios(10.0), watchos(3.0), tvos(10.0));",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectExtendedLocale_property_alternateQuotationEndDelimiter:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectExtendedLocale_property_alternateQuotationBeginDelimiter:(TestProjectTableViewParams *)params {
    return [self createModelSingleArrayWithParams:params
                                         property:@"alternateQuotationBeginDelimiter"
                                            value:nil
                                        operation:TestProjectCreateModelGetBeforeClickGet
                                            block:nil];
}

- (NSDictionary *)method_22:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"获取NSLocale的属性alternateQuotationBeginDelimiter",
            @"title": @"@property (readonly, copy) NSString *alternateQuotationBeginDelimiter API_AVAILABLE(macosx(10.12), ios(10.0), watchos(3.0), tvos(10.0));",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectExtendedLocale_property_alternateQuotationBeginDelimiter:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectExtendedLocale_property_quotationEndDelimiter:(TestProjectTableViewParams *)params {
    return [self createModelSingleArrayWithParams:params
                                         property:@"quotationEndDelimiter"
                                            value:nil
                                        operation:TestProjectCreateModelGetBeforeClickGet
                                            block:nil];
}

- (NSDictionary *)method_21:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"获取NSLocale的属性quotationEndDelimiter",
            @"title": @"@property (readonly, copy) NSString *quotationEndDelimiter API_AVAILABLE(macosx(10.12), ios(10.0), watchos(3.0), tvos(10.0));",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectExtendedLocale_property_quotationEndDelimiter:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectExtendedLocale_property_quotationBeginDelimiter:(TestProjectTableViewParams *)params {
    return [self createModelSingleArrayWithParams:params
                                         property:@"quotationBeginDelimiter"
                                            value:nil
                                        operation:TestProjectCreateModelGetBeforeClickGet
                                            block:nil];
}

- (NSDictionary *)method_20:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"获取NSLocale的属性quotationBeginDelimiter",
            @"title": @"@property (readonly, copy) NSString *quotationBeginDelimiter API_AVAILABLE(macosx(10.12), ios(10.0), watchos(3.0), tvos(10.0));",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectExtendedLocale_property_quotationBeginDelimiter:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectExtendedLocale_property_exemplarCharacterSet:(TestProjectTableViewParams *)params {
    return [self createModelSingleArrayWithParams:params
                                         property:@"exemplarCharacterSet"
                                            value:nil
                                        operation:TestProjectCreateModelGetBeforeClickGet
                                            block:nil];
}

- (NSDictionary *)method_19:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"获取NSLocale的属性exemplarCharacterSet",
            @"title": @"@property (readonly, copy) NSCharacterSet *exemplarCharacterSet API_AVAILABLE(macosx(10.12), ios(10.0), watchos(3.0), tvos(10.0));",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectExtendedLocale_property_exemplarCharacterSet:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectExtendedLocale_localizedStringForCollatorIdentifier:(TestProjectTableViewParams *)params {
    WS(wSelf);
    return [self createModelSingleArrayWithParams:params title:@"设置CollatorIdentifier为'nil'" methodBlock:^NSString * _Nonnull{
        return [wSelf.childLocale localizedStringForCollatorIdentifier:@"nil"];
    }];
}

- (NSDictionary *)method_18:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"执行NSLocale的方法localizedStringForCollatorIdentifier:",
            @"title": @"- (nullable NSString *)localizedStringForCollatorIdentifier:(NSString *)collatorIdentifier API_AVAILABLE(macosx(10.12), ios(10.0), watchos(3.0), tvos(10.0));",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectExtendedLocale_localizedStringForCollatorIdentifier:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectExtendedLocale_property_collatorIdentifier:(TestProjectTableViewParams *)params {
    return [self createModelSingleArrayWithParams:params
                                         property:@"collatorIdentifier"
                                            value:nil
                                        operation:TestProjectCreateModelGetBeforeClickGet
                                            block:nil];
}

- (NSDictionary *)method_17:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"获取NSLocale的属性collatorIdentifier",
            @"title": @"@property (readonly, copy) NSString *collatorIdentifier API_AVAILABLE(macosx(10.12), ios(10.0), watchos(3.0), tvos(10.0));",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectExtendedLocale_property_collatorIdentifier:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectExtendedLocale_localizedStringForCurrencyCode:(TestProjectTableViewParams *)params {
    WS(wSelf);
    return [self createModelSingleArrayWithParams:params title:@"设置CurrencyCode为'USD'" methodBlock:^NSString * _Nonnull{
        return [wSelf.childLocale localizedStringForCurrencyCode:@"USD"];
    }];
}

- (NSDictionary *)method_16:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"执行NSLocale的方法localizedStringForCurrencyCode:",
            @"title": @"- (nullable NSString *)localizedStringForCurrencyCode:(NSString *)currencyCode API_AVAILABLE(macosx(10.12), ios(10.0), watchos(3.0), tvos(10.0));",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectExtendedLocale_localizedStringForCurrencyCode:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectExtendedLocale_property_currencyCode:(TestProjectTableViewParams *)params {
    return [self createModelSingleArrayWithParams:params
                                         property:@"currencyCode"
                                            value:nil
                                        operation:TestProjectCreateModelGetBeforeClickGet
                                            block:nil];
}

- (NSDictionary *)method_15:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"获取NSLocale的属性currencyCode",
            @"title": @"@property (nullable, readonly, copy) NSString *currencyCode API_AVAILABLE(macosx(10.12), ios(10.0), watchos(3.0), tvos(10.0));",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectExtendedLocale_property_currencyCode:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectExtendedLocale_localizedStringForCollationIdentifier:(TestProjectTableViewParams *)params {
    WS(wSelf);
    return [self createModelSingleArrayWithParams:params title:@"设置CollationIdentifier为'nil'" methodBlock:^NSString * _Nonnull{
        return [wSelf.childLocale localizedStringForCollationIdentifier:@"CollationIdentifier"];
    }];
}

- (NSDictionary *)method_14:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"执行NSLocale的方法localizedStringForCollationIdentifier:",
            @"title": @"- (nullable NSString *)localizedStringForCollationIdentifier:(NSString *)collationIdentifier API_AVAILABLE(macosx(10.12), ios(10.0), watchos(3.0), tvos(10.0));",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectExtendedLocale_localizedStringForCollationIdentifier:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectExtendedLocale_property_collationIdentifier:(TestProjectTableViewParams *)params {
    return [self createModelSingleArrayWithParams:params
                                         property:@"collationIdentifier"
                                            value:nil
                                        operation:TestProjectCreateModelGetBeforeClickGet
                                            block:nil];
}

- (NSDictionary *)method_13:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"获取NSLocale的属性collationIdentifier",
            @"title": @"@property (nullable, readonly, copy) NSString *collationIdentifier API_AVAILABLE(macosx(10.12), ios(10.0), watchos(3.0), tvos(10.0));",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectExtendedLocale_property_collationIdentifier:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectExtendedLocale_localizedStringForCalendarIdentifier:(TestProjectTableViewParams *)params {
    WS(wSelf);
    return [self createModelSingleArrayWithParams:params title:@"设置CalendarIdentifier为'gregorian'" methodBlock:^NSString * _Nonnull{
        return [wSelf.childLocale localizedStringForCalendarIdentifier:@"gregorian"];
    }];
}

- (NSDictionary *)method_12:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"执行NSLocale的方法localizedStringForCalendarIdentifier:",
            @"title": @"- (nullable NSString *)localizedStringForCalendarIdentifier:(NSString *)calendarIdentifier API_AVAILABLE(macosx(10.12), ios(10.0), watchos(3.0), tvos(10.0));",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectExtendedLocale_localizedStringForCalendarIdentifier:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectExtendedLocale_property_calendarIdentifier:(TestProjectTableViewParams *)params {
    return [self createModelSingleArrayWithParams:params
                                         property:@"calendarIdentifier"
                                            value:nil
                                        operation:TestProjectCreateModelGetBeforeClickGet
                                            block:nil];
}

- (NSDictionary *)method_11:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"获取NSLocale的属性calendarIdentifier",
            @"title": @"@property (readonly, copy) NSString *calendarIdentifier API_AVAILABLE(macosx(10.12), ios(10.0), watchos(3.0), tvos(10.0));",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectExtendedLocale_property_calendarIdentifier:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectExtendedLocale_localizedStringForVariantCode:(TestProjectTableViewParams *)params {
    WS(wSelf);
    return [self createModelSingleArrayWithParams:params title:@"设置VariantCode为'nil'" methodBlock:^NSString * _Nonnull{
        return [wSelf.childLocale localizedStringForVariantCode:nil];
    }];
}

- (NSDictionary *)method_10:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"执行NSLocale的方法localizedStringForVariantCode:",
            @"title": @"- (nullable NSString *)localizedStringForVariantCode:(NSString *)variantCode API_AVAILABLE(macosx(10.12), ios(10.0), watchos(3.0), tvos(10.0));",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectExtendedLocale_localizedStringForVariantCode:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectExtendedLocale_property_variantCode:(TestProjectTableViewParams *)params {
    return [self createModelSingleArrayWithParams:params
                                         property:@"variantCode"
                                            value:nil
                                        operation:TestProjectCreateModelGetBeforeClickGet
                                            block:nil];
}

- (NSDictionary *)method_9:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"获取NSLocale的属性variantCode",
            @"title": @"@property (nullable, readonly, copy) NSString *variantCode API_AVAILABLE(macosx(10.12), ios(10.0), watchos(3.0), tvos(10.0));",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectExtendedLocale_property_variantCode:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectExtendedLocale_localizedStringForScriptCode:(TestProjectTableViewParams *)params {
    WS(wSelf);
    return [self createModelSingleArrayWithParams:params title:@"设置ScriptCode为'nil'" methodBlock:^NSString * _Nonnull{
        return [wSelf.childLocale localizedStringForScriptCode:nil];
    }];
}

- (NSDictionary *)method_8:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"执行NSLocale的方法localizedStringForScriptCode:",
            @"title": @"- (nullable NSString *)localizedStringForScriptCode:(NSString *)scriptCode API_AVAILABLE(macosx(10.12), ios(10.0), watchos(3.0), tvos(10.0));",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectExtendedLocale_localizedStringForScriptCode:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectExtendedLocale_property_scriptCode:(TestProjectTableViewParams *)params {
    return [self createModelSingleArrayWithParams:params
                                         property:@"scriptCode"
                                            value:nil
                                        operation:TestProjectCreateModelGetBeforeClickGet
                                            block:nil];
}

- (NSDictionary *)method_7:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"获取NSLocale的属性scriptCode",
            @"title": @"@property (nullable, readonly, copy) NSString *scriptCode API_AVAILABLE(macosx(10.12), ios(10.0), watchos(3.0), tvos(10.0));",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectExtendedLocale_property_scriptCode:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectExtendedLocale_localizedStringForCountryCode:(TestProjectTableViewParams *)params {
    WS(wSelf);
    return [self createModelSingleArrayWithParams:params title:@"设置CountryCode为'en_US'" methodBlock:^NSString * _Nonnull{
        return [wSelf.childLocale localizedStringForCountryCode:@"en_US"];
    }];
}

- (NSDictionary *)method_6:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"执行NSLocale的方法localizedStringForCountryCode:",
            @"title": @"- (nullable NSString *)localizedStringForCountryCode:(NSString *)countryCode API_AVAILABLE(macosx(10.12), ios(10.0), watchos(3.0), tvos(10.0));",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectExtendedLocale_localizedStringForCountryCode:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectExtendedLocale_property_countryCode:(TestProjectTableViewParams *)params {
    return [self createModelSingleArrayWithParams:params
                                         property:@"countryCode"
                                            value:nil
                                        operation:TestProjectCreateModelGetBeforeClickGet
                                            block:nil];
}

- (NSDictionary *)method_5:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"获取NSLocale的属性countryCode",
            @"title": @"@property (nullable, readonly, copy) NSString *countryCode API_AVAILABLE(macosx(10.12), ios(10.0), watchos(3.0), tvos(10.0));",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectExtendedLocale_property_countryCode:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectExtendedLocale_localizedStringForLanguageCode:(TestProjectTableViewParams *)params {
    WS(wSelf);
    return [self createModelSingleArrayWithParams:params title:@"设置LanguageCode为'en'" methodBlock:^NSString * _Nonnull{
        return [wSelf.childLocale localizedStringForLanguageCode:@"en"];
    }];
}

- (NSDictionary *)method_4:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"执行NSLocale的方法localizedStringForLanguageCode:",
            @"title": @"- (nullable NSString *)localizedStringForLanguageCode:(NSString *)languageCode API_AVAILABLE(macosx(10.12), ios(10.0), watchos(3.0), tvos(10.0));",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectExtendedLocale_localizedStringForLanguageCode:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectExtendedLocale_property_languageCode:(TestProjectTableViewParams *)params {
    return [self createModelSingleArrayWithParams:params
                                         property:@"languageCode"
                                            value:nil
                                        operation:TestProjectCreateModelGetBeforeClickGet
                                            block:nil];
}

- (NSDictionary *)method_3:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"获取NSLocale的属性languageCode",
            @"title": @"@property (readonly, copy) NSString *languageCode API_AVAILABLE(macosx(10.12), ios(10.0), watchos(3.0), tvos(10.0));",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectExtendedLocale_property_languageCode:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectExtendedLocale_localizedStringForLocaleIdentifier:(TestProjectTableViewParams *)params {
    WS(wSelf);
    return [self createModelSingleArrayWithParams:params title:@"设置LocaleIdentifier为'en_US" methodBlock:^NSString * _Nonnull{
        return [wSelf.childLocale localizedStringForLocaleIdentifier:@"en_US"];
    }];
}

- (NSDictionary *)method_2:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"执行NSLocale的方法localizedStringForLocaleIdentifier:",
            @"title": @"- (NSString *)localizedStringForLocaleIdentifier:(NSString *)localeIdentifier API_AVAILABLE(macosx(10.12), ios(10.0), watchos(3.0), tvos(10.0));",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectExtendedLocale_localizedStringForLocaleIdentifier:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectExtendedLocale_property_localeIdentifier:(TestProjectTableViewParams *)params {
    return [self createModelSingleArrayWithParams:params
                                         property:@"localeIdentifier"
                                            value:nil
                                        operation:TestProjectCreateModelGetBeforeClickGet
                                            block:nil];
}

- (NSDictionary *)method_1:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"获取NSLocale的属性localeIdentifier",
            @"title": @"@property (readonly, copy) NSString *localeIdentifier;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectExtendedLocale_property_localeIdentifier:params],
            }
        },
    };
}

@end
