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
        body: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(),
              child: Image(image: AssetImage('assets/images/profile.jpg'), width: 10.0),
            ),
            SizedBox(height: 30.0),
            Padding(
              padding: EdgeInsets.only(left: 0.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('First name: Fabian', style: TextStyle(fontSize: 20.0)),
                  SizedBox(height: 10),
                  Text('Last name: Strottmann', style: TextStyle(fontSize: 20.0)),
                  SizedBox(height: 10),
                  Text('Username: Reaper', style: TextStyle(fontSize: 20.0)),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
