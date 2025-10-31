import 'package:flutter/material.dart';
import 'package:flutter_application_one/allChannels.dart';
import 'package:flutter_application_one/myChannels.dart';
import 'package:flutter_application_one/favorite.dart';

class StartScreenWidget extends StatefulWidget {
  const StartScreenWidget({super.key});

  @override
  State<StartScreenWidget> createState() => _StartScreenWidgetState();
}

class _StartScreenWidgetState extends State<StartScreenWidget> {
  int currentPageIndex = 0;
  // ######################################################################################
  // Instanzen der Screens
  // ######################################################################################
  // final LoginWidget _loginWidget = LoginWidget();
  // late final String _user = ModalRoute.of(context)!.settings.arguments as String;
  final AllChannels _allChannels = AllChannels();
  final MyChannels _myChannels = MyChannels();
  final FavoriteBroadcast _myFavorites = FavoriteBroadcast();

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
                padding: const EdgeInsets.only(top: 16.0, left: 16.0),
                child: Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: Colors.white, width: 1),
                    image: const DecorationImage(image: AssetImage('assets/images/profile2.png'), fit: BoxFit.cover),
                  ), // BoxDecoration
                ), // Container
              ), // Padding
              /* Padding(
                padding: const EdgeInsets.all(8.0),
                child: ClipOval(
                  child: Image.asset(
                    'assets/images/profile.jpg',
                    width: 20,
                    height: 20,
                    fit: BoxFit.cover,
                    color: Colors.white.withOpacity(0.5),
                    colorBlendMode: BlendMode.colorBurn,
                  ),
                ),
              ), */
            ), // GestureDetector
            bottom: const TabBar(
              padding: EdgeInsets.only(left: 80.0),
              tabAlignment: TabAlignment.fill,
              labelPadding: EdgeInsets.only(),
              unselectedLabelColor: Colors.grey,
              labelColor: Colors.white,
              labelStyle: TextStyle(fontSize: 16.0),
              indicatorWeight: 5.0,
              indicator: ShapeDecoration(
                shape: Border(
                  left: BorderSide(color: Colors.white),
                  right: BorderSide(color: Colors.white),
                  top: BorderSide(color: Colors.white),
                ), // Border
              ), // ShapeDecoration
              tabs: [
                Tab(text: 'All Channels'),
                Tab(text: 'My Cahnnels'),
                Tab(text: 'Favorites'),
              ],
            ), // TabBar
            actions: [
              Padding(
                padding: const EdgeInsets.only(top: 10.0, right: 16.0),
                child: IconButton(
                  icon: const Icon(Icons.logout_rounded, size: 30),
                  onPressed: () {
                    Navigator.pushNamed(context, '/home');
                  },
                ),
              ),
            ],
          ), // AppBar
          body: TabBarView(
            children: [
              /* Padding(
                padding: const EdgeInsets.only(top: 20.0, left: 20.0, right: 80.0, bottom: 30.0),
                child: SearchBar(
                  //controller: controller,
                  padding: MaterialStateProperty.all(EdgeInsets.symmetric(horizontal: 16.0)),
                  hintText: 'Search',
                  onTap: () {
                    print('Search Bar tapped');
                  },
                  onChanged: (String value) {},
                  leading: const Icon(Icons.menu),
                  trailing: <Widget>[
                    Tooltip(
                      message: 'Filter',
                      child: IconButton(
                        icon: const Icon(Icons.search),
                        onPressed: () {
                          print('Search button pressed');
                        },
                      ),
                    ),
                  ],
                ),
              ), */
              // ######################################################################################
              // FIRST SCREEN All Channels
              _allChannels,
              // ######################################################################################
              // SECOND SCREEN My Channels
              _myChannels,
              // ######################################################################################
              // THIRD SCREEN Favorites
              _myFavorites,
            ],
          ), // TabBarView
          // ######################################################################################
          /*  bottomNavigationBar: NavigationBar(
            onDestinationSelected: (int index) {
              setState(() {
                currentPageIndex = index;
                if (index == 0) {
                  Navigator.pushNamed(context, '/start');
                } else if (index == 1) {
                  Navigator.pushNamed(context, '/');
                } else if (index == 2) {
                  Navigator.pushNamed(context, '/');
                }
              });
            },
            destinations: const [
              NavigationDestination(icon: Icon(Icons.tv), label: ''),
              NavigationDestination(icon: Icon(Icons.tv_off_outlined), label: ''),
              NavigationDestination(icon: Icon(Icons.star_outline_outlined), label: ''),
            ],
          ), // NavigationBar */
        ), // Scaffold
      ), // SafeArea
    ); // DefaultTabController
  }
}
