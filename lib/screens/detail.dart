/* // ignore_for_file: unnecessary_string_interpolations, unnecessary_brace_in_string_interps

import 'package:flutter/material.dart';
import 'package:flutter_application_one/services/movieProvider_service.dart';
import 'package:flutter_application_one/models/broadcast_attribute.dart';
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
    final isLight = Theme.of(context).brightness == Brightness.light;
    final textColor = isLight ? Colors.black : Colors.white;
    final dividerColor = isLight ? Colors.black : Colors.white;
    final iconColor = isLight ? Colors.black : Colors.white;

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
                  Divider(height: 30.0, thickness: 2, indent: 0, endIndent: 0, color: dividerColor), // Divider
                  Center(
                    child: Text(
                      titleString,
                      style: TextStyle(color: textColor, fontSize: 20.0, fontWeight: FontWeight.bold), // TextStyle
                    ), // Text
                  ), // Center
                  Divider(height: 30.0, thickness: 2, indent: 0, endIndent: 0, color: dividerColor), // Divider
                  Text(
                    'Genre',
                    style: TextStyle(color: textColor, fontSize: 16.0, fontWeight: FontWeight.bold), // TextStyle
                  ), // Text
                  Center(
                    child: Text(genre, style: TextStyle(color: textColor, fontSize: 16.0)), // Text
                  ), // Center
                  Divider(height: 30.0, thickness: 2, indent: 0, endIndent: 0, color: dividerColor), // Divider
                  Center(
                    child: Text(
                      'Broadcasting Stations',
                      style: TextStyle(color: textColor, fontSize: 16.0, fontWeight: FontWeight.bold), // TextStyle
                    ), // Text
                  ), // Center
                  Text('${broadcastingStations}', style: TextStyle(color: textColor, fontSize: 16.0)), // Text
                  Center(
                    child: Text(
                      '\nStreaming Platform',
                      style: TextStyle(color: textColor, fontSize: 16.0, fontWeight: FontWeight.bold), // TextStyle
                    ), // Text
                  ), // Center
                  Text('${streamingPlatform}', style: TextStyle(color: textColor, fontSize: 16.0)), // Text
                  Divider(height: 30.0, thickness: 2, indent: 0, endIndent: 0, color: dividerColor), // Divider
                  Text(descriptionString, style: TextStyle(color: textColor, fontSize: 16.0)), // Text
                  Divider(height: 15.0, thickness: 2, indent: 0, endIndent: 0, color: dividerColor), // Divider
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
                              child: Icon(Icons.share_outlined, color: iconColor, size: 35.0), // Icon
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
                            color: current.isMyAnime ? Colors.yellow : iconColor,
                          ), // Icon
                        ), // IconButton
                        IconButton(
                          onPressed: () async {
                            await context.read<AnimeMovieProvider>().toggleFavorite(titleString);
                          },
                          icon: Icon(
                            Icons.star_border_outlined,
                            size: 35,
                            color: current.isFavorite ? Colors.yellow : iconColor,
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
 */
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:flutter_application_one/models/broadcast_attribute.dart';
import 'package:flutter_application_one/services/movieProvider_service.dart';
import 'package:flutter_application_one/screens/share.dart';

class DetailWidget extends StatefulWidget {
  const DetailWidget({super.key});

  @override
  State<DetailWidget> createState() => _DetailWidgetState();
}

class _DetailWidgetState extends State<DetailWidget> {
  final _shareOverlayController = OverlayPortalController();

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final color = theme.brightness == Brightness.light ? Colors.black : Colors.white;

    final passed = ModalRoute.of(context)!.settings.arguments as BroadcastAttribute;

    final provider = context.watch<AnimeMovieProvider>();
    final current = provider.broadcastData.firstWhere((element) => element.title == passed.title, orElse: () => passed);

    const broadcastingStations = 'Pro7 Maxx, Pro7 Fun, RTL II, Animax';
    const streamingPlatforms = 'Crunchyroll, Netflix, Amazon Prime Video';

    Text heading(String text) => Text(
      text,
      style: TextStyle(color: color, fontSize: 16, fontWeight: FontWeight.bold),
      textAlign: TextAlign.center,
    ); // Text

    Text body(String text) => Text(
      text,
      style: TextStyle(color: color, fontSize: 16),
      textAlign: TextAlign.center,
    ); // Text

    Divider divider([double height = 30]) => Divider(height: height, thickness: 2, color: color);

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(),
        body: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: [
              Image.asset(current.imagePath, width: 200, height: 180, fit: BoxFit.cover),
              divider(),
              Text(
                current.title,
                style: TextStyle(color: color, fontSize: 20, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ), // Text
              divider(),
              heading('Genre'),
              body(current.genre),
              divider(),
              heading('Broadcasting Stations'),
              body(broadcastingStations),
              const SizedBox(height: 8),
              heading('Streaming Platforms'),
              body(streamingPlatforms),
              divider(),
              body(current.description),
              divider(15),
              ListTile(
                trailing: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    OverlayPortal(
                      controller: _shareOverlayController,
                      overlayChildBuilder: (_) => Positioned(
                        top: 110,
                        width: 390,
                        child: Container(
                          height: 400,
                          decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(30)),
                          child: ShareWidget(title: current.title, picture: current.imagePath),
                        ), // Container
                      ), // OverlayPortal
                      child: IconButton(
                        icon: Icon(Icons.share_outlined, size: 35, color: color),
                        onPressed: _shareOverlayController.toggle,
                      ), // IconButton
                    ), // OverlayPortal
                    IconButton(
                      icon: Icon(
                        Icons.bookmark_border_outlined,
                        size: 35,
                        color: current.isMyAnime ? Colors.yellow : color,
                      ), //
                      onPressed: () => context.read<AnimeMovieProvider>().toggleMyAnime(current.title),
                    ), // IconButton
                    IconButton(
                      icon: Icon(
                        Icons.star_border_outlined,
                        size: 35,
                        color: current.isFavorite ? Colors.yellow : color,
                      ), // Icon
                      onPressed: () => context.read<AnimeMovieProvider>().toggleFavorite(current.title),
                      /*
                        () =>

                        Das ist eine anonyme Funktion (Lambda-Funktion).
                        Sie bedeutet: „Führe diesen Code aus, wenn gedrückt wird.“

                        Kurzform von:

                        onPressed: () {
                          // Code hier
                        }
                      */
                    ), // IconButton
                  ], // children
                ), // Row
              ), // ListTile
            ], // children
          ), // Column
        ), // SingleChildScrollView
      ), // Scaffold
    ); // SafeArea
  }
}
