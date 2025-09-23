import 'package:flutter/material.dart';

class OnboardingImage extends StatelessWidget {
  final String assetPath;
  final double width;
  final double height;

  const OnboardingImage(String logo, {
    super.key,
    required this.assetPath,
    required this.width,
    required this.height, required String AppImage,
  });

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      assetPath,
      width: width,
      height: height,
    );
  }
}

class OnboardingTitle extends StatelessWidget {
  final String text;

  const OnboardingTitle({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
      textAlign: TextAlign.center,
    );
  }
}

class OnboardingSubtitle extends StatelessWidget {
  final String text;

  const OnboardingSubtitle({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(fontSize: 16),
      textAlign: TextAlign.center,
    );
  }
}

class OnboardingButton extends StatelessWidget {
  final String text;
  final VoidCallback? onPressed;
  final Color? backgroundColor;

  const OnboardingButton({
    super.key,
    required this.text,
    this.onPressed,
    this.backgroundColor,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(backgroundColor: backgroundColor ?? Colors.green),
      child: Text(text),
    );
  }
}

class OnboardingTextButton extends StatelessWidget {
  final String text;
  final VoidCallback? onPressed;

  const OnboardingTextButton({
    super.key,
    required this.text,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: Text(text),
    );
  }
}