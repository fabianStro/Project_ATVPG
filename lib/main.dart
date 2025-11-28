// import 'package:firebase_core/firebase_core.dart';
// import 'package:flutter_application_one/firebase_options.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_one/login.dart';
import 'package:flutter_application_one/notification.dart';
import 'package:flutter_application_one/passwordForgot.dart';
import 'package:flutter_application_one/registry.dart';
import 'package:flutter_application_one/share.dart';
import 'package:flutter_application_one/startScreen.dart';
import 'package:flutter_application_one/detail.dart';
import 'package:flutter_application_one/profile.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

//import 'searchFunction.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Supabase.initialize(
    url: 'https://pdhtkhkrqsliayhbhcis.supabase.co',
    anonKey:
        'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InBkaHRraGtycXNsaWF5aGJoY2lzIiwicm9sZSI6ImFub24iLCJpYXQiOjE3NjMwMzE0OTIsImV4cCI6MjA3ODYwNzQ5Mn0.HsHfjXCazSZ0mFR9LMkS332OvJi222Pryr76A5WAgPo',
  );
  //runApp(ChangeNotifierProvider(create: (_) => searchFunction(searchQuery: null,), child: MyApp()));
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Project',
      theme: ThemeData(brightness: Brightness.light, fontFamily: 'Arial'),
      darkTheme: ThemeData.dark(),
      themeMode: ThemeMode.dark,
      initialRoute: '/home',
      routes: {
        '/home': (context) => LoginWidget(),
        '/registry': (context) => RegistryWidget(),
        '/start': (context) => StartScreenWidget(),
        '/detail': (context) => DetailWidget(),
        '/profile': (context) => ProfileWidget(),
        '/notification': (context) => NotificationWidget(),
        '/share': (context) => ShareWidget(title: '', picture: ''),
        '/forgot': (context) => PasswordForgotWidget(),
      }, // routes
    ); // MaterialApp
  }
}
