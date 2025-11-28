import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class ProfileWidget extends StatefulWidget {
  const ProfileWidget({super.key});

  @override
  State<ProfileWidget> createState() => _LoginWidgetState();
}

class _LoginWidgetState extends State<ProfileWidget> {
  //final supabase = Supabase.instance.client;

  Future<String> loadUserEmail() async => Supabase.instance.client.auth.currentUser?.email ?? 'No user logged in';

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
          title: Text('Profile', style: TextStyle(fontSize: 50.0, letterSpacing: 2.2, fontFamily: 'Audiowide')),
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
            FutureBuilder(
              future: loadUserEmail(),
              builder: (context, snapshot) {
                if (!snapshot.hasData) {
                  return Center(child: CircularProgressIndicator());
                }
                final userEmail = snapshot.data!;
                //final user = userData;

                return Padding(
                  padding: EdgeInsets.only(left: 16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('E-Mail: $userEmail', style: TextStyle(fontSize: 20.0)),
                      SizedBox(height: 15),
                      Text('First name: XXX', style: TextStyle(fontSize: 20.0)),
                      SizedBox(height: 15),
                      Text('Last name: XXX', style: TextStyle(fontSize: 20.0)),
                      SizedBox(height: 15),
                      Text('Password:', style: TextStyle(fontSize: 20.0)),
                    ], // children of Column
                  ), // Column
                ); // Padding
              },
            ), // FutureBuilder
            SizedBox(height: 85.0),
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
