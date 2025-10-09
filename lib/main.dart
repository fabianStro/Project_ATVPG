import 'package:flutter/material.dart';
import 'package:flutter_application_one/login.dart';
/* import 'package:flutter_lern/choose.dart';
import 'package:flutter_lern/detail.dart';*/

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Project',
      theme: ThemeData.dark(),
      /* theme: ThemeData(fontFamily: 'Arial'), */
      initialRoute: '/home',
      routes: {
        '/home': (context) => HomeWidget(),
        /*  '/choose': (context) => ChooseWidget(),
        '/detail': (context) => DetailWidget(),  */
      },
    );
  }
}
