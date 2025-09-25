import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mini_app/core/helper/app_colors.dart';
import 'package:mini_app/core/helper/app_constants.dart';
import 'package:mini_app/features/presentation/screens/details_screen.dart';

class PosterWidget extends StatelessWidget {
  const PosterWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300.h,
      child: ListView.builder(
        shrinkWrap: true,
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemCount: AppConstants.posters.length,
        itemBuilder: (context, index) => Padding(
          padding: EdgeInsets.only(right: 16.w),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Stack(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const DetailsScreen(),
                        ),
                      );
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        color: AppColors.light,
                        borderRadius: BorderRadius.all(Radius.circular(16.r)),
                        image: DecorationImage(
                          image: AssetImage(AppConstants.posters[index]),
                          fit: BoxFit.cover,
                        ),
                      ),
                      width: 198.w,
                      height: 247.h,
                    ),
                  ),
                  Positioned(
                    top: 12.h,
                    left: 115.w,
                    child: Container(
                      padding: EdgeInsets.fromLTRB(5, 2, 5, 2),
                      decoration: BoxDecoration(
                        color: AppColors.light,
                        borderRadius: BorderRadius.all(Radius.circular(16.r)),
                      ),
                      width: 51.w,
                      height: 24.h,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Icon(
                            Icons.star,
                            size: 15.sp,
                            color: AppColors.primaryBlue,
                          ),
                          Text('8.5', style: TextStyle(color: Colors.black)),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 8.h),
              Text(
                'Detective Conan',
                style: TextStyle(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w700,
                  color: AppColors.darkBlue,
                ),
              ),
              SizedBox(height: 4.h),
              Text(
                'Mystery',
                style: TextStyle(fontSize: 12.sp, color: AppColors.grey),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
