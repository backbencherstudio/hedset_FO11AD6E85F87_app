import 'package:flutter/material.dart';
import 'package:flutter_newprojct/core/theme/theme_extension/app_colors.dart';
import 'package:go_router/go_router.dart';
import '../../../../core/route/route_name.dart';
import 'app_background_two.dart';

class GetScreen extends StatelessWidget {
  const GetScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final style = Theme.of(context).textTheme;

    return Scaffold(
      backgroundColor: Colors.transparent,
      body: AppBackgroundTwo(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  'Everything you need,\njust a click away!',
                  style: style.headlineLarge?.copyWith(
                    color: AppColors.onSecondary,
                    fontWeight: FontWeight.w700,
                  ),
                  textAlign: TextAlign.left,
                ),
                const SizedBox(height: 30),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      context.push(RouteName.nextScreen);
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppColors.customBox,
                      padding: const EdgeInsets.symmetric(vertical: 15),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                    child: const Text(
                      "Next",
                      style: TextStyle(color: AppColors.whiteBackgroundColor, fontSize: 20),
                    ),
                  ),
                ),
                const SizedBox(height: 62),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
