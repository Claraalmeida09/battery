#import "BatteryIosPlugin.h"
#if __has_include(<battery_ios/battery_ios-Swift.h>)
#import <battery_ios/battery_ios-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "battery_ios-Swift.h"
#endif

@implementation BatteryIosPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftBatteryIosPlugin registerWithRegistrar:registrar];
}
@end
