//
//  TestProjectLocaleGeneralInfo.m
//  TestProjectIOS
//
//  Created by zjrcumac on 2023/6/14.
//

#import "TestProjectLocaleGeneralInfo.h"

@implementation TestProjectLocaleGeneralInfo

- (NSDictionary *)method_1 {
    return @{
        @"dataModel": @{
            @"abstract": @"获取NSLocale的class属性availableLocaleIdentifiers",
            @"title": @"@property (class, readonly, copy) NSArray<NSString *> *availableLocaleIdentifiers;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectLocaleGeneralInfo_class_property_availableLocaleIdentifiers],
            }
        },
    };
}

- (NSDictionary *)method_2 {
    return @{
        @"dataModel": @{
            @"abstract": @"获取NSLocale的class属性ISOLanguageCodes",
            @"title": @"@property (class, readonly, copy) NSArray<NSString *> *ISOLanguageCodes;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectLocaleGeneralInfo_class_property_ISOLanguageCodes],
            }
        },
    };
}

- (NSDictionary *)method_3 {
    return @{
        @"dataModel": @{
            @"abstract": @"获取NSLocale的class属性ISOCountryCodes",
            @"title": @"@property (class, readonly, copy) NSArray<NSString *> *ISOCountryCodes;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectLocaleGeneralInfo_class_property_ISOCountryCodes],
            }
        },
    };
}

- (NSDictionary *)method_4 {
    return @{
        @"dataModel": @{
            @"abstract": @"获取NSLocale的class属性ISOCurrencyCodes",
            @"title": @"@property (class, readonly, copy) NSArray<NSString *> *ISOCurrencyCodes;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectLocaleGeneralInfo_class_property_ISOCurrencyCodes],
            }
        },
    };
}

- (NSDictionary *)method_5 {
    return @{
        @"dataModel": @{
            @"abstract": @"获取NSLocale的class属性commonISOCurrencyCodes",
            @"title": @"@property (class, readonly, copy) NSArray<NSString *> *commonISOCurrencyCodes API_AVAILABLE(macos(10.5), ios(2.0), watchos(2.0), tvos(9.0));",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectLocaleGeneralInfo_class_property_commonISOCurrencyCodes],
            }
        },
    };
}

- (NSDictionary *)method_6 {
    return @{
        @"dataModel": @{
            @"abstract": @"获取NSLocale的class属性preferredLanguages",
            @"title": @"@property (class, readonly, copy) NSArray<NSString *> *preferredLanguages API_AVAILABLE(macos(10.5), ios(2.0), watchos(2.0), tvos(9.0));",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectLocaleGeneralInfo_class_property_preferredLanguages],
            }
        },
    };
}

- (NSDictionary *)method_7 {
    return @{
        @"dataModel": @{
            @"abstract": @"获取NSLocale的class方法componentsFromLocaleIdentifier",
            @"title": @"+ (NSDictionary<NSString *, NSString *> *)componentsFromLocaleIdentifier:(NSString *)string;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectLocaleGeneralInfo_class_componentsFromLocaleIdentifier],
            }
        },
    };
}

- (NSDictionary *)method_8 {
    return @{
        @"dataModel": @{
            @"abstract": @"获取NSLocale的class方法localeIdentifierFromComponents",
            @"title": @"+ (NSString *)localeIdentifierFromComponents:(NSDictionary<NSString *, NSString *> *)dict;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectLocaleGeneralInfo_class_localeIdentifierFromComponents],
            }
        },
    };
}

- (NSDictionary *)method_9 {
    return @{
        @"dataModel": @{
            @"abstract": @"获取NSLocale的class方法canonicalLocaleIdentifierFromString",
            @"title": @"+ (NSString *)canonicalLocaleIdentifierFromString:(NSString *)string;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectLocaleGeneralInfo_class_canonicalLocaleIdentifierFromString],
            }
        },
    };
}

- (NSDictionary *)method_10 {
    return @{
        @"dataModel": @{
            @"abstract": @"获取NSLocale的class方法canonicalLanguageIdentifierFromString",
            @"title": @"+ (NSString *)canonicalLanguageIdentifierFromString:(NSString *)string;",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectLocaleGeneralInfo_class_canonicalLanguageIdentifierFromString],
            }
        },
    };
}

- (NSDictionary *)method_11 {
    return @{
        @"dataModel": @{
            @"abstract": @"获取NSLocale的class方法localeIdentifierFromWindowsLocaleCode",
            @"title": @"+ (nullable NSString *)localeIdentifierFromWindowsLocaleCode:(uint32_t)lcid API_AVAILABLE(macos(10.6), ios(4.0), watchos(2.0), tvos(9.0));",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectLocaleGeneralInfo_class_localeIdentifierFromWindowsLocaleCode],
            }
        },
    };
}

- (NSDictionary *)method_12 {
    return @{
        @"dataModel": @{
            @"abstract": @"获取NSLocale的class方法windowsLocaleCodeFromLocaleIdentifier",
            @"title": @"+ (uint32_t)windowsLocaleCodeFromLocaleIdentifier:(NSString *)localeIdentifier API_AVAILABLE(macos(10.6), ios(4.0), watchos(2.0), tvos(9.0));",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectLocaleGeneralInfo_class_windowsLocaleCodeFromLocaleIdentifier],
            }
        },
    };
}

