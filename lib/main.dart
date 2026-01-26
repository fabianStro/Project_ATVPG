import 'package:flutter/material.dart';
// Generated adapter imports
import 'package:flutter_application_one/hive_registrar.g.dart';
import 'package:flutter_application_one/login.dart';
import 'package:flutter_application_one/home_screen.dart';
import 'package:flutter_application_one/models/notification_data.dart';
import 'package:flutter_application_one/screens/notification.dart';
import 'package:flutter_application_one/screens/password_forgot.dart';
import 'package:flutter_application_one/screens/registry.dart';
import 'package:flutter_application_one/screens/share.dart';
import 'package:flutter_application_one/screens/detail.dart';
import 'package:flutter_application_one/screens/profile.dart';
// Service imports
import 'package:flutter_application_one/services/movieProvider_service.dart';
import 'package:flutter_application_one/services/theme_service.dart';
import 'package:flutter_application_one/services/auth_service.dart';
// Provider package
import 'package:provider/provider.dart';
// Supabase package
import 'package:supabase_flutter/supabase_flutter.dart';
// Hive packages
import 'package:hive_ce_flutter/hive_flutter.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // ################################ Hive ################################
  await Hive.initFlutter();
  Hive.registerAdapters();
  //Hive.registerAdapter(notificationDataAdapter());

  // Open Hive boxes
  await Hive.openBox<NotificationData>('notificationBox');
  // ##########################################################################

  // ################################ Supabase ################################
  await Supabase.initialize(
    url: 'https://pdhtkhkrqsliayhbhcis.supabase.co',
    anonKey:
        'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InBkaHRraGtycXNsaWF5aGJoY2lzIiwicm9sZSI6ImFub24iLCJpYXQiOjE3NjMwMzE0OTIsImV4cCI6MjA3ODYwNzQ5Mn0.HsHfjXCazSZ0mFR9LMkS332OvJi222Pryr76A5WAgPo',
  );
  // ############################################################################
  runApp(
    // ################################ Provider ################################
    MultiProvider(
      providers: [
        Provider<AuthService>(create: (_) => AuthService()),
        ChangeNotifierProvider<AnimeMovieProvider>(create: (_) => AnimeMovieProvider()), // ChangeNotifierProvider
        ChangeNotifierProvider<ThemeService>(create: (_) => ThemeService()),
      ],
      // ########################################################################
      child: Consumer<ThemeService>(
        builder: (context, themeService, child) {
          return MaterialApp(
            title: 'Flutter Project',
            theme: ThemeData(brightness: Brightness.light, fontFamily: 'Arial'),
            darkTheme: ThemeData.dark(),
            themeMode: themeService.themeMode,
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
        },
      ), // Consumer
    ), // MultiProvider
  );
}
