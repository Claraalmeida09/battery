import 'package:battery_platform_interface/src/battery_platform_interface.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

/// An implementation of [BatteryPlatform] that uses method channels.
class MethodChannelBattery extends BatteryPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel =
      const MethodChannel('plugins.federatedpluginexample/battery');

  @override
  Future<int?> getBatteryLevel() async {
    final battery = await methodChannel.invokeMethod('getBatteryLevel');
    return battery;
  }
}
