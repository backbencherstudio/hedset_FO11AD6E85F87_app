import 'package:flutter/material.dart';
import 'package:flutter_newprojct/core/constant/icons.dart';
import 'package:flutter_newprojct/feature/screen/acouth_auth/presentation/verify_Email.dart';
import 'package:flutter_newprojct/feature/screen/acouth_auth/presentation/widgets/app_background_three.dart';
import 'package:flutter_newprojct/feature/screen/acouth_auth/presentation/widgets/common_screen.dart';
import 'package:flutter_newprojct/core/theme/theme_extension/app_colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/route/route_name.dart';
import '../../../common_widgets/custom_button.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({super.key});

  @override
  Widget build(BuildContext context) {
    final style = Theme.of(context).textTheme;

    return Scaffold(
      body: AuthBackground(
        child: Align(
          alignment: Alignment.center,
          child: CustomBottomSheet(
            backgroundColor: Colors.white,
            height: 460.h,
            child: SingleChildScrollView(
              padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 24.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Title
                  Text(
                    "Forgot Password?",
                    style: style.headlineLarge?.copyWith(
                      fontSize: 28.sp,
                      fontWeight: FontWeight.w600,
                      color: AppColors.onSurface,
                    ),
                  ),
                  SizedBox(height: 16.h),

                  // Subtitle
                  Text(
                    "Please enter your email address to reset your password.",
                    style: style.bodyMedium?.copyWith(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w400,
                      color: Colors.grey.shade700,
                    ),
                  ),
                  SizedBox(height: 24.h),

                  // Email Field
                  _buildInputField(
                    label: "Email",
                    hintText: "michelle@example.com",
                    icon: AppIcons.mail,
                    style: style,
                    keyboardType: TextInputType.emailAddress,
                  ),
                  SizedBox(height: 32.h),

                  // Send OTP Button
                  Center(
                    child: CustomButton(
                      title: 'Send OTP',
                      textStyle: style.headlineSmall?.copyWith(
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                      ),
                      width: 295.w,
                      containerColor: AppColors.customBox, // primary button color
                      border: Border.all(color: AppColors.primary),
                      onPress: () {
                        context.push(RouteName.verifyEmail);
                      },
                      style: style,
                      radius: 24,
                    ),
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

  /// Input Field Widget
  Widget _buildInputField({
    required String label,
    required String hintText,
    required String icon,
    required TextTheme style,
    TextInputType keyboardType = TextInputType.text,
    bool obscureText = false,
    bool iconOnRight = false,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: style.bodyMedium?.copyWith(
            color: AppColors.onSurface,
            fontSize: 16.sp,
            fontWeight: FontWeight.w500,
          ),
        ),
        SizedBox(height: 12.h),
        Container(
          height: 56.h,
          padding: EdgeInsets.symmetric(horizontal: 12.w),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12.r),
            border: Border.all(color: Colors.grey.shade400),
          ),
          child: Row(
            children: [
              if (!iconOnRight && icon.isNotEmpty) ...[
                SvgPicture.asset(icon, height: 18.h, width: 20.w),
                SizedBox(width: 12.w),
              ],
              Expanded(
                child: TextFormField(
                  keyboardType: keyboardType,
                  obscureText: obscureText,
                  decoration: InputDecoration(
                    hintText: hintText,
                    hintStyle: TextStyle(color: Colors.grey.shade400),
                    border: InputBorder.none,
                    isDense: true,
                  ),
                  style: TextStyle(fontSize: 14.sp, color: Colors.black),
                ),
              ),
              if (iconOnRight && icon.isNotEmpty) ...[
                SizedBox(width: 12.w),
                SvgPicture.asset(icon, height: 18.h, width: 20.w),
              ],
            ],
          ),
        ),
      ],
    );
  }
}
