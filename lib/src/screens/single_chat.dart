import 'package:flutter/material.dart';

class SingleChatScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appbar(context),
      body: _buildContent(context),
    );
  }

  Widget _appbar(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      titleSpacing: 0.0,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () => Navigator.pop(context),
          ),
          CircleAvatar(
            backgroundImage: NetworkImage(_avatar),
          ),
          SizedBox(width: 5),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const Text(
                "Jazim Abbas",
                style: const TextStyle(
                  fontSize: 16,
                ),
              ),
              Text(
                "Typing a message..",
                style: TextStyle(
                  fontSize: 12,
                  color: Theme.of(context).secondaryHeaderColor
                ),
              ),
            ],
          ),
        ],
      ),
      actions: <Widget>[
        Icon(Icons.more_vert),
      ],
    );
  }

  Widget _buildContent(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Expanded(
          child: _Chat(),
        ),
        _Message(),
      ],
    );
  }
}

class _Chat extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        _SingleChat(true),
        _SingleChat(true),
        _SingleChat(false),
        _SingleChat(true),
        _SingleChat(false),
        _SingleChat(true),
        _SingleChat(true),
        _SingleChat(true),
        _SingleChat(false),
        _SingleChat(true),
      ],
    );
  }
}

class _SingleChat extends StatelessWidget {
  final bool _isOpponent;

  _SingleChat(this._isOpponent);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        top: 10,
        right: _isOpponent ? 0.0 : 10.0,
        left: _isOpponent ? 10.0 : 0.0,
      ),
      child: Align(
        alignment: _isOpponent ? Alignment.topLeft : Alignment.topRight,
        child: Container(
          width: MediaQuery.of(context).size.width * 0.85,
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            border: Border.all(
              color:
                  _isOpponent ? Theme.of(context).primaryColor : Colors.green,
              width: 1.0,
              style: BorderStyle.solid,
            ),
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: Text(
            "Some text here here here here ..",
            textDirection: _isOpponent ? TextDirection.ltr : TextDirection.rtl,
            style: TextStyle(
              letterSpacing: 0.3,
              height: 1.5,
              fontSize: 16,
            ),
          ),
        ),
      ),
    );
  }
}

class _Message extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      child: Row(
        children: <Widget>[
          Expanded(
            child: TextField(
              decoration: InputDecoration(
                hintText: "Type your message here ....",
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
              ),
            ),
          ),
          IconButton(
            icon: Icon(Icons.send),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}

final _avatar =
    "https://images.pexels.com/photos/35537/child-children-girl-happy.jpg?auto=compress&cs=tinysrgb&dpr=1&w=500";

final _chatContent =
    "There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable.";
