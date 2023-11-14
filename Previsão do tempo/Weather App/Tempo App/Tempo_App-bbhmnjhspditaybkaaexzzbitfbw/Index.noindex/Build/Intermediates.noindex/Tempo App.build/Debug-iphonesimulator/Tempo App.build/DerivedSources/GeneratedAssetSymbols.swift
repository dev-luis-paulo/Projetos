import Foundation
#if canImport(AppKit)
import AppKit
#endif
#if canImport(UIKit)
import UIKit
#endif
#if canImport(SwiftUI)
import SwiftUI
#endif
#if canImport(DeveloperToolsSupport)
import DeveloperToolsSupport
#endif

#if SWIFT_PACKAGE
private let resourceBundle = Foundation.Bundle.module
#else
private class ResourceBundleClass {}
private let resourceBundle = Foundation.Bundle(for: ResourceBundleClass.self)
#endif

// MARK: - Color Symbols -

@available(iOS 17.0, macOS 14.0, tvOS 17.0, watchOS 10.0, *)
extension DeveloperToolsSupport.ColorResource {

    /// The "contrastColor" asset catalog color resource.
    static let contrast = DeveloperToolsSupport.ColorResource(name: "contrastColor", bundle: resourceBundle)

    /// The "primaryColor" asset catalog color resource.
    static let primary = DeveloperToolsSupport.ColorResource(name: "primaryColor", bundle: resourceBundle)

    /// The "softGray" asset catalog color resource.
    static let softGray = DeveloperToolsSupport.ColorResource(name: "softGray", bundle: resourceBundle)

}

// MARK: - Image Symbols -

@available(iOS 17.0, macOS 14.0, tvOS 17.0, watchOS 10.0, *)
extension DeveloperToolsSupport.ImageResource {

    /// The "01d" asset catalog image resource.
    static let _01D = DeveloperToolsSupport.ImageResource(name: "01d", bundle: resourceBundle)

    /// The "01n" asset catalog image resource.
    static let _01N = DeveloperToolsSupport.ImageResource(name: "01n", bundle: resourceBundle)

    /// The "02d" asset catalog image resource.
    static let _02D = DeveloperToolsSupport.ImageResource(name: "02d", bundle: resourceBundle)

    /// The "02n" asset catalog image resource.
    static let _02N = DeveloperToolsSupport.ImageResource(name: "02n", bundle: resourceBundle)

    /// The "03d" asset catalog image resource.
    static let _03D = DeveloperToolsSupport.ImageResource(name: "03d", bundle: resourceBundle)

    /// The "03n" asset catalog image resource.
    static let _03N = DeveloperToolsSupport.ImageResource(name: "03n", bundle: resourceBundle)

    /// The "04d" asset catalog image resource.
    static let _04D = DeveloperToolsSupport.ImageResource(name: "04d", bundle: resourceBundle)

    /// The "04n" asset catalog image resource.
    static let _04N = DeveloperToolsSupport.ImageResource(name: "04n", bundle: resourceBundle)

    /// The "09d" asset catalog image resource.
    static let _09D = DeveloperToolsSupport.ImageResource(name: "09d", bundle: resourceBundle)

    /// The "09n" asset catalog image resource.
    static let _09N = DeveloperToolsSupport.ImageResource(name: "09n", bundle: resourceBundle)

    /// The "10d" asset catalog image resource.
    static let _10D = DeveloperToolsSupport.ImageResource(name: "10d", bundle: resourceBundle)

    /// The "10n" asset catalog image resource.
    static let _10N = DeveloperToolsSupport.ImageResource(name: "10n", bundle: resourceBundle)

    /// The "11d" asset catalog image resource.
    static let _11D = DeveloperToolsSupport.ImageResource(name: "11d", bundle: resourceBundle)

    /// The "11n" asset catalog image resource.
    static let _11N = DeveloperToolsSupport.ImageResource(name: "11n", bundle: resourceBundle)

    /// The "13d" asset catalog image resource.
    static let _13D = DeveloperToolsSupport.ImageResource(name: "13d", bundle: resourceBundle)

    /// The "13n" asset catalog image resource.
    static let _13N = DeveloperToolsSupport.ImageResource(name: "13n", bundle: resourceBundle)

