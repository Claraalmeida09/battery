import 'package:battery_platform_interface/src/chanel_methods/battery_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

abstract class BatteryPlatform extends PlatformInterface {
  /// Constructs a BatteryAndroidPlatform.
  BatteryPlatform() : super(token: _token);

  static final Object _token = Object();

  static BatteryPlatform _instance = MethodChannelBattery();

  /// The default instance of [BatteryPlatform] to use.
  ///
  /// Defaults to [MethodChannelBattery].
  static BatteryPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [BatteryPlatform] when
  /// they register themselves.
  static set instance(BatteryPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<int?> getBatteryLevel() {
    throw UnimplementedError('getBatteryLevel() has not been implemented.');
  }
}
