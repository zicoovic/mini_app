import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mini_app/core/helper/app_constants.dart';
import 'package:mini_app/core/helper/app_styles.dart';
import 'package:mini_app/core/theme/container_decorations.dart';
import 'package:mini_app/features/presentation/screens/upgrade_plan_screen.dart';
import 'package:mini_app/features/presentation/widgets/catalog_section.dart';
import 'package:mini_app/features/presentation/widgets/custom_bottom_navbar.dart';
import 'package:mini_app/features/presentation/widgets/poster_widget.dart';
import 'package:mini_app/features/presentation/widgets/top_characters_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (_) => const UpgradePlanScreen()),
          );
        },
        icon: const Icon(Icons.workspace_premium_outlined),
        label: const Text('Upgrade'),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,

      body: Container(
        decoration: ContainerDecorations.backgroundGradient,
        child: Stack(
          children: [
            Positioned(
              top: -130.h,
              right: -180.w,
              child: Image.asset(
                'assets/images/Star1.png',
                width: 430.w,
                fit: BoxFit.cover,
              ),
            ),
            SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 14.h),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 40.h),
                    Text(
                      'Where Anime Comes Alive',
                      style: AppStyles.heaLineText,
                    ),
                    SizedBox(height: 24.h),
                    CategoriesSection(categories: AppConstants.categories),
                    SizedBox(height: 24.h),
                    PosterWidget(),
                    SizedBox(height: 24.h),
                    Text('Top Characters', style: AppStyles.heaLineText),
                    SizedBox(height: 24.h),
                    SizedBox(height: 200.h, child: TopCharactersWidget()),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: CustomNavBar(),
    );
  }
}