    /// The "50d" asset catalog image resource.
    static let _50D = DeveloperToolsSupport.ImageResource(name: "50d", bundle: resourceBundle)

    /// The "50n" asset catalog image resource.
    static let _50N = DeveloperToolsSupport.ImageResource(name: "50n", bundle: resourceBundle)

    /// The "background-day" asset catalog image resource.
    static let backgroundDay = DeveloperToolsSupport.ImageResource(name: "background-day", bundle: resourceBundle)

    /// The "background-night" asset catalog image resource.
    static let backgroundNight = DeveloperToolsSupport.ImageResource(name: "background-night", bundle: resourceBundle)

    /// The "cloudIcon" asset catalog image resource.
    static let cloudIcon = DeveloperToolsSupport.ImageResource(name: "cloudIcon", bundle: resourceBundle)

    /// The "sunIcon" asset catalog image resource.
    static let sunIcon = DeveloperToolsSupport.ImageResource(name: "sunIcon", bundle: resourceBundle)

}

// MARK: - Color Symbol Extensions -

#if canImport(AppKit)
@available(macOS 14.0, *)
@available(macCatalyst, unavailable)
extension AppKit.NSColor {

    /// The "contrastColor" asset catalog color.
    static var contrast: AppKit.NSColor {
#if !targetEnvironment(macCatalyst)
        .init(resource: .contrast)
#else
        .init()
#endif
    }

    /// The "primaryColor" asset catalog color.
    static var primary: AppKit.NSColor {
#if !targetEnvironment(macCatalyst)
        .init(resource: .primary)
#else
        .init()
#endif
    }

    /// The "softGray" asset catalog color.
    static var softGray: AppKit.NSColor {
#if !targetEnvironment(macCatalyst)
        .init(resource: .softGray)
#else
        .init()
#endif
    }

}
#endif

#if canImport(UIKit)
@available(iOS 17.0, tvOS 17.0, *)
@available(watchOS, unavailable)
extension UIKit.UIColor {

    /// The "contrastColor" asset catalog color.
    static var contrast: UIKit.UIColor {
#if !os(watchOS)
        .init(resource: .contrast)
#else
        .init()
#endif
    }

    /// The "primaryColor" asset catalog color.
    static var primary: UIKit.UIColor {
#if !os(watchOS)
        .init(resource: .primary)
#else
        .init()
#endif
    }

    /// The "softGray" asset catalog color.
    static var softGray: UIKit.UIColor {
#if !os(watchOS)
        .init(resource: .softGray)
#else
        .init()
#endif
    }

}
#endif

#if canImport(SwiftUI)
@available(iOS 17.0, macOS 14.0, tvOS 17.0, watchOS 10.0, *)
extension SwiftUI.Color {

    /// The "contrastColor" asset catalog color.
    static var contrast: SwiftUI.Color { .init(.contrast) }

    #warning("The \"primaryColor\" color asset name resolves to a conflicting Color symbol \"primary\". Try renaming the asset.")

    /// The "softGray" asset catalog color.
    static var softGray: SwiftUI.Color { .init(.softGray) }

}

@available(iOS 17.0, macOS 14.0, tvOS 17.0, watchOS 10.0, *)
extension SwiftUI.ShapeStyle where Self == SwiftUI.Color {

    /// The "contrastColor" asset catalog color.
    static var contrast: SwiftUI.Color { .init(.contrast) }

    /// The "softGray" asset catalog color.
    static var softGray: SwiftUI.Color { .init(.softGray) }

}
#endif

// MARK: - Image Symbol Extensions -

#if canImport(AppKit)
@available(macOS 14.0, *)
@available(macCatalyst, unavailable)
extension AppKit.NSImage {

    /// The "01d" asset catalog image.
    static var _01D: AppKit.NSImage {
#if !targetEnvironment(macCatalyst)
        .init(resource: ._01D)
#else
        .init()
#endif
    }

    /// The "01n" asset catalog image.
    static var _01N: AppKit.NSImage {
#if !targetEnvironment(macCatalyst)
        .init(resource: ._01N)
#else
        .init()
#endif
    }

    /// The "02d" asset catalog image.
    static var _02D: AppKit.NSImage {
#if !targetEnvironment(macCatalyst)
        .init(resource: ._02D)
#else
        .init()
#endif
    }

    /// The "02n" asset catalog image.
    static var _02N: AppKit.NSImage {
#if !targetEnvironment(macCatalyst)
        .init(resource: ._02N)
#else
        .init()
#endif
    }

    /// The "03d" asset catalog image.
    static var _03D: AppKit.NSImage {
#if !targetEnvironment(macCatalyst)
        .init(resource: ._03D)
#else
        .init()
#endif
    }

    /// The "03n" asset catalog image.
    static var _03N: AppKit.NSImage {
#if !targetEnvironment(macCatalyst)
        .init(resource: ._03N)
#else
        .init()
#endif
    }

    /// The "04d" asset catalog image.
    static var _04D: AppKit.NSImage {
#if !targetEnvironment(macCatalyst)
        .init(resource: ._04D)
#else
        .init()
#endif
    }

    /// The "04n" asset catalog image.
    static var _04N: AppKit.NSImage {
#if !targetEnvironment(macCatalyst)
        .init(resource: ._04N)
#else
        .init()
#endif
    }

    /// The "09d" asset catalog image.
    static var _09D: AppKit.NSImage {
#if !targetEnvironment(macCatalyst)
        .init(resource: ._09D)
#else
        .init()
#endif
    }

    /// The "09n" asset catalog image.
    static var _09N: AppKit.NSImage {
#if !targetEnvironment(macCatalyst)
        .init(resource: ._09N)
#else
        .init()
#endif
    }

    /// The "10d" asset catalog image.
    static var _10D: AppKit.NSImage {
#if !targetEnvironment(macCatalyst)
        .init(resource: ._10D)
#else
        .init()
#endif
    }

    /// The "10n" asset catalog image.
    static var _10N: AppKit.NSImage {
#if !targetEnvironment(macCatalyst)
        .init(resource: ._10N)
#else
        .init()
#endif
    }

    /// The "11d" asset catalog image.
    static var _11D: AppKit.NSImage {
#if !targetEnvironment(macCatalyst)
        .init(resource: ._11D)
#else
        .init()
#endif
    }

    /// The "11n" asset catalog image.
    static var _11N: AppKit.NSImage {
#if !targetEnvironment(macCatalyst)
        .init(resource: ._11N)
#else
        .init()
#endif
    }

    /// The "13d" asset catalog image.
    static var _13D: AppKit.NSImage {
#if !targetEnvironment(macCatalyst)
        .init(resource: ._13D)
#else
        .init()
#endif
    }

    /// The "13n" asset catalog image.
    static var _13N: AppKit.NSImage {
#if !targetEnvironment(macCatalyst)
        .init(resource: ._13N)
#else
        .init()
#endif
    }

    /// The "50d" asset catalog image.
    static var _50D: AppKit.NSImage {
#if !targetEnvironment(macCatalyst)
        .init(resource: ._50D)
#else
        .init()
#endif
    }

    /// The "50n" asset catalog image.
    static var _50N: AppKit.NSImage {
#if !targetEnvironment(macCatalyst)
        .init(resource: ._50N)
#else
        .init()
#endif
    }

    /// The "background-day" asset catalog image.
    static var backgroundDay: AppKit.NSImage {
#if !targetEnvironment(macCatalyst)
        .init(resource: .backgroundDay)
#else
        .init()
#endif
    }

    /// The "background-night" asset catalog image.
    static var backgroundNight: AppKit.NSImage {
#if !targetEnvironment(macCatalyst)
        .init(resource: .backgroundNight)
#else
        .init()
#endif
    }

    /// The "cloudIcon" asset catalog image.
    static var cloudIcon: AppKit.NSImage {
#if !targetEnvironment(macCatalyst)
        .init(resource: .cloudIcon)
#else
        .init()
#endif
    }

    /// The "sunIcon" asset catalog image.
    static var sunIcon: AppKit.NSImage {
#if !targetEnvironment(macCatalyst)
        .init(resource: .sunIcon)
#else
        .init()
#endif
    }

}
#endif

#if canImport(UIKit)
@available(iOS 17.0, tvOS 17.0, *)
@available(watchOS, unavailable)
extension UIKit.UIImage {

    /// The "01d" asset catalog image.
    static var _01D: UIKit.UIImage {
#if !os(watchOS)
        .init(resource: ._01D)
#else
        .init()
#endif
    }

    /// The "01n" asset catalog image.
    static var _01N: UIKit.UIImage {
#if !os(watchOS)
        .init(resource: ._01N)
#else
        .init()
#endif
    }

    /// The "02d" asset catalog image.
    static var _02D: UIKit.UIImage {
#if !os(watchOS)
        .init(resource: ._02D)
#else
        .init()
#endif
    }

    /// The "02n" asset catalog image.
    static var _02N: UIKit.UIImage {
#if !os(watchOS)
        .init(resource: ._02N)
#else
        .init()
#endif
    }

    /// The "03d" asset catalog image.
    static var _03D: UIKit.UIImage {
#if !os(watchOS)
        .init(resource: ._03D)
#else
        .init()
#endif
    }

    /// The "03n" asset catalog image.
    static var _03N: UIKit.UIImage {
#if !os(watchOS)
        .init(resource: ._03N)
#else
        .init()
#endif
    }

    /// The "04d" asset catalog image.
    static var _04D: UIKit.UIImage {
#if !os(watchOS)
        .init(resource: ._04D)
#else
        .init()
#endif
    }

    /// The "04n" asset catalog image.
    static var _04N: UIKit.UIImage {
#if !os(watchOS)
        .init(resource: ._04N)
#else
        .init()
#endif
    }

    /// The "09d" asset catalog image.
    static var _09D: UIKit.UIImage {
#if !os(watchOS)
        .init(resource: ._09D)
#else
        .init()
#endif
    }

    /// The "09n" asset catalog image.
    static var _09N: UIKit.UIImage {
#if !os(watchOS)
        .init(resource: ._09N)
#else
        .init()
#endif
    }

    /// The "10d" asset catalog image.
    static var _10D: UIKit.UIImage {
#if !os(watchOS)
        .init(resource: ._10D)
#else
        .init()
#endif
    }

    /// The "10n" asset catalog image.
    static var _10N: UIKit.UIImage {
#if !os(watchOS)
        .init(resource: ._10N)
#else
        .init()
#endif
    }

    /// The "11d" asset catalog image.
    static var _11D: UIKit.UIImage {
#if !os(watchOS)
        .init(resource: ._11D)
#else
        .init()
#endif
    }

    /// The "11n" asset catalog image.
    static var _11N: UIKit.UIImage {
#if !os(watchOS)
        .init(resource: ._11N)
#else
        .init()
#endif
    }

    /// The "13d" asset catalog image.
    static var _13D: UIKit.UIImage {
#if !os(watchOS)
        .init(resource: ._13D)
#else
        .init()
#endif
    }

    /// The "13n" asset catalog image.
    static var _13N: UIKit.UIImage {
#if !os(watchOS)
        .init(resource: ._13N)
#else
        .init()
#endif
    }

    /// The "50d" asset catalog image.
    static var _50D: UIKit.UIImage {
#if !os(watchOS)
        .init(resource: ._50D)
#else
        .init()
#endif
    }

    /// The "50n" asset catalog image.
    static var _50N: UIKit.UIImage {
#if !os(watchOS)
        .init(resource: ._50N)
#else
        .init()
#endif
    }

    /// The "background-day" asset catalog image.
    static var backgroundDay: UIKit.UIImage {
#if !os(watchOS)
        .init(resource: .backgroundDay)
#else
        .init()
#endif
    }

    /// The "background-night" asset catalog image.
    static var backgroundNight: UIKit.UIImage {
#if !os(watchOS)
        .init(resource: .backgroundNight)
#else
        .init()
#endif
    }

    /// The "cloudIcon" asset catalog image.
    static var cloudIcon: UIKit.UIImage {
#if !os(watchOS)
        .init(resource: .cloudIcon)
#else
        .init()
#endif
    }

