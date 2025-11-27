// ignore_for_file: file_names, camel_case_types

import 'package:flutter/material.dart';

class searchFunction extends StatelessWidget {
  const searchFunction({super.key, required this.searchQuery});

  final ValueNotifier<String> searchQuery;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 110,
      width: 380,
      left: 15.0,
      //right: 20.0,
      child: Container(
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(30.0), color: Colors.grey),
        height: 50,
        child: TextFormField(
          onChanged: (value) {
            searchQuery.value = value;
          },
          decoration: InputDecoration(
            hintText: 'Search anime...',
            hintStyle: TextStyle(color: Colors.black, fontSize: 14.0),
            prefixIcon: Icon(Icons.search, color: Colors.white),
            suffixIcon: GestureDetector(
              onTap: () {
                searchQuery.value = ' ';
              },
              child: Icon(Icons.clear, color: Colors.white),
            ), // GestureDetector
            border: InputBorder.none,
            contentPadding: EdgeInsets.symmetric(vertical: 15.0),
          ), // InputDecoration
          style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.normal, color: Colors.white),
        ), // TextFormField
      ), // Container
    );
  }
}
