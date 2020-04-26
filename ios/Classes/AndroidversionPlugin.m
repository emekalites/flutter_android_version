#import "AndroidVersionPlugin.h"
#if __has_include(<androidversion/androidversion-Swift.h>)
#import <androidversion/androidversion-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "androidversion-Swift.h"
#endif

@implementation AndroidVersionPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftAndroidVersionPlugin registerWithRegistrar:registrar];
}
@end
