import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final ButtonStyle _buttonStyle = ElevatedButton.styleFrom(backgroundColor: Colors.grey);
  final TextStyle _titleTextStyle = TextStyle(fontSize: 50.0, letterSpacing: 4.0 /* fontFamily: Audiowide */);
  final TextStyle _buttonTextStyle = TextStyle(color: Colors.white);
  // fontFamily: Audiowide; !!!!!!!!! Package im Dowmnöoad Ordner
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: Scaffold(
        appBar: AppBar(
          toolbarHeight: 100.0,
          shape: Border(
            bottom: BorderSide(color: Colors.white, width: 2.0),
            top: BorderSide(color: Colors.white, width: 2.0),
          ), // Border
          backgroundColor: Colors.black,
          centerTitle: true,
          title: Text('TVPG', style: _titleTextStyle),
        ), // AppBar
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(left: 50.0, right: 50.0),
            child: Column(
              spacing: 50.0,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(25.0)),
                    labelText: 'Username',
                  ), // InputDecoration
                ), // TextField
                TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(25.0)),
                    labelText: 'Pasword',
                  ), // InputDeecoration
                ), // TextField
                ElevatedButton(
                  style: _buttonStyle,
                  onPressed: () {},
                  child: Text('Login', style: _buttonTextStyle), // Text
                ), // ElevatedButton
              ], // Children
            ), // Column
          ), // Padding
        ), // SafeArea
      ), // Scaffold
    ); // MaterialApp
  }
}
