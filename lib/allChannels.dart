import 'package:flutter/material.dart';

// #########################################################################################
// allChannel Widget
// #########################################################################################
class AllChannels extends StatelessWidget {
  const AllChannels();

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        children: [
          // #######################################################################################
          ListTile(
            leading: Image.asset(
              'assets/images/broadcastImages/Highschool_dxd_logo.png',
              width: 80,
              height: 80,
              fit: BoxFit.cover,
            ),
            title: Text('Highschool DxD'),
            subtitle: Text('Genre: Anime, Comedy, Ecchi, Harem'),
            shape: Border(
              bottom: BorderSide(color: Colors.white, width: 1.0),
              top: BorderSide(color: Colors.white, width: 2.0),
            ),
          ),
          // #######################################################################################
          ListTile(
            leading: Image.asset(
              'assets/images/broadcastImages/Highschool_dxd_new_logo.png',
              width: 80,
              height: 80,
              fit: BoxFit.cover,
            ),
            title: Text('Highschool DxD New'),
            subtitle: Text('Genre: Anime, Comedy, Ecchi, Harem'),
            shape: Border(
              bottom: BorderSide(color: Colors.white, width: 1.0),
              top: BorderSide(color: Colors.white, width: 1.0),
            ),
          ),
          // #######################################################################################
          ListTile(
            leading: Image.asset(
              'assets/images/broadcastImages/Highschool_dxd_born_logo.png',
              width: 80,
              height: 80,
              fit: BoxFit.cover,
            ),
            title: Text('Highschool DxD Born'),
            subtitle: Text('Genre: Anime, Comedy, Ecchi, Harem'),
            shape: Border(
              bottom: BorderSide(color: Colors.white, width: 1.0),
              top: BorderSide(color: Colors.white, width: 1.0),
            ),
          ),
          // #######################################################################################
          ListTile(
            leading: Image.asset(
              'assets/images/broadcastImages/Highschool_dxd_hero_logo.png',
              width: 80,
              height: 80,
              fit: BoxFit.cover,
            ),
            title: Text('Highschool DxD Hero'),
            subtitle: Text('Genre: Anime, Comedy, Ecchi, Harem'),
            shape: Border(
              bottom: BorderSide(color: Colors.white, width: 1.0),
              top: BorderSide(color: Colors.white, width: 1.0),
            ),
          ),
          // #######################################################################################
          ListTile(
            leading: Image.asset(
              'assets/images/broadcastImages/SoloLeveling_logo.jpg',
              width: 80,
              height: 80,
              fit: BoxFit.cover,
            ),
            title: Text('Solo Leveling'),
            subtitle: Text('Genre: Anime, Action, Fantasy'),
            shape: Border(
              bottom: BorderSide(color: Colors.white, width: 1.0),
              top: BorderSide(color: Colors.white, width: 1.0),
            ),
          ),
          // #######################################################################################
          ListTile(
            leading: Image.asset(
              'assets/images/broadcastImages/UQHolder_logo.png',
              width: 80,
              height: 80,
              fit: BoxFit.cover,
            ),
            title: Text('UQ Holder'),
            subtitle: Text('Genre: Anime, Fantasy, Abenteuer, Action, Shōnen'),
            shape: Border(
              bottom: BorderSide(color: Colors.white, width: 1.0),
              top: BorderSide(color: Colors.white, width: 1.0),
            ),
          ),
          // #######################################################################################
          ListTile(
            leading: Image.asset(
              'assets/images/broadcastImages/TheEminenceInShadow_logo.png',
              width: 80,
              height: 80,
              fit: BoxFit.cover,
            ),
            title: Text('The Eminence in Shadow'),
            subtitle: Text('Genre: Anime, Adventure,Isekai'),
            shape: Border(
              bottom: BorderSide(color: Colors.white, width: 1.0),
              top: BorderSide(color: Colors.white, width: 1.0),
            ),
          ),
          // #######################################################################################
          ListTile(
            leading: Image.asset(
              'assets/images/broadcastImages/AkameGaKill_logo.png',
              width: 80,
              height: 80,
              fit: BoxFit.cover,
            ),
            title: Text('Akem Ga Kill'),
            subtitle: Text('Genre: Anime, Action, Adventure, Drama, Horror, Fantasy, Shōnen'),
            shape: Border(
              bottom: BorderSide(color: Colors.white, width: 1.0),
              top: BorderSide(color: Colors.white, width: 1.0),
            ),
          ),
          // #######################################################################################
          ListTile(
            leading: Image.asset(
              'assets/images/broadcastImages/KonoSuba_logo.png',
              width: 80,
              height: 80,
              fit: BoxFit.cover,
            ),
            title: Text('Konosuba'),
            subtitle: Text('Genre: Anime, Comedy, Fantasy, Etchi'),
            shape: Border(
              bottom: BorderSide(color: Colors.white, width: 1.0),
              top: BorderSide(color: Colors.white, width: 1.0),
            ),
          ),
          // #######################################################################################
          ListTile(
            leading: Image.asset(
              'assets/images/broadcastImages/Call_of_the_Night_logo.png',
              width: 80,
              height: 80,
              fit: BoxFit.cover,
            ),
            title: Text('Call of the Night'),
            subtitle: Text('Genre: Anime, Romance, Comedy'),
            shape: Border(
              bottom: BorderSide(color: Colors.white, width: 1.0),
              top: BorderSide(color: Colors.white, width: 1.0),
            ),
          ),
          // #######################################################################################
          ListTile(
            leading: Image.asset(
              'assets/images/broadcastImages/Shinchou_Yuusha_logo.png',
              width: 80,
              height: 80,
              fit: BoxFit.cover,
            ),
            title: Text('Kono Yūsha ga Ore Tsuē Kuse ni Shinchō Sugiru'),
            subtitle: Text('Genre: Anime, Isekai, Fantasy, Comedy, Action'),
            shape: Border(
              bottom: BorderSide(color: Colors.white, width: 1.0),
              top: BorderSide(color: Colors.white, width: 1.0),
            ),
          ),
        ],
      ),
    );
  }
}
