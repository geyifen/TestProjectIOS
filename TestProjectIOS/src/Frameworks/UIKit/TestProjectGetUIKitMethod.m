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
        [self UIImagePickerController],
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
        @"abstract": @"UI的库",
        @"itemChilds": [self itemChilds],
    };
}

+ (NSDictionary *)UIImagePickerController {
    return @{
        @"title": @"UIImagePickerController",
        @"atIndex": @0,
        @"abstract": @"系统的选择图片控制器",
        @"itemChilds": @[
            @{
                @"title": @"UIImagePickerController\n(UIKIT_EXTERN)",
                @"abstract": @"图片控制器的扩展(保存图片)",
                @"viewKey": @"TestProjectUIImagePickerController_UIKIT_EXTERN",
            },
            @{
                @"title": @"UIImagePickerController\n(UIImagePickerControllerDelegate)",
                @"abstract": @"图片控制器的代理方法回调",
                @"viewKey": @"TestProjectUIImagePickerControllerDelegate",
            },
            @{
                @"title": @"UIImagePickerController",
                @"abstract": @"系统的选择图片控制器",
                @"viewKey": @"TestProjectUIImagePickerController",
            },
        ]
    };
}

+ (NSDictionary *)UIImage {
    return @{
        @"title": @"UIImage",
        @"atIndex": @0,
        @"abstract": @"图片的实例的对象类",
        @"itemChilds": @[
            @{
                @"title": @"UIImage\n(UIKIT_EXTERN)",
                @"abstract": @"图片的扩展(把图片转成png或者jpeg的格式)",
                @"viewKey": @"TestProjectUIImage_UIKIT_EXTERN",
            },
            @{
                @"title": @"UIImage\n(UIImageDeprecated)",
                @"abstract": @"对图片的左边和右边设置内距",
                @"viewKey": @"TestProjectUIImageDeprecated",
            },
            @{
                @"title": @"UIImage\n(NSTextAttachment)",
                @"abstract": @"把图片生成NSTextAttachment",
                @"viewKey": @"TestProjectUIImageNSTextAttachment",
            },
            @{
                @"title": @"UIImage\n(PreconfiguredSystemImages)",
                @"abstract": @"获取系统内置的图片定义方法",
                @"viewKey": @"TestProjectPreconfiguredSystemImages",
            },
            @{
                @"title": @"UIImage",
                @"abstract": @"图片的实例对象类的方法和属性",
                @"viewKey": @"TestProjectImage",
            },
        ]
    };
}

+ (NSDictionary *)UIBezierPath {
    return @{
        @"title": @"UIBezierPath",
        @"atIndex": @0,
        @"abstract": @"绘制贝塞尔曲线",
        @"viewKey": @"TestProjectUIBezierPath",
    };
}

+ (NSDictionary *)UICollectionViewController {
    return @{
        @"title": @"UICollectionViewController",
        @"atIndex": @0,
        @"abstract": @"UICollectionViewController实例的对象类",
        @"viewKey": @"TestProjectUICollectionViewController",
    };
}

