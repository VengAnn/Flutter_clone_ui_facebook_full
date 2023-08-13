import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../constant.dart';

// ignore: camel_case_types
class Menu_Your_ShortcutsShow_widget extends StatelessWidget {
  const Menu_Your_ShortcutsShow_widget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
          child: Row(
            children: [
              Expanded(
                child: SizedBox(
                  height: 70,
                  width: MediaQuery.of(context).size.width,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 6,
                    itemBuilder: (context, index) {
                      if (index % 2 == 0) {
                        return Stack(
                          clipBehavior: Clip.none,
                          children: [
                            Container(
                              width: 70,
                              height: 70,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                border: Border.all(width: 1),
                              ),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(15),
                                child: Image.network(
                                  "https://blog.logrocket.com/wp-content/uploads/2022/02/Best-IDEs-Flutter-2022.png",
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            //
                            const Positioned(
                              bottom: 0,
                              right: -5,
                              child: CircleAvatar(
                                radius: 15,
                                backgroundColor: kColorGrey,
                                child: FaIcon(
                                  // ignore: deprecated_member_use
                                  FontAwesomeIcons.userFriends,
                                  size: 13,
                                ),
                              ),
                            ),
                          ],
                        );
                      } else {
                        return Stack(
                          clipBehavior: Clip.none,
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 1),
                              child: Container(
                                width: 80,
                                height: 70,
                                decoration: BoxDecoration(
                                    border: Border.all(width: 1),
                                    shape: BoxShape.circle),
                                child: const CircleAvatar(
                                  radius: 15,
                                  backgroundImage: NetworkImage(
                                    "https://nebulae-assets.s3.amazonaws.com/3b56d17152bd46c295797a7eaab1f244.jpg",
                                  ),
                                ),
                              ),
                            ),
                            //
                            const Positioned(
                              bottom: 0,
                              right: 0,
                              child: CircleAvatar(
                                radius: 15,
                                backgroundColor: kColorGrey,
                                child: FaIcon(
                                  // ignore: deprecated_member_use
                                  FontAwesomeIcons.userFriends,
                                  size: 13,
                                ),
                              ),
                            ),
                          ],
                        );
                      }
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
