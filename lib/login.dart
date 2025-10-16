import 'package:flutter/material.dart';

class LoginWidget extends StatefulWidget {
  const LoginWidget({super.key});

  @override
  State<LoginWidget> createState() => _LoginWidgetState();
}

class _LoginWidgetState extends State<LoginWidget> {
  final ButtonStyle _buttonStyle = ElevatedButton.styleFrom(backgroundColor: Colors.grey);
  final TextStyle _titleTextStyle = TextStyle(fontSize: 50.0, letterSpacing: 4.0, fontFamily: 'Audiowide');
  final TextStyle _buttonTextStyle = TextStyle(color: Colors.white, fontFamily: 'Arial');
  final TextStyle _registryTextStyle = TextStyle(color: Colors.grey[400], fontFamily: 'Arial');
  final TextStyle _loginTextStyle = TextStyle(fontSize: 28.0, letterSpacing: 2.0, fontFamily: 'Arial');
  final Color _whiteColor = Colors.white;
  final String _title = 'TVPG';
  final String _username = 'Username';
  final String _password = 'Password';
  final String _loginLabel = 'Login';
  final double _sendBoxWidth = 150.0;
  final double _borderRadius = 25.0;
  final double _toolbarHeight = 100.0;
  final bool _isTrue = true;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBodyBehindAppBar: _isTrue,
        appBar: AppBar(
          toolbarHeight: _toolbarHeight,
          shape: Border(
            bottom: BorderSide(color: _whiteColor, width: 2.0),
            top: BorderSide(color: _whiteColor, width: 2.0),
          ), // Border
          centerTitle: _isTrue,
          title: Text(_title, style: _titleTextStyle),
        ), // AppBar
        body: Padding(
          padding: const EdgeInsets.only(left: 60.0, right: 60.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text('LOGIN', style: _loginTextStyle),
              SizedBox(height: 20.0),
              TextField(
                obscureText: false,
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.only(top: 16.0),
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(_borderRadius)),
                  labelText: _username,
                ), // InputDecoration
              ), // TextField
              SizedBox(height: 20.0),
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.only(top: 16.0),
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(_borderRadius)),
                  labelText: _password,
                ), // InputDeecoration
              ), // TextField
              SizedBox(height: 25.0),
              SizedBox(
                width: _sendBoxWidth,
                child: ElevatedButton(
                  style: _buttonStyle,
                  onPressed: () {
                    Navigator.pushNamed(context, '/start');
                  },
                  child: Text(_loginLabel, style: _buttonTextStyle), // Text
                ), // ElevatedButton
              ), // SizedBox
              SizedBox(height: 15.0),
              Align(
                child: GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, '/registry');
                  },
                  child: Text('Registration', style: _registryTextStyle),
                ), // GestureDetector
              ), // Align
            ], // Children
          ), // Column
        ), // Padding
      ), // Scaffold
    ); // SafeArea
  }
}
