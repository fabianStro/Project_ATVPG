// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_application_one/anime_movie_provider.dart';
import 'package:flutter_application_one/broadcastAttribute.dart';
import 'package:flutter_application_one/searchableAnimeList.dart';
import 'package:provider/provider.dart';

// #########################################################################################
// allChannel Widget
// #########################################################################################
class AllAnime extends StatelessWidget {
  AllAnime({super.key, required this.searchQuery});

  final ValueNotifier<String> searchQuery;

  Widget build(BuildContext context) {
    final MyMovies = context.read<AnimeMovieProvider>().getAllAnime();
    return ListView.builder(
      itemCount: MyMovies.length,
      itemBuilder: (context, index) {
        return ListTile(
          leading: GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, '/detail', arguments: MyMovies[index]);
            },
            child: Image.asset(MyMovies[index].imagePath, width: 80, height: 80, fit: BoxFit.cover),
          ), // GestureDetector
          title: Text(MyMovies[index].title),
          subtitle: Text(MyMovies[index].subtitle),
          shape: Border(bottom: BorderSide(color: Colors.white, width: 1.0)),
        ); // ListTile
      },
    ); // ListView.builder
  }
}
