import 'package:whatsapp_ui_clone/src/screens/chat.dart';

import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Messanger"),
          bottom: TabBar(
            indicatorSize: TabBarIndicatorSize.label,
            indicatorColor: Colors.white,
            tabs: <Widget>[
              Tab(text: "CHATS"),
              Tab(text: "STATUS"),
              Tab(text: "FRIENDS"),
            ],
          ),
        ),
        body: _buildContent(context),
      ),
    );
  }

  Widget _buildContent(BuildContext context) {
    return TabBarView(
      children: <Widget>[
        ChatScreen(),
        Center(
          child: Text("Status"),
        ),
        Center(
          child: Text("Friends"),
        ),
      ],
    );
  }
}
