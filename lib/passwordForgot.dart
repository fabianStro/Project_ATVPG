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
          title: Text('Pwd Forgot', style: TextStyle(fontSize: 40.0, letterSpacing: 4.0, fontFamily: 'Audiowide')),
        ), // AppBar
        body: Column(
          children: [
            SizedBox(height: 30.0),
            Text('Please enter your email address', style: TextStyle(fontSize: 20.0, fontFamily: 'Arial')),
            SizedBox(height: 30.0),
            SizedBox(
              width: 300.0,
              child: TextField(
                obscureText: false,
                autocorrect: false,
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.all(10.0),
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(25.0)),
                  labelText: 'E-mail',
                  filled: true,
                  fillColor: Colors.black,
                ), // InputDecoration
              ), // TextField
            ), // TextField
            SizedBox(height: 320.0),
            Center(
              child: Column(
                children: [
                  SizedBox(
                    width: 200.0,
                    child: Center(
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.pushNamed(context, '/start');
                        },
                        style: ElevatedButton.styleFrom(alignment: Alignment.center, backgroundColor: Colors.grey),
                        child: Text(
                          'Confirm',
                          style: TextStyle(color: Colors.white, fontFamily: 'Arial'),
                        ), // Text
                      ), // ElevatedButton
                    ), // Center
                  ), // SizedBox
                ], // children
              ), // Column
            ), // Center
            SizedBox(height: 20.0),
            Center(
              child: Column(
                children: [
                  SizedBox(
                    width: 200.0,
                    child: Center(
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.pushNamed(context, '/home');
                        },
                        style: ElevatedButton.styleFrom(alignment: Alignment.center, backgroundColor: Colors.grey),
                        child: Text(
                          'Cancel',
                          style: TextStyle(color: Colors.white, fontFamily: 'Arial'),
                        ), // Text
                      ), // ElevatedButton
                    ), // Center
                  ), // SizedBox
                ], // children
              ), // Column
            ), // Center
          ], // children
        ), // Column
      ), // Scaffold
    ); // SafeArea
  }
}
