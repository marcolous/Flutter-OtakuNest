import 'package:anime_world_tutorial/customs/custom_bottom_navigation_bar.dart';
import 'package:anime_world_tutorial/screens/categories_screen/categories_screen.dart';
import 'package:anime_world_tutorial/screens/home_screen/home_screen_body.dart';
import 'package:anime_world_tutorial/screens/search_screen/search_screen.dart';
import 'package:flutter/material.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentIndex = 0;
  void _handleIndexChanged(int i) {
    setState(() {
      currentIndex = i;
    });
  }

  final screens = const [
    HomeScreenBody(),
    SearchScreen(),
    CategoriesScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: screens[currentIndex],
      bottomNavigationBar: CustomBottomNavigationBar(
        currentIndex: currentIndex, 
        onTap: _handleIndexChanged,
      ),
    );
  }
}
