import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mini_app/core/helper/app_colors.dart';
import 'package:mini_app/core/helper/app_constants.dart';

class TopCharactersWidget extends StatelessWidget {
  const TopCharactersWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const BouncingScrollPhysics(),
      scrollDirection: Axis.horizontal,
      itemCount: 5,
      itemBuilder: (context, index) => Padding(
        padding: EdgeInsets.only(right: 16.w),
        child: Column(
          children: [
            SizedBox(
              width: 120,
              height: 120,
              child: CircleAvatar(
                backgroundImage: AssetImage(AppConstants.character),
              ),
            ),
            SizedBox(height: 8.h),
            Text(
              'Gon Freecss',
              style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 16.sp,
                color: AppColors.darkBlue,
              ),
            ),
            SizedBox(height: 4.h),
            Text(
              'Hunter x Hunter',
              style: TextStyle(
                color: AppColors.grey,
                fontSize: 14.sp,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
