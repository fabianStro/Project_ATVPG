import 'package:flutter/material.dart';
import 'package:flutter_application_one/broadcastDetail.dart';

class ShareWidget extends StatefulWidget {
  //const ShareWidget({super.key});

  String title = '';
  String picture = '';

  ShareWidget({super.key, required this.title, required this.picture});

  @override
  State<ShareWidget> createState() => _ShareWidgetState();
}

class _ShareWidgetState extends State<ShareWidget> {
  //final DetailWidget _detail = DetailWidget();
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
          title: Text('Share', style: TextStyle(fontSize: 50.0, letterSpacing: 4.0, fontFamily: 'Arial')),
        ), // AppBar
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(top: 30.0),
              child: Center(
                child: ClipOval(
                  //child: Image.asset(picture, width: 180, height: 180, fit: BoxFit.cover),
                ), // ClipOval
              ), // Center
            ), // Padding
            SizedBox(height: 15.0),
            const Divider(height: 30, thickness: 2, indent: 0, endIndent: 0, color: Colors.white),
            SizedBox(height: 15.0),
            Padding(
              padding: EdgeInsets.only(left: 16.0),
              child: Container(
                child: Text('Share Functionality Coming Soon!', style: TextStyle(fontSize: 20.0)),
              ), // Container
            ), // Padding
          ], // Children
        ), // Column
      ), // Scaffold
    ); // SafeArea
  }
}
