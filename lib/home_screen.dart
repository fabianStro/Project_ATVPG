/* // ignore_for_file: file_names, camel_case_types

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_application_one/screens/all_anime.dart';
import 'package:flutter_application_one/features/search_function.dart';
import 'package:flutter_application_one/features/logout_button.dart';
import 'package:flutter_application_one/screens/my_anime.dart';
import 'package:flutter_application_one/screens/favorite_anime.dart';
import 'package:flutter_application_one/services/theme_service.dart';
import 'package:flutter_application_one/services/movieProvider_service.dart';

class StartScreenWidget extends StatefulWidget {
  const StartScreenWidget({super.key});

  @override
  State<StartScreenWidget> createState() => _StartScreenWidgetState();
}

class _StartScreenWidgetState extends State<StartScreenWidget> {
  // ######################################################################################
  // Variablen
  // ######################################################################################
  int currentPageIndex = 0;
  final Icon searchIcon = Icon(Icons.search, size: 30.0),
      exitIcon = Icon(Icons.logout_rounded, size: 30.0),
      noteIcon = Icon(Icons.notifications_outlined, size: 30.0),
      themeIconLight = Icon(Icons.light_mode, size: 30.0),
      themeIconDark = Icon(Icons.dark_mode, size: 30.0);
  final ValueNotifier<String> searchQuery = ValueNotifier<String>('');
  // ######################################################################################
  // Controller
  // ######################################################################################
  final OverlayPortalController _overlaySearchController = OverlayPortalController();

  // ######################################################################################
  // Instanzen der Screens
  // ######################################################################################

  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) {
      // Ensure DB is created/seeded after login
      context.read<AnimeMovieProvider>().ensureInitialized();
    });
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            automaticallyImplyLeading: false,
            toolbarHeight: 100.0,
            title: Text(''),
            centerTitle: true,
            leading: GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/profile');
              },
              child: Padding(
                padding: EdgeInsets.only(top: 10.0, left: 16.0),
                child: Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: Colors.white, width: 1.0),
                    image: DecorationImage(
                      image: AssetImage('assets/images/FabianStrottmann_Pic.png'),
                      fit: BoxFit.contain,
                    ), // DecorationImage
                  ), // BoxDecoration
                ), // Container
              ), // Padding
            ), // GestureDetector

            bottom: TabBar(
              unselectedLabelColor: Colors.grey,
              unselectedLabelStyle: TextStyle(fontStyle: FontStyle.italic, fontSize: 13.0), // TextStyle
              labelColor: Colors.white,
              labelStyle: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold, fontFamily: 'Audiowide'), // TextStyle
              indicatorPadding: EdgeInsets.only(left: -15.0, right: -15.0),
              indicator: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(10),
                  topLeft: Radius.circular(10),
                ), // BorderRadius.only
                border: Border(
                  left: BorderSide(color: Colors.white),
                  right: BorderSide(color: Colors.white),
                  top: BorderSide(color: Colors.white),
                ), // Border
              ), // BoxDecoration
              tabs: [
                Tab(text: 'All Anime', icon: Icon(Icons.list_alt_outlined)),
                Tab(text: 'My Anime', icon: Icon(Icons.bookmark_border_outlined)), // Tab
                Tab(text: 'Fav Anime', icon: Icon(Icons.star_border_outlined)),
              ],
            ), // TabBar
            actions: [
              GestureDetector(
                onTap: _overlaySearchController.toggle,
                child: OverlayPortal(
                  controller: _overlaySearchController,
                  overlayChildBuilder: (BuildContext context) {
                    return SearchFunction(searchQuery: searchQuery); // SearchFunction
                  },
                  child: Padding(padding: EdgeInsets.only(top: 0.0), child: searchIcon), // Padding
                ), // OverlayPortal
              ), // GestureDetector
              Padding(
                padding: const EdgeInsets.only(top: 0.0, right: 0.0, left: 8.0),
                child: IconButton(
                  icon: noteIcon,
                  onPressed: () {
                    Navigator.pushNamed(context, '/notification');
                  },
                ), // IconButton
              ), // Padding
              Padding(
                padding: const EdgeInsets.only(top: 0.0, right: 8.0, left: 8.0),
                child: IconButton(
                  onPressed: () {
                    context.read<ThemeService>().toggleTheme();
                  },
                  icon: Icon(
                    context.read<ThemeService>().themeMode == ThemeMode.dark ? Icons.light_mode : Icons.dark_mode,
                  ), // Icon
                ), // IconbButton
              ), // Padding
              Padding(
                padding: const EdgeInsets.only(top: 0.0, right: 8.0, left: 8.0),
                child:
                    // ############################# Logout Button ############################
                    Logout_Button(exitIcon: exitIcon), // IconButton
                // ########################################################################
              ), // Padding
            ],
          ), // AppBar
          body: TabBarView(
            children: [
              AllAnime(searchQuery: searchQuery),
              MyAnime(searchQuery: searchQuery),
              FavoriteAnime(searchQuery: searchQuery),
            ],
          ), // TabBarView
        ), // Scaffold
      ), // SafeArea
    ); // DefaultTabController
  }
} */

