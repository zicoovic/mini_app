import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mini_app/core/helper/app_colors.dart';

class PlanChoiceCard extends StatelessWidget {
  final String title;
  final String price;
  final String period;
  final String subtitle;
  final String imageAsset;
  final bool selected;
  final ValueChanged<bool>? onChanged;

  final double? width;
  final double? height;
  final double radius;

  const PlanChoiceCard({
    super.key,
    required this.title,
    required this.price,
    required this.period,
    required this.subtitle,
    required this.imageAsset,
    required this.selected,
    this.onChanged,
    this.width,
    this.height,
    double? radius,
  }) : radius = radius ?? 20;

  @override
  Widget build(BuildContext context) {
    final bgColor = selected ? AppColors.darkBlue : Colors.white;
    final titleClr = selected ? Colors.white : Colors.black87;
    final priceClr = selected ? Colors.white : Colors.black87;
    final periodClr = selected ? Colors.white70 : AppColors.grey;
    final subClr = selected ? Colors.white70 : AppColors.darkBlue;

    return Semantics(
      button: true,
      selected: selected,
      label: '$title, $price $period',
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          borderRadius: BorderRadius.circular(radius.r),
          onTap: () => onChanged?.call(!selected),
          child: AnimatedContainer(
            duration: const Duration(milliseconds: 200),
            curve: Curves.easeOut,
            width: (width ?? 342.w),
            height: (height ?? 102.h),
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(radius.r),
              color: bgColor,
              border: Border.all(
                color: selected
                    ? AppColors.primaryBlue
                    : AppColors.grey.withOpacity(0.25),
                width: 1.5,
              ),
              boxShadow: selected
                  ? [
                      BoxShadow(
                        blurRadius: 14,
                        offset: const Offset(0, 6),
                        color: Colors.black.withOpacity(0.12),
                      ),
                    ]
                  : [],
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image.asset(imageAsset, height: 80.h),

                // النصوص
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title,
                        style: TextStyle(
                          color: titleClr,
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: '$price ',
                              style: TextStyle(
                                color: priceClr,
                                fontSize: 16.sp,
                                fontWeight: FontWeight.bold,
                                fontFamily: GoogleFonts.raleway().fontFamily,
                              ),
                            ),
                            TextSpan(
                              text: period,
                              style: TextStyle(
                                color: periodClr,
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Text(
                        subtitle,
                        style: TextStyle(
                          color: subClr,
                          fontSize: 11.sp,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                  ),
                ),

                // Checkbox
                Checkbox(
                  value: selected,
                  activeColor: AppColors.primaryBlue,
                  onChanged: (v) => onChanged?.call(v ?? false),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
