import 'package:flutter/material.dart';

class SearchFunction extends SearchDelegate {
  List username = [
    "mina",
    "omer",
    "shady",
    "george",
    "ahmed",
    "ammar",
    "kiro",
    "fady",
    "emad",
    "adel",
    "zizo",
    "martin",
    "remon",
    "nabil",
    "assad",
    "ramez",
    "mark",
  ];
  List? filterList;
  late int x;
  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
        onPressed: () {
          query = "";
        },
        icon: const Icon(Icons.close),
      ),
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
      onPressed: () {
        close(context, null);
      },
      icon: const Icon(Icons.arrow_back),
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    return Center(child: Text("Result $filterList"));
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    if (query == "") {
      return ListView.builder(
        itemCount: username.length,
        itemBuilder: (context, i) {
          return InkWell(
            onTap: () {
              showResults(context);
            },
            child: Card(
              child: Padding(
                padding: const EdgeInsets.all(12),
                child: Text(
                  "${username[i]}",
                  style: const TextStyle(fontSize: 18),
                ),
              ),
            ),
          );
        },
      );
    } else {
      filterList =
          username.where((element) => element.contains(query)).toList();
      return ListView.builder(
        itemCount: filterList!.length,
        itemBuilder: (context, i) {
          return InkWell(
            onTap: () {
              showResults(context);
            },
            child: Card(
              child: Padding(
                padding: const EdgeInsets.all(12),
                child: Text(
                  "${filterList![i]}",
                  style: const TextStyle(fontSize: 18),
                ),
              ),
            ),
          );
        },
      );
    }
  }
}
