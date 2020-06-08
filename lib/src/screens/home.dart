import 'package:whatsapp_ui_clone/src/screens/chat.dart';
import 'package:whatsapp_ui_clone/src/screens/friends.dart';
import 'package:whatsapp_ui_clone/src/screens/status.dart';

import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  TabController _controller;

  @override
  void initState() {
    _controller = TabController(vsync: this, length: 3, initialIndex: 0);
    _controller.addListener(_handleTabIndex);
    super.initState();
  }

  @override
  void dispose() {
    _controller.removeListener(_handleTabIndex);
    _controller.dispose();
    super.dispose();
  }

  void _handleTabIndex() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Messanger"),
        actions: _actionButtons(),
        bottom: _buildTabs(),
      ),
      body: _buildContent(context),
      floatingActionButton: _buildFloatingButtons(),
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
      controller: _controller,
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
      controller: _controller,
      children: <Widget>[
        ChatScreen(),
        StatusScreen(),
        FriendScreen(),
      ],
    );
  }

  Widget _buildFloatingButtons() {
    if (_controller.index == 1) {
      return FloatingActionButton(
        onPressed: null,
        backgroundColor: Colors.green[600],
        child: Icon(
          Icons.edit,
          size: 20.0,
          color: Colors.white,
        ),
      );
    } else {
      return FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.green[600],
        child: Icon(
          Icons.chat,
          size: 20.0,
          color: Colors.white,
        ),
      );
    }
  }
}
