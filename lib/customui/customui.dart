import 'package:flutter/material.dart';

class customcard extends StatefulWidget {
  const customcard({Key? key}) : super(key: key);

  @override
  _customcardState createState() => _customcardState();
}

class _customcardState extends State<customcard> {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        radius: 30.0,
      ),
      title: Text(
        "Fardeen",
        style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
      ),
      subtitle: Row(
        children: [
          Icon(Icons.done),
          Text(
            "hi fardeen from flutter",
            style: TextStyle(fontSize: 12, fontWeight: FontWeight.normal),
          )
        ],
      ),
      trailing: Text("18:25"),
    );
  }
}
