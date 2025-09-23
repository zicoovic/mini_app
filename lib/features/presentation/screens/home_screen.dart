import 'package:flutter/material.dart';
import 'package:mini_app/core/helper/app_styles.dart';
import 'package:mini_app/features/presentation/widgets/catalog_section.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<String> catalog = [
    "All",
    "Action",
    "Trending",
    "New Release",
    "Top Rated",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 20),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Text('Where Anime Comes Alive', style: AppStyles.heaLineText),
                SizedBox(height: 24),
                CategoriesSection(categories: catalog),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
