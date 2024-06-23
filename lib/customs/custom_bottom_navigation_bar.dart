import 'package:crystal_navigation_bar/crystal_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  const CustomBottomNavigationBar(
      {super.key, required this.onTap, required this.currentIndex});
  final dynamic Function(int) onTap;
  final int currentIndex;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
          horizontal: MediaQuery.sizeOf(context).width * 0.1),
      child: CrystalNavigationBar(
        splashColor: Colors.transparent,
        currentIndex: currentIndex,
        height: 10,
        unselectedItemColor: Colors.white70,
        backgroundColor: Colors.white.withOpacity(0.1),
        onTap: onTap,
        items: [
          /// Home
          CrystalNavigationBarItem(
            icon: IconlyBold.home,
            unselectedIcon: IconlyLight.home,
            selectedColor: Colors.white,
          ),

          /// Search
          CrystalNavigationBarItem(
            icon: IconlyBold.search,
            unselectedIcon: IconlyLight.search,
            selectedColor: Colors.white,
          ),

          /// Categories
          CrystalNavigationBarItem(
            icon: IconlyBold.category,
            unselectedIcon: IconlyLight.category,
            selectedColor: Colors.white,
          ),
        ],
      ),
    );
  }
}
