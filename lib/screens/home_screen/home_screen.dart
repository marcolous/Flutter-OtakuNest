import 'package:anime_world_tutorial/customs/custom_bottom_navigation_bar.dart';
import 'package:anime_world_tutorial/screens/home_screen/home_screen_body.dart';
import 'package:flutter/material.dart';

enum _SelectedTab { home, search, categories, settings }

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var _selectedTab = _SelectedTab.home;

  void _handleIndexChanged(int i) {
    setState(() {
      _selectedTab = _SelectedTab.values[i];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      extendBody: true,
      body: const HomeScreenBody(),
      bottomNavigationBar: CustomBottomNavigationBar(
        currentIndex: _SelectedTab.values.indexOf(_selectedTab),
        onTap: _handleIndexChanged,
      ),
    );
  }
}
