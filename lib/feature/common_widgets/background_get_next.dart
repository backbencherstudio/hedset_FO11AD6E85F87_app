import 'package:flutter/material.dart';

class getNextScreen extends StatelessWidget {
  final Widget child;
  const getNextScreen({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: const BoxDecoration(
      image: DecorationImage(
          image: AssetImage("assets/images/get_started_image.jpg"),
          fit: BoxFit.cover),
    ));
  }
}
