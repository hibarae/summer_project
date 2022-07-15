import 'package:flutter/material.dart';
import 'package:flutter_opus/defaults.dart';

class MapPage extends StatelessWidget {
  const MapPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultScaffold(
      title: "Map",
      body: const Text("Map"),
    );
  }
}