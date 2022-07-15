import 'package:flutter/material.dart';
import 'package:flutter_opus/defaults.dart';
import 'package:flutter_opus/manager/bluetooth.dart';
import 'package:flutter_opus/pages/home.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => HomePageState();
}

class HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    return DefaultScaffold(
        body: Container(
            margin: const EdgeInsets.all(10),
            child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    NavigationButton(icon: Icons.devices, name: "Devices", onPressed: () {
                      BluetoothManager manager = BluetoothManager();
                      manager.initialize();
                    }),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        NavigationButton(icon: Icons.map, name: "Map", onPressed: () => Navigator.pushNamed(context, "/map")),
                        const DeviceInformationCard(),
                        NavigationButton(icon: Icons.info, name: "About", onPressed: () => Navigator.pushNamed(context, "/about")),
                      ],
                    ),
                    NavigationButton(icon: Icons.contacts, name: "Contacts", onPressed: () => Navigator.pushNamed(context, "/contacts"))
                  ],
                )
            )
        ),
      );
  }
}

class DeviceInformationCard extends StatelessWidget {

  const DeviceInformationCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      shape: const CircleBorder(),
      child: SizedBox(
        height: 110,
        width: 110,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Icon(Icons.device_unknown),
            const Padding(padding: EdgeInsets.all(2)),
            Text("Waiting on device...", style: TextStyle(fontSize: 10))
          ],
        ),
      ),
    );
  }

}

class NavigationButton extends StatelessWidget {

  final IconData icon;
  final String name;
  final VoidCallback onPressed;

  NavigationButton({required this.icon, required this.name, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      style: OutlinedButton.styleFrom(primary: Colors.black),
      onPressed: onPressed,
      child: SizedBox(
        height: 25,
        width: 90,
        child: Container(
          margin: const EdgeInsets.all(5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(icon, size: 15),
              const Padding(padding: EdgeInsets.all(2)),
              Text(name, style: TextStyle(inherit: false, color: Colors.black))
            ],
          ),
        ),
      ),
    );
  }
}