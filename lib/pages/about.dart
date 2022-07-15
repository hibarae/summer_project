import 'package:flutter/material.dart';
import 'package:flutter_opus/defaults.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultScaffold(
      title: "About",
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Card(
            elevation: 3,
            child: SizedBox(
              height: 175,
              width: 175,
              child: Padding(
                  padding: EdgeInsets.all(10),
                  child: Text("Some information")),
            ),
          ),
          Card(
            elevation: 3,
            child: SizedBox(
              height: 175,
              width: 175,
              child: Padding(
                  padding: EdgeInsets.all(10),
                  child: Text("Test")),
            ),
          )
        ],
      ),
    );
  }
}