import 'package:flutter/material.dart';
import 'package:flutter_newprojct/core/theme/theme_extension/app_colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.style,
    this.title,
    this.containerColor,
    this.border,
    this.textStyle,
    this.width,
    this.padding,
    this.onPress,
    // required String text,
    // required  onPressed,
    required this.radius,
  });

  final TextTheme style;
  final String? title;
  final Color? containerColor;
  final TextStyle? textStyle;
  final Border? border;
  final double? width;
  final EdgeInsets? padding;
  final VoidCallback? onPress;
  final double radius;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        width: width,
        decoration: BoxDecoration(
          border: border ?? Border.all(color: AppColors.textContainerColor),
          borderRadius: BorderRadius.circular(radius),
          color: containerColor ?? AppColors.textContainerColor,
        ),
        child: Center(
          child: Padding(
            padding: padding ?? EdgeInsets.symmetric(horizontal: 32.w, vertical: 16.h), // ✅ Correct usage
            child: Text(
              title ?? 'Let\'s Go',
              style: textStyle ??
                  style.bodyMedium?.copyWith(color: AppColors.textColor2),
            ),
          ),
        ),
      ),
    );
  }
}
