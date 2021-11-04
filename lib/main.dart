import 'package:flutter/material.dart';
import 'package:whatappui/Screens/homescreen.dart';

void main() {
  runApp(Main());
}

class Main extends StatelessWidget {
  const Main({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.green),
      home: new Home(),
    );
  }
}
