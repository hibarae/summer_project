
import 'dart:async';

import 'package:flutter_reactive_ble/flutter_reactive_ble.dart';
import 'package:permission_handler/permission_handler.dart';

class BluetoothManager {

  // Battery
  //  - Service: 0000180f-0000-1000-8000-00805f9b34fb
  //  - Characteristic: 00002a19-0000-1000-8000-00805f9b34fb

  // Fall Detection:
  //  - Service: 5cf66269-5414-44ee-8443-70c88587a6ae
  //  - Characteristic: 5cf67271-5414-44ee-8443-70c88587a6ae
  
  final Uuid serviceId = Uuid.parse("0000180f-0000-1000-8000-00805f9b34fb");
  
  Future<bool> checkPerms() async {
    if (!(await Permission.location.request().isGranted && await Permission.bluetoothScan.request().isGranted)) {
      openAppSettings();
      return false;
    }
    return true;
  }

  void initialize() async {
    if (!await checkPerms()) {
      return;
    }
    final flutterReactiveBle = FlutterReactiveBle();
    StreamSubscription _subscription = flutterReactiveBle.scanForDevices(withServices: [serviceId], scanMode: ScanMode.lowLatency).listen((device) {
      print("FOUND: ${device.name}: ${device.id}");
    });
  }

}