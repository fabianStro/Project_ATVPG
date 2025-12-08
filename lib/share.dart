// ignore_for_file: must_be_immutable, deprecated_member_use

import 'dart:ui';
import 'package:flutter/material.dart';

// import 'package:share_plus/share_plus.dart';

class ShareWidget extends StatefulWidget {
  ShareWidget({super.key, required this.title, required this.picture});

  String title = '';
  String picture = '';

  @override
  State<ShareWidget> createState() => _ShareWidgetState();
}

class _ShareWidgetState extends State<ShareWidget> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: 100.0,
          shape: Border(
            bottom: BorderSide(color: Colors.white, width: 2.0),
            top: BorderSide(color: Colors.white, width: 2.0),
          ), // Border
          centerTitle: true,
          title: Text('Share', style: TextStyle(fontSize: 50.0, letterSpacing: 2.2, fontFamily: 'Audiowide')),
        ), // AppBar
        body: Stack(
          children: [
            Positioned.fill(
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
                child: Container(color: Colors.black.withOpacity(0.3)),
              ), // BackdropFilter
            ), // Positioned.fill
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, '/start');
                  },
                  child: Padding(
                    padding: EdgeInsets.only(left: 16.0, top: 220.0),
                    child: Image.asset('assets/images/shareIcons/facebook.png', width: 35.0, height: 35.0),
                  ), // Padding
                ), // GestureDetector
                SizedBox(width: 10.0),
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, '/start');
                  },
                  child: Padding(
                    padding: EdgeInsets.only(top: 220.0),
                    child: Image.asset('assets/images/shareIcons/instagram.png', width: 35.0, height: 35.0),
                  ), // Padding
                ), // GestureDetector
                SizedBox(width: 10.0),
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, '/start');
                  },
                  child: Padding(
                    padding: EdgeInsets.only(top: 220.0),
                    child: Image.asset('assets/images/shareIcons/telegram.png', width: 35.0, height: 35.0),
                  ), // Padding
                ), // GestureDetector
                SizedBox(width: 10.0),
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, '/start');
                  },
                  child: Padding(
                    padding: EdgeInsets.only(top: 220.0),
                    child: Image.asset('assets/images/shareIcons/tiktok.png', width: 35.0, height: 35.0),
                  ), // Padding
                ), // GestureDetector
                SizedBox(width: 10.0),
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, '/start');
                  },
                  child: Padding(
                    padding: EdgeInsets.only(top: 220.0, right: 16.0),
                    child: Image.asset('assets/images/shareIcons/x-icon.png', width: 35.0, height: 35.0),
                  ), // Padding
                ), // GestureDetector
              ],
            ), // Row
            Padding(
              padding: EdgeInsets.only(left: 16.0, top: 10.0),
              child: Text('Which channel would you like to share through?', style: TextStyle(fontSize: 20.0)),
            ), // Padding
            Padding(
              padding: EdgeInsets.only(top: 0.0),
              child: Center(
                child: ClipOval(
                  child: Image.asset(widget.picture, width: 100, height: 100, fit: BoxFit.cover), // Image.asset
                ), // ClipOval
              ), // Center
            ), // Padding
          ], // Children
        ), // Stack
      ), // Scaffold
    ); // SafeArea
  }
}
