import 'package:clone_ui_facebook/Screens/notification_Screen.dart';
import 'package:flutter/material.dart';

// ignore: camel_case_types, must_be_immutable
class add_friend_Screen extends StatelessWidget {
  add_friend_Screen({super.key});
  List<String> textHeaderFriends = [
    "Suggestions",
    "Your Friends",
    "Close Friends"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: SizedBox(
                    height: 40,
                    width: MediaQuery.of(context).size.width,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 3,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 5),
                          child: Container(
                            width: 120,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: Colors.grey[200],
                            ),
                            child:
                                Center(child: Text(textHeaderFriends[index])),
                          ),
                        );
                      },
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Friend requests",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                //
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    "See All",
                    style: TextStyle(fontSize: 20, color: Colors.blue),
                  ),
                ),
              ],
            ),
            //
            Expanded(
              child: SizedBox(
                child: ListView.builder(
                  itemCount: listNotification.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(vertical: 2),
                      child: Row(
                        children: [
                          CircleAvatar(
                            radius: 42,
                            backgroundColor: Colors.red,
                            child: CircleAvatar(
                              radius: 40,
                              backgroundImage: NetworkImage(
                                  listNotification[index].linkimageUrl),
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text("Rose BlackPink"),
                              const Text("mutual friends"),
                              SizedBox(
                                width: MediaQuery.of(context).size.width - 130,
                                child: Row(
                                  children: [
                                    Expanded(
                                      child: ElevatedButton(
                                        style: ElevatedButton.styleFrom(
                                          primary: Colors.green,
                                          onPrimary: Colors.black,
                                        ),
                                        onPressed: () {},
                                        child: const Text("Confirm"),
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    Expanded(
                                      child: ElevatedButton(
                                        style: ElevatedButton.styleFrom(
                                          // ignore: deprecated_member_use
                                          onPrimary: Colors.white,
                                        ),
                                        onPressed: () {},
                                        child: const Text("Delete"),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
