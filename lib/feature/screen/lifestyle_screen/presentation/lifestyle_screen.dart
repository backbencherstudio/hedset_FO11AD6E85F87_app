import 'package:flutter/material.dart';

import 'package:flutter_newprojct/core/theme/theme_extension/app_colors.dart';
import 'package:flutter_newprojct/feature/screen/lifestyle_screen/presentation/widgets/lifestyle_background.dart';


class LifeStyleScreen extends StatelessWidget {
  const LifeStyleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final style = Theme.of(context).textTheme;

    return Scaffold(
      backgroundColor: Colors.transparent,
      body: LifestyleBackground(
        child: SingleChildScrollView(
          child: Column(
            children: [
              // const SizedBox(height: 30),
              // Meal Image
              Container(
                width: double.infinity,
                height: 300,
                decoration: const BoxDecoration(),
              ),
              const SizedBox(height: 20),
              // Welcome Message
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  'Hi There! We’ll ask \n you a few questions \n to help you find the \n perfect fit.',
                  style: style.headlineLarge?.copyWith(
                    color: AppColors.onSecondary,
                    fontWeight: FontWeight.w700,
                  ),
                  textAlign: TextAlign.left,
                ),
              ),
              const SizedBox(height: 10),
              // Description
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  'Your answers will guide us through this process to match you with delicious, personalized meals.',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.grey,
                  ),
                ),
              ),
              const SizedBox(height: 30),
              // Let's Go Button
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: ElevatedButton(
                  onPressed: () {
                    // Navigate to next screen
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green,
                    padding: const EdgeInsets.symmetric(
                        vertical: 15, horizontal: 30),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  child: const Text(
                    'Let\'s Go',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 30),
            ],
          ),
        ),
      ),
    );
  }
}
