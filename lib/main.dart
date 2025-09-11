import 'package:flutter/material.dart';
//import 'package:flutter_application_one/test.dart';

void main() {
  runApp(const MyApp());
  //Test();
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          toolbarHeight: 100.0,
          shape: Border(bottom: BorderSide(color: Colors.red, width: 4.0)),
          backgroundColor: Colors.black,
          centerTitle: true,
          title: Text('TVP', style: TextStyle(fontSize: 30.0, letterSpacing: 3.0, color: Colors.white)),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Hello Welt !!!',
                style: TextStyle(fontSize: 24.0, backgroundColor: Colors.black, color: Colors.white),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
