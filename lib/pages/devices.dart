import 'package:flutter/material.dart';
import 'package:flutter_opus/defaults.dart';

class DevicesPage extends StatelessWidget {
  const DevicesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultScaffold(
      title: "Devices",
      body: const Text("Devices"),
    );
  }
}