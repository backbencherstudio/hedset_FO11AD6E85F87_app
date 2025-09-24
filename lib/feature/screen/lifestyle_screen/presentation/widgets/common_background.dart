import 'package:flutter/material.dart';

class WhiteBackground extends StatelessWidget {
  const WhiteBackground({super.key, required this.child});
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white, // Common white background
      body: SafeArea(
        child: child,
      ),
    );
  }
}
