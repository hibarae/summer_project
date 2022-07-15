import 'package:flutter/material.dart';
import 'package:flutter_opus/defaults.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultScaffold(
      body: const Text("Loading"),
    );
  }
}