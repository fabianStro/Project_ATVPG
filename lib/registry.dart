import 'package:flutter/material.dart';

class RegistryWidget extends StatefulWidget {
  const RegistryWidget({super.key});

  @override
  State<RegistryWidget> createState() => _RegistryWidgetState();
}

class _RegistryWidgetState extends State<RegistryWidget> {
  final _appBarBorderStyle = BorderSide(color: Colors.white, width: 2.0);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: 100,
          shape: Border(bottom: _appBarBorderStyle, top: _appBarBorderStyle), // Border
          centerTitle: true,
          title: Text('Registry', style: TextStyle(fontSize: 50.0, letterSpacing: 4.0, fontFamily: 'Audiowide')),
        ), // AppBar
        body: Padding(
          padding: const EdgeInsets.only(left: 60.0, right: 60.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.only(top: 16.0),
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(25.0)),
                  labelText: 'Username',
                ), // InputDecoration
              ), // TextField
              SizedBox(height: 20.0),
              TextField(
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.only(top: 16.0),
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(25.0)),
                  labelText: 'Email',
                ), // InputDecoration
              ), // TextField
              SizedBox(height: 20.0),
              TextField(
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.only(top: 16.0),
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(25.0)),
                  labelText: 'Email',
                ), // InputDecoration
              ), // TextField
              SizedBox(height: 20.0),
              TextField(
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.only(top: 16.0),
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(25.0)),
                  labelText: 'Email',
                ), // InputDecoration
              ), // TextField
              SizedBox(height: 20.0),
              TextField(
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.only(top: 16.0),
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(25.0)),
                  labelText: 'Email',
                ), // InputDecoration
              ), // TextField
              SizedBox(height: 20.0),
            ],
          ),
        ), // Column
      ), // Scaffold
    ); // SafeArea
  }
}
