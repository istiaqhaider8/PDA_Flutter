import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:personal_document_assistant/common/theme_helper.dart';
import 'package:personal_document_assistant/pages/profiles_page_active.dart';
import 'package:personal_document_assistant/pages/recent_page_active.dart';
import 'package:personal_document_assistant/pages/test.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

import 'category_page_active.dart';
import 'home_page_active.dart';

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _HomePageState();
  }
}

class _HomePageState extends State<HomePage> {
  var _currentIndex = 0;
  var appBarText = 'Home';

  Key _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return commonWidget(
      child: Scaffold(
        appBar: AppBar(
            title: Text(appBarText),
            elevation: 0,
            centerTitle: true,
            actions: [
              if (_currentIndex == 1) searchBar(context),
              if (_currentIndex == 2) searchBar(context),
              if (_currentIndex == 3) searchBar(context),
            ] //searchBar(context, false),
            ),
        body: Column(
          children: [
            if (_currentIndex == 0) HomePageApq(),
            if (_currentIndex == 1) ProfilesList(),
            if (_currentIndex == 2) CategoryPage(),
            if (_currentIndex == 3) RecentPageA(),
          ],
        ),
        bottomNavigationBar: SalomonBottomBar(
          currentIndex: _currentIndex,
          onTap: (i) => setState(() {
            _currentIndex = i;
            if (_currentIndex == 0) appBarText = "Home Page";
            if (_currentIndex == 1) appBarText = "Profile Page";
            if (_currentIndex == 2) appBarText = "Category Page";
            if (_currentIndex == 3) appBarText = "Recent Page";
          }),
          items: [
            /// Home
            SalomonBottomBarItem(
              icon: Icon(Icons.home),
              title: Text("Home"),
              selectedColor: Color(0xff10288D),
            ),

            /// Profile
            SalomonBottomBarItem(
              icon: Icon(Icons.person),
              title: Text("Profile"),
              selectedColor: Color(0xff10288D),
            ),

            /// Likes
            SalomonBottomBarItem(
              icon: Icon(Icons.category),
              title: Text("Category"),
              selectedColor: Color(0xff10288D),
            ),

            /// Search
            SalomonBottomBarItem(
              icon: Icon(Icons.recent_actors_outlined),
              title: Text("Recent"),
              selectedColor: Color(0xff10288D),
            ),
          ],
        ),
      ),
    );
  }

  IconButton searchBar(BuildContext context) {
    return IconButton(
      icon: const Icon(Icons.search),
      onPressed: () {
        showSearch(
          context: context,
          delegate: MySearchDelegate(),
        );
      },
    );
  }
}

class MySearchDelegate extends SearchDelegate {
  List<String> searchResults = [
    'Brazil',
    'China',
    'Brazil',
    'India',
    'USA',
  ];

  @override
  Widget? buildLeading(BuildContext context) => IconButton(
        icon: const Icon(Icons.arrow_back),
        onPressed: () => close(context, null),
      );

  @override
  List<Widget>? buildActions(BuildContext context) => [
        IconButton(
          icon: const Icon(Icons.clear),
          onPressed: () {
            if (query.isEmpty) {
              close(context, null);
            } else {
              query = '';
            }
          },
        ),
      ];

  @override
  Widget buildResults(BuildContext context) => Center(
        child: Text(
          query,
          style: const TextStyle(fontSize: 64, fontWeight: FontWeight.bold),
        ),
      );

  @override
  Widget buildSuggestions(BuildContext context) {
    List<String> suggestions = searchResults.where((searchResult) {
      final result = searchResult.toLowerCase();
      final input = query.toLowerCase();

      return result.contains(input);
    }).toList();

    return ListView.builder(
      itemCount: suggestions.length,
      itemBuilder: (context, index) {
        final suggestion = suggestions[index];

        return ListTile(
          title: Text(suggestion),
          onTap: () {
            query = suggestion;

            showResults(context);
          },
        );
      },
    );
  }
}
