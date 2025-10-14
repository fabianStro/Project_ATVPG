import 'package:flutter/material.dart';

class StartScreenWidget extends StatefulWidget {
  const StartScreenWidget({super.key});

  @override
  State<StartScreenWidget> createState() => _StartScreenWidgetState();
}

class _StartScreenWidgetState extends State<StartScreenWidget> {
  int currentPageIndex = 0;
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            bottom: const TabBar(
              padding: EdgeInsets.only(left: 80.0),
              tabAlignment: TabAlignment.fill,
              labelPadding: EdgeInsets.only(left: 10.0, right: 10.0),
              unselectedLabelColor: Colors.grey,
              indicatorWeight: 0.0,
              indicator: ShapeDecoration(
                shape: Border(
                  left: BorderSide(color: Colors.white),
                  right: BorderSide(color: Colors.white),
                  top: BorderSide(color: Colors.white),
                ), // Border
              ), // ShapeDecoration
              labelColor: Colors.white,
              tabs: [
                Tab(text: 'All Channels'),
                Tab(text: 'My Cahnnels'),
                Tab(text: 'Favorites'),
              ],
            ), // TabBar
          ), // AppBar
          body: TabBarView(
            children: [
              /* Padding(
                padding: const EdgeInsets.only(top: 20.0, left: 20.0, right: 80.0, bottom: 30.0),
                // ######################################################################################
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
                      ), // Ic
                    ),
                  ],
                ),
              ), */
              Container(
                color: Colors.blueGrey,
                child: Center(
                  child: Text(
                    'Start Screen',
                    style: TextStyle(fontSize: 40.0, fontFamily: 'Audiowide', letterSpacing: 4.0),
                  ),
                ),
              ),
              Container(
                color: Colors.blueGrey,
                child: Center(
                  child: Text(
                    'My Channels',
                    style: TextStyle(fontSize: 40.0, fontFamily: 'Audiowide', letterSpacing: 4.0),
                  ),
                ),
              ),
              Container(
                color: Colors.blueGrey,
                child: Center(
                  child: Text(
                    'Favorites',
                    style: TextStyle(fontSize: 40.0, fontFamily: 'Audiowide', letterSpacing: 4.0),
                  ),
                ),
              ),
            ],
          ), // TabBarView
          // ######################################################################################
          bottomNavigationBar: NavigationBar(
            onDestinationSelected: (int index) {
              setState(() {
                currentPageIndex = index;
                if (index == 0) {
                  Navigator.pushNamed(context, '/start');
                } else if (index == 1) {
                  Navigator.pushNamed(context, '/home');
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
          ), // NavigationBar
        ), // Scaffold
      ), // SafeArea
    ); // DefaultTabController
  }
}
