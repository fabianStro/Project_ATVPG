import 'package:flutter/material.dart';

class NotificationWidget extends StatefulWidget {
  const NotificationWidget({super.key});

  @override
  State<NotificationWidget> createState() => _NotificationWidgetState();
}

class _NotificationWidgetState extends State<NotificationWidget> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: 100.0,
          shape: Border(
            bottom: BorderSide(color: Colors.white, width: 2.0),
            top: BorderSide(color: Colors.white, width: 2.0),
          ), // Border
          centerTitle: true,
          title: Text('Notification', style: TextStyle(fontSize: 50.0, letterSpacing: 4.0, fontFamily: 'Arial')),
        ), // AppBar
        body: Column(
          //mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('When would you like to be reminded?', style: TextStyle(fontSize: 20.0, fontFamily: 'Arial')),
            SizedBox(
              width: 100.0,
              child: TextField(
                obscureText: false,
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.all(10.0),
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(25.0)),
                  labelText: 'Enter time',
                ), // InputDecoration
              ), // TextField
            ), // SizedBox
          ],
        ), // Column
      ), // Scaffold
    ); // SafeArea
  }
}
