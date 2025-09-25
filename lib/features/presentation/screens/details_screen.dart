// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:mini_app/core/helper/app_colors.dart';
import 'package:mini_app/features/presentation/widgets/custom_button.dart';
import 'package:mini_app/features/presentation/widgets/stat_item.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          color: AppColors.pageBg,
          child: Stack(
            children: [
              Column(
                children: [
                  Container(
                    width: double.infinity,
                    height: 500.h,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(
                          'assets/images/details_screen_background.png',
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: AppColors.darkBlue,
                      borderRadius: BorderRadius.vertical(
                        top: Radius.circular(24.r),
                      ),
                    ),
                    padding: EdgeInsets.fromLTRB(16.w, 60.h, 16.w, 24.h),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CustomButton(title: 'Dark Fantasy', onTap: () {}),
                            SizedBox(width: 8.w),
                            CustomButton(title: 'Action', onTap: () {}),
                            SizedBox(width: 8.w),
                            CustomButton(title: 'Adventure', onTap: () {}),
                          ],
                        ),
                        SizedBox(height: 20.h),
                        Divider(
                          endIndent: 20.w,
                          indent: 20.w,
                          thickness: 1.w,
                          color: AppColors.grey.withAlpha(70),
                        ),
                        SizedBox(height: 16.h),
                        Wrap(
                          alignment: WrapAlignment.spaceEvenly,
                          spacing: 16.w,
                          runSpacing: 10.h,
                          children: const [
                            StatItem(
                              icon: Icons.remove_red_eye_outlined,
                              label: '2.3M views',
                            ),
                            StatItem(
                              icon: Icons.waving_hand_outlined,
                              label: '2k clap',
                            ),
                            StatItem(
                              icon: Icons.movie_filter_outlined,
                              label: '4 Seasons',
                            ),
                          ],
                        ),

                        SizedBox(height: 16.h),
                        Divider(
                          endIndent: 20.w,
                          indent: 20.w,
                          thickness: 1.w,
                          color: AppColors.grey.withAlpha(70),
                        ),
                        SizedBox(height: 16.h),

                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(top: 3.h),
                              child: SizedBox(
                                width: 20.w,
                                height: 20.w,
                                child: Image.asset(
                                  'assets/images/small-logo.png',
                                  fit: BoxFit.contain,
                                ),
                              ),
                            ),
                            SizedBox(width: 10.w),

                            Expanded(
                              child: Text(
                                "Demon Slayer: Kimetsu no Yaiba follows Tanjiro, a kind-hearted boy who becomes a demon slayer after his family is slaughtered and his sister is turned into a demon. Experience breathtaking battles, stunning animation, and an emotional journey of courage and hope.",
                                style: TextStyle(
                                  color: AppColors.offWhite,
                                  fontSize: 12.sp,
                                  height: 1.6,
                                  letterSpacing: 0.1,
                                ),
                                softWrap: true,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 24.h),
                      ],
                    ),
                  ),
                ],
              ),
              Positioned(
                left: 0,
                right: 0,
                top: 500.h - 60.h,
                child: Container(
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 16,
                        color: Colors.black.withOpacity(0.35),
                      ),
                    ],
                  ),
                  child: Image.asset('assets/images/demon.png', height: 120.h),
                ),
              ),
              SafeArea(
                child: Padding(
                  padding: EdgeInsets.only(left: 20.w, top: 8.h),
                  child: GestureDetector(
                    onTap: () => Navigator.pop(context),
                    child: Icon(
                      Icons.arrow_back,
                      color: AppColors.offWhite,
                      size: 22.sp,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        color: AppColors.darkBlue,
        padding: EdgeInsets.fromLTRB(16.w, 12.h, 16.w, 16.h),
        child: Row(
          children: [
            Expanded(
              child: CustomButton(
                icon: Icons.play_circle_rounded,
                title: 'preview',
                width: double.infinity,
                height: 48.h,
                onTap: () {},
              ),
            ),
            SizedBox(width: 12.w),
            Expanded(
              child: CustomButton(
                icon: Icons.remove_red_eye,
                title: 'Watch Now',
                width: double.infinity,
                height: 48.h,
                color: AppColors.secondaryBlue,
                onTap: () {},
              ),
            ),
          ],
        ),
      ),
    );
  }
}
