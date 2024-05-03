import 'package:around_egypt/pages/details_page.dart';
import 'package:flutter/material.dart';
//import 'package:my_project/detail.dart';

class CustomSearchDelegate extends SearchDelegate<String> {
  // Dummy list
  final List<String> searchList = [
    "Egyption Museum",
    " Grand Egyption Museum",
    "Museum Of Islamic Art",
    "Salah Eldeen Castel",
    "Scores Sports Bar & Resturant",
    "Opia Cairo",
    "Osteria Resturant",
    "Egyption Breakfast Food",
    "Egyption Koshari",
    "Pyramids Hotel",
    "Fermont Hotel",
    "Shertaton Hotel",
    "Visit Kahn ElKalily",
    "Visit Elmuaiz Street ",
    "Visit Elmuaiz Street ",
    "Visit Elmuaiz Street ",
  ];

  // These methods are mandatory you cannot skip them.

  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
        color: Colors.black,
        icon: const Icon(Icons.clear),
        onPressed: () {
          query = '';
          // When pressed here the query will be cleared from the search bar.
        },
      ),
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
      color: Colors.black,
      icon: const Icon(Icons.arrow_back),
      onPressed: () => Navigator.of(context).pop(),
      // Exit from the search screen.
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    final List<String> searchResults = searchList
        .where((item) => item.toLowerCase().contains(query.toLowerCase()))
        .toList();
    if (searchResults.isEmpty) {
      return Center(
        child: Text("No results found for '$query'"),
      );
    }

    return ListView.builder(
      itemCount: searchResults.length,
      itemBuilder: (context, index) {
        return ListTile(
          title: Text(searchResults[index]),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const DetailsPage(),
              ),
            );
          },
        );
      },
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    final List<String> suggestionList = query.isEmpty
        ? []
        : searchList
            .where((item) => item.toLowerCase().contains(query.toLowerCase()))
            .toList();

    return ListView.builder(
      itemCount: suggestionList.length,
      itemBuilder: (context, index) {
        return ListTile(
          title: Text(suggestionList[index]),
          onTap: () {
            query = suggestionList[index];
            showResults(context);

            // Show the search results based on the selected suggestion.
          },
        );
      },
    );
  }
}
