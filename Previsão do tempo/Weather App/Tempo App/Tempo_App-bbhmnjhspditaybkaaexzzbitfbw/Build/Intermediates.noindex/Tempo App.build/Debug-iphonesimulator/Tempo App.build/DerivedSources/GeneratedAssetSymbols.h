#import <Foundation/Foundation.h>

#if __has_attribute(swift_private)
#define AC_SWIFT_PRIVATE __attribute__((swift_private))
#else
#define AC_SWIFT_PRIVATE
#endif

/// The resource bundle ID.
static NSString * const ACBundleID AC_SWIFT_PRIVATE = @"Estudos.Weather-App";

/// The "contrastColor" asset catalog color resource.
static NSString * const ACColorNameContrastColor AC_SWIFT_PRIVATE = @"contrastColor";

/// The "primaryColor" asset catalog color resource.
static NSString * const ACColorNamePrimaryColor AC_SWIFT_PRIVATE = @"primaryColor";

/// The "softGray" asset catalog color resource.
static NSString * const ACColorNameSoftGray AC_SWIFT_PRIVATE = @"softGray";

/// The "01d" asset catalog image resource.
static NSString * const ACImageName01D AC_SWIFT_PRIVATE = @"01d";

/// The "01n" asset catalog image resource.
static NSString * const ACImageName01N AC_SWIFT_PRIVATE = @"01n";

/// The "02d" asset catalog image resource.
static NSString * const ACImageName02D AC_SWIFT_PRIVATE = @"02d";

/// The "02n" asset catalog image resource.
static NSString * const ACImageName02N AC_SWIFT_PRIVATE = @"02n";

/// The "03d" asset catalog image resource.
static NSString * const ACImageName03D AC_SWIFT_PRIVATE = @"03d";

/// The "03n" asset catalog image resource.
static NSString * const ACImageName03N AC_SWIFT_PRIVATE = @"03n";

/// The "04d" asset catalog image resource.
static NSString * const ACImageName04D AC_SWIFT_PRIVATE = @"04d";

/// The "04n" asset catalog image resource.
static NSString * const ACImageName04N AC_SWIFT_PRIVATE = @"04n";

/// The "09d" asset catalog image resource.
static NSString * const ACImageName09D AC_SWIFT_PRIVATE = @"09d";

/// The "09n" asset catalog image resource.
static NSString * const ACImageName09N AC_SWIFT_PRIVATE = @"09n";

/// The "10d" asset catalog image resource.
static NSString * const ACImageName10D AC_SWIFT_PRIVATE = @"10d";

/// The "10n" asset catalog image resource.
static NSString * const ACImageName10N AC_SWIFT_PRIVATE = @"10n";

/// The "11d" asset catalog image resource.
static NSString * const ACImageName11D AC_SWIFT_PRIVATE = @"11d";

/// The "11n" asset catalog image resource.
static NSString * const ACImageName11N AC_SWIFT_PRIVATE = @"11n";

/// The "13d" asset catalog image resource.
static NSString * const ACImageName13D AC_SWIFT_PRIVATE = @"13d";

/// The "13n" asset catalog image resource.
static NSString * const ACImageName13N AC_SWIFT_PRIVATE = @"13n";

/// The "50d" asset catalog image resource.
static NSString * const ACImageName50D AC_SWIFT_PRIVATE = @"50d";

/// The "50n" asset catalog image resource.
static NSString * const ACImageName50N AC_SWIFT_PRIVATE = @"50n";

/// The "background-day" asset catalog image resource.
static NSString * const ACImageNameBackgroundDay AC_SWIFT_PRIVATE = @"background-day";

/// The "background-night" asset catalog image resource.
static NSString * const ACImageNameBackgroundNight AC_SWIFT_PRIVATE = @"background-night";

/// The "cloudIcon" asset catalog image resource.
static NSString * const ACImageNameCloudIcon AC_SWIFT_PRIVATE = @"cloudIcon";

/// The "sunIcon" asset catalog image resource.
static NSString * const ACImageNameSunIcon AC_SWIFT_PRIVATE = @"sunIcon";

#undef AC_SWIFT_PRIVATE