import 'package:flutter/material.dart';

class BackgroundScreen extends StatelessWidget {
  final Widget child;

  const BackgroundScreen({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/main.png'),
          fit: BoxFit.cover,
        ),
      ),
      child: child,
    );
  }
}