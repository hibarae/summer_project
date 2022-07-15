
import 'package:flutter/material.dart';

class DefaultScaffold extends StatelessWidget {

  final Widget body;
  final String title;

  DefaultScaffold({Key? key, this.title = "OPUS", required this.body}): super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        title: Text(title)
      ),
      body: body
    );
  }



}