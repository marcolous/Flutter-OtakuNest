import 'package:anim_search_bar/anim_search_bar.dart';
import 'package:anime_world_tutorial/api/get_anime_by_search_api.dart';
import 'package:anime_world_tutorial/common/styles/text_styles.dart';
import 'package:anime_world_tutorial/models/anime.dart';
import 'package:anime_world_tutorial/screens/search_screen/search_result_view.dart';
import 'package:flutter/material.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  TextEditingController editingController = TextEditingController();
  Future<Iterable<Anime>>? _searchResults;
  bool isDark = false;

  void _searchAnime(String query) {
    setState(() {
      _searchResults = getAnimeBySearch(query: query);
    });
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Expanded(
              child: _searchResults == null
                  ? Center(
                      child: Text(
                      'Search for an anime...',
                      style: TextStyles.styles15,
                    ))
                  : FutureBuilder<Iterable<Anime>>(
                      future: _searchResults,
                      builder: (context, snapshot) {
                        if (snapshot.connectionState ==
                            ConnectionState.waiting) {
                          return const Center(
                            child: CircularProgressIndicator(),
                          );
                        } else if (snapshot.hasError) {
                          return Center(
                            child: Text(
                              'Can\'t fine an anime',
                              style: TextStyles.styles15,
                            ),
                          );
                        } else {
                          final animes = snapshot.data ?? [];
                          return SearchResultsView(
                            animes: animes,
                            isDark: isDark,
                          );
                        }
                      },
                    ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 100, right: 15, left: 15),
              child: Align(
                alignment: Alignment.topRight,
                child: CircleAvatar(
                  radius: 23,
                  backgroundColor: isDark ? Colors.white : Colors.black,
                  child: TextButton(
                    onPressed: () {
                      setState(() {
                        isDark = !isDark;
                      });
                    },
                    child: Text(
                      'A',
                      style: TextStyles.styles20.copyWith(
                          color: isDark ? Colors.black : Colors.white),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20, right: 15, left: 15),
              child: AnimSearchBar(
                width: width,
                textController: editingController,
                onSuffixTap: () {},
                onSubmitted: (value) {
                  setState(() {
                    _searchAnime(value);
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
