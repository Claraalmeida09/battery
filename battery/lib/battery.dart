import 'package:battery_platform_interface/battery_platform_interface.dart';

class Battery {
  static Future<int?> getBatteryLevel() =>
      BatteryPlatform.instance.getBatteryLevel();
}
