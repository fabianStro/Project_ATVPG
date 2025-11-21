// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_application_one/allAnime.dart';
import 'package:flutter_application_one/myAnime.dart';
import 'package:flutter_application_one/favoriteAnime.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

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
  final OverlayPortalController _overlaySearchController = OverlayPortalController();
  final ValueNotifier<String> _searchQuery = ValueNotifier<String>('');

  // ######################################################################################
  // Instanzen der Screens
  // ######################################################################################
  late final AllAnime _allAnime;
  late final MyAnime _myAnime;
  late final FavoriteAnime _myFavAnime;

  @override
  void initState() {
    super.initState();
    _allAnime = AllAnime(searchQuery: _searchQuery);
    _myAnime = MyAnime(searchQuery: _searchQuery);
    _myFavAnime = FavoriteAnime(searchQuery: _searchQuery);
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
                    image: DecorationImage(image: AssetImage('assets/images/profile2.png'), fit: BoxFit.contain),
                  ), // BoxDecoration
                ), // Container
              ), // Padding
            ), // GestureDetector
            bottom: TabBar(
              unselectedLabelColor: Colors.grey,
              unselectedLabelStyle: TextStyle(fontStyle: FontStyle.italic, fontSize: 13.0),
              labelColor: Colors.white,
              labelStyle: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
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
                Tab(text: 'All Anime', icon: Icon(Icons.list_alt_outlined)),
                Tab(text: 'My Anime', icon: Icon(Icons.bookmark_border_outlined)),
                Tab(text: 'Fav Anime', icon: Icon(Icons.star_border_outlined)),
              ],
            ), // TabBar
            actions: [
              GestureDetector(
                onTap: _overlaySearchController.toggle,
                child: OverlayPortal(
                  controller: _overlaySearchController,
                  overlayChildBuilder: (BuildContext context) {
                    return Positioned(
                      top: 110,
                      width: 390,
                      child: Container(
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(30.0), color: Colors.white),
                        height: 50,
                        child: TextField(
                          onChanged: (value) {
                            _searchQuery.value = value;
                          },
                          decoration: InputDecoration(
                            hintText: 'Search anime...',
                            hintStyle: TextStyle(color: Colors.black, fontSize: 14.0),
                            prefixIcon: Icon(Icons.search, color: Colors.grey),
                            suffixIcon: GestureDetector(
                              onTap: () {
                                _searchQuery.value = '';
                              },
                              child: Icon(Icons.clear, color: Colors.grey),
                            ),
                            border: InputBorder.none,
                            contentPadding: EdgeInsets.symmetric(vertical: 15.0),
                          ),
                          style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.normal, color: Colors.black),
                        ),
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
                  onPressed: () async {
                    await Supabase.instance.client.auth.signOut();
                    if (context.mounted) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text(
                            'Logout successful!',
                            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
                          ),
                          duration: Duration(seconds: 2),
                        ),
                      );
                      Navigator.pushNamed(context, '/home');
                    }
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
