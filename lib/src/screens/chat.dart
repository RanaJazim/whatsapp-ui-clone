import 'package:badges/badges.dart';
import 'package:flutter/material.dart';

class ChatScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 10,
      itemBuilder: (_, index) => Column(
        children: <Widget>[
          _SingleChatItem(),
          Padding(
            padding: EdgeInsets.only(left: 20, right: 20),
            child: Divider(),
          ),
        ],
      ),
    );
  }
}

class _SingleChatItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundImage: NetworkImage("$_avatar"),
      ),
      title: Text(
        "Jazim Abbas asd asd asd asdsa asd asd asdsadsadas asdsad asdsadsa",
        overflow: TextOverflow.ellipsis,
      ),
      subtitle: Text(
        "Default text here...",
        overflow: TextOverflow.ellipsis,
      ),
      trailing: _trailing(),
    );
  }

  Widget _trailing() {
    final heightBetweenWidgets = 5.0;
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        _CustomDate(),
        SizedBox(height: heightBetweenWidgets),
        _CustomBadge(),
      ],
    );
  }
}

class _CustomDate extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text("Yesterday");
  }
}

class _CustomBadge extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Badge(
      badgeContent: const Text("3"),
      badgeColor: Colors.green.withOpacity(0.7),
    );
  }
}

final _avatar =
    "https://images.pexels.com/photos/35537/child-children-girl-happy.jpg?auto=compress&cs=tinysrgb&dpr=1&w=500";
