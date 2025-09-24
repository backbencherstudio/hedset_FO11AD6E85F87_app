import 'package:flutter/material.dart';
import 'package:flutter_newprojct/core/constant/icons.dart';
import 'package:flutter_newprojct/feature/screen/acouth_auth/presentation/widgets/app_background_three.dart';
import 'package:flutter_newprojct/feature/screen/acouth_auth/presentation/widgets/common_screen.dart';
import 'package:flutter_newprojct/core/theme/theme_extension/app_colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/route/route_name.dart';
import '../../../common_widgets/custom_button.dart';
import 'login_screen.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    final style = Theme.of(context).textTheme;

    return Scaffold(
      body: AuthBackground(
        child: Stack(
          children: [
            Align(
              alignment: Alignment.center,
              child: CustomBottomSheet(
                backgroundColor: Colors.white,
                height: 607.h,
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Welcome to hngr",
                        style: style.headlineLarge?.copyWith(
                          fontSize: 32.sp,
                          fontWeight: FontWeight.w600,
                          color: AppColors.onSurface,
                        ),
                      ),
                      SizedBox(height: 24.h),

                      /// Name Field
                      _buildInputField(
                        label: "Name",
                        hintText: "Enter your name",
                        icon: AppIcons.user,
                        style: style,
                      ),
                      SizedBox(height: 12.h),

                      /// Email Field
                      _buildInputField(
                        label: "Email",
                        hintText: "michelle@example.com",
                        icon: AppIcons.mail,
                        style: style,
                        keyboardType: TextInputType.emailAddress,
                      ),
                      SizedBox(height: 12.h),

                      /// Password Field
                      _buildInputField(
                        label: "Password",
                        hintText: "Enter your password",
                        icon: 'assets/icons/password.svg',
                        style: style,
                        obscureText: true,
                        iconOnRight: true,
                      ),
                      SizedBox(height: 32.h),

                      /// Custom Button after password field
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20.0),
                        child: CustomButton(
                          title: 'Sign Up',
                          textStyle: style.headlineSmall?.copyWith(
                            fontWeight: FontWeight.w400,
                            color: AppColors.textColor3,
                          ),
                          width: 295.w,
                          containerColor: AppColors.customBox,
                          border: Border.all(color: AppColors.customBox),
                          onPress: () {
                            context.push(RouteName.signIn);
                          },
                          style: style,
                          radius: 24,
                        ),
                      ),
                      SizedBox(height: 24.h),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SvgPicture.asset(
                            "assets/icons/Google Logo.svg",
                            height: 50.h, // Medium size
                            width: 60.w,
                          ),
                          SizedBox(width: 16.w), // Space between logos
                          SvgPicture.asset(
                            "assets/icons/Apple Logo.svg",
                            height: 50.h,
                            width: 56.w,
                          ),
                        ],
                      ),
                      SizedBox(height: 12.h),
                      Center(
                        child: Text(
                          "By continuing, you agree to the Terms of \nService and Privacy Policy",
                          textAlign: TextAlign.center,
                          style: style.bodySmall?.copyWith(
                            fontWeight: FontWeight.w400,
                            color: AppColors.secondaryAppColor,
                          ),
                        ),
                      ),


                      SizedBox(height: 42.h),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Reusable Input Field Widget
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
