#import "FlutterSdkTestPlugin.h"
#if __has_include(<flutter_sdk_test/flutter_sdk_test-Swift.h>)
#import <flutter_sdk_test/flutter_sdk_test-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "flutter_sdk_test-Swift.h"
#endif

@implementation FlutterSdkTestPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftFlutterSdkTestPlugin registerWithRegistrar:registrar];
}
@end
