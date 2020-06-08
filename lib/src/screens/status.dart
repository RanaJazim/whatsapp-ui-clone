import 'package:whatsapp_ui_clone/src/screens/user_status.dart';

import 'package:flutter/material.dart';

class StatusScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        _SingleStatus(
          title: "My Status",
          subTitle: "Tap to add status update",
          imgUrl: _avatar,
          handler: () {},
        ),
        _CustomDivider("Recent updates"),
        _RecentOrViewedUpdates(),
        _CustomDivider("Viewed updates"),
        _RecentOrViewedUpdates(),
      ],
    );
  }
}

class _SingleStatus extends StatelessWidget {
  final String title;
  final String subTitle;
  final String imgUrl;
  final Function handler;

  _SingleStatus({
    @required this.title,
    @required this.subTitle,
    @required this.imgUrl,
    @required this.handler,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundImage: NetworkImage(imgUrl),
      ),
      title: Text("$title"),
      subtitle: Text("$subTitle"),
      onTap: handler,
    );
  }
}

class _CustomDivider extends StatelessWidget {
  final String _dividerTitle;

  _CustomDivider(this._dividerTitle);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Divider(),
        Container(
          padding: EdgeInsets.fromLTRB(15, 5, 0, 5),
          child: Text("$_dividerTitle"),
        ),
        Divider(),
      ],
    );
  }
}

class _RecentOrViewedUpdates extends StatelessWidget {
  void _navigateToUserStatusScreen(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (_) => SingleUserStatus(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(
        5,
        (index) => _SingleStatus(
          title: "Haseeb",
          subTitle: "Today 10:17",
          imgUrl: _frndStatusImg,
          handler: () => _navigateToUserStatusScreen(context),
        ),
      ),
    );
  }
}

final _avatar =
    "https://images.pexels.com/photos/35537/child-children-girl-happy.jpg?auto=compress&cs=tinysrgb&dpr=1&w=500";

final _frndStatusImg =
    "https://images.pexels.com/photos/1255061/pexels-photo-1255061.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500";
