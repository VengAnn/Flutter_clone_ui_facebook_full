import 'package:flutter/material.dart';
import '../constant.dart';
import '../models/postdata.dart';

// ignore: camel_case_types
class Notification_Reusable_Card extends StatelessWidget {
  const Notification_Reusable_Card({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SizedBox(
        height: double.maxFinite,
        child: ListView.builder(
          itemCount: listPosts.length - 1,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 40,
                    backgroundImage: NetworkImage(listPosts[index + 1].profile),
                  ),
                  //
                  Expanded(
                    child: RichText(
                      textAlign: TextAlign.justify,
                      text: const TextSpan(
                        children: [
                          TextSpan(
                            text: "Super Man has",
                            style: TextStyle(
                              color: kPrimaryColor,
                              fontWeight: FontWeight.w800,
                            ),
                          ),
                          TextSpan(
                            text:
                                " like your photo Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s,",
                            style: TextStyle(
                              color: kSecondaryColor,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  //
                  IconButton(
                      onPressed: () {}, icon: const Icon(Icons.more_horiz)),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
