import 'package:flutter/material.dart';
import 'package:flutter_newprojct/core/constant/image.dart';
import 'package:flutter_newprojct/feature/screen/splash_screen/presentation/app_background.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import '../../../../core/route/route_name.dart';
import '../../../../core/theme/theme_extension/app_colors.dart';
import '../../../common_widgets/custom_button.dart';

class LifeScreen extends StatelessWidget {
  const LifeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final style = Theme.of(context).textTheme;

    return Scaffold(
      body: AppBackground(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SvgPicture.asset(
              AppImage.lifeStyle,
              width: 335.w,
              height: 279.h,
              fit: BoxFit.cover,
            ),
            const SizedBox(height: 76),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Checkbox(
                  side: const BorderSide(color: AppColors.customBox, width: 2),
                  checkColor: AppColors.onPrimary,
                  fillColor: MaterialStateProperty.all(Colors.cyan),
                  value: true,
                  onChanged: (bool? value) {},
                ),
                const SizedBox(width: 10),
                const Text(
                  'I agree to Terms & Conditions',
                  style: TextStyle(color: AppColors.textContainerColor, fontSize: 24),
                ),
              ],
            ),
            const SizedBox(height: 32),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: CustomButton(
                title: 'Let\'s Go',
                textStyle: style.headlineSmall?.copyWith(
                  fontWeight: FontWeight.w400,
                  color: AppColors.textColor3,
                ),
                width: 335.w,
                containerColor: AppColors.customBox,
                border: Border.all(color: AppColors.customBox),

                onPress: () {
                  context.push(RouteName.getScreen);
                },
                style: style,
                radius:24,
              ),
            ),
            const SizedBox(height: 76),
          ],
        ),
      ),
    );
  }
}
