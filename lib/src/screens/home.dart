import 'package:whatsapp_ui_clone/src/screens/chat.dart';
import 'package:whatsapp_ui_clone/src/screens/friends.dart';

import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Messanger"),
          actions: _actionButtons(),
          bottom: _buildTabs(),
        ),
        body: _buildContent(context),
      ),
    );
  }

  List<Widget> _actionButtons() {
    return [
      IconButton(
        icon: const Icon(Icons.search),
        onPressed: () {},
      ),
      const Icon(Icons.more_vert)
    ];
  }

  Widget _buildTabs() {
    return TabBar(
      indicatorSize: TabBarIndicatorSize.label,
      indicatorColor: Colors.white,
      tabs: <Widget>[
        Tab(text: "CHATS"),
        Tab(text: "STATUS"),
        Tab(text: "FRIENDS"),
      ],
    );
  }

  Widget _buildContent(BuildContext context) {
    return TabBarView(
      children: <Widget>[
        ChatScreen(),
        Center(
          child: Text("Friends"),
        ),
        FriendScreen(),
      ],
    );
  }
}
