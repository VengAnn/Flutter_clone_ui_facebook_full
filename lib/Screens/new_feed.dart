import 'package:clone_ui_facebook/models/postdata.dart';
import 'package:flutter/material.dart';
import '../Widgets/newsFeed_bar.dart';
import '../Widgets/postReusableWidget.dart';

// ignore: camel_case_types
class new_feed extends StatelessWidget {
  const new_feed({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (context, value) {
          return [
            const newsFeed_bar(),
          ];
        },
        // ignore: sized_box_for_whitespace
        body: Container(
          height: double.maxFinite,
          width: double.maxFinite,
          // decoration: BoxDecoration(
          //   border: Border.all(width: 1, color: Colors.amber),
          // ),
          child: Column(
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
        ),
      ),
    );
  }
}
