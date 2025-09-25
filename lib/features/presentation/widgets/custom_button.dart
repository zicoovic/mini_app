import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mini_app/core/helper/app_colors.dart';

class CustomButton extends StatelessWidget {
  final String title;
  final double? height;
  final double? width;
  final Color? color;
  final Color? textColor;
  final IconData? icon;
  final VoidCallback? onTap;

  const CustomButton({
    super.key,
    required this.title,
    this.height,
    this.width,
    this.color,
    this.textColor,
    this.icon,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final bg = color ?? AppColors.grey.withOpacity(0.3);

    final autoTextColor =
        textColor ??
        (ThemeData.estimateBrightnessForColor(bg) == Brightness.dark
            ? Colors.white
            : Colors.black87);

    final radius = 20.r;

    return Material(
      color: Colors.transparent,
      child: Ink(
        decoration: BoxDecoration(
          color: bg,
          borderRadius: BorderRadius.circular(radius),
        ),
        child: InkWell(
          onTap: onTap,
          borderRadius: BorderRadius.circular(radius),
          child: SizedBox(
            width: width ?? 97.w,
            height: height ?? 48.h,
            child: Center(
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  if (icon != null) ...[
                    Icon(icon, color: autoTextColor, size: 18.r),
                    SizedBox(width: 8.w),
                  ],
                  Text(
                    title,
                    style: TextStyle(
                      color: autoTextColor,
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
