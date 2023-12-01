//
//  TestProjectNSLocaleGeneralInfo.m
//  TestProjectIOS
//
//  Created by liwenfan on 2023/6/14.
//

#import "TestProjectNSLocaleGeneralInfo.h"

@implementation TestProjectNSLocaleGeneralInfo

- (NSMutableArray *)TestProjectLocaleGeneralInfo_class_lineDirectionForLanguage:(TestProjectTableViewParams *)params {
    return [self createModelSingleArrayWithParams:params title:[NSString stringWithFormat:@"%lu", [NSLocale lineDirectionForLanguage:@"zh"]] block:nil];
}

- (NSDictionary *)method_14:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"获取NSLocale的class方法lineDirectionForLanguage",
            @"title": @"+ (NSLocaleLanguageDirection)lineDirectionForLanguage:(NSString *)isoLangCode API_AVAILABLE(macos(10.6), ios(4.0), watchos(2.0), tvos(9.0));",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectLocaleGeneralInfo_class_lineDirectionForLanguage:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectLocaleGeneralInfo_class_characterDirectionForLanguage:(TestProjectTableViewParams *)params {
    return [self createModelSingleArrayWithParams:params title:[NSString stringWithFormat:@"%lu", [NSLocale characterDirectionForLanguage:@"zh"]] block:nil];
}

- (NSDictionary *)method_13:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"获取NSLocale的class方法characterDirectionForLanguage",
            @"title": @"+ (NSLocaleLanguageDirection)characterDirectionForLanguage:(NSString *)isoLangCode API_AVAILABLE(macos(10.6), ios(4.0), watchos(2.0), tvos(9.0));",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectLocaleGeneralInfo_class_characterDirectionForLanguage:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectLocaleGeneralInfo_class_windowsLocaleCodeFromLocaleIdentifier:(TestProjectTableViewParams *)params {
    return [self createModelSingleArrayWithParams:params title:[NSString stringWithFormat:@"%u", [NSLocale windowsLocaleCodeFromLocaleIdentifier:@"zh"]] block:nil];
}

- (NSDictionary *)method_12:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"获取NSLocale的class方法windowsLocaleCodeFromLocaleIdentifier",
            @"title": @"+ (uint32_t)windowsLocaleCodeFromLocaleIdentifier:(NSString *)localeIdentifier API_AVAILABLE(macos(10.6), ios(4.0), watchos(2.0), tvos(9.0));",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectLocaleGeneralInfo_class_windowsLocaleCodeFromLocaleIdentifier:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectLocaleGeneralInfo_class_localeIdentifierFromWindowsLocaleCode:(TestProjectTableViewParams *)params {
    return [self createModelSingleArrayWithParams:params title:[NSString stringWithFormat:@"%@", [NSLocale localeIdentifierFromWindowsLocaleCode:30724]] block:nil];
}

- (NSDictionary *)method_11:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"获取NSLocale的class方法localeIdentifierFromWindowsLocaleCode",
            @"title": @"+ (nullable NSString *)localeIdentifierFromWindowsLocaleCode:(uint32_t)lcid API_AVAILABLE(macos(10.6), ios(4.0), watchos(2.0), tvos(9.0));",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectLocaleGeneralInfo_class_localeIdentifierFromWindowsLocaleCode:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectLocaleGeneralInfo_class_canonicalLanguageIdentifierFromString:(TestProjectTableViewParams *)params {
    return [self createModelSingleArrayWithParams:params title:[NSString stringWithFormat:@"%@", [NSLocale canonicalLanguageIdentifierFromString:@"zh"]] block:nil];
}

- (NSDictionary *)method_10:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"获取NSLocale的class方法canonicalLanguageIdentifierFromString",
            @"title": @"+ (NSString *)canonicalLanguageIdentifierFromString:(NSString *)string;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectLocaleGeneralInfo_class_canonicalLanguageIdentifierFromString:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectLocaleGeneralInfo_class_canonicalLocaleIdentifierFromString:(TestProjectTableViewParams *)params {
    return [self createModelSingleArrayWithParams:params title:[NSString stringWithFormat:@"%@", [NSLocale canonicalLocaleIdentifierFromString:@"zh"]] block:nil];
}

- (NSDictionary *)method_9:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"获取NSLocale的class方法canonicalLocaleIdentifierFromString",
            @"title": @"+ (NSString *)canonicalLocaleIdentifierFromString:(NSString *)string;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectLocaleGeneralInfo_class_canonicalLocaleIdentifierFromString:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectLocaleGeneralInfo_class_localeIdentifierFromComponents:(TestProjectTableViewParams *)params {
    NSString *title = [NSLocale localeIdentifierFromComponents:[NSLocale componentsFromLocaleIdentifier:@"zh"]];
    return [self createModelSingleArrayWithParams:params title:[NSString stringWithFormat:@"%@", title] block:nil];
}

