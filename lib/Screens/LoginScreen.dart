// ignore: file_names
import 'package:flutter/material.dart';
import '../constant.dart';
import 'HomeScreen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Spacer(),
              const CircleAvatar(
                radius: 30,
                backgroundImage: KlogoURL,
              ),
              //
              _getTextField("UserName", null, null),
              _getTextField("Password", Icons.visibility, Icons.visibility_off),
              Row(
                children: [
                  Expanded(
                    // ignore: sized_box_for_whitespace
                    child: Container(
                      height: 45,
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: kPrimaryColor,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15))),
                          onPressed: () {
                            Navigator.pushAndRemoveUntil(context,
                                MaterialPageRoute(
                              builder: (context) {
                                // ignore: prefer_const_constructors
                                return HomeScreen();
                              },
                            ), (route) => false);
                          },
                          child: const Text("Login")),
                    ),
                  ),
                ],
              ),
              //
              const Spacer(),
              //
              Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 45,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          border: Border.all(width: 1, color: kPrimaryColor),
                          boxShadow: const [
                            BoxShadow(
                              spreadRadius: 2,
                              blurRadius: 2,
                              color: kSecondaryColor,
                            )
                          ]),
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            elevation: 3.0,
                            foregroundColor: kPrimaryColor,
                            backgroundColor: kColorLight,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15),
                            ),
                          ),
                          onPressed: () {},
                          child: const Text("Create New Account Now?")),
                    ),
                  ),
                ],
              ),
              //
            ],
          ),
        ),
      ),
    );
  }

  bool hinhicon = true;
  Widget _getTextField(String text, IconData? icondata, IconData? icondata1) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: TextField(
        onChanged: (value) {},
        decoration: InputDecoration(
          hintText: text,
          suffixIcon: IconButton(
              onPressed: () {
                setState(() {
                  hinhicon = !hinhicon;
                });
              },
              icon: hinhicon ? Icon(icondata) : Icon(icondata1)),
          enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(
              width: 2,
              color: kSecondaryColor,
            ),
            borderRadius: BorderRadius.all(Radius.circular(15)),
          ),
          //
          focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(
              width: 2,
              color: kSecondaryColor,
            ),
            borderRadius: BorderRadius.all(Radius.circular(15)),
          ),
        ),
        obscureText: hinhicon,
      ),
    );
  }
}
