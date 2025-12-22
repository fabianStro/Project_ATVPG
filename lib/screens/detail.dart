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
  bool isPressedStar = false;
  bool isPressedBoomark = false;
  final OverlayPortalController _overlayShareController = OverlayPortalController();

  @override
  Widget build(BuildContext context) {
    final BroadcastAttribute index = ModalRoute.of(context)!.settings.arguments as BroadcastAttribute;
    String pictureAdress = index.imagePath,
        pictureAdressString = pictureAdress,
        titleString = index.title,
        genre = index.genre,
        descriptionString = index.description;

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
                  Image.asset(pictureAdressString, width: 200, height: 180, fit: BoxFit.cover),
                  const Divider(height: 30.0, thickness: 2, indent: 0, endIndent: 0, color: Colors.white),
                  Center(
                    child: Text(titleString, style: TextStyle(color: Colors.white, fontSize: 16.0)),
                  ), // Center
                  const Divider(height: 30.0, thickness: 2, indent: 0, endIndent: 0, color: Colors.white),
                  Text(
                    'Genre',
                    style: TextStyle(color: Colors.white, fontSize: 16.0, fontWeight: FontWeight.bold),
                  ),
                  Center(
                    child: Text(genre, style: TextStyle(color: Colors.white, fontSize: 16.0)),
                  ), // Center
                  const Divider(height: 30.0, thickness: 2, indent: 0, endIndent: 0, color: Colors.white),
                  Center(
                    child: Text(
                      'Broadcasting Stations',
                      style: TextStyle(color: Colors.white, fontSize: 16.0, fontWeight: FontWeight.bold),
                    ), // Text
                  ), // Center
                  Text('${broadcastingStations}', style: TextStyle(color: Colors.white, fontSize: 16.0)),
                  Center(
                    child: Text(
                      '\nStreaming Platform',
                      style: TextStyle(color: Colors.white, fontSize: 16.0, fontWeight: FontWeight.bold),
                    ), // Text
                  ), // Center
                  Text('${streamingPlatform}', style: TextStyle(color: Colors.white, fontSize: 16.0)),
                  const Divider(height: 30.0, thickness: 2, indent: 0, endIndent: 0, color: Colors.white),
                  Text(descriptionString, style: TextStyle(color: Colors.white, fontSize: 16.0)),
                  const Divider(height: 15.0, thickness: 2, indent: 0, endIndent: 0, color: Colors.white),
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
                                  child: ShareWidget(title: titleString, picture: pictureAdressString),
                                ), // Container
                              ); // Positioned
                            },
                            child: Padding(
                              padding: EdgeInsets.only(top: 0.0, right: 10.0),
                              child: Icon(Icons.share_outlined, color: Colors.white, size: 35.0),
                            ), // Padding
                          ), // OverlayPortal
                        ), // GestureDetector
                        IconButton(
                          onPressed: () {
                            context.read<AnimeMovieProvider>().toggleMyAnime(index.title);
                            setState(() {
                              isPressedBoomark = !isPressedBoomark;
                            });
                          },
                          icon: Icon(
                            Icons.bookmark_border_outlined,
                            size: 35,
                            color: isPressedBoomark ? Colors.yellow : Colors.white,
                          ), // Icon
                        ), // IconButton
                        IconButton(
                          onPressed: () {
                            context.read<AnimeMovieProvider>().toggleFavorite(index.title);
                            setState(() {
                              isPressedStar = !isPressedStar;
                            });
                          },
                          icon: Icon(
                            Icons.star_border_outlined,
                            size: 35,
                            color: isPressedStar ? Colors.yellow : Colors.white,
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
