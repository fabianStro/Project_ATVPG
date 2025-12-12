// ignore_for_file: file_names, camel_case_types

import 'package:flutter/material.dart';
import 'package:flutter_application_one/anime_movie_provider.dart';
import 'package:provider/provider.dart';

class searchFunction extends StatelessWidget {
  searchFunction({super.key, required this.searchQuery});

  final ValueNotifier<String> searchQuery;
  final TextEditingController _clearController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 110,
      width: 380,
      left: 15.0,
      child: Container(
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(30.0), color: Colors.grey),
        height: 50,
        child: TextFormField(
          controller: _clearController,
          onChanged: (value) {
            context.read<AnimeMovieProvider>().filterList(value);
          },
          decoration: InputDecoration(
            hintText: 'Search anime...',
            hintStyle: TextStyle(color: Colors.black, fontSize: 16.0),
            prefixIcon: Icon(Icons.search, color: Colors.white),
            suffixIcon: GestureDetector(
              onTap: () {
                _clearController.clear();
                context.read<AnimeMovieProvider>().filterList('');
              },
              child: Icon(Icons.clear, color: Colors.white),
            ), // GestureDetector
            border: InputBorder.none,
            contentPadding: EdgeInsets.symmetric(vertical: 15.0),
          ), // InputDecoration
          style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.normal, color: Colors.white),
        ), // TextFormField
      ), // Container
    ); // Positioned
  }
}