- (NSDictionary *)method_8:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"获取NSLocale的class方法localeIdentifierFromComponents",
            @"title": @"+ (NSString *)localeIdentifierFromComponents:(NSDictionary<NSString *, NSString *> *)dict;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectLocaleGeneralInfo_class_localeIdentifierFromComponents:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectLocaleGeneralInfo_class_componentsFromLocaleIdentifier:(TestProjectTableViewParams *)params {
    return [self createModelSingleArrayWithParams:params title:[NSString stringWithFormat:@"%@", [NSLocale componentsFromLocaleIdentifier:@"zh"]] block:nil];
}

- (NSDictionary *)method_7:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"获取NSLocale的class方法componentsFromLocaleIdentifier",
            @"title": @"+ (NSDictionary<NSString *, NSString *> *)componentsFromLocaleIdentifier:(NSString *)string;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectLocaleGeneralInfo_class_componentsFromLocaleIdentifier:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectLocaleGeneralInfo_class_property_preferredLanguages:(TestProjectTableViewParams *)params {
    return [self createModelSingleArrayWithParams:params title:[NSString stringWithFormat:@"%@", [NSLocale preferredLanguages]] block:nil];
}

- (NSDictionary *)method_6:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"获取NSLocale的class属性preferredLanguages",
            @"title": @"@property (class, readonly, copy) NSArray<NSString *> *preferredLanguages API_AVAILABLE(macos(10.5), ios(2.0), watchos(2.0), tvos(9.0));",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectLocaleGeneralInfo_class_property_preferredLanguages:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectLocaleGeneralInfo_class_property_commonISOCurrencyCodes:(TestProjectTableViewParams *)params {
    return [self createModelSingleArrayWithParams:params title:[NSString stringWithFormat:@"%@", [NSLocale commonISOCurrencyCodes]] block:nil];
}

- (NSDictionary *)method_5:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"获取NSLocale的class属性commonISOCurrencyCodes",
            @"title": @"@property (class, readonly, copy) NSArray<NSString *> *commonISOCurrencyCodes API_AVAILABLE(macos(10.5), ios(2.0), watchos(2.0), tvos(9.0));",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectLocaleGeneralInfo_class_property_commonISOCurrencyCodes:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectLocaleGeneralInfo_class_property_ISOCurrencyCodes:(TestProjectTableViewParams *)params {
    return [self createModelSingleArrayWithParams:params title:[NSString stringWithFormat:@"%@", [NSLocale ISOCurrencyCodes]] block:nil];
}

- (NSDictionary *)method_4:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"获取NSLocale的class属性ISOCurrencyCodes",
            @"title": @"@property (class, readonly, copy) NSArray<NSString *> *ISOCurrencyCodes;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectLocaleGeneralInfo_class_property_ISOCurrencyCodes:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectLocaleGeneralInfo_class_property_ISOCountryCodes:(TestProjectTableViewParams *)params {
    return [self createModelSingleArrayWithParams:params title:[NSString stringWithFormat:@"%@", [NSLocale ISOCountryCodes]] block:nil];
}

- (NSDictionary *)method_3:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"获取NSLocale的class属性ISOCountryCodes",
            @"title": @"@property (class, readonly, copy) NSArray<NSString *> *ISOCountryCodes;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectLocaleGeneralInfo_class_property_ISOCountryCodes:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectLocaleGeneralInfo_class_property_ISOLanguageCodes:(TestProjectTableViewParams *)params {
    return [self createModelSingleArrayWithParams:params title:[NSString stringWithFormat:@"%@", [NSLocale ISOLanguageCodes]] block:nil];
}

- (NSDictionary *)method_2:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"获取NSLocale的class属性ISOLanguageCodes",
            @"title": @"@property (class, readonly, copy) NSArray<NSString *> *ISOLanguageCodes;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectLocaleGeneralInfo_class_property_ISOLanguageCodes:params],
            }
        },
    };
}

- (NSMutableArray *)TestProjectLocaleGeneralInfo_class_property_availableLocaleIdentifiers:(TestProjectTableViewParams *)params {
    NSArray *arr = [NSLocale availableLocaleIdentifiers];
    NSString *title = [NSString stringWithFormat:@"%@", arr];
    NSLog(@"%@", title);
    return [self createModelSingleArrayWithParams:params title:title block:nil];
}

- (NSDictionary *)method_1:(TestProjectTableViewParams *)params {
    return @{
        @"dataModel": @{
            @"abstract": @"获取NSLocale的class属性availableLocaleIdentifiers",
            @"title": @"@property (class, readonly, copy) NSArray<NSString *> *availableLocaleIdentifiers;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectLocaleGeneralInfo_class_property_availableLocaleIdentifiers:params],
            }
        },
    };
}

@end
