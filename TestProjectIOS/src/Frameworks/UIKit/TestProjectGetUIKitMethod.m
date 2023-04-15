//
//  TestProjectGetUIKitMethod.m
//  TestProjectIOS
//
//  Created by zjrcumac on 2023/3/3.
//

#import "TestProjectGetUIKitMethod.h"

@implementation TestProjectGetUIKitMethod

+ (NSArray *)oldItemChilds {
    return @[
        [self UINavigationController],
        [self UIViewController],
        [self UIAppearance],
        [self UIAlertController],
        [self ActivityIndicatorView],
        [self NSDataAsset],
        [self NSShadow],
        [self NSParagraphStyle],
        [self NSTextAttachment],
        [self NSAttributedString],
        [self UIFont],
        [self UIColor],
        [self CIColor],
    ];
}

+ (NSArray *)newItemChilds {
    return @[
        [self UIBarAppearance],
        [self UINavigationBarAppearance],
        [self UINavigationBar],
        [self UINavigationItem],
    ];
}

+ (NSArray *)itemChilds {
    NSMutableArray *arr = [NSMutableArray array];
    [arr addObjectsFromArray:[self newItemChilds]];
    [arr addObjectsFromArray:[self oldItemChilds]];

    return [arr copy];
}

+ (NSDictionary *)project_UIKit {
    return @{@"UIKit": @{
        @"itemChilds": [self itemChilds],
        @"atIndex": @2,
    }, };
}

+ (NSDictionary *)UIBarAppearance {
    return @{
        @"UIBarAppearance":@{
            @"viewKey":@"TestProjectBarAppearance"
        },
    };
}

+ (NSDictionary *)UINavigationBarAppearance {
    return @{
        @"UINavigationBarAppearance":@{
            @"viewKey":@"TestProjectNavigationBarAppearance"
        },
    };
}

+ (NSDictionary *)UINavigationBar {
    return @{
        @"UINavigationBar":@{
            @"viewKey":@"TestProjectNavigationBar"
        },
    };
}

+ (NSDictionary *)UINavigationItem {
    return @{
        @"UINavigationItem":@{
            @"viewKey":@"TestProjectNavigationItem"
        },
    };
}

+ (NSDictionary *)UINavigationController {
    return @{
        @"UINavigationController":@{
            @"itemChilds":@[@{
                @"UIViewController(UINavigationControllerItem)":@{
                    @"viewKey":@"TestProjectViewControllerNavigationControllerItem"
                },
                @"UINavigationController":@{
                    @"viewKey":@"TestProjectNavigationController"
                },
            }, ],
            @"atIndex": @0,
        },
    };
}

+ (NSDictionary *)UIViewController {
    return @{
        @"UIViewController":@{
            @"itemChilds":@[@{
                @"UIViewController":@{
                    @"viewKey":@"TestProjectViewController"
                },
            }, ],
            @"atIndex": @0,
        },
    };
}

+ (NSDictionary *)UIAppearance {
    return @{
        @"UIAppearance":@{
            @"viewKey":@"TestProjectAppearance"
        },
    };
}

+ (NSDictionary *)UIAlertController {
    return @{
        @"UIAlertController":@{
            @"viewKey":@"TestProjectAlertController"
        },
    };
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
