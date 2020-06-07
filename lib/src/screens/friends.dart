import 'package:whatsapp_ui_clone/src/widgets/list_divider.dart';

import 'package:flutter/material.dart';

class FriendScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 10,
      itemBuilder: (_, index) => Column(
        children: <Widget>[
          _SingleFriend(),
          ListDivider(),
        ],
      ),
    );
  }
}

class _SingleFriend extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundImage: NetworkImage(_avatar),
      ),
      title: Text(
        "Some Name",
        overflow: TextOverflow.ellipsis,
      ),
      subtitle: Text(
        "Live in Lahore, Pakistan",
        overflow: TextOverflow.ellipsis,
      ),
      trailing: Icon(
        Icons.person_add,
        color: Colors.white.withOpacity(0.8),
      ),
    );
  }
}

final _avatar =
    "https://images.pexels.com/photos/247878/pexels-photo-247878.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500";
