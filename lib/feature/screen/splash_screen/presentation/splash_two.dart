import 'package:flutter/material.dart';
import 'package:flutter_newprojct/core/constant/icons.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/route/route_name.dart';
import 'app_background.dart';

class LoadingScreen extends StatefulWidget {
  const LoadingScreen({super.key});

  @override
  State<LoadingScreen> createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _moveToNextScreen();
    });
  }

  Future<void> _moveToNextScreen() async {
    await Future.delayed(const Duration(seconds: 2));
    context.pushReplacement(RouteName.lifeScreen);
  }
  @override
  Widget build(BuildContext context) {


    return Scaffold(
      body: AppBackground(
        child:Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                AppIcons.logo,
                width:238.w ,
                height: 256.h,
                fit:BoxFit.cover ,
              ),
            ],
          ),
        )
      ),
    );
  }
}
