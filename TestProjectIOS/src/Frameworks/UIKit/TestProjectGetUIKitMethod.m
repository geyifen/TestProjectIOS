//
//  TestProjectGetUIKitMethod.m
//  TestProjectIOS
//
//  Created by zjrcumac on 2023/3/3.
//

#import "TestProjectGetUIKitMethod.h"

@implementation TestProjectGetUIKitMethod

+ (NSDictionary *)project_UIKit {
    return @{@"UIKit": @{
        @"itemChilds": @[
            [self ActivityIndicatorView],
            [self NSDataAsset],
            [self NSShadow],
            [self NSParagraphStyle],
            [self NSTextAttachment],
            [self NSAttributedString],
            [self UIFont],
            [self UIColor],
            [self CIColor],
        ],
        @"atIndex": @0,
    }, };
}

+ (NSDictionary *)ActivityIndicatorView {
    return @{
        @"UIActivityIndicatorView":@{
            @"viewKey":@"TestProjectActivityIndicatorView"
        },
    };
}

+ (NSDictionary *)NSDataAsset {
    return @{
        @"NSDataAsset":@{
            @"viewKey":@"TestProjectDataAsset"
        },
    };
}

+ (NSDictionary *)NSShadow {
    return @{
        @"NSShadow":@{
            @"viewKey":@"TestProjectShadow"
        },
    };
}

+ (NSDictionary *)NSParagraphStyle {
    return @{
        @"NSParagraphStyle":@{
            @"itemChilds":@[@{
                @"NSParagraphStyle":@{
                    @"viewKey":@"TestProjectParagraphStyle"
                },
                @"NSMutableParagraphStyle":@{
                    @"viewKey":@"TestProjectMutableParagraphStyle"
                },
            }, ],
            @"atIndex": @1,
        },
    };
}

+ (NSDictionary *)NSTextAttachment {
    return @{
        @"NSTextAttachment":@{
            @"itemChilds":@[@{
                @"NSTextAttachment": @{
                    @"viewKey":@"TestProjectTextAttachment"
                },
            }, ],
        },
    };
}

+ (NSDictionary *)NSAttributedString {
    return @{
        @"NSAttributedString":@{
            @"itemChilds":@[@{
                @"NSAttributedString": @{
                    @"viewKey":@"TestProjectAttributeStringKit"
                },
            }, @{
                @"NSMutableAttributedString(NSAttributedStringAttributeFixing)": @{
                    @"viewKey":@"TestProjectMutableAttributedStringAttributeFixing"
                },
            }, @{
                @"NSAttributedString(NSAttributedStringDocumentFormats)": @{
                    @"viewKey":@"TestProjectAttributedStringDocumentFormats"
                },
            }, ],
        },
    };
}

+ (NSDictionary *)UIFont {
    return @{
        @"UIFont":@{
            @"itemChilds":@[@{
                @"UIFont": @{
                    @"viewKey":@"TestProjectFont"
                },
            }, ],
        },
    };
}

+ (NSDictionary *)UIColor {
    return @{
        @"UIColor": @{
            @"itemChilds":@[@{
                @"UIColor(TestProject)":@{
                    @"viewKey":@"TestProjectUIColorCategory",
                },
            }, @{
                @"CIColor(UIKitAdditions)":@{
                    @"viewKey":@"TestProjectCIColorKitAdditions",
                },
            }, @{
                @"UIColor":@{
                    @"viewKey":@"TestProjectUIColor",
                },
            }, @{
                @"UIColor(UIColorNamedColors)":@{
                    @"viewKey":@"TestProjectUIColorNamedColors",
                },
            }, @{
                @"UIColor(DynamicColors)":@{
                    @"viewKey":@"TestProjectUIColorDynamicdColors",
                },
            }, ]
        },
    };
}

+ (NSDictionary *)CIColor {
    return @{
        @"CIColor": @{
            @"itemChilds":@[@{
                @"CIColor":@{
                    @"viewKey":@"TestProjectCIColor",
                },
            }, ],
        }
    };
}

@end
