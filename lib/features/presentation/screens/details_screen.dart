// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:mini_app/core/helper/app_colors.dart';
import 'package:mini_app/features/presentation/widgets/custom_button.dart';

class DetailsScreen extends StatefulWidget {
  const DetailsScreen({super.key});

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        color: Colors.black.withBlue(70).withGreen(30).withRed(50),
        child: Stack(
          children: [
            Column(
              children: [
                Container(
                  width: double.infinity,
                  height: 500.h,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                        'assets/images/details_screen_background.png',
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SizedBox(height: 75.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomButton(title: 'Dark Fantasy'),
                    SizedBox(width: 5.w),
                    CustomButton(title: 'Action'),
                    SizedBox(width: 5.w),
                    CustomButton(title: 'Adventure'),
                  ],
                ),
                SizedBox(height: 23.h),
                Divider(
                  endIndent: 20.w,
                  indent: 20.w,
                  thickness: 1.w,
                  color: AppColors.grey.withAlpha(70),
                ),
                SizedBox(height: 10.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.remove_red_eye_outlined,
                          color: AppColors.whiteBackground,
                        ),
                        SizedBox(width: 5.w),
                        Text(
                          '1.2M views',
                          style: TextStyle(
                            color: AppColors.whiteBackground,
                            fontSize: 16.sp,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.waving_hand_outlined,
                          color: AppColors.whiteBackground,
                        ),
                        SizedBox(width: 5.w),
                        Text(
                          '2k clap',
                          style: TextStyle(
                            color: AppColors.whiteBackground,
                            fontSize: 16.sp,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.movie_filter_outlined,
                          color: AppColors.whiteBackground,
                        ),
                        SizedBox(width: 5.w),
                        Text(
                          '4 Seasons',
                          style: TextStyle(
                            color: AppColors.whiteBackground,
                            fontSize: 16.sp,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 12.h),
                Divider(
                  endIndent: 20.w,
                  indent: 20.w,
                  thickness: 1.w,
                  color: AppColors.grey.withAlpha(70),
                ),
                SizedBox(height: 20.h),
                Expanded(
                  child: Container(
                    height: 40.h,
                    color: AppColors.darkBlue,
                    alignment: Alignment.center,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CustomButton(
                          title: 'Watch Now',
                          width: 163.w,
                          height: 45.h,
                        ),
                        SizedBox(width: 5.w),
                        CustomButton(
                          title: 'Download',
                          width: 163.w,
                          height: 45.h,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Positioned(
              left: 0,
              right: 0,
              bottom: 0,
              top: 190,
              child: Center(child: Image.asset('assets/images/demon.png')),
            ),
          ],
        ),
      ),
    );
  }
}