// ignore_for_file: file_names, camel_case_types

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_application_one/screens/all_anime.dart';
import 'package:flutter_application_one/features/search_function.dart';
import 'package:flutter_application_one/features/logout_button.dart';
import 'package:flutter_application_one/screens/my_anime.dart';
import 'package:flutter_application_one/screens/favorite_anime.dart';
import 'package:flutter_application_one/services/theme_service.dart';
import 'package:flutter_application_one/services/movieProvider_service.dart';

class StartScreenWidget extends StatefulWidget {
  const StartScreenWidget({super.key});

  @override
  State<StartScreenWidget> createState() => _StartScreenWidgetState();
}

class _StartScreenWidgetState extends State<StartScreenWidget> {
  // ######################################################################################
  // Variablen
  // ######################################################################################
  int currentPageIndex = 0;
  final ValueNotifier<String> searchQuery = ValueNotifier<String>('');
  final Icon searchIcon = const Icon(Icons.search, size: 30);
  final Icon exitIcon = const Icon(Icons.logout_rounded, size: 30);
  final Icon noteIcon = const Icon(Icons.notifications_outlined, size: 30);

  // ######################################################################################
  // Controller
  // ######################################################################################
  final OverlayPortalController _overlaySearchController = OverlayPortalController();

  // ######################################################################################
  // Init State
  // ######################################################################################
  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) {
      // Ensure DB is created/seeded after login
      context.read<AnimeMovieProvider>().ensureInitialized();
    });
  }

  @override
  Widget build(BuildContext context) {
    // ############################ Theme Service ############################
    final themeService = context.watch<ThemeService>();
    final isDarkMode = themeService.themeMode == ThemeMode.dark;

    return DefaultTabController(
      length: 3,
      child: SafeArea(
        child: Scaffold(
          // ############################ AppBar ############################
          appBar: AppBar(
            automaticallyImplyLeading: false,
            toolbarHeight: 100,
            centerTitle: true,
            title: const Text(''),
            // ############################ Leading Profile ############################
            leading: GestureDetector(
              onTap: () => Navigator.pushNamed(context, '/profile'),
              child: Padding(
                padding: const EdgeInsets.only(top: 10, left: 16),
                child: Container(
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.fromBorderSide(BorderSide(color: Colors.white, width: 1)),
                    image: DecorationImage(
                      image: AssetImage('assets/images/FabianStrottmann_Pic.png'),
                      fit: BoxFit.contain,
                    ), // DecorationImage
                  ), // BoxDecoration
                ), // Container
              ), // Padding
            ), // GestureDetector
            // ############################ TabBar ############################
            bottom: TabBar(
              unselectedLabelColor: Colors.grey,
              unselectedLabelStyle: TextStyle(fontStyle: FontStyle.italic, fontSize: 13.0), // TextStyle
              labelColor: Colors.white,
              labelStyle: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold, fontFamily: 'Audiowide'), // TextStyle
              indicatorPadding: EdgeInsets.only(left: -15.0, right: -15.0),
              indicator: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(10),
                  topLeft: Radius.circular(10),
                ), // BorderRadius.only
                border: Border(
                  left: BorderSide(color: Colors.white),
                  right: BorderSide(color: Colors.white),
                  top: BorderSide(color: Colors.white),
                ), // Border
              ), // BoxDecoration
              tabs: [
                Tab(text: 'All Anime', icon: Icon(Icons.list_alt_outlined)),
                Tab(text: 'My Anime', icon: Icon(Icons.bookmark_border_outlined)), // Tab
                Tab(text: 'Fav Anime', icon: Icon(Icons.star_border_outlined)),
              ],
            ), // TabBar
            // ############################ Actions ############################
            actions: [
              // ############################ Search Button ############################
              GestureDetector(
                onTap: _overlaySearchController.toggle,
                child: OverlayPortal(
                  controller: _overlaySearchController,
                  overlayChildBuilder: (_) => SearchFunction(searchQuery: searchQuery),
                  child: Padding(padding: const EdgeInsets.only(top: 0), child: searchIcon), // Padding
                ), // OverlayPortal
              ), // GestureDetector
              // ############################ Notification Button ############################
              IconButton(icon: noteIcon, onPressed: () => Navigator.pushNamed(context, '/notification')), // IconButton
              // ############################ Theme Toggle Button ############################
              IconButton(
                icon: Icon(isDarkMode ? Icons.light_mode : Icons.dark_mode),
                onPressed: () => themeService.toggleTheme(),
              ), // IconButton
              // ############################ Logout Button ############################
              Logout_Button(exitIcon: exitIcon),
            ],
          ), // AppBar
          // ############################ Body / TabBarView ############################
          body: TabBarView(
            children: [
              AllAnime(searchQuery: searchQuery),
              MyAnime(searchQuery: searchQuery),
              FavoriteAnime(searchQuery: searchQuery),
            ], // children
          ), // TabBarView
        ), // Scaffold
      ), // SafeArea
    ); // DefaultTabController
  }
}
