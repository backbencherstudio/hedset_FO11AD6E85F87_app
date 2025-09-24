import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

import '../../../../core/route/route_name.dart';
import '../../../../core/theme/theme_extension/app_colors.dart';
import '../../../common_widgets/custom_button.dart';
import 'package:flutter_newprojct/feature/screen/acouth_auth/presentation/widgets/app_background_three.dart';
import 'package:flutter_newprojct/feature/screen/acouth_auth/presentation/widgets/common_screen.dart';


class VerifyEmail extends StatefulWidget {
  const VerifyEmail({super.key});

  @override
  State<VerifyEmail> createState() => _VerifyEmailState();
}

class _VerifyEmailState extends State<VerifyEmail> {
  String otpValue = "";

  @override
  Widget build(BuildContext context) {
    final style = Theme.of(context).textTheme;

    return Scaffold(
      body: AuthBackground(
        child: Align(
          alignment: Alignment.center,
          child: CustomBottomSheet(
            backgroundColor: Colors.white,
            height: 375.h,
            child: SingleChildScrollView(
              padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 24.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: 50.h),

                  // Title
                  Text(
                    "Verify Email",
                    style: style.headlineLarge?.copyWith(
                      fontSize: 28.sp,
                      fontWeight: FontWeight.w600,
                      color: AppColors.onSurface,
                    ),
                  ),
                  SizedBox(height: 12.h),

                  // Subtitle
                  Text(
                    "Please enter the OTP code we've sent you \nin your email.",
                    textAlign: TextAlign.center,
                    style: style.bodyMedium?.copyWith(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w400,
                      color: AppColors.textContainerColor,
                    ),
                  ),
                  SizedBox(height: 32.h),

                  // OTP Input using PinCodeTextField
                  PinCodeTextField(
                    appContext: context,
                    length: 6,
                    obscureText: false,
                    animationType: AnimationType.fade,
                    keyboardType: TextInputType.number,
                    cursorColor: AppColors.textContainerColor,
                    textStyle: TextStyle(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w600,
                      color: AppColors.textContainerColor,
                    ),
                    pinTheme: PinTheme(
                      shape: PinCodeFieldShape.circle, // Circle shape
                      borderRadius: BorderRadius.circular(100),
                      fieldHeight: 42.h,
                      fieldWidth: 42.h,
                      borderWidth: 0.5,
                      inactiveColor: AppColors.textColor8,
                      selectedColor: AppColors.textContainerColor,
                      activeColor: AppColors.textContainerColor,
                      inactiveFillColor: AppColors.whiteBackgroundColor,
                      selectedFillColor: AppColors.whiteBackgroundColor,
                      activeFillColor: AppColors.whiteBackgroundColor,
                    ),
                    enableActiveFill: true,
                    animationDuration: const Duration(milliseconds: 200),
                    onChanged: (value) {
                      setState(() {
                        otpValue = value;
                      });
                    },
                    onCompleted: (value) {
                      print("OTP Completed: $value");
                    },
                  ),
                  SizedBox(height: 24.h),

                  // Continue Button
                  CustomButton(
                    title: 'Continue',
                    textStyle: style.bodyLarge?.copyWith(
                      fontWeight: FontWeight.w500,
                      color: Colors.white,
                    ),
                    width: double.infinity,
                    containerColor: AppColors.customBox,
                    onPress: () {
                       {
                        context.push(RouteName.lifeBackground);
                      };
                    },
                    style: style,
                    radius: 24,
                  ),
                  SizedBox(height: 24.h),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
