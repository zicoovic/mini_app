import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mini_app/core/helper/app_colors.dart';

class StatItem extends StatelessWidget {
  final IconData icon;
  final String label;
  final double? iconSize;
  final Color? color;

  const StatItem({
    super.key,
    required this.icon,
    required this.label,
    this.iconSize,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(
          icon,
          size: (iconSize ?? 18.r),
          color: color ?? AppColors.offWhite,
        ),
        SizedBox(width: 6.w),
        Text(
          label,
          style: TextStyle(color: color ?? AppColors.offWhite, fontSize: 14.sp),
        ),
      ],
    );
  }
}
