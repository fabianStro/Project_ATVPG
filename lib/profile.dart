import 'package:flutter/material.dart';

class ProfileWidget extends StatefulWidget {
  const ProfileWidget({super.key});

  @override
  State<ProfileWidget> createState() => _LoginWidgetState();
}

class _LoginWidgetState extends State<ProfileWidget> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          toolbarHeight: 100.0,
          shape: Border(
            bottom: BorderSide(color: Colors.white, width: 2.0),
            top: BorderSide(color: Colors.white, width: 2.0),
          ), // Border
          centerTitle: true,
          title: Text('Profile', style: TextStyle(fontSize: 50.0, letterSpacing: 4.0, fontFamily: 'Audiowide')),
        ), // AppBar
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(top: 30.0),
              child: Center(
                child: ClipOval(
                  child: Image.asset('assets/images/profile2.png', width: 180, height: 180, fit: BoxFit.cover),
                ), // ClipOval
              ), // Center
            ), // Padding
            SizedBox(height: 15.0),
            const Divider(height: 30, thickness: 2, indent: 0, endIndent: 0, color: Colors.white),
            SizedBox(height: 15.0),
            Padding(
              padding: EdgeInsets.only(left: 16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('First name: Fabian', style: TextStyle(fontSize: 20.0)),
                  SizedBox(height: 15),
                  Text('Last name: Strottmann', style: TextStyle(fontSize: 20.0)),
                  SizedBox(height: 15),
                  Text('Username: Reaper', style: TextStyle(fontSize: 20.0)),
                  SizedBox(height: 15),
                  Text('E-mail: Reaper@hell.com', style: TextStyle(fontSize: 20.0)),
                  SizedBox(height: 15),
                  Text('Password: ****', style: TextStyle(fontSize: 20.0)),
                ],
              ), // Column
            ), // Padding
            SizedBox(height: 40.0),
            Center(
              child: Column(
                children: [
                  SizedBox(
                    width: 200.0,
                    child: Center(
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.pushNamed(context, '/start');
                        },
                        style: ElevatedButton.styleFrom(alignment: Alignment.center, backgroundColor: Colors.grey),
                        child: Text(
                          'Back to Main Screen',
                          style: TextStyle(color: Colors.white, fontFamily: 'Arial'),
                        ), // Text
                      ), // ElevatedButton
                    ), // Center
                  ), // SizedBox
                ],
              ), // Column
            ), // Center
          ], // children of body Column
        ), // Column
      ), // Scaffold
    ); // SafeArea
  }
}
