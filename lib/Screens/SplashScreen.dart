import 'dart:async';
import 'package:clone_ui_facebook/Screens/LoginScreen.dart';
import 'package:clone_ui_facebook/constant.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    durationforNavigator();
    super.initState();
  }

  // //
  // @override
  // void dispose() {
  //   durationforNavigator();
  //   super.dispose();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.maxFinite,
        height: double.maxFinite,
        color: kSecondaryColor,
        child: const SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: CircleAvatar(
                  radius: 40,
                  backgroundImage: KlogoURL,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void navigatorToLogin() {
    Navigator.push(context, MaterialPageRoute(
      builder: (context) {
        // ignore: prefer_const_constructors
        return LoginScreen();
      },
    ));
  }

  //
  void durationforNavigator() {
    Timer(const Duration(seconds: 5), () {
      navigatorToLogin();
    });
  }
}
