import 'package:battery_platform_interface/battery_platform_interface.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

const MethodChannel _channel =
    MethodChannel('plugins.federatedpluginexample/battery');

/// An implementation of [BatteryPlatform] for iOS.
class BatteryIOS extends BatteryPlatform {
  /// Registers this class as the default instance of [BatteryPlatform].
  static void registerWith() {
    BatteryPlatform.instance = BatteryIOS();
  }

  @override
  Future<int?> getBatteryLevel() async {
    try {
      final batterylevel = await _channel.invokeMethod('getBatteryLevel');
      return batterylevel;
    } on PlatformException catch (e) {
      debugPrint(e.message);
      return null;
    }
  }
}
