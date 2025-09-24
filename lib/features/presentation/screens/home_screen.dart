import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mini_app/core/helper/app_constants.dart';
import 'package:mini_app/core/helper/app_styles.dart';
import 'package:mini_app/features/presentation/widgets/catalog_section.dart';
import 'package:mini_app/features/presentation/widgets/custom_bottom_navbar.dart';
import 'package:mini_app/features/presentation/widgets/poster_widget.dart';
import 'package:mini_app/features/presentation/widgets/top_characters_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        // height: 1000.h,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Color(0xFFDDE2FF), Color(0xFFf9f8fd)],
          ),
        ),
        child: Stack(
          children: [
            Positioned(
              top: -130,
              right: -180,
              child: Image.asset(
                'assets/images/Star1.png',
                width: 430,
                fit: BoxFit.cover,
              ),
            ),
            SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 14),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 40.h),
                    Text(
                      'Where Anime Comes Alive',
                      style: AppStyles.heaLineText,
                    ),
                    SizedBox(height: 24),
                    CategoriesSection(categories: AppConstants.categories),
                    SizedBox(height: 24),
                    PosterWidget(),
                    SizedBox(height: 24),
                    Text('Top Characters', style: AppStyles.heaLineText),
                    SizedBox(height: 24),
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
