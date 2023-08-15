// ignore: file_names
// ignore_for_file: camel_case_types, unnecessary_string_interpolations

import 'package:clone_ui_facebook/constant.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:photo_view/photo_view.dart';
import 'package:video_player/video_player.dart';

class postReusableWidget extends StatefulWidget {
  final String profileUrl;
  final String userName;
  final String postTime;
  final String caption;
  final String photoUrl;
  final String like;
  final String comment;
  final String share;
  final bool? isvideo;
  final VideoPlayerController? controller;
  const postReusableWidget({
    required this.profileUrl,
    required this.userName,
    required this.postTime,
    required this.caption,
    required this.photoUrl,
    required this.like,
    required this.comment,
    required this.share,
    this.isvideo,
    this.controller,
    super.key,
  });

  @override
  State<postReusableWidget> createState() => _postReusableWidgetState();
}

class _postReusableWidgetState extends State<postReusableWidget> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 300,
      // height: 570,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5.0),
            child: Row(
              children: [
                CircleAvatar(
                  backgroundImage: NetworkImage("${widget.profileUrl}"),
                ),
                //
                const SizedBox(
                  width: 5,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          "${widget.userName}",
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Text("${widget.postTime}"),
                        const SizedBox(
                          width: 5,
                        ),
                        // ignore: deprecated_member_use
                        const Icon(FontAwesomeIcons.earth),
                      ],
                    ),
                  ],
                ),
                //
                const Spacer(),
                //
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.more_horiz),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.close),
                        ),
                      ],
                    ),
                    const Text(""),
                  ],
                )
              ],
            ),
          ),
          //
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Text(
              "${widget.caption}",
              textAlign: TextAlign.justify,
            ),
          ),
          //
          widget.isvideo == false
              ? GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Stack(
                          children: [
                            PhotoView(
                              imageProvider: NetworkImage("${widget.photoUrl}"),
                            ),
                            //
                            SafeArea(
                              child: GestureDetector(
                                onTap: () {
                                  Navigator.pop(context);
                                },
                                child: Container(
                                  width: 50,
                                  height: 50,
                                  decoration: const BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.white,
                                  ),
                                  child: const Icon(
                                    Icons.close,
                                    color: kPrimaryColor,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                  child: Image.network(
                    "${widget.photoUrl}",
                    width: double.infinity,
                    height: 500,
                    fit: BoxFit.cover,
                  ),
                )
              : widget.controller!.value.isInitialized
                  ? Stack(
                      children: [
                        AspectRatio(
                          aspectRatio: widget.controller!.value.aspectRatio,
                          child: VideoPlayer(widget.controller!),
                        ),
                        Positioned(
                          top: 0,
                          bottom: 0,
                          right: 0,
                          left: 0,
                          child: IconButton(
                            onPressed: () {
                              widget.controller!.value.isPlaying
                                  ? widget.controller!.pause()
                                  : widget.controller!.play();
                              setState(() {});
                            },
                            icon: Center(
                              child: Icon(
                                widget.controller!.value.isPlaying
                                    ? Icons.pause
                                    : Icons.play_arrow,
                                color: kColorLight,
                                size: 50,
                              ),
                            ),
                          ),
                        ),
                      ],
                    )
                  : SizedBox(
                      height: 500,
                      child: Center(
                        child: IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.play_arrow),
                        ),
                      ),
                    ),
          //
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    const Icon(
                      Icons.favorite,
                      color: Colors.red,
                    ),

                    Text("${widget.like}"), //like
                  ],
                ),
                Row(
                  children: [
                    Text("${widget.comment}"),
                    const Text("Comments"),
                  ],
                ),
                //
                Row(
                  children: [
                    Text("${widget.share}"),
                    const Text("Shares"),
                  ],
                ),
              ],
            ),
          ),
          //
          const Divider(
            thickness: 2,
          ),
          //
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Row(
                children: [
                  Icon(Icons.thumb_up),
                  Text("Like"),
                ],
              ),
              //
              Row(
                children: [
                  Icon(Icons.comment),
                  Text("comment"),
                ],
              ),
              //
              Row(
                children: [
                  Icon(Icons.share),
                  Text("Share"),
                ],
              ),
            ],
          ),
          //
          const Divider(
            thickness: 10,
          ),
        ],
      ),
    );
  }
}
