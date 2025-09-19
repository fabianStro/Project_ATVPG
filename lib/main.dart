import 'package:flutter/material.dart';
//import 'package:flutter_application_one/test.dart';

void main() {
  runApp(MyApp());
  //Test();
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

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
          ),
          backgroundColor: Colors.black,
          centerTitle: true,
          title: Text('TVPG', style: TextStyle(fontSize: 50.0, letterSpacing: 4.0)),
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
                ElevatedButton(onPressed: () {}, child: Text('Login')),
              ], // Children
            ), // Column
          ), // Padding
        ), // SafeArea
      ), // Scaffold
    ); // MaterialApp
  }
}
