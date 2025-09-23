import 'package:flutter/material.dart';
import 'package:flutter_newprojct/core/constant/image.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AppBackground extends StatelessWidget {
  const AppBackground({super.key, required this.child});
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          AppImage.backgroundPng,
          height: double.maxFinite,
          width: double.maxFinite,
          fit: BoxFit.cover,
        ),
        SafeArea(child: child),
      ],
    );
  }
}