    /// The "sunIcon" asset catalog image.
    static var sunIcon: UIKit.UIImage {
#if !os(watchOS)
        .init(resource: .sunIcon)
#else
        .init()
#endif
    }

}
#endif

// MARK: - Thinnable Asset Support -

@available(iOS 17.0, macOS 14.0, tvOS 17.0, watchOS 10.0, *)
@available(watchOS, unavailable)
extension DeveloperToolsSupport.ColorResource {

    private init?(thinnableName: String, bundle: Bundle) {
#if canImport(AppKit) && os(macOS)
        if AppKit.NSColor(named: NSColor.Name(thinnableName), bundle: bundle) != nil {
            self.init(name: thinnableName, bundle: bundle)
        } else {
            return nil
        }
#elseif canImport(UIKit) && !os(watchOS)
        if UIKit.UIColor(named: thinnableName, in: bundle, compatibleWith: nil) != nil {
            self.init(name: thinnableName, bundle: bundle)
        } else {
            return nil
        }
#else
        return nil
#endif
    }

}

#if canImport(AppKit)
@available(macOS 14.0, *)
@available(macCatalyst, unavailable)
extension AppKit.NSColor {

    private convenience init?(thinnableResource: DeveloperToolsSupport.ColorResource?) {
#if !targetEnvironment(macCatalyst)
        if let resource = thinnableResource {
            self.init(resource: resource)
        } else {
            return nil
        }
#else
        return nil
#endif
    }

}
#endif

#if canImport(UIKit)
@available(iOS 17.0, tvOS 17.0, *)
@available(watchOS, unavailable)
extension UIKit.UIColor {

    private convenience init?(thinnableResource: DeveloperToolsSupport.ColorResource?) {
#if !os(watchOS)
        if let resource = thinnableResource {
            self.init(resource: resource)
        } else {
            return nil
        }
#else
        return nil
#endif
    }

}
#endif

#if canImport(SwiftUI)
@available(iOS 17.0, macOS 14.0, tvOS 17.0, watchOS 10.0, *)
extension SwiftUI.Color {

    private init?(thinnableResource: DeveloperToolsSupport.ColorResource?) {
        if let resource = thinnableResource {
            self.init(resource)
        } else {
            return nil
        }
    }

}

@available(iOS 17.0, macOS 14.0, tvOS 17.0, watchOS 10.0, *)
extension SwiftUI.ShapeStyle where Self == SwiftUI.Color {

    private init?(thinnableResource: DeveloperToolsSupport.ColorResource?) {
        if let resource = thinnableResource {
            self.init(resource)
        } else {
            return nil
        }
    }

}
#endif

@available(iOS 17.0, macOS 14.0, tvOS 17.0, watchOS 10.0, *)
@available(watchOS, unavailable)
extension DeveloperToolsSupport.ImageResource {

    private init?(thinnableName: String, bundle: Bundle) {
#if canImport(AppKit) && os(macOS)
        if bundle.image(forResource: NSImage.Name(thinnableName)) != nil {
            self.init(name: thinnableName, bundle: bundle)
        } else {
            return nil
        }
#elseif canImport(UIKit) && !os(watchOS)
        if UIKit.UIImage(named: thinnableName, in: bundle, compatibleWith: nil) != nil {
            self.init(name: thinnableName, bundle: bundle)
        } else {
            return nil
        }
#else
        return nil
#endif
    }

}

#if canImport(AppKit)
@available(macOS 14.0, *)
@available(macCatalyst, unavailable)
extension AppKit.NSImage {

    private convenience init?(thinnableResource: DeveloperToolsSupport.ImageResource?) {
#if !targetEnvironment(macCatalyst)
        if let resource = thinnableResource {
            self.init(resource: resource)
        } else {
            return nil
        }
#else
        return nil
#endif
    }

}
#endif

#if canImport(UIKit)
@available(iOS 17.0, tvOS 17.0, *)
@available(watchOS, unavailable)
extension UIKit.UIImage {

    private convenience init?(thinnableResource: DeveloperToolsSupport.ImageResource?) {
#if !os(watchOS)
        if let resource = thinnableResource {
            self.init(resource: resource)
        } else {
            return nil
        }
#else
        return nil
#endif
    }

}
#endif

