import 'package:flutter/material.dart';
import '../constant.dart';

class Menu_Bar_show_Widget extends StatelessWidget {
  const Menu_Bar_show_Widget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                "Menu",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              Row(
                children: [
                  CircleAvatar(
                    backgroundColor: kColorGrey[300],
                    child: IconButton(
                        onPressed: () {}, icon: const Icon(Icons.settings)),
                  ),
                  CircleAvatar(
                    backgroundColor: kColorGrey[300],
                    child: IconButton(
                        onPressed: () {}, icon: const Icon(Icons.search)),
                  ),
                ],
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
          child: Row(
            children: [
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(
                        width: 0.5,
                        color: kColorLight,
                      ),
                      boxShadow: [
                        BoxShadow(
                          spreadRadius: 3,
                          blurRadius: 4,
                          color: kColorGrey[200]!,
                        )
                      ]),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.red,
                      fixedSize: const Size.fromHeight(60),
                      backgroundColor: kColorLight,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      elevation: 0,
                    ),
                    onPressed: () {},
                    child: const Row(
                      children: [
                        CircleAvatar(
                          radius: 20,
                          backgroundImage: NetworkImage(
                              "https://e5fodz76tgp.exactdn.com/wp-content/uploads/2023/05/Dasha-Taran-Instagram-Model-Biography-Age-and-Boyfriend.jpg"),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "Jonh",
                          style: TextStyle(color: Colors.black),
                        ),
                      ],
                    ),
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
