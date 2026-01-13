// ignore_for_file: unnecessary_string_interpolations, unnecessary_brace_in_string_interps

import 'package:flutter/material.dart';
import 'package:flutter_application_one/services/movieProvider_Service.dart';
import 'package:flutter_application_one/models/broadcastAttribute.dart';
import 'package:flutter_application_one/screens/share.dart';
import 'package:provider/provider.dart';

class DetailWidget extends StatefulWidget {
  const DetailWidget({super.key});

  @override
  State<DetailWidget> createState() => _DetailWidgetState();
}

class _DetailWidgetState extends State<DetailWidget> {
  final OverlayPortalController _overlayShareController = OverlayPortalController();

  @override
  Widget build(BuildContext context) {
    final BroadcastAttribute passed = ModalRoute.of(context)!.settings.arguments as BroadcastAttribute;

    final provider = context.watch<AnimeMovieProvider>();
    final current = provider.broadcastData.where((e) => e.title == passed.title).isNotEmpty
        ? provider.broadcastData.firstWhere((e) => e.title == passed.title)
        : passed;

    String pictureAdress = current.imagePath,
        pictureAdressString = pictureAdress,
        titleString = current.title,
        genre = current.genre,
        descriptionString = current.description;

    String broadcastingStations = 'Pro7 Maxx, Pro7 Fun, RTL II, Animax';
    String streamingPlatform = 'Crunchyroll, Netflix, Amazon Prime Video';

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(),
        body: SingleChildScrollView(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.only(right: 16.0, left: 16.0),
              child: Column(
                children: [
                  Image.asset(pictureAdressString, width: 200, height: 180, fit: BoxFit.cover), // Image.asset
                  const Divider(height: 30.0, thickness: 2, indent: 0, endIndent: 0, color: Colors.white), // Divider
                  Center(
                    child: Text(
                      titleString,
                      style: TextStyle(color: Colors.white, fontSize: 20.0, fontWeight: FontWeight.bold), // TextStyle
                    ), // Text
                  ), // Center
                  const Divider(height: 30.0, thickness: 2, indent: 0, endIndent: 0, color: Colors.white), // Divider
                  Text(
                    'Genre',
                    style: TextStyle(color: Colors.white, fontSize: 16.0, fontWeight: FontWeight.bold), // TextStyle
                  ), // Text
                  Center(
                    child: Text(genre, style: TextStyle(color: Colors.white, fontSize: 16.0)), // Text
                  ), // Center
                  const Divider(height: 30.0, thickness: 2, indent: 0, endIndent: 0, color: Colors.white), // Divider
                  Center(
                    child: Text(
                      'Broadcasting Stations',
                      style: TextStyle(color: Colors.white, fontSize: 16.0, fontWeight: FontWeight.bold), // TextStyle
                    ), // Text
                  ), // Center
                  Text('${broadcastingStations}', style: TextStyle(color: Colors.white, fontSize: 16.0)), // Text
                  Center(
                    child: Text(
                      '\nStreaming Platform',
                      style: TextStyle(color: Colors.white, fontSize: 16.0, fontWeight: FontWeight.bold), // TextStyle
                    ), // Text
                  ), // Center
                  Text('${streamingPlatform}', style: TextStyle(color: Colors.white, fontSize: 16.0)), // Text
                  const Divider(height: 30.0, thickness: 2, indent: 0, endIndent: 0, color: Colors.white), // Divider
                  Text(descriptionString, style: TextStyle(color: Colors.white, fontSize: 16.0)), // Text
                  const Divider(height: 15.0, thickness: 2, indent: 0, endIndent: 0, color: Colors.white), // Divider
                  ListTile(
                    trailing: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        GestureDetector(
                          onTap: _overlayShareController.toggle,
                          child: OverlayPortal(
                            controller: _overlayShareController,
                            overlayChildBuilder: (BuildContext context) {
                              return Positioned(
                                top: 110,
                                width: 390,
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(30.0),
                                    color: Colors.white,
                                  ), // BoxDecoration
                                  height: 400.0,
                                  child: ShareWidget(title: titleString, picture: pictureAdressString), // ShareWidget
                                ), // Container
                              ); // Positioned
                            },
                            child: Padding(
                              padding: EdgeInsets.only(top: 0.0, right: 10.0),
                              child: Icon(Icons.share_outlined, color: Colors.white, size: 35.0), // Icon
                            ), // Padding
                          ), // OverlayPortal
                        ), // GestureDetector
                        IconButton(
                          onPressed: () async {
                            await context.read<AnimeMovieProvider>().toggleMyAnime(titleString);
                          },
                          icon: Icon(
                            Icons.bookmark_border_outlined,
                            size: 35,
                            color: current.isMyAnime ? Colors.yellow : Colors.white,
                          ), // Icon
                        ), // IconButton
                        IconButton(
                          onPressed: () async {
                            await context.read<AnimeMovieProvider>().toggleFavorite(titleString);
                          },
                          icon: Icon(
                            Icons.star_border_outlined,
                            size: 35,
                            color: current.isFavorite ? Colors.yellow : Colors.white,
                          ), // Icon
                        ), // IconButton
                      ], // children
                    ), // Row
                  ), // ListTile
                ], // children
              ), // Column
            ), // Padding
          ), // Center
        ), // SingleChildScrollView
      ), // Scaffold
    ); // SafeArea
  }
}
