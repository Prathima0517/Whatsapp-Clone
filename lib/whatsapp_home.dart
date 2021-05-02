import 'package:flutter/material.dart';
import 'package:whatsapp_clone/pages/camera_screen.dart';

import 'pages/calls_screen.dart';
import 'pages/chat_screen.dart';
import 'pages/status_screen.dart';

class WhatsappHome extends StatefulWidget {
  @override
  _WhatsappHomeState createState() => _WhatsappHomeState();
}

class _WhatsappHomeState extends State<WhatsappHome>
    with SingleTickerProviderStateMixin {
  TabController _tabController;
  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, initialIndex: 1, length: 4);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Whatsapp"),
        elevation: 0.7,
        bottom: TabBar(
          controller: _tabController,
          indicatorColor: Colors.white,
          tabs: [
            Tab(icon: Icon(Icons.camera_alt)),
            Tab(icon: Text("Chats")),
            Tab(icon: Text("Status")),
            Tab(icon: Text("Calls")),
          ],
        ),
        actions: [
          Icon(Icons.search),
          SizedBox(width: 10),
          Icon(Icons.more_vert)
        ],
      ),
      body: TabBarView(controller: _tabController, children: <Widget>[
        CameraScreen(),
        ChatScreen(),
        StatusScreen(),
        CallsScreen(),
      ]),
      floatingActionButton: new FloatingActionButton(
        backgroundColor: Theme.of(context).accentColor,
        child: new Icon(Icons.message),
        onPressed: () => print("Open Chats"),
      ),
    );
  }
}
