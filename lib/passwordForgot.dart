import 'package:flutter/material.dart';

class PasswordForgotWidget extends StatefulWidget {
  const PasswordForgotWidget({super.key});

  @override
  State<PasswordForgotWidget> createState() => _PasswordForgotWidgetState();
}

class _PasswordForgotWidgetState extends State<PasswordForgotWidget> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          toolbarHeight: 100.0,
          shape: Border(
            bottom: BorderSide(color: Colors.white, width: 2.0),
            top: BorderSide(color: Colors.white, width: 2.0),
          ), // Border
          centerTitle: true,
          title: Text('Pwd Forgot?', style: TextStyle(fontSize: 40.0, letterSpacing: 4.0, fontFamily: 'Audiowide')),
        ), // AppBar
        body: Center(
          child: Text('Password Forgot Screen', style: TextStyle(fontSize: 20.0, fontFamily: 'Arial')),
        ), // Center
      ), // Scaffold
    ); // SafeArea
  }
}
