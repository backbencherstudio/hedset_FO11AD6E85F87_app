import 'package:flutter/material.dart';
import 'package:flutter_newprojct/core/theme/theme_extension/app_colors.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/route/route_name.dart';
import 'app_background.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _moveToNextScreen();
    });
  }

  Future<void> _moveToNextScreen() async {
    await Future.delayed(const Duration(seconds: 2));
    context.pushReplacement(RouteName.loadingScreen);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AppBackground(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircularProgressIndicator(
                color: AppColors.redColor,
              )
            ],
          ),
        ),
      ),
    );
  }
}
