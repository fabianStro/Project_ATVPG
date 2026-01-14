// ignore_for_file: file_names, camel_case_types

import 'package:flutter/material.dart';
// Service imports
import 'package:flutter_application_one/services/movieProvider_Service.dart';
// Provider package
import 'package:provider/provider.dart';

class SearchFunction extends StatefulWidget {
  const SearchFunction({super.key, required ValueNotifier<String> searchQuery});

  @override
  State<SearchFunction> createState() => _SearchFunctionState();
}

class _SearchFunctionState extends State<SearchFunction> {
  final TextEditingController _clearController = TextEditingController();

  @override
  void dispose() {
    _clearController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 110,
      width: 380,
      left: 15.0,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30.0),
          color: Colors.black,
          border: Border.all(color: Colors.white),
        ), // BoxDecoration
        height: 50,
        child: TextFormField(
          controller: _clearController,
          onChanged: (value) {
            context.read<AnimeMovieProvider>().filterList(value);
          },
          decoration: InputDecoration(
            hintText: 'Search anime...',
            hintStyle: TextStyle(color: Colors.white, fontSize: 18.0),
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
