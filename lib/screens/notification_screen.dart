import 'package:flutter/material.dart';

class NotificationScreen extends StatelessWidget {
  final String payload;
  const NotificationScreen({Key? key, required this.payload}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(payload),
      ),
    );
  }
}
