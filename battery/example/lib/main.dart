import 'package:battery/battery.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int? _battery = 0;

  @override
  void initState() {
    super.initState();
    initBattery();
  }

  Future<void> initBattery() async {
    final battery = await Battery.getBatteryLevel();

    if (!mounted) return;

    setState(() {
      _battery = battery;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Plugin example app'),
        ),
        body: Center(
          child: Text('Battery Level: $_battery %'),
        ),
      ),
    );
  }
}
