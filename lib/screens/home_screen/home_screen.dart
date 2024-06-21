import 'package:anim_search_bar/anim_search_bar.dart';
import 'package:anime_world_tutorial/common/styles/text_styles.dart';
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
  int currentIndex = 1;
  void _handleIndexChanged(int i) {
    setState(() {
      _selectedTab = _SelectedTab.values[i];
    });
  }

  final screens = const [
    HomeScreenBody(),
    SearchScreen(),
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

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  TextEditingController editingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 20, right: 15, left: 15),
              child: AnimSearchBar(
                width: width,
                textController: editingController,
                onSuffixTap: () {},
                onSubmitted: (value) {
                  setState(() {
                    editingController.clear();
                  });
                },
                
                closeSearchOnSuffixTap: true,
                autoFocus: true,
                style: TextStyles.styles18.copyWith(color: Colors.black),
                helpText: 'Search...',
                rtl: true,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
