import 'package:flutter/material.dart';
import 'package:flutter_application_one/allAnime.dart';
import 'package:flutter_application_one/myAnime.dart';
import 'package:flutter_application_one/favoriteAnime.dart';

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
  final Icon _searchIcon = Icon(Icons.search, size: 30.0),
      _exitIcon = Icon(Icons.logout_rounded, size: 30.0),
      _noteIcon = Icon(Icons.notifications_outlined, size: 30.0);
  final OverlayPortalController _overlayController = OverlayPortalController();
  // ######################################################################################
  // Instanzen der Screens
  // ######################################################################################
  // final LoginWidget _loginWidget = LoginWidget();
  // late final String _user = ModalRoute.of(context)!.settings.arguments as String;
  final AllAnime _allAnime = AllAnime();
  final MyAnime _myAnime = MyAnime();
  final FavoriteAnime _myFavAnime = FavoriteAnime();

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            toolbarHeight: 100.0,
            title: Text(''),
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
                    image: DecorationImage(image: AssetImage('assets/images/profile2.png'), fit: BoxFit.contain),
                  ), // BoxDecoration
                ), // Container
              ), // Padding
            ), // GestureDetector
            bottom: TabBar(
              unselectedLabelColor: Colors.grey,
              unselectedLabelStyle: TextStyle(fontStyle: FontStyle.italic),
              labelColor: Colors.white,
              labelStyle: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
              indicatorPadding: EdgeInsets.only(left: -15.0, right: -15.0),
              indicator: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.only(topRight: Radius.circular(10), topLeft: Radius.circular(10)),
                border: Border(
                  left: BorderSide(color: Colors.white),
                  right: BorderSide(color: Colors.white),
                  top: BorderSide(color: Colors.white),
                ), // Border
              ), // BoxDecoration
              tabs: [
                /*  Container(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  decoration: BoxDecoration(color: Colors.pink),
                  child: Tab(text: 'All Anime'),
                ), */
                Tab(text: 'All Anime'),
                Tab(text: 'My Anime', icon: Icon(Icons.bookmark_border_outlined)),
                Tab(text: 'Fav Anime', icon: Icon(Icons.star_border_outlined)),
              ],
            ), // TabBar
            actions: [
              GestureDetector(
                onTap: _overlayController.toggle,
                child: OverlayPortal(
                  controller: _overlayController,
                  overlayChildBuilder: (BuildContext context) {
                    return Positioned(
                      top: 110,
                      width: 390,
                      child: Container(
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(30.0), color: Colors.white),
                        height: 50,
                        child: const Text(
                          'Hier erscheint die SearchBar',
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.bold),
                        ), // Text
                      ), // Container
                    ); // Positioned
                  },
                  child: Padding(padding: EdgeInsets.only(top: 0.0), child: _searchIcon), // Padding
                ), // OverlayPortal
              ), // GestureDetector
              Padding(
                padding: const EdgeInsets.only(top: 0.0, right: 0.0, left: 8.0),
                child: IconButton(
                  icon: _noteIcon,
                  onPressed: () {
                    Navigator.pushNamed(context, '/notification');
                  },
                ), // IconButton
              ), // Padding
              Padding(
                padding: const EdgeInsets.only(top: 0.0, right: 8.0, left: 8.0),
                child: IconButton(
                  icon: _exitIcon,
                  onPressed: () {
                    Navigator.pushNamed(context, '/home');
                  },
                ), // IconButton
              ), // Padding
            ],
          ), // AppBar
          /*  drawer: Drawer(
            child: ListView(
              padding: EdgeInsets.only(left: 30.0),
              children: [
                DrawerHeader(
                  decoration: BoxDecoration(color: Colors.black), // BoxDecoration
                  child: Text('Menu', style: TextStyle(fontSize: 30.0, color: Colors.white)),
                ), // DrawerHeader
                ListTile(
                  title: Text('Home', style: TextStyle(fontSize: 20.0, color: Colors.white)),
                  onTap: () {
                    Navigator.pushNamed(context, '/start');
                  },
                ), // ListTile
                ListTile(
                  title: Text('Logout', style: TextStyle(fontSize: 20.0, color: Colors.white)),
                  onTap: () {
                    Navigator.pushNamed(context, '/home');
                  },
                ), // ListTile
              ],
            ), // ListView
          ), // Drawer */
          body: TabBarView(
            children: [
              // ######################################################################################
              // FIRST SCREEN All Channels
              _allAnime,
              // ######################################################################################
              // SECOND SCREEN My Channels
              _myAnime,
              // ######################################################################################
              // THIRD SCREEN Favorites
              _myFavAnime,
            ],
          ), // TabBarView
        ), // Scaffold
      ), // SafeArea
    ); // DefaultTabController
  }
}
