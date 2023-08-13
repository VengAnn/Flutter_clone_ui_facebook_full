import 'package:flutter/material.dart';
import '../Widgets/notification_ReusableCard.dart';

// ignore: camel_case_types
class notification_Screen extends StatelessWidget {
  const notification_Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: [
          Notification_Reusable_Card(),
        ],
      ),
    );
  }
}
