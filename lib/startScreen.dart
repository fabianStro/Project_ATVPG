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
  final Icon icon = Icon(Icons.search, size: 35.0), _exitIcon = Icon(Icons.logout_rounded, size: 35.0);
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
            title: Text(''),
            leading: GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/profile');
              },
              child: Padding(
                padding: EdgeInsets.only(top: 18.0, left: 16.0),
                child: Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: Colors.white, width: 1.0),
                    image: DecorationImage(image: AssetImage('assets/images/profile2.png'), fit: BoxFit.cover),
                  ), // BoxDecoration
                ), // Container
              ), // Padding
            ), // GestureDetector
            bottom: TabBar(
              tabAlignment: TabAlignment.fill,
              unselectedLabelColor: Colors.grey,
              unselectedLabelStyle: TextStyle(fontStyle: FontStyle.italic),
              labelColor: Colors.white,
              labelStyle: TextStyle(fontSize: 16.0),
              indicatorPadding: EdgeInsets.only(left: -15.0, right: -15.0),
              indicator: BoxDecoration(
                borderRadius: BorderRadius.only(topRight: Radius.circular(10), topLeft: Radius.circular(10)),
                border: Border(
                  left: BorderSide(color: Colors.white),
                  right: BorderSide(color: Colors.white),
                  top: BorderSide(color: Colors.white),
                  //bottom: BorderSide(color: Colors.white),
                ), // Border
              ), // BoxDecoration
              tabs: [
                Tab(text: 'All Anime'),
                Tab(text: 'My Anime'),
                Tab(text: 'Fav Anime'),
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
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(10.0), color: Colors.blue),
                        height: 50,
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: const Text(
                            'Hier erscheint die SearchBar',
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.bold),
                          ), // Text
                        ), // Padding
                      ), // Container
                    ); // Positioned
                  },
                  child: Padding(padding: EdgeInsets.only(top: 16.0), child: icon), // Padding
                ), // OverlayPortal
              ), // GestureDetector
              Padding(
                padding: const EdgeInsets.only(top: 10.0, right: 8.0, left: 8.0),
                child: IconButton(
                  icon: _exitIcon,
                  onPressed: () {
                    Navigator.pushNamed(context, '/home');
                  },
                ), // IconButton
              ), // Padding
            ],
          ), // AppBar
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
