import 'package:flutter/material.dart';

import '../core/notification_service.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    NotificationService(context: context).initializationNotification();
    NotificationService(context: context).requestIosPermission();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            NotificationService(context: context).displayNotification(
              title: "New Notification",
              body: "New Notification Body",
            );
          },
          child: const Text("Get Notification"),
        ),
      ),
    );
  }
}
