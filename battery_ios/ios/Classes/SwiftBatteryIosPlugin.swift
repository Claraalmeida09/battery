import Flutter
import UIKit

public class SwiftBatteryIosPlugin: NSObject, FlutterPlugin {
  public static func register(with registrar: FlutterPluginRegistrar) {
    let channel = FlutterMethodChannel(name: "plugins.federatedpluginexample/battery", binaryMessenger: registrar.messenger())
    let instance = SwiftBatteryIosPlugin()
    registrar.addMethodCallDelegate(instance, channel: channel)
  }

  public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
    let device : UIDevice
      
      device = UIDevice.current
      device.isBatteryMonitoringEnabled = true
      
     if(call.method == "getBatteryLevel"){
         let reading : Int = getBatteryLevel(device)
         result(reading)
     } else {
      result("iOS " + UIDevice.current.systemVersion)
     }
  }

  private func getBatteryLevel(_ device : UIDevice) -> Int {
        
        return Int(device.batteryLevel * 100)
    }
}