- (NSDictionary *)method_13 {
    return @{
        @"dataModel": @{
            @"abstract": @"获取NSLocale的class方法characterDirectionForLanguage",
            @"title": @"+ (NSLocaleLanguageDirection)characterDirectionForLanguage:(NSString *)isoLangCode API_AVAILABLE(macos(10.6), ios(4.0), watchos(2.0), tvos(9.0));",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectLocaleGeneralInfo_class_characterDirectionForLanguage],
            }
        },
    };
}

- (NSDictionary *)method_14 {
    return @{
        @"dataModel": @{
            @"abstract": @"获取NSLocale的class方法lineDirectionForLanguage",
            @"title": @"+ (NSLocaleLanguageDirection)lineDirectionForLanguage:(NSString *)isoLangCode API_AVAILABLE(macos(10.6), ios(4.0), watchos(2.0), tvos(9.0));",
            @"isDataModelExpand": @(YES),
            @"dataModel": @{
                @"childItems": [self TestProjectLocaleGeneralInfo_class_lineDirectionForLanguage],
            }
        },
    };
}

- (NSMutableArray *)TestProjectLocaleGeneralInfo_class_lineDirectionForLanguage {
    return [self createTableModelSingleArrayWithTitle:[NSString stringWithFormat:@"%lu", [NSLocale lineDirectionForLanguage:@"zh"]] block:nil];
}

- (NSMutableArray *)TestProjectLocaleGeneralInfo_class_characterDirectionForLanguage {
    return [self createTableModelSingleArrayWithTitle:[NSString stringWithFormat:@"%lu", [NSLocale characterDirectionForLanguage:@"zh"]] block:nil];
}

- (NSMutableArray *)TestProjectLocaleGeneralInfo_class_windowsLocaleCodeFromLocaleIdentifier {
    return [self createTableModelSingleArrayWithTitle:[NSString stringWithFormat:@"%u", [NSLocale windowsLocaleCodeFromLocaleIdentifier:@"zh"]] block:nil];
}

- (NSMutableArray *)TestProjectLocaleGeneralInfo_class_localeIdentifierFromWindowsLocaleCode {
    return [self createTableModelSingleArrayWithTitle:[NSString stringWithFormat:@"%@", [NSLocale localeIdentifierFromWindowsLocaleCode:30724]] block:nil];
}

- (NSMutableArray *)TestProjectLocaleGeneralInfo_class_canonicalLanguageIdentifierFromString {
    return [self createTableModelSingleArrayWithTitle:[NSString stringWithFormat:@"%@", [NSLocale canonicalLanguageIdentifierFromString:@"zh"]] block:nil];
}

- (NSMutableArray *)TestProjectLocaleGeneralInfo_class_canonicalLocaleIdentifierFromString {
    return [self createTableModelSingleArrayWithTitle:[NSString stringWithFormat:@"%@", [NSLocale canonicalLocaleIdentifierFromString:@"zh"]] block:nil];
}

- (NSMutableArray *)TestProjectLocaleGeneralInfo_class_localeIdentifierFromComponents {
    NSString *title = [NSLocale localeIdentifierFromComponents:[NSLocale componentsFromLocaleIdentifier:@"zh"]];
    return [self createTableModelSingleArrayWithTitle:[NSString stringWithFormat:@"%@", title] block:nil];
}

- (NSMutableArray *)TestProjectLocaleGeneralInfo_class_componentsFromLocaleIdentifier {
    return [self createTableModelSingleArrayWithTitle:[NSString stringWithFormat:@"%@", [NSLocale componentsFromLocaleIdentifier:@"zh"]] block:nil];
}

- (NSMutableArray *)TestProjectLocaleGeneralInfo_class_property_preferredLanguages {
    return [self createTableModelSingleArrayWithTitle:[NSString stringWithFormat:@"%@", [NSLocale preferredLanguages]] block:nil];
}

- (NSMutableArray *)TestProjectLocaleGeneralInfo_class_property_commonISOCurrencyCodes {
    return [self createTableModelSingleArrayWithTitle:[NSString stringWithFormat:@"%@", [NSLocale commonISOCurrencyCodes]] block:nil];
}

- (NSMutableArray *)TestProjectLocaleGeneralInfo_class_property_ISOCurrencyCodes {
    return [self createTableModelSingleArrayWithTitle:[NSString stringWithFormat:@"%@", [NSLocale ISOCurrencyCodes]] block:nil];
}

- (NSMutableArray *)TestProjectLocaleGeneralInfo_class_property_ISOCountryCodes {
    return [self createTableModelSingleArrayWithTitle:[NSString stringWithFormat:@"%@", [NSLocale ISOCountryCodes]] block:nil];
}

- (NSMutableArray *)TestProjectLocaleGeneralInfo_class_property_ISOLanguageCodes {
    return [self createTableModelSingleArrayWithTitle:[NSString stringWithFormat:@"%@", [NSLocale ISOLanguageCodes]] block:nil];
}

- (NSMutableArray *)TestProjectLocaleGeneralInfo_class_property_availableLocaleIdentifiers {
    NSArray *arr = [NSLocale availableLocaleIdentifiers];
    NSString *title = [NSString stringWithFormat:@"%@", arr];
    NSLog(@"%@", title);
    return [self createTableModelSingleArrayWithTitle:title block:nil];
}

@end
