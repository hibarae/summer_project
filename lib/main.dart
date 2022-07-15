import 'package:flutter/material.dart';
import 'package:flutter_opus/pages/contacts.dart';
import 'package:flutter_opus/pages/devices.dart';
import 'package:flutter_opus/pages/home.dart';
import 'package:flutter_opus/pages/about.dart';
import 'package:flutter_opus/pages/map.dart';
import 'package:flutter_opus/pages/splash.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'OPUS',
      initialRoute: '/home',
      routes: {
        '/splash': (context) => const SplashPage(),
        '/home': (context) => const HomePage(),
        '/map': (context) => const MapPage(),
        '/contacts': (context) => const ContactsPage(),
        '/devices': (context) => const DevicesPage(),
        '/about': (context) => const AboutPage(),
      });
  }
}