// ignore: file_names
import 'package:clone_ui_facebook/Screens/videoScreen.dart';
import 'package:clone_ui_facebook/constant.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'new_feed.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 1,
      length: 6,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: kColorLight,
          elevation: 0,
          title: const Text(
            "FaceBook",
            style: TextStyle(
              fontSize: 27,
              fontWeight: FontWeight.bold,
              color: kPrimaryColor,
            ),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5.0),
              child: CircleAvatar(
                backgroundColor: Colors.grey[300],
                child: IconButton(
                  onPressed: () {},
                  icon: const FaIcon(
                    // ignore: deprecated_member_use
                    FontAwesomeIcons.search,
                    color: Colors.black,
                    size: 20,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5.0),
              child: CircleAvatar(
                backgroundColor: Colors.grey[300],
                child: IconButton(
                  onPressed: () {},
                  icon: const FaIcon(
                    FontAwesomeIcons.facebookMessenger,
                    color: Colors.black,
                    size: 20,
                  ),
                ),
              ),
            ),
          ],
          bottom: const TabBar(
            indicatorColor: Colors.amber,
            tabs: [
              Tab(
                icon: FaIcon(
                  // ignore: deprecated_member_use
                  FontAwesomeIcons.home,
                  color: kPrimaryColor,
                ),
              ),
              //
              Tab(
                icon: FaIcon(
                  // ignore: deprecated_member_use
                  FontAwesomeIcons.userFriends,
                  color: kPrimaryColor,
                ),
              ),
              Tab(
                icon: FaIcon(
                  Icons.ondemand_video,
                  size: 30,
                  color: kPrimaryColor,
                ),
              ),
              Tab(
                icon: FaIcon(
                  FontAwesomeIcons.store,
                  color: kPrimaryColor,
                ),
              ),
              Tab(
                icon: FaIcon(
                  Icons.notifications,
                  size: 30,
                  color: kPrimaryColor,
                ),
              ),
              Tab(
                icon: FaIcon(
                  Icons.menu,
                  size: 30,
                  color: kPrimaryColor,
                ),
              ),
            ],
          ),
        ),
        //
        body: TabBarView(children: [
          const new_feed(),
          //
          Container(
            child: const Text("Add friends"),
          ),
          //
          const videoScreen(),
          //
          // ignore: avoid_unnecessary_containers
          Container(
            child: const Text("Store or Market"),
          ),
          //
          // ignore: avoid_unnecessary_containers
          Container(
            child: const Text("Notifications"),
          ),
          //
          // ignore: avoid_unnecessary_containers
          Container(
            child: const Text("Menu"),
          ),
        ]),
      ),
    );
  }
}
