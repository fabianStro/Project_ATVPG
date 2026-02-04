// ignore_for_file: deprecated_member_use

/* // ignore_for_file: must_be_immutable, deprecated_member_use

import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:share_plus/share_plus.dart';

class ShareWidget extends StatefulWidget {
  ShareWidget({super.key, required this.title, required this.picture});

  String title = '';
  String picture = '';

  @override
  State<ShareWidget> createState() => _ShareWidgetState();
}

Future<void> shareFunction(String imagePath, String text) async {
  final file = XFile(imagePath);
  await Share.shareXFiles([file], text: text);
}

class _ShareWidgetState extends State<ShareWidget> {
  @override
  Widget build(BuildContext context) {
    final isLight = Theme.of(context).brightness == Brightness.light;

    // Dynamische Farben
    final backgroundColor = isLight ? Colors.white : Colors.black;
    final appBarColor = isLight ? Colors.white : Colors.black;
    final textColor = isLight ? Colors.black : Colors.white;
    final overlayColor = isLight ? Colors.white : Colors.black.withOpacity(0.3);

    return SafeArea(
      child: Scaffold(
        backgroundColor: backgroundColor,
        appBar: AppBar(
          toolbarHeight: 100.0,
          backgroundColor: appBarColor,
          foregroundColor: textColor,
          shape: Border(
            bottom: BorderSide(color: textColor, width: 2.0),
            top: BorderSide(color: textColor, width: 2.0),
          ),
          centerTitle: true,
          title: Text(
            'Share',
            style: TextStyle(fontSize: 50.0, letterSpacing: 2.2, fontFamily: 'Audiowide', color: textColor),
          ),
        ),
        body: Stack(
          children: [
            Positioned.fill(
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
                child: Container(color: overlayColor),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _buildShareIcon('assets/images/shareIcons/x-icon.png'),
                _buildShareIcon('assets/images/shareIcons/instagram.png'),
                _buildShareIcon('assets/images/shareIcons/telegram.png'),
                _buildShareIcon('assets/images/shareIcons/tiktok.png'),
              ],
            ),
            Align(
              alignment: Alignment.topCenter,
              child: Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: Text(
                  'Select the Channel',
                  style: TextStyle(fontSize: 25.0, color: textColor, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Align(
              alignment: Alignment.topCenter,
              child: Padding(
                padding: const EdgeInsets.only(top: 70.0),
                child: ClipOval(child: Image.asset(widget.picture, width: 100.0, height: 100.0, fit: BoxFit.cover)),
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Funktion zum Erstellen eines Share-Icons
  Widget _buildShareIcon(String assetPath) {
    return GestureDetector(
      onTap: () => shareFunction(widget.picture, widget.title),
      child: Padding(
        padding: const EdgeInsets.only(top: 220.0, left: 30.0, right: 30.0),
        child: Image.asset(assetPath, width: 35.0, height: 35.0),
      ),
    );
  }
}
 */
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:share_plus/share_plus.dart';

class ShareWidget extends StatelessWidget {
  final String title;
  final String picture;

  const ShareWidget({super.key, required this.title, required this.picture});

  Future<void> _share(String imagePath, String text) async {
    final file = XFile(imagePath);
    await Share.shareXFiles([file], text: text);
  }

  @override
  Widget build(BuildContext context) {
    final isLight = Theme.of(context).brightness == Brightness.light;

    final backgroundColor = isLight ? Colors.white : Colors.black;
    final textColor = isLight ? Colors.black : Colors.white;
    final overlayColor = isLight ? Colors.white : Colors.black.withOpacity(0.3);

    return SafeArea(
      child: Scaffold(
        backgroundColor: backgroundColor,
        appBar: AppBar(
          toolbarHeight: 100,
          backgroundColor: backgroundColor,
          foregroundColor: textColor,
          shape: Border(
            top: BorderSide(color: textColor, width: 2),
            bottom: BorderSide(color: textColor, width: 2),
          ), // Border
          centerTitle: true,
          title: Text(
            'Share',
            style: TextStyle(fontSize: 50, letterSpacing: 2.2, fontFamily: 'Audiowide', color: textColor),
          ), // Text
        ), // AppBar
        body: Stack(
          children: [
            Positioned.fill(
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                child: Container(color: overlayColor),
              ), // BackdropFilter
            ), // Positioned.fill
            Positioned(
              top: 220,
              left: 0,
              right: 0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  _buildShareIcon(context, 'assets/images/shareIcons/x-icon.png'),
                  _buildShareIcon(context, 'assets/images/shareIcons/instagram.png'),
                  _buildShareIcon(context, 'assets/images/shareIcons/telegram.png'),
                  _buildShareIcon(context, 'assets/images/shareIcons/tiktok.png'),
                ],
              ), // Row
            ), // Positioned

            Positioned(
              top: 20,
              left: 0,
              right: 0,
              child: Text(
                'Select the Channel',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 25, color: textColor, fontWeight: FontWeight.bold),
              ), // Text
            ), // Positioned

            Positioned(
              top: 70,
              left: 0,
              right: 0,
              child: Center(
                child: ClipOval(child: Image.asset(picture, width: 100, height: 100, fit: BoxFit.cover)),
              ), // Center
            ), // Positioned
          ],
        ), // Stack
      ), // Scaffold
    ); // SafeArea
  }

  Widget _buildShareIcon(BuildContext context, String assetPath) {
    return GestureDetector(onTap: () => _share(picture, title), child: Image.asset(assetPath, width: 35, height: 35));
  }
}
