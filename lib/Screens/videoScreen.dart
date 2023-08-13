import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import '../Widgets/postReusableWidget.dart';
import '../models/postdata.dart';

// ignore: camel_case_types
class videoScreen extends StatefulWidget {
  const videoScreen({super.key});

  @override
  State<videoScreen> createState() => _videoScreenState();
}

class _videoScreenState extends State<videoScreen> {
  // ignore: unused_field
  late VideoPlayerController _controller;
  @override
  void initState() {
    _controller = VideoPlayerController.networkUrl(Uri.parse(
        'https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/BigBuckBunny.mp4'))
      ..initialize().then((_) {
        // _controller.play(); // if when run video are playing use this line
        // Ensure the first frame is shown after the video is initialized, even before the play button has been pressed.
        setState(() {});
      });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                //
                Flexible(
                  // ignore: avoid_unnecessary_containers
                  child: Container(
                    child: ListView.builder(
                        itemCount: listPosts.length - 1,
                        itemBuilder: (context, index) {
                          // ignore: sized_box_for_whitespace
                          return postReusableWidget(
                            profileUrl: listPosts[index + 1].profile,
                            userName: listPosts[index + 1].userName,
                            postTime: listPosts[index + 1].postTime,
                            caption: listPosts[index + 1].caption,
                            photoUrl: listPosts[index + 1].photoUrl,
                            like: listPosts[index + 1].like,
                            comment: listPosts[index + 1].comment,
                            share: listPosts[index + 1].share,
                            isvideo: true,
                            controller: _controller,
                          );
                        }),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
