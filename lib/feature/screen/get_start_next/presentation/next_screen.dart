import 'package:flutter/material.dart';
import 'package:flutter_newprojct/core/theme/theme_extension/app_colors.dart';
import 'package:go_router/go_router.dart';
import '../../../../core/route/route_name.dart';
import 'nextbeckgro_screen.dart';

class NextScreen extends StatelessWidget {
  const NextScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final style = Theme.of(context).textTheme;

    return Scaffold(
      backgroundColor: Colors.transparent,
      body: nextBackground(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              children: [
                const Spacer(),
                Text(
                  'Plan your meals with\njust a tap!',
                  style: style.headlineLarge?.copyWith(
                    color: AppColors.onSecondary,
                    fontWeight: FontWeight.w700,
                  ),
                  textAlign: TextAlign.left,
                  softWrap: true,
                ),

                const SizedBox(height: 24), // spacing below text
                SizedBox(
                  width: double.infinity,
                  height: 56, // fixed height for button
                  child: ElevatedButton(
                    onPressed: () {
                      context.push(RouteName.signUp);
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppColors.customBox,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(24),
                      ),
                      padding: EdgeInsets.zero, // remove extra vertical padding
                    ),
                    child: const Text(
                      "Next",
                      style: TextStyle(
                        color: AppColors.whiteBackgroundColor,
                        fontSize: 20,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 32),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "Already have an account? ",
                      style: TextStyle(fontSize: 14, color: AppColors.secondaryAppColor),
                    ),
                    GestureDetector(
                      onTap: () {

                      },
                      child: const Text(
                        "Login",
                        style: TextStyle(
                          fontSize: 14,
                          color: AppColors.customBox,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 40), // bottom spacing
              ],
            ),
          ),
        ),
      ),
    );
  }
}
