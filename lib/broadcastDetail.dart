import 'package:flutter/material.dart';
//import 'package:flutter_application_one/allChannels.dart';
import 'package:flutter_application_one/broadcastAttribute.dart';

class DetailWidget extends StatefulWidget {
  const DetailWidget({super.key});

  @override
  State<DetailWidget> createState() => _DetailWidgetState();
}

class _DetailWidgetState extends State<DetailWidget> {
  @override
  Widget build(BuildContext context) {
    final BroadcastAttribute index = ModalRoute.of(context)!.settings.arguments as BroadcastAttribute;
    String pictureAdress = Error.safeToString(index.imagePath);
    String pictureAdressString = pictureAdress.substring(1, pictureAdress.length - 1);
    String titleString = Error.safeToString(index.title);
    String subtitleString = Error.safeToString(index.subtitle);
    String descriptionString = Error.safeToString(index.description);
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
                        IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.share, color: Colors.white, size: 35),
                        ), // IconButton
                        IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.star_border_outlined, color: Colors.white, size: 35),
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
