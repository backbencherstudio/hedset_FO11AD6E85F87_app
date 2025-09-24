import 'package:flutter/material.dart';
import 'package:flutter_newprojct/core/constant/image.dart';

class LifestyleBackground extends StatelessWidget {
  final Widget child;

  const LifestyleBackground({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // Background Image
        Positioned.fill(
          child: Image.asset(
            AppImage.lifeBackground, // Your background image path
            fit: BoxFit.cover,
          ),
        ),
        // Gradient overlay for better text visibility
        Positioned.fill(
          child: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Colors.black.withOpacity(0.3),
                  Colors.black.withOpacity(0.6),
                ],
              ),
            ),
          ),
        ),
        // SafeArea for content
        SafeArea(child: child),
      ],
    );
  }
}
