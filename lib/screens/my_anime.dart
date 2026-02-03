// ignore_for_file: file_names, non_constant_identifier_names, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';
// Provider package
import 'package:provider/provider.dart';
// Service imports
import '../services/movieProvider_service.dart';

// #########################################################################################
// MyChannel Widget
// #########################################################################################
class MyAnime extends StatelessWidget {
  MyAnime({super.key, required this.searchQuery});

  final ValueNotifier<String> searchQuery;

  @override
  Widget build(BuildContext context) {
    return Consumer<AnimeMovieProvider>(
      builder: (context, value, child) {
        final myMovies = value.getAllMyAnimeWithSearchQuery();
        return ListView.builder(
          itemCount: myMovies.length,
          itemBuilder: (context, index) {
            return ListTile(
              leading: GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, '/detail', arguments: myMovies[index]);
                },
                child: Image.asset(myMovies[index].imagePath, width: 80, height: 80, fit: BoxFit.cover),
              ), // GestureDetector
              title: Text(myMovies[index].title),
              subtitle: Text(myMovies[index].genre),
              shape: Border(bottom: BorderSide(color: Theme.of(context).dividerColor, width: 1.0)),
            ); // ListTile
          },
        ); // ListView.builder
      },
    ); // Consumer
  }
}
