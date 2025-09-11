import 'package:flutter/material.dart';
//import 'package:flutter_application_one/test.dart';

void main() {
  runApp(const MyApp());
  //Test();
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  //List<String> title = ['Highschool DxD', 'Dragonball'];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          toolbarHeight: 100.0,
          shape: Border(bottom: BorderSide(color: Colors.white, width: 2.0)),
          backgroundColor: Colors.black,
          centerTitle: true,
          title: Text('TVPG', style: TextStyle(fontSize: 50.0, letterSpacing: 4.0, color: Colors.white)),
        ), // AppBar
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Hello Welt !!!',
                style: TextStyle(
                  //fontFamily: 'Arial',
                  fontSize: 24.0,
                  backgroundColor: Colors.black,
                  color: Colors.white,
                ), // TextStyle
              ), // Text
              Text(
                'Hello Ihr !!!',
                style: TextStyle(
                  //fontFamily: 'Arial',
                  fontSize: 24.0,
                  backgroundColor: Colors.black,
                  color: Colors.white,
                ), // TextStyle
              ), // Text
            ], // Children
          ), // Column
        ), // Center
      ), // Scaffold
    ); // MaterialApp
  }
}
