import 'package:flutter/material.dart';
import 'package:story_view/controller/story_controller.dart';
import 'package:story_view/story_view.dart';

class SingleUserStatus extends StatefulWidget {
  @override
  _SingleUserStatusState createState() => _SingleUserStatusState();
}

class _SingleUserStatusState extends State<SingleUserStatus> {
  StoryController _controller;

  @override
  void initState() {
    _controller = StoryController();
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          StoryView(
            controller: _controller,
            inline: true,
            repeat: false,
            onComplete: () {
              Navigator.pop(context);
            },
            onVerticalSwipeComplete: (direction) {
              if (direction == Direction.down) {
                Navigator.pop(context);
              }
            },
            storyItems: [
              StoryItem.pageImage(
                url:
                    "https://media1.giphy.com/media/Qu7Ehf1RIaTCN5ocwm/giphy.webp",
                controller: _controller,
              ),
              StoryItem.pageImage(
                url: "https://media.giphy.com/media/5GoVLqeAOo6PK/giphy.gif",
                controller: _controller,
              ),
            ],
          ),
          Positioned(
            top: 50,
            right: 20,
            child: IconButton(
              icon: Icon(Icons.close),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ),
        ],
      ),
    );
  }
}