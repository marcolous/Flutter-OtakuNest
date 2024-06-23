import 'package:anime_world_tutorial/customs/custom_bottom_navigation_bar.dart';
import 'package:anime_world_tutorial/screens/categories_screen/categories_screen.dart';
import 'package:anime_world_tutorial/screens/home_screen/home_screen_body.dart';
import 'package:anime_world_tutorial/screens/search_screen/search_screen.dart';
import 'package:flutter/material.dart';

enum _SelectedTab { home, search, categories, settings }

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var _selectedTab = _SelectedTab.home;
  int currentIndex = 2;
  void _handleIndexChanged(int i) {
    setState(() {
      _selectedTab = _SelectedTab.values[i];
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
        currentIndex: _SelectedTab.values.indexOf(_selectedTab),
        onTap: _handleIndexChanged,
      ),
    );
  }
}
