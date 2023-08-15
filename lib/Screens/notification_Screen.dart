import 'package:flutter/material.dart';
import '../constant.dart';

// ignore: camel_case_types
class notification {
  final String linkimageUrl;
  final String following;

  notification({required this.linkimageUrl, required this.following});
}

var listNotification = [
  notification(
      linkimageUrl:
          "https://image.winudf.com/v2/image1/cGhvdG8ud2FsbHBhcGVyLnJvc2UxNjA4X3NjcmVlbl8wXzE2MzAxNDMyOTJfMDUx/screen-0.webp?fakeurl=1&type=.webp",
      following: "Rose Blackpink"),
  notification(
      linkimageUrl:
          "https://tvstarsinfo.com/wp-content/uploads/2022/03/dasha-taran-career-010.jpg",
      following: "dasha"),
];
//
//

// ignore: camel_case_types
class notification_Screen extends StatelessWidget {
  const notification_Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height - 150,
            child: ListView.builder(
              itemCount: listNotification.length,
              itemBuilder: (context, index) {
                return Notification_Reusable_Card(
                  followLinkimageUrl: listNotification[index].linkimageUrl,
                  followText: listNotification[index].following,
                );
              },
            ),
          )
        ],
      ),
    );
  }
}

// ignore: camel_case_types, must_be_immutable
class Notification_Reusable_Card extends StatelessWidget {
  final String followLinkimageUrl;
  final String followText;
  const Notification_Reusable_Card(
      {required this.followLinkimageUrl, required this.followText, super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: Row(
        children: [
          CircleAvatar(
            radius: 40,
            backgroundImage: NetworkImage(followLinkimageUrl),
          ),
          //
          Expanded(
            child: RichText(
              textAlign: TextAlign.justify,
              text: TextSpan(
                children: [
                  TextSpan(
                    text: followText,
                    style: const TextStyle(
                      color: kPrimaryColor,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                  const TextSpan(
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
          IconButton(onPressed: () {}, icon: const Icon(Icons.more_horiz)),
        ],
      ),
    );
  }
}
