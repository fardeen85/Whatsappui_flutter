import 'package:flutter/material.dart';
import 'package:whatappui/customui/customui.dart';

class chatpage extends StatelessWidget {
  const chatpage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: Icon(Icons.chat),
        ),
        body: ListView(
          children: [
            new customcard(),
            new customcard(),
            new customcard(),
            new customcard()
          ],
        ));
  }
}
