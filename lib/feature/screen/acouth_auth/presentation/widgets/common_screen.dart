import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomBottomSheet extends StatelessWidget {
  final double height;
  final Widget child;
  final Color? backgroundColor;
  final double borderRadius;

  const CustomBottomSheet({
    super.key,
    required this.height,
    required this.child,
    this.backgroundColor,
    this.borderRadius = 32,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        height: height.h,
        width: double.infinity,
        decoration: BoxDecoration(
          color: backgroundColor ?? Colors.white, // Default white if not passed
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(borderRadius.r),
            topRight: Radius.circular(borderRadius.r),
          ),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 22.h),
          child: child, // <-- Your dynamic content
        ),
      ),
    );
  }
}
