import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final ButtonStyle _buttonStyle = ElevatedButton.styleFrom(backgroundColor: Colors.grey);
  final TextStyle _titleTextStyle = TextStyle(fontSize: 50.0, letterSpacing: 4.0, fontFamily: 'Audiowide');
  final TextStyle _buttonTextStyle = TextStyle(color: Colors.white);
  final Color _whiteColor = Colors.white;
  final String _username = 'Username';
  final String _password = 'Password';
  final String _login = 'Login';
  final double _sendBoxWidth = 150.0;
  final double _borderRadius = 25.0;
  final double _toolbarHeight = 100.0;

  // fontFamily: Audiowide; !!!!!!!!! Package im Dowmnöoad Ordner
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          toolbarHeight: _toolbarHeight,
          shape: Border(
            bottom: BorderSide(color: _whiteColor, width: 2.0),
            top: BorderSide(color: _whiteColor, width: 2.0),
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
                //  Text(_username),
                TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(_borderRadius)),
                    labelText: _username,
                  ), // InputDecoration
                ), // TextField
                //  Text(_password),
                TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(_borderRadius)),
                    labelText: _password,
                  ), // InputDeecoration
                ), // TextField
                SizedBox(
                  width: _sendBoxWidth,
                  child: ElevatedButton(
                    style: _buttonStyle,
                    onPressed: () {},
                    child: Text(_login, style: _buttonTextStyle), // Text
                  ), // ElevatedButton
                ), // SizedBox
                Text('Registration'),
              ], // Children
            ), // Column
          ), // Padding
        ), // SafeArea
      ), // Scaffold
    ); // MaterialApp
  }
}
