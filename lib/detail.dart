//import 'package:flutter_application_one/allChannels.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_one/anime_movie_provider.dart';
import 'package:flutter_application_one/broadcastAttribute.dart';
import 'package:flutter_application_one/share.dart';
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
    String pictureAdress = Error.safeToString(index.imagePath),
        pictureAdressString = pictureAdress.substring(1, pictureAdress.length - 1),
        titleString = Error.safeToString(index.title),
        subtitleString = Error.safeToString(index.subtitle),
        descriptionString = Error.safeToString(index.description);

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(),
        body: SingleChildScrollView(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.only(right: 16, left: 16),
              child: Column(
                children: [
                  Image.asset(pictureAdressString, width: 200, height: 180, fit: BoxFit.cover),
                  const Divider(height: 30, thickness: 2, indent: 0, endIndent: 0, color: Colors.white),
                  Text(titleString, style: TextStyle(color: Colors.white, fontSize: 16)),
                  const Divider(height: 30, thickness: 2, indent: 0, endIndent: 0, color: Colors.white),
                  Text(subtitleString, style: TextStyle(color: Colors.white, fontSize: 16)),
                  const Divider(height: 30, thickness: 2, indent: 0, endIndent: 0, color: Colors.white),
                  Text(descriptionString, style: TextStyle(color: Colors.white, fontSize: 16)),
                  const Divider(height: 15, thickness: 2, indent: 0, endIndent: 0, color: Colors.white),
                  ListTile(
                    // trailing: Icon(Icons.star_border_outlined, color: Colors.white, size: 35),
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
