import 'package:flutter/material.dart';
//import 'package:flutter_application_one/test.dart';

void main() {
  runApp(MyApp());
  //Test();
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final List<String> title = ['Highschool DxD\t', 'Dragonball\t', 'The Eminence in Shadow\t'];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: Scaffold(
        appBar: AppBar(
          toolbarHeight: 100.0,
          shape: Border(bottom: BorderSide(color: Colors.white, width: 2.0)),
          backgroundColor: Colors.black,
          centerTitle: true,
          title: Text('TVPG', style: TextStyle(fontSize: 50.0, letterSpacing: 4.0)),
        ), // AppBar
        body: SafeArea(
          child: SizedBox(
            width: double.infinity,
            height: double.infinity,
            child: Column(
              //mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                BroadcastTitle(text: title[0], style: 'size'),
                BroadcastTitle(text: title[1], style: 'size'),
                BroadcastTitle(text: title[2], style: 'size'),
              ], // Children
            ), // Column
          ), // SizedBox
        ), // SafeArea
      ), // Scaffold
    ); // MaterialApp
  }
}

class BroadcastTitle extends StatelessWidget {
  const BroadcastTitle({super.key, this.text, this.style});

  final String? text;
  final String? style;

  @override
  Widget build(BuildContext context) {
    return Text(text ?? 'None', style: TextStyle(fontSize: 20.0));
  }
}
