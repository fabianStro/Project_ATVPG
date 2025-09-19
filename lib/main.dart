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
  final Color _blackColor = Colors.black87;
  final String _title = 'TVPG';
  final String _username = 'Username';
  final String _password = 'Password';
  final String _login = 'Login';
  final double _sendBoxWidth = 150.0;
  final double _borderRadius = 25.0;
  final double _toolbarHeight = 100.0;
  final bool _isTrue = true;

  // fontFamily: Audiowide; !!!!!!!!! Package im Dowmnöoad Ordner
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: SafeArea(
        child: Scaffold(
          extendBodyBehindAppBar: _isTrue,
          appBar: AppBar(
            toolbarHeight: _toolbarHeight,
            shape: Border(
              bottom: BorderSide(color: _whiteColor, width: 2.0),
              top: BorderSide(color: _whiteColor, width: 2.0),
            ), // Border
            backgroundColor: _blackColor,
            centerTitle: _isTrue,
            title: Text(_title, style: _titleTextStyle),
          ), // AppBar
          body: Padding(
            padding: const EdgeInsets.only(left: 60.0, right: 60.0),
            child: Column(
              spacing: 35.0,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text('LOGIN', style: TextStyle(fontSize: 28.0, letterSpacing: 2.0)),
                TextField(
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.only(top: 16.0),
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(_borderRadius)),
                    labelText: _username,
                  ), // InputDecoration
                ), // TextField
                //  Text(_password),
                TextField(
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.only(top: 16.0),
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
