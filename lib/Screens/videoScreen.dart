import 'package:flutter/material.dart';

import '../Widgets/postReusableWidget.dart';
import '../models/postdata.dart';

// ignore: camel_case_types
class videoScreen extends StatelessWidget {
  const videoScreen({super.key});

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
