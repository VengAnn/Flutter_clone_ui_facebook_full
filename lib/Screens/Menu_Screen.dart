// ignore_for_file: non_constant_identifier_names

import 'package:clone_ui_facebook/constant.dart';
import 'package:flutter/material.dart';
import '../Widgets/Menu_Bar_show_widget.dart';
import '../Widgets/Menu_your_shortcutWidget.dart';

// ignore: camel_case_types
class Menu_Screen extends StatefulWidget {
  const Menu_Screen({super.key});

  @override
  State<Menu_Screen> createState() => _Menu_ScreenState();
}

// ignore: camel_case_types
class _Menu_ScreenState extends State<Menu_Screen> {
  bool ShowMore = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //
            const Menu_Bar_show_Widget(),
            //
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Text(
                "Your shortcuts",
                style: TextStyle(fontSize: 16),
              ),
            ),
            //
            const Menu_Your_ShortcutsShow_widget(),
            //
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Text(
                "All shortcuts",
                style: TextStyle(fontSize: 16),
              ),
            ),
            //
            ShowAllShortcuts(),
            //
            buildElevatedButton(),
            Container(
              decoration: BoxDecoration(
                  border: Border.all(width: 1, color: kColorGrey[300]!)),
            ),
            Row(
              children: [
                // ignore: avoid_unnecessary_containers
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: GestureDetector(
                      onTap: () {
                        // ignore: avoid_print
                        print("help");
                      },
                      child: SizedBox(
                        width: double.maxFinite,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Row(
                              children: [
                                CircleAvatar(
                                  child: Icon(Icons.question_mark_outlined),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text("Help & Support"),
                              ],
                            ),
                            Row(
                              children: [
                                IconButton(
                                  onPressed: () {},
                                  icon: const Icon(Icons.arrow_drop_down),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            //
            Container(
              decoration: BoxDecoration(
                  border: Border.all(width: 1, color: kColorGrey[300]!)),
            ),
            //
            Row(
              children: [
                // ignore: avoid_unnecessary_containers
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: GestureDetector(
                      onTap: () {
                        // ignore: avoid_print
                        print("help");
                      },
                      child: SizedBox(
                        width: double.maxFinite,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Row(
                              children: [
                                CircleAvatar(
                                  child: Icon(Icons.settings),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text("Settings & Privacy"),
                              ],
                            ),
                            Row(
                              children: [
                                IconButton(
                                  onPressed: () {},
                                  icon: const Icon(Icons.arrow_drop_down),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            //
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                children: [
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {},
                      child: const Text("Logout"),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  ///
//
  Widget buildElevatedButton() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        children: [
          Expanded(
            child: ElevatedButton(
              onPressed: () {
                setState(() {
                  ShowMore = !ShowMore;
                });
              },
              child: Text(ShowMore ? "See less" : "See More"),
            ),
          ),
        ],
      ),
    );
  }

  ///
//
  int getItemCount() {
    return ShowMore ? 8 : 6;
  }

  ///
/////
  Widget ShowAllShortcuts() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: SizedBox(
        height: ShowMore ? 320 : 240,
        width: double.maxFinite,
        child: GridView.builder(
          scrollDirection: Axis.vertical,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 5,
            mainAxisSpacing: 5,
            childAspectRatio: 1 / 0.4,
          ),
          itemCount: getItemCount(),
          itemBuilder: (context, index) {
            return _getContainerWidget("Save", Icons.save);
          },
        ),
      ),
    );
  }

  Widget _getContainerWidget(String text, IconData iconData) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        color: kSecondaryColor,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Icon(iconData),
              Text(
                text,
                style:
                    const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
