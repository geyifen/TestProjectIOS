//
//  TestProjectGetUIKitMethod.m
//  TestProjectIOS
//
//  Created by liwenfan on 2023/3/3.
//

#import "TestProjectGetUIKitMethod.h"

#import "TestProjectViewModelTab.h"

@implementation TestProjectGetUIKitMethod

+ (NSArray *)newItemChilds {
    return @[
//        [self UITextField],
        [self UIImage],
        [self UIBezierPath],
        [self UICollectionViewController],
        [self UICollectionViewLayout],
        [self UICollectionViewFlowLayout],
        [self UICollectionView],
        [self UIScrollView],
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

+ (NSDictionary *)UIImage {
    return @{
        @"title": @"UIImage",
        @"atIndex": @0,
        @"itemChilds": @[
            @{
                @"title": @"UIImage",
                @"viewKey": @"TestProjectImage",
            },
            @{
                @"title": @"UIImage\n(还有其它的)",
                @"viewKey": @"TestProjectUICollectionViewLayout",
            },
        ]
    };
}

+ (NSDictionary *)UIBezierPath {
    return @{
        @"title": @"UIBezierPath",
        @"atIndex": @0,
        @"viewKey": @"TestProjectUIBezierPath",
    };
}

+ (NSDictionary *)UICollectionViewController {
    return @{
        @"title": @"UICollectionViewController",
        @"atIndex": @0,
        @"viewKey": @"TestProjectUICollectionViewController",
    };
}

+ (NSDictionary *)UICollectionViewLayout {
    return @{
        @"title": @"UICollectionViewLayout",
        @"atIndex": @0,
        @"itemChilds": @[
            @{
                @"title": @"UICollectionViewLayout",
                @"viewKey": @"TestProjectUICollectionViewLayout",
            },
            @{
                @"title": @"UICollectionViewLayout\n(还有其它的)",
                @"viewKey": @"TestProjectUICollectionViewLayout",
            },
        ]
    };
}

+ (NSDictionary *)UICollectionViewFlowLayout {
    return @{
        @"title": @"UICollectionViewFlowLayout",
        @"atIndex": @0,
        @"itemChilds": @[
            @{
                @"title": @"UICollectionViewFlowLayout",
                @"viewKey": @"TestProjectUICollectionViewFlowLayout",
            },
            @{
                @"title": @"UICollectionViewFlowLayout\n(还有其它的)",
                @"viewKey": @"TestProjectUICollectionViewFlowLayout",
            },
        ]
    };
}

+ (NSDictionary *)UICollectionView {
    return @{
        @"title": @"UICollectionView",
        @"atIndex": @0,
        @"itemChilds": @[
            @{
                @"title": @"UICollectionView\n(UICollectionViewDelegate)",
                @"viewKey": @"TestProjectUICollectionViewDelegate",
            },
            @{
                @"title": @"UICollectionView\n(UICollectionViewDataSource)",
                @"viewKey": @"TestProjectUICollectionViewDataSource",
            },
            @{
                @"title": @"UICollectionView",
                @"viewKey": @"TestProjectUICollectionView",
            },
        ]
    };
}

+ (NSDictionary *)UIScrollView {
    return @{
        @"title": @"UIScrollView",
        @"atIndex": @1,
        @"itemChilds": @[
            @{
                @"title": @"UIScrollView\n(UIScrollViewDelegate)",
                @"viewKey": @"TestProjectUIScrollViewDelegate",
            },
            @{
                @"title": @"UIScrollView",
                @"viewKey": @"TestProjectUIScrollView",
            },
        ]
    };
}

+ (NSDictionary *)UICloudSharingController {
    return @{
        @"title": @"UICloudSharingController",
        @"atIndex": @0,
        @"viewKey": @"TestProjectUICloudSharingController",
    };
}

+ (NSDictionary *)UITextField {
    return @{
        @"title": @"UITextField",
        @"atIndex": @0,
        @"itemChilds": @[
//            @{
//                @"title": @"NSValue\n(NSValueUIGeometryExtensions)",
//                @"viewKey": @"TestProjectValueUIGeometryExtensions",
//            },
            @{
                @"title": @"UITextField",
                @"viewKey": @"TestProjectUITextField",
            },
        ]
    };
}

+ (NSDictionary *)UIStepper {
    return @{
        @"title": @"UIStepper",
        @"atIndex": @0,
        @"viewKey": @"TestProjectUIStepper",
    };
}

+ (NSDictionary *)UISlider {
    return @{
        @"title": @"UISlider",
        @"atIndex": @0,
        @"viewKey": @"TestProjectUISlider",
    };
}

+ (NSDictionary *)UIProgressView {
    return @{
        @"title": @"UIProgressView",
        @"atIndex": @0,
        @"viewKey": @"TestProjectUIProgressView",
    };
}

+ (NSDictionary *)UISwitch {
    return @{
        @"title": @"UISwitch",
        @"atIndex": @0,
        @"viewKey": @"TestProjectUISwitch",
    };
}

+ (NSDictionary *)UILabel {
    return @{
        @"title": @"UILabel",
        @"atIndex": @0,
        @"viewKey": @"TestProjectUILabel",
    };
}

+ (NSDictionary *)UIGeometry {
    return @{
        @"title": @"UIGeometry",
        @"atIndex": @0,
        @"itemChilds": @[
            @{
                @"title": @"NSValue\n(NSValueUIGeometryExtensions)",
                @"viewKey": @"TestProjectValueUIGeometryExtensions",
            },
            @{
                @"title": @"UIGeometry",
                @"viewKey": @"TestProjectUIGeometry",
            },
        ]
    };
}

+ (NSDictionary *)UIDevice {
    return @{
        @"title": @"UIDevice",
        @"atIndex": @0,
        @"viewKey": @"TestProjectUIDevice",
    };
}

+ (NSDictionary *)UIDatePicker {
    return @{
        @"title": @"UIDatePicker",
        @"atIndex": @0,
        @"viewKey": @"TestProjectUIDatePicker",
    };
}

+ (NSDictionary *)UIColorWell {
    return @{
        @"title": @"UIColorWell",
        @"atIndex": @0,
        @"viewKey": @"TestProjectColorUIWell",
    };
}

+ (NSDictionary *)UIColorPickerViewController {
    return @{
        @"title": @"UIColorPickerViewController",
        @"atIndex": @0,
        @"viewKey": @"TestProjectUIColorPickerViewController",
    };
}

+ (NSDictionary *)UICalendarSelectionSingleDate {
    return @{
        @"title": @"UICalendarSelectionSingleDate",
        @"atIndex": @0,
        @"viewKey": @"TestProjectUICalendarSelectionSingleDate",
    };
}

+ (NSDictionary *)UICalendarSelectionMultiDate {
    return @{
        @"title": @"UICalendarSelectionMultiDate",
        @"atIndex": @0,
        @"viewKey": @"TestProjectUICalendarSelectionMultiDate",
    };
}

+ (NSDictionary *)UICalendarView {
    return @{
        @"title": @"UICalendarView",
        @"atIndex": @0,
        @"viewKey": @"TestProjectUICalendarView",
    };
}

+ (NSDictionary *)UIButton {
    return @{
        @"title": @"UIButton",
        @"atIndex": @0,
        @"viewKey": @"TestProjectUIButton",
    };
}

+ (NSDictionary *)UIControl {
    return @{
        @"title": @"UIControl",
        @"atIndex": @0,
        @"itemChilds": @[
            @{
                @"title": @"UIControl",
                @"viewKey": @"TestProjectUIControl",
            },
            @{
                @"title": @"UIControl\n(还有其它的)",
                @"viewKey": @"TestProjectUIControl",
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
                @"viewKey": @"TestProjectUIContentSizeCategoryLimit",
            },
            @{
                @"title": @"UIView\n(UISnapshotting)",
                @"viewKey": @"TestProjectUISnapshotting",
            },
            @{
                @"title": @"UIView\n(UIViewKeyframeAnimations)",
                @"viewKey": @"TestProjectUIViewKeyframeAnimations",
            },
            @{
                @"title": @"UIView\n(UIViewAnimationWithBlocks)",
                @"viewKey": @"TestProjectUIViewAnimationWithBlocks",
            },
            @{
                @"title": @"UIView\n(UIViewRendering)",
                @"viewKey": @"TestProjectUIViewRendering",
            },
            @{
                @"title": @"UIView\n(UIViewHierarchy)",
                @"viewKey": @"TestProjectUIViewHierarchy",
            },
            @{
                @"title": @"UIView\n(UIViewViewGeometry)",
                @"viewKey": @"TestProjectUIViewViewGeometry",
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
                @"viewKey": @"TestProjectUIResponder",
            },
            @{
                @"title": @"UIResponder\n(还有其它的)",
                @"viewKey": @"TestProjectUIResponder",
            },
        ]
    };
}

+ (NSDictionary *)UIBarButtonItem {
    return @{
        @"title": @"UIBarButtonItem",
        @"atIndex": @0,
        @"viewKey": @"TestProjectUIBarButtonItem",
    };
}

+ (NSDictionary *)UINavigationItem {
    return @{
        @"title": @"UINavigationItem",
        @"atIndex": @0,
        @"viewKey": @"TestProjectUINavigationItem",
    };
}

+ (NSDictionary *)UINavigationBarAppearance {
    return @{
        @"title": @"UINavigationBarAppearance",
        @"atIndex": @0,
        @"viewKey": @"TestProjectUINavigationBarAppearance",
    };
}

+ (NSDictionary *)UIBarAppearance {
    return @{
        @"title": @"UIBarAppearance",
        @"atIndex": @0,
        @"viewKey": @"TestProjectUIBarAppearance",
    };
}

+ (NSDictionary *)UINavigationBar {
    return @{
        @"title": @"UINavigationBar",
        @"atIndex": @0,
        @"viewKey": @"TestProjectUINavigationBar",
    };
}

+ (NSDictionary *)UINavigationController {
    return @{
        @"title": @"UINavigationController",
        @"atIndex": @0,
        @"itemChilds": @[
            @{
                @"title": @"UIViewController\n(UINavigationControllerItem)",
                @"viewKey": @"TestProjectUINavigationControllerItem",
            },
            @{
                @"title": @"UINavigationController",
                @"viewKey": @"TestProjectUINavigationController",
            },
            @{
                @"title": @"UINavigationController\n(还有其它的)",
                @"viewKey": @"TestProjectUINavigationController",
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
                @"viewKey": @"TestProjectUIViewController",
            },
            @{
                @"title": @"UIViewController\n(还有其它的)",
                @"viewKey": @"TestProjectUIViewController",
            },
        ]
    };
}

+ (NSDictionary *)UIAppearance {
    return @{
        @"title": @"UIAppearance",
        @"atIndex": @0,
        @"viewKey": @"TestProjectUIAppearance",
    };
}

+ (NSDictionary *)UIAlertController {
    return @{
        @"title": @"UIAlertController",
        @"atIndex": @0,
        @"viewKey": @"TestProjectUIAlertController",
    };
}

+ (NSDictionary *)ActivityIndicatorView {
    return @{
        @"title": @"UIActivityIndicatorView",
        @"atIndex": @0,
        @"viewKey": @"TestProjectUIActivityIndicatorView",
    };
}

+ (NSDictionary *)NSDataAsset {
    return @{
        @"title": @"NSDataAsset",
        @"atIndex": @0,
        @"viewKey": @"TestProjectNSDataAsset",
    };
}

+ (NSDictionary *)NSShadow {
    return @{
        @"title": @"NSShadow",
        @"atIndex": @0,
        @"viewKey": @"TestProjectNSShadow",
    };
}

+ (NSDictionary *)NSParagraphStyle {
    return @{
        @"title": @"NSParagraphStyle",
        @"atIndex": @0,
        @"viewKey": @"TestProjectNSMutableParagraphStyle",
    };
}

+ (NSDictionary *)NSTextAttachment {
    return @{
        @"title": @"NSTextAttachment",
        @"atIndex": @0,
        @"itemChilds": @[
            @{
                @"title": @"NSTextAttachment",
                @"viewKey": @"TestProjectNSTextAttachment",
            },
            @{
                @"title": @"NSTextAttachment\n(还有其它的)",
                @"viewKey": @"TestProjectNSTextAttachment",
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
                @"viewKey": @"TestProjectNSAttributedStringDocumentFormats",
            },
            @{
                @"title": @"NSMutableAttributedString\n(NSAttributedStringAttributeFixing)",
                @"viewKey": @"TestProjectNSAttributedStringAttributeFixing",
            },
            @{
                @"title": @"NSAttributedString",
                @"viewKey": @"TestProjectNSAttributeStringKit",
            },
            @{
                @"title": @"NSAttributedString\n(还有其它的)",
                @"viewKey": @"TestProjectNSAttributeStringKit",
            },
        ]
    };
}

+ (NSDictionary *)UIFontPickerViewControllerConfiguration {
    return @{
        @"title": @"UIFontPickerViewControllerConfiguration",
        @"atIndex": @0,
        @"viewKey": @"TestProjectUIFontPickerViewControllerConfiguration",
    };
}

+ (NSDictionary *)UIFontPickerViewController {
    return @{
        @"title": @"UIFontPickerViewController",
        @"atIndex": @0,
        @"viewKey": @"TestProjectUIFontPickerViewController",
    };
}

+ (NSDictionary *)UIFontDescriptor {
    return @{
        @"title": @"UIFontDescriptor",
        @"atIndex": @0,
        @"viewKey": @"TestProjectUIFontDescriptor",
    };
}

+ (NSDictionary *)UIFont {
    return @{
        @"title": @"UIFont",
        @"atIndex": @0,
        @"viewKey": @"TestProjectUIFont",
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

+ (NSArray *)oldItemChilds {
    return @[
        [self UICloudSharingController],
        [self UIStepper],
        [self UISlider],
        [self UIProgressView],
        [self UISwitch],
        [self UILabel],
        [self UIGeometry],
        [self UIDevice],
        [self UIDatePicker],
        [self UIColorWell],
        [self UIColorPickerViewController],
        [self UICalendarSelectionMultiDate],
        [self UICalendarSelectionSingleDate],
        [self UICalendarView],
        [self UIButton],
        [self UIControl],
        [self UIView],
        [self UIResponder],
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
        [self UIFontPickerViewControllerConfiguration],
        [self UIFontPickerViewController],
        [self UIFontDescriptor],
        [self UIFont],
        [self UIColor],
        //        [self CIColor],
    ];
}

@end
