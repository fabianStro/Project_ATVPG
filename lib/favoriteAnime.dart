// ignore_for_file: file_names, non_constant_identifier_names, prefer_const_constructors_in_immutables, annotate_overrides

import 'package:flutter/material.dart';
import 'package:flutter_application_one/anime_movie_provider.dart';
import 'package:provider/provider.dart';

/* import 'package:flutter_application_one/broadcastAttribute.dart';
import 'package:flutter_application_one/searchableAnimeList.dart'; */

// #########################################################################################
// Favorite Widget
// #########################################################################################
class FavoriteAnime extends StatelessWidget {
  FavoriteAnime({super.key, required this.searchQuery});

  final ValueNotifier<String> searchQuery;

  @override
  Widget build(BuildContext context) {
    return Consumer<AnimeMovieProvider>(
      builder: (context, value, child) {
        final myMovies = value.getAllFavoritesWithSearchQuery();
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
              shape: Border(bottom: BorderSide(color: Colors.white, width: 1.0)),
            ); // ListTile
          },
        );
      },
    );
  }
}
