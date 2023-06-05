//
//  TestProjectGetUIKitMethod.m
//  TestProjectIOS
//
//  Created by zjrcumac on 2023/3/3.
//

#import "TestProjectGetUIKitMethod.h"

#import "TestProjectViewModelTab.h"

@implementation TestProjectGetUIKitMethod

+ (NSArray *)oldItemChilds {
    return @[
        [self UIBarButtonItem],
        [self UINavigationItem],
        [self UINavigationBarAppearance],
        [self UIBarAppearance],
        [self UINavigationBar],
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
//        [self CIColor],
    ];
}

+ (NSArray *)newItemChilds {
    return @[
//        [self UIButton],
        [self UIControl],
        [self UIView],
        [self UIResponder],
    ];
}

+ (NSArray *)itemChilds {
    NSMutableArray *arr = [NSMutableArray array];
    [arr addObjectsFromArray:[self newItemChilds]];
    [arr addObjectsFromArray:[self oldItemChilds]];

    return [arr copy];
}

+ (NSDictionary *)project_UIKit {
    return @{
        @"title": @"UIKit",
        @"atIndex": @0,
        @"itemChilds": [self itemChilds],
    };
}

+ (NSDictionary *)UIButton {
    return @{
        @"title": @"UIButton",
        @"atIndex": @0,
        @"viewKey": @"TestProjectButton",
    };
}

+ (NSDictionary *)UIControl {
    return @{
        @"title": @"UIControl",
        @"atIndex": @0,
        @"itemChilds": @[
            @{
                @"title": @"UIControl",
                @"viewKey": @"TestProjectControl",
            },
            @{
                @"title": @"UIControl\n(还有其它的)",
                @"viewKey": @"TestProjectControl",
            },
        ]
    };
}

+ (NSDictionary *)UIView {
    return @{
        @"title": @"UIView",
        @"atIndex": @0,
        @"itemChilds": @[
            @{
                @"title": @"UIView\n(UIContentSizeCategoryLimit)",
                @"viewKey": @"TestProjectViewContentSizeCategoryLimit",
            },
            @{
                @"title": @"UIView\n(UISnapshotting)",
                @"viewKey": @"TestProjectViewSnapshotting",
            },
            @{
                @"title": @"UIView\n(UIViewKeyframeAnimations)",
                @"viewKey": @"TestProjectViewViewKeyframeAnimations",
            },
            @{
                @"title": @"UIView\n(UIViewAnimationWithBlocks)",
                @"viewKey": @"TestProjectViewViewAnimationWithBlocks",
            },
            @{
                @"title": @"UIView\n(UIViewRendering)",
                @"viewKey": @"TestProjectViewViewRendering",
            },
            @{
                @"title": @"UIView\n(UIViewHierarchy)",
                @"viewKey": @"TestProjectViewViewHierarchy",
            },
            @{
                @"title": @"UIView\n(UIViewViewGeometry)",
                @"viewKey": @"TestProjectViewViewGeometry",
            },
            @{
                @"title": @"UIView",
                @"viewKey": @"TestProjectUIView",
            },
            @{
                @"title": @"UIView\n(还有其它的)",
                @"viewKey": @"TestProjectUIView",
            },
        ]
    };
}

+ (NSDictionary *)UIResponder {
    return @{
        @"title": @"UIResponder",
        @"atIndex": @0,
        @"itemChilds": @[
            @{
                @"title": @"UIResponder",
                @"viewKey": @"TestProjectResponder",
            },
            @{
                @"title": @"UIResponder\n(还有其它的)",
                @"viewKey": @"TestProjectResponder",
            },
        ]
    };
}

+ (NSDictionary *)UIBarButtonItem {
    return @{
        @"title": @"UIBarButtonItem",
        @"atIndex": @0,
        @"viewKey": @"TestProjectBarButtonItem",
    };
}

+ (NSDictionary *)UINavigationItem {
    return @{
        @"title": @"UINavigationItem",
        @"atIndex": @0,
        @"viewKey": @"TestProjectNavigationItem",
    };
}

+ (NSDictionary *)UINavigationBarAppearance {
    return @{
        @"title": @"UINavigationBarAppearance",
        @"atIndex": @0,
        @"viewKey": @"TestProjectNavigationBarAppearance",
    };
}

+ (NSDictionary *)UIBarAppearance {
    return @{
        @"title": @"UIBarAppearance",
        @"atIndex": @0,
        @"viewKey": @"TestProjectBarAppearance",
    };
}

+ (NSDictionary *)UINavigationBar {
    return @{
        @"title": @"UINavigationBar",
        @"atIndex": @0,
        @"viewKey": @"TestProjectNavigationBar",
    };
}