+ (NSDictionary *)UICollectionViewLayout {
    return @{
        @"title": @"UICollectionViewLayout",
        @"atIndex": @0,
        @"abstract": @"UICollectionView的布局实例的对象基础类",
        @"itemChilds": @[
            @{
                @"title": @"UICollectionViewLayout",
                @"abstract": @"UICollectionView的布局实例的对象基础类",
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
        @"abstract": @"UICollectionView的布局实例的对象扩展类",
        @"itemChilds": @[
            @{
                @"title": @"UICollectionViewFlowLayout",
                @"abstract": @"UICollectionView的布局实例的对象扩展类",
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
        @"abstract": @"UICollectionView实例的对象类",
        @"itemChilds": @[
            @{
                @"title": @"UICollectionView\n(UICollectionViewDelegate)",
                @"abstract": @"UICollectionView实例的布局代理方法",
                @"viewKey": @"TestProjectUICollectionViewDelegate",
            },
            @{
                @"title": @"UICollectionView\n(UICollectionViewDataSource)",
                @"abstract": @"UICollectionView实例的数据源代理方法",
                @"viewKey": @"TestProjectUICollectionViewDataSource",
            },
            @{
                @"title": @"UICollectionView",
                @"abstract": @"UICollectionView实例的对象类",
                @"viewKey": @"TestProjectUICollectionView",
            },
        ]
    };
}

+ (NSDictionary *)UIScrollView {
    return @{
        @"title": @"UIScrollView",
        @"atIndex": @1,
        @"abstract": @"UIScrollView实例的对象类",
        @"itemChilds": @[
            @{
                @"title": @"UIScrollView\n(UIScrollViewDelegate)",
                @"abstract": @"UIScrollView实例的滚动代理方法",
                @"viewKey": @"TestProjectUIScrollViewDelegate",
            },
            @{
                @"title": @"UIScrollView",
                @"abstract": @"UIScrollView实例的对象类",
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
        @"abstract": @"文本UITextField实例的对象类",
        @"itemChilds": @[
//            @{
//                @"title": @"NSValue\n(NSValueUIGeometryExtensions)",
//                @"viewKey": @"TestProjectValueUIGeometryExtensions",
//            },
            @{
                @"title": @"UITextField",
                @"abstract": @"文本UITextField实例的对象类",
                @"viewKey": @"TestProjectUITextField",
            },
        ]
    };
}

+ (NSDictionary *)UIStepper {
    return @{
        @"title": @"UIStepper",
        @"atIndex": @0,
        @"abstract": @"步数加减器实例的对象类",
        @"viewKey": @"TestProjectUIStepper",
    };
}

+ (NSDictionary *)UISlider {
    return @{
        @"title": @"UISlider",
        @"atIndex": @0,
        @"abstract": @"滑动视图实例的对象类",
        @"viewKey": @"TestProjectUISlider",
    };
}

+ (NSDictionary *)UIProgressView {
    return @{
        @"title": @"UIProgressView",
        @"atIndex": @0,
        @"abstract": @"进度条视图实例的对象类",
        @"viewKey": @"TestProjectUIProgressView",
    };
}

+ (NSDictionary *)UISwitch {
    return @{
        @"title": @"UISwitch",
        @"atIndex": @0,
        @"abstract": @"开关选择器视图实例的对象类",
        @"viewKey": @"TestProjectUISwitch",
    };
}

+ (NSDictionary *)UILabel {
    return @{
        @"title": @"UILabel",
        @"atIndex": @0,
        @"abstract": @"文字视图实例的对象类",
        @"viewKey": @"TestProjectUILabel",
    };
}

+ (NSDictionary *)UIGeometry {
    return @{
        @"title": @"UIGeometry",
        @"atIndex": @0,
        @"abstract": @"NSString、NSValue和其它的类型的相互转换",
        @"itemChilds": @[
            @{
                @"title": @"NSValue\n(NSValueUIGeometryExtensions)",
                @"abstract": @"NSValue和其它的类型的相互转换",
                @"viewKey": @"TestProjectValueUIGeometryExtensions",
            },
            @{
                @"title": @"UIGeometry",
                @"abstract": @"NSString和其它的类型的相互转换",
                @"viewKey": @"TestProjectUIGeometry",
            },
        ]
    };
}

+ (NSDictionary *)UIDevice {
    return @{
        @"title": @"UIDevice",
        @"atIndex": @0,
        @"abstract": @"获取设备的信息",
        @"viewKey": @"TestProjectUIDevice",
    };
}

+ (NSDictionary *)UIDatePicker {
    return @{
        @"title": @"UIDatePicker",
        @"atIndex": @0,
        @"abstract": @"日期选择器的实例对象类",
        @"viewKey": @"TestProjectUIDatePicker",
    };
}

+ (NSDictionary *)UIColorWell {
    return @{
        @"title": @"UIColorWell",
        @"atIndex": @0,
        @"abstract": @"颜色选择器的实例对象类",
        @"viewKey": @"TestProjectColorUIWell",
    };
}

+ (NSDictionary *)UIColorPickerViewController {
    return @{
        @"title": @"UIColorPickerViewController",
        @"atIndex": @0,
        @"abstract": @"颜色选择控制器的实例对象类",
        @"viewKey": @"TestProjectUIColorPickerViewController",
    };
}

+ (NSDictionary *)UICalendarSelectionSingleDate {
    return @{
        @"title": @"UICalendarSelectionSingleDate",
        @"atIndex": @0,
        @"abstract": @"日历的日期单选配置",
        @"viewKey": @"TestProjectUICalendarSelectionSingleDate",
    };
}

+ (NSDictionary *)UICalendarSelectionMultiDate {
    return @{
        @"title": @"UICalendarSelectionMultiDate",
        @"atIndex": @0,
        @"abstract": @"日历的日期多选配置",
        @"viewKey": @"TestProjectUICalendarSelectionMultiDate",
    };
}

+ (NSDictionary *)UICalendarView {
    return @{
        @"title": @"UICalendarView",
        @"atIndex": @0,
        @"abstract": @"日历的日期视图",
        @"viewKey": @"TestProjectUICalendarView",
    };
}

+ (NSDictionary *)UIButton {
    return @{
        @"title": @"UIButton",
        @"atIndex": @0,
        @"abstract": @"按钮视图",
        @"viewKey": @"TestProjectUIButton",
    };
}

+ (NSDictionary *)UIControl {
    return @{
        @"title": @"UIControl",
        @"atIndex": @0,
        @"abstract": @"可以添加点击控制视图",
        @"itemChilds": @[
            @{
                @"title": @"UIControl",
                @"abstract": @"可以添加点击控制视图",
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
        @"abstract": @"UIView视图",
        @"itemChilds": @[
            @{
                @"title": @"UIView\n(UIContentSizeCategoryLimit)",
                @"viewKey": @"TestProjectUIContentSizeCategoryLimit",
            },
            @{
                @"title": @"UIView\n(UISnapshotting)",
                @"abstract": @"UIView视图截屏操作",
                @"viewKey": @"TestProjectUISnapshotting",
            },
            @{
                @"title": @"UIView\n(UIViewKeyframeAnimations)",
                @"abstract": @"UIView视图Keyframe动画",
                @"viewKey": @"TestProjectUIViewKeyframeAnimations",
            },
            @{
                @"title": @"UIView\n(UIViewAnimationWithBlocks)",
                @"abstract": @"UIView视图动画操作",
                @"viewKey": @"TestProjectUIViewAnimationWithBlocks",
            },
            @{
                @"title": @"UIView\n(UIViewRendering)",
                @"abstract": @"UIView视图裁剪和编辑操作等",
                @"viewKey": @"TestProjectUIViewRendering",
            },
            @{
                @"title": @"UIView\n(UIViewHierarchy)",
                @"abstract": @"UIView视图基本生命周期和布局",
                @"viewKey": @"TestProjectUIViewHierarchy",
            },
            @{
                @"title": @"UIView\n(UIViewViewGeometry)",
                @"abstract": @"UIView视图基本信息的获取",
                @"viewKey": @"TestProjectUIViewViewGeometry",
            },
            @{
                @"title": @"UIView",
                @"abstract": @"UIView视图",
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
        @"abstract": @"响应操作实例的对象基础类",
        @"itemChilds": @[
            @{
                @"title": @"UIResponder",
                @"abstract": @"响应操作实例的对象基础类",
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
        @"abstract": @"UIBarButtonItem实例的对象类",
        @"viewKey": @"TestProjectUIBarButtonItem",
    };
}

+ (NSDictionary *)UINavigationItem {
    return @{
        @"title": @"UINavigationItem",
        @"atIndex": @0,
        @"abstract": @"导航栏的单个item实例的对象类",
        @"viewKey": @"TestProjectUINavigationItem",
    };
}

+ (NSDictionary *)UINavigationBarAppearance {
    return @{
        @"title": @"UINavigationBarAppearance",
        @"atIndex": @0,
        @"abstract": @"导航栏出现时可以优先改变一些试图UI",
        @"viewKey": @"TestProjectUINavigationBarAppearance",
    };
}

+ (NSDictionary *)UIBarAppearance {
    return @{
        @"title": @"UIBarAppearance",
        @"atIndex": @0,
        @"abstract": @"UIBarAppearance出现时可以优先改变一些试图UI",
        @"viewKey": @"TestProjectUIBarAppearance",
    };
}

+ (NSDictionary *)UINavigationBar {
    return @{
        @"title": @"UINavigationBar",
        @"atIndex": @0,
        @"abstract": @"导航栏的整个实例的对象类",
        @"viewKey": @"TestProjectUINavigationBar",
    };
}

+ (NSDictionary *)UINavigationController {
    return @{
        @"title": @"UINavigationController",
        @"atIndex": @0,
        @"abstract": @"导航栏控制器实例的对象类",
        @"itemChilds": @[
            @{
                @"title": @"UIViewController\n(UINavigationControllerItem)",
                @"abstract": @"导航栏控制器对UIViewController的扩展",
                @"viewKey": @"TestProjectUINavigationControllerItem",
            },
            @{
                @"title": @"UINavigationController",
                @"abstract": @"导航栏控制器实例的对象类",
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
        @"abstract": @"UIViewController的实例的对象类",
        @"itemChilds": @[
            @{
                @"title": @"UIViewController",
                @"abstract": @"UIViewController的实例的对象类",
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
        @"abstract": @"和UIAppearance对象类涉及有关的可以在出现的时候改变或者定制一些UI操作",
        @"viewKey": @"TestProjectUIAppearance",
    };
}

+ (NSDictionary *)UIAlertController {
    return @{
        @"title": @"UIAlertController",
        @"atIndex": @0,
        @"abstract": @"Alert弹窗控制器",
        @"viewKey": @"TestProjectUIAlertController",
    };
}

+ (NSDictionary *)ActivityIndicatorView {
    return @{
        @"title": @"UIActivityIndicatorView",
        @"atIndex": @0,
        @"abstract": @"加载的视图",
        @"viewKey": @"TestProjectUIActivityIndicatorView",
    };
}

+ (NSDictionary *)NSDataAsset {
    return @{
        @"title": @"NSDataAsset",
        @"atIndex": @0,
        @"abstract": @"从asset里加载NSData的实例对象的类",
        @"viewKey": @"TestProjectNSDataAsset",
    };
}

+ (NSDictionary *)NSShadow {
    return @{
        @"title": @"NSShadow",
        @"atIndex": @0,
        @"abstract": @"阴影操作实例对象的类",
        @"viewKey": @"TestProjectNSShadow",
    };
}

+ (NSDictionary *)NSParagraphStyle {
    return @{
        @"title": @"NSParagraphStyle",
        @"atIndex": @0,
        @"abstract": @"不可变文本配置实例对象的类",
        @"viewKey": @"TestProjectNSMutableParagraphStyle",
    };
}

+ (NSDictionary *)NSTextAttachment {
    return @{
        @"title": @"NSTextAttachment",
        @"atIndex": @0,
        @"abstract": @"把图片转成文本实例对象的类",
        @"itemChilds": @[
            @{
                @"title": @"NSTextAttachment",
                @"abstract": @"把图片转成文本实例对象的类",
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
        @"abstract": @"富文本实例对象的类",
        @"itemChilds": @[
            @{
                @"title": @"NSAttributedString\n(NSAttributedStringDocumentFormats)",
                @"abstract": @"富文本文件操作扩展",
                @"viewKey": @"TestProjectNSAttributedStringDocumentFormats",
            },
            @{
                @"title": @"NSMutableAttributedString\n(NSAttributedStringAttributeFixing)",
                @"abstract": @"可变富文本实例对象的类",
                @"viewKey": @"TestProjectNSAttributedStringAttributeFixing",
            },
            @{
                @"title": @"NSAttributedString",
                @"abstract": @"不可变富文本实例对象的类",
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
        @"abstract": @"字体大小选择控制器的配置",
        @"viewKey": @"TestProjectUIFontPickerViewControllerConfiguration",
    };
}

+ (NSDictionary *)UIFontPickerViewController {
    return @{
        @"title": @"UIFontPickerViewController",
        @"atIndex": @0,
        @"abstract": @"字体大小选择控制器",
        @"viewKey": @"TestProjectUIFontPickerViewController",
    };
}

+ (NSDictionary *)UIFontDescriptor {
    return @{
        @"title": @"UIFontDescriptor",
        @"atIndex": @0,
        @"abstract": @"字体大小描述的信息实例的对象",
        @"viewKey": @"TestProjectUIFontDescriptor",
    };
}

+ (NSDictionary *)UIFont {
    return @{
        @"title": @"UIFont",
        @"atIndex": @0,
        @"abstract": @"字体大小的实例的对象",
        @"viewKey": @"TestProjectUIFont",
    };
}

+ (NSDictionary *)UIColor {
    return @{
        @"title": @"UIColor",
        @"atIndex": @0,
        @"abstract": @"颜色设置实例的对象",
        @"itemChilds": @[
            @{
                @"title": @"UIColor\n(UIKitAdditions)",
                @"abstract": @"从颜色获取CIColor的扩展",
                @"viewKey": @"TestProjectCIColorKitAdditions",
            },
            @{
                @"title": @"UIColor\n(TestProject)",
                @"abstract": @"颜色的自定义的扩展",
                @"viewKey": @"TestProjectUIColorCategory",
            },
            @{
                @"title": @"UIColor\n(DynamicColors)",
                @"abstract": @"动态适配暗黑的颜色",
                @"viewKey": @"TestProjectUIColorDynamicdColors",
            },
            @{
                @"title": @"UIColor\n(UIColorNamedColors)",
                @"abstract": @"从asset获取颜色的实例对象",
                @"viewKey": @"TestProjectUIColorNamedColors",
            },
            @{
                @"title": @"UIColor",
                @"abstract": @"颜色设置实例的对象",
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
