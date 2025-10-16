import 'package:flutter/material.dart';
import 'package:flutter_application_one/login.dart';
import 'package:flutter_application_one/registry.dart';
import 'package:flutter_application_one/startScreen.dart';
import 'package:flutter_application_one/broadcastDetail.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Project',
      theme: ThemeData(brightness: Brightness.dark, fontFamily: 'Arial'),
      /* theme: ThemeData(fontFamily: 'Arial'), */
      initialRoute: '/home',
      routes: {
        '/home': (context) => LoginWidget(),
        '/registry': (context) => RegistryWidget(),
        '/start': (context) => StartScreenWidget(),
        '/detail': (context) => DetailWidget(),
      }, // routes
    ); // MaterialApp
  }
}
