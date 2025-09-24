import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mini_app/core/helper/app_colors.dart';

class CustomButton extends StatelessWidget {
  final String title;
  final double? height;
  final double? width;
  const CustomButton({super.key, required this.title, this.height, this.width});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: width ?? 97.w,
      height: height ?? 35.h,
      decoration: BoxDecoration(
        color: AppColors.grey.withOpacity(0.3),
        borderRadius: BorderRadius.circular(20.r),
      ),
      child: Text(
        title,
        style: TextStyle(color: Colors.white, fontSize: 13.sp),
      ),
    );
  }
}
