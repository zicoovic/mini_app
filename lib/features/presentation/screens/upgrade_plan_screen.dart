import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:mini_app/core/helper/app_colors.dart';
import 'package:mini_app/core/helper/app_styles.dart';
import 'package:mini_app/core/theme/container_decorations.dart';
import 'package:mini_app/features/presentation/screens/home_screen.dart';
import 'package:mini_app/features/presentation/widgets/custom_button.dart';
import 'package:mini_app/features/presentation/widgets/plan_choice_card.dart';

class UpgradePlanScreen extends StatefulWidget {
  const UpgradePlanScreen({super.key});

  @override
  State<UpgradePlanScreen> createState() => _UpgradePlanScreenState();
}

class _UpgradePlanScreenState extends State<UpgradePlanScreen> {
  int selectedIndex = -1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: ContainerDecorations.backgroundGradient,
        child: Stack(
          children: [
            Positioned(
              top: -130.h,
              left: -180.w,
              child: Image.asset(
                'assets/images/Star2.png',
                width: 430.w,
                fit: BoxFit.cover,
              ),
            ),
            Positioned(
              top: 50.h,
              bottom: 50.h,
              left: 200.w,
              child: Image.asset('assets/images/Star1.png', width: 430.w),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 30.w),
              child: SafeArea(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      SizedBox(height: 60.h),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text('Upgrade Plan', style: AppStyles.heaLineText),
                          SizedBox(width: 50.w),
                          Container(
                            width: 27.w,
                            height: 27.w,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50.r),
                              color: Colors.white,
                            ),
                            child: Icon(
                              Icons.close,
                              size: 18.r,
                              color: AppColors.darkBlue,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 40.h),
                      Image.asset(
                        'assets/images/RocketBoy1.png',
                        height: 300.h,
                      ),
                      SizedBox(height: 4.h),
                      Text(
                        "Seamless Anime Experience, Ad-Free.",
                        textAlign: TextAlign.center,
                        style: AppStyles.heaLineText.copyWith(fontSize: 30.sp),
                      ),
                      SizedBox(height: 4.h),
                      Text(
                        "Enjoy unlimited anime streaming without interruptions.",
                        textAlign: TextAlign.center,
                        style: AppStyles.heaLineText.copyWith(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w500,
                          color: AppColors.grey,
                        ),
                      ),
                      SizedBox(height: 40.h),
                      PlanChoiceCard(
                        title: 'Monthly',
                        price: '\$5 USD',
                        period: '/ month',
                        subtitle: 'Includes Family Sharing',
                        imageAsset: 'assets/images/Files&Folders31.png',
                        selected: selectedIndex == 0,
                        onChanged: (_) => setState(() => selectedIndex = 0),
                      ),
                      SizedBox(height: 16.h),
                      PlanChoiceCard(
                        title: 'Yearly',
                        price: '\$49 USD',
                        period: '/ year',
                        subtitle: 'Best value – 2 months off',
                        imageAsset: 'assets/images/Files&Folders31.png',
                        selected: selectedIndex == 1,
                        onChanged: (_) => setState(() => selectedIndex = 1),
                      ),
                      SizedBox(height: 40.h),
                      CustomButton(
                        title: 'Upgrade Now',
                        textColor: Colors.white,
                        height: 40.h,
                        width: 342.w,
                        color: AppColors.primaryBlue,
                        onTap: () {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const HomeScreen(),
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