+ (NSDictionary *)UINavigationController {
    return @{
        @"title": @"UINavigationController",
        @"atIndex": @0,
        @"itemChilds": @[
            @{
                @"title": @"UIViewController\n(UINavigationControllerItem)",
                @"viewKey": @"TestProjectViewControllerNavigationControllerItem",
            },
            @{
                @"title": @"UINavigationController",
                @"viewKey": @"TestProjectNavigationController",
            },
            @{
                @"title": @"UINavigationController\n(还有其它的)",
                @"viewKey": @"TestProjectNavigationController",
            },
        ]
    };
}

+ (NSDictionary *)UIViewController {
    return @{
        @"title": @"UIViewController",
        @"atIndex": @0,
        @"itemChilds": @[
            @{
                @"title": @"UIViewController",
                @"viewKey": @"TestProjectViewController",
            },
            @{
                @"title": @"UIViewController\n(还有其它的)",
                @"viewKey": @"TestProjectViewController",
            },
        ]
    };
}

+ (NSDictionary *)UIAppearance {
    return @{
        @"title": @"UIAppearance",
        @"atIndex": @0,
        @"viewKey": @"TestProjectAppearance",
    };
}

+ (NSDictionary *)UIAlertController {
    return @{
        @"title": @"UIAlertController",
        @"atIndex": @0,
        @"viewKey": @"TestProjectAlertController",
    };
}

+ (NSDictionary *)ActivityIndicatorView {
    return @{
        @"title": @"UIActivityIndicatorView",
        @"atIndex": @0,
        @"viewKey": @"TestProjectActivityIndicatorView",
    };
}

+ (NSDictionary *)NSDataAsset {
    return @{
        @"title": @"NSDataAsset",
        @"atIndex": @0,
        @"viewKey": @"TestProjectDataAsset",
    };
}

+ (NSDictionary *)NSShadow {
    return @{
        @"title": @"NSShadow",
        @"atIndex": @0,
        @"viewKey": @"TestProjectShadow",
    };
}

+ (NSDictionary *)NSParagraphStyle {
    return @{
        @"title": @"NSParagraphStyle",
        @"atIndex": @0,
        @"viewKey": @"TestProjectMutableParagraphStyle",
    };
}

+ (NSDictionary *)NSTextAttachment {
    return @{
        @"title": @"NSTextAttachment",
        @"atIndex": @0,
        @"itemChilds": @[
            @{
                @"title": @"NSTextAttachment",
                @"viewKey": @"TestProjectTextAttachment",
            },
            @{
                @"title": @"NSTextAttachment\n(还有其它的)",
                @"viewKey": @"TestProjectTextAttachment",
            },
        ]
    };
}

+ (NSDictionary *)NSAttributedString {
    return @{
        @"title": @"NSAttributedString",
        @"atIndex": @0,
        @"itemChilds": @[
            @{
                @"title": @"NSAttributedString\n(NSAttributedStringDocumentFormats)",
                @"viewKey": @"TestProjectAttributedStringDocumentFormats",
            },
            @{
                @"title": @"NSMutableAttributedString\n(NSAttributedStringAttributeFixing)",
                @"viewKey": @"TestProjectMutableAttributedStringAttributeFixing",
            },
            @{
                @"title": @"NSAttributedString",
                @"viewKey": @"TestProjectAttributeStringKit",
            },
            @{
                @"title": @"NSAttributedString\n(还有其它的)",
                @"viewKey": @"TestProjectAttributeStringKit",
            },
        ]
    };
}

+ (NSDictionary *)UIFont {
    return @{
        @"title": @"UIFont",
        @"atIndex": @0,
        @"viewKey": @"TestProjectFont",
    };
}

+ (NSDictionary *)UIColor {
    return @{
        @"title": @"UIColor",
        @"atIndex": @0,
        @"itemChilds": @[
            @{
                @"title": @"UIColor\n(UIKitAdditions)",
                @"viewKey": @"TestProjectCIColorKitAdditions",
            },
            @{
                @"title": @"UIColor\n(TestProject)",
                @"viewKey": @"TestProjectUIColorCategory",
            },
            @{
                @"title": @"UIColor\n(DynamicColors)",
                @"viewKey": @"TestProjectUIColorDynamicdColors",
            },
            @{
                @"title": @"UIColor\n(UIColorNamedColors)",
                @"viewKey": @"TestProjectUIColorNamedColors",
            },
            @{
                @"title": @"UIColor",
                @"viewKey": @"TestProjectUIColor",
            },
            @{
                @"title": @"UIColor\n(还有其它的)",
                @"viewKey": @"TestProjectUIColor",
            },
        ]
    };
}

+ (NSDictionary *)CIColor {
    return @{
        @"title": @"CIColor",
        @"atIndex": @0,
        @"itemChilds": @[
            @{
                @"title": @"CIColor",
                @"viewKey": @"TestProjectCIColor",
            },
        ]
    };
}

@end
