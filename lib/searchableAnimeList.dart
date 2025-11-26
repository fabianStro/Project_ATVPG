// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_application_one/broadcastAttribute.dart';

class SearchableAnimeList extends StatefulWidget {
  final List<BroadcastAttribute> _allData;
  final ValueNotifier<String> _searchQuery;

  const SearchableAnimeList({
    required List<BroadcastAttribute> allData,
    required ValueNotifier<String> searchQuery,
    super.key,
  }) : _searchQuery = searchQuery,
       _allData = allData;

  @override
  State<SearchableAnimeList> createState() => _SearchableAnimeListState();
}

class _SearchableAnimeListState extends State<SearchableAnimeList> {
  late List<BroadcastAttribute> filteredData;

  @override
  void initState() {
    super.initState();
    filteredData = widget._allData;
    widget._searchQuery.addListener(_updateFilter);
  }

  @override
  void dispose() {
    widget._searchQuery.removeListener(_updateFilter);
    super.dispose();
  }

  void _updateFilter() {
    setState(() {
      final query = widget._searchQuery.value.toLowerCase();
      if (query.isEmpty) {
        filteredData = widget._allData;
      } else {
        filteredData = widget._allData
            .where((anime) => anime.title.toLowerCase().contains(query) || anime.subtitle.toLowerCase().contains(query))
            .toList();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: filteredData.length,
      itemBuilder: (context, index) {
        return ListTile(
          leading: GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, '/detail', arguments: filteredData[index]);
            },
            child: Image.asset(filteredData[index].imagePath, width: 80, height: 80, fit: BoxFit.cover),
          ), // GestureDetector
          title: Text(filteredData[index].title),
          subtitle: Text(filteredData[index].subtitle),
          shape: Border(bottom: BorderSide(color: Colors.white, width: 1.0)),
        ); // ListTile
      },
    ); // ListView.builder
  }
}
