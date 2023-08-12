// ignore: file_names
import 'package:clone_ui_facebook/models/postdata.dart';
import 'package:flutter/material.dart';
import '../constant.dart';

// ignore: camel_case_types
class newsFeed_bar extends StatelessWidget {
  const newsFeed_bar({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      expandedHeight: 330,
      flexibleSpace: FlexibleSpaceBar(
        background: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 5.0, left: 5.0),
              child: Row(
                children: [
                  const CircleAvatar(
                    radius: 20,
                    backgroundImage: KlogoURL,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.82,
                    height: 40,
                    child: TextField(
                      decoration: InputDecoration(
                          hintText: "What's your mind?",
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                            borderSide: const BorderSide(
                                width: 1, color: kSecondaryColor),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                            borderSide: const BorderSide(
                                width: 1, color: kSecondaryColor),
                          ),
                          contentPadding: const EdgeInsets.only(
                              top: 0, bottom: 0, left: 10.0)),
                    ),
                  ),
                ],
              ),
            ),
            //
            const Divider(
              thickness: 1.0,
              color: Colors.black,
            ),
            //
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                InkWell(
                  onTap: () {},
                  child: const Row(
                    children: [
                      Icon(
                        Icons.video_call,
                        size: 32,
                      ),
                      Text("Live"),
                    ],
                  ),
                ),
                InkWell(
                  onTap: () {},
                  child: const Row(
                    children: [
                      Icon(Icons.photo),
                      Text("Photo"),
                    ],
                  ),
                ),
                //
                InkWell(
                  onTap: () {},
                  child: const Row(
                    children: [
                      Icon(
                        Icons.video_camera_back,
                        size: 27,
                      ),
                      Text("Forum"),
                    ],
                  ),
                )
              ],
            ),
            //
            const Divider(
              thickness: 8,
              color: Colors.grey,
            ),
            //
            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: 200,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: listPosts.length,
                itemBuilder: (context, index) {
                  if (index == 0) {
                    return Padding(
                      padding: const EdgeInsets.only(left: 8, right: 3),
                      child: Container(
                        width: 120,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          border: Border.all(width: 1, color: kPrimaryColor),
                        ),
                        //
                        child: Stack(
                          children: [
                            Column(
                              children: [
                                // ignore: sized_box_for_whitespace
                                Container(
                                  height: 120,
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(15),
                                    child: Image.network(
                                      listPosts[index].profile,
                                      width: double.maxFinite,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                const Spacer(),
                                //
                                const Text("Create Story"),
                                const Spacer(),
                              ],
                            ),
                            Positioned(
                              bottom: 60,
                              left: 0,
                              right: 0,
                              child: CircleAvatar(
                                child: IconButton(
                                    onPressed: () {},
                                    icon: const Icon(Icons.add)),
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  } else {
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 3.0),
                      child: Container(
                        width: 120,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          border: Border.all(width: 1, color: kSecondaryColor),
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(15),
                          child: Image.network(
                            listPosts[index].profile,
                            width: double.maxFinite,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    );
                  }
                },
              ),
            ),
            //
            const Divider(
              thickness: 8,
              color: Colors.grey,
            ),
          ],
        ),
      ),
    );
  }
}
