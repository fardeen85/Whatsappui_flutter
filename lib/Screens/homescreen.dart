import 'dart:html';

import 'package:flutter/material.dart';
import 'package:whatappui/Screens/chatpage.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {
  TabController? _controller;

  @override
  void initState() {
    _controller = new TabController(length: 4, vsync: this, initialIndex: 1);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          actions: [
            IconButton(
              icon: Icon(Icons.search),
              onPressed: () {},
            ),
            PopupMenuButton<String>(onSelected: (value) {
              print(value);
            }, itemBuilder: (BuildContext context) {
              return [
                PopupMenuItem(
                  child: Text("New Group"),
                  value: "NewGroup",
                ),
                PopupMenuItem(
                  child: Text("New Broadcast"),
                  value: "New Broadcast",
                ),
                PopupMenuItem(
                  child: Text("Whatsapp web"),
                  value: "Whatsapp web",
                ),
                PopupMenuItem(
                  child: Text("Starred Message"),
                  value: "Starred Message",
                ),
                PopupMenuItem(
                  child: Text("Settings"),
                  value: "Settings",
                )
              ];
            }),
          ],
          bottom: TabBar(
            controller: _controller,
            tabs: [
              Tab(
                icon: Icon(Icons.camera),
              ),
              Tab(
                child: Text("Chats"),
              ),
              Tab(
                child: Text("Status"),
              ),
              Tab(
                child: Text("Calls"),
              ),
            ],
          ),
        ),
        body: TabBarView(
          controller: _controller,
          children: [
            Text("Camera"),
            new chatpage(),
            Text("Status"),
            Text("Calss")
          ],
        ));
  }
}
