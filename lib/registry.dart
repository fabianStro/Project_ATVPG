import 'package:flutter/material.dart';

class RegistryWidget extends StatefulWidget {
  const RegistryWidget({super.key});

  @override
  State<RegistryWidget> createState() => _RegistryWidgetState();
}

class _RegistryWidgetState extends State<RegistryWidget> {
  final TextEditingController _usernameController = TextEditingController(),
      _clearNameController = TextEditingController(),
      _emailController = TextEditingController(),
      _passwordController = TextEditingController(),
      _passwordConfirmController = TextEditingController();

  final _appBarBorderStyle = BorderSide(color: Colors.white, width: 2.0);

  final ButtonStyle _buttonStyle = ElevatedButton.styleFrom(backgroundColor: Colors.grey);
  final TextStyle _buttonTextStyle = TextStyle(color: Colors.white, fontFamily: 'Arial');

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        //resizeToAvoidBottomInset: false,
        appBar: AppBar(
          automaticallyImplyLeading: false,
          toolbarHeight: 100,
          shape: Border(bottom: _appBarBorderStyle, top: _appBarBorderStyle), // Border
          centerTitle: true,
          title: Text('Registry', style: TextStyle(fontSize: 50.0, letterSpacing: 4.0, fontFamily: 'Audiowide')),
        ), // AppBar
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 40, left: 60.0, right: 60.0),
                child: Column(
                  children: [
                    TextField(
                      controller: _usernameController,
                      autocorrect: false,
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.only(top: 16.0),
                        border: OutlineInputBorder(borderRadius: BorderRadius.circular(25.0)),
                        labelText: 'Username',
                      ), // InputDecoration
                    ), // TextField
                    SizedBox(height: 20.0),
                    TextField(
                      controller: _clearNameController,
                      autocorrect: false,
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.only(top: 16.0),
                        border: OutlineInputBorder(borderRadius: BorderRadius.circular(25.0)),
                        labelText: 'First/Last name',
                      ), // InputDecoration
                    ), // TextField
                    SizedBox(height: 20.0),
                    TextField(
                      controller: _emailController,
                      autocorrect: false,
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.only(top: 16.0),
                        border: OutlineInputBorder(borderRadius: BorderRadius.circular(25.0)),
                        labelText: 'E-mail',
                      ), // InputDecoration
                    ), // TextField
                    SizedBox(height: 20.0),
                    TextField(
                      controller: _passwordController,
                      autocorrect: false,
                      obscureText: true,
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.only(top: 16.0),
                        border: OutlineInputBorder(borderRadius: BorderRadius.circular(25.0)),
                        labelText: 'Password',
                      ), // InputDecoration
                    ), // TextField
                    SizedBox(height: 20.0),
                    TextField(
                      controller: _passwordConfirmController,
                      autocorrect: false,
                      obscureText: true,
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.only(top: 16.0),
                        border: OutlineInputBorder(borderRadius: BorderRadius.circular(25.0)),
                        labelText: 'Confirm Password',
                      ), // InputDecoration
                    ), // TextField
                    SizedBox(height: 40.0),
                    SizedBox(
                      width: 150.0,
                      child: ElevatedButton(
                        style: _buttonStyle,
                        onPressed: () {
                          Navigator.pushNamed(context, '');
                        },
                        child: Text('Register', style: _buttonTextStyle), // Text
                      ), // ElevatedButton
                    ), // SizedBox
                  ],
                ), // Column
              ), // Padding
              SizedBox(height: 50.0),
              const Divider(height: 30, thickness: 2, indent: 0, endIndent: 0, color: Colors.white),
              Text(
                'You already have an account?',
                style: TextStyle(color: Colors.grey[400], fontFamily: 'Arial'),
              ), // Text
              Text(
                'Login here',
                style: TextStyle(color: Colors.grey[400], fontFamily: 'Arial'),
              ), // Text
              SizedBox(height: 20.0),
              SizedBox(
                width: 150.0,
                child: ElevatedButton(
                  style: _buttonStyle,
                  onPressed: () {
                    Navigator.pushNamed(context, '/home');
                  },
                  child: Text('Go to Login', style: _buttonTextStyle), // Text
                ), // ElevatedButton
              ), // SizedBox
            ], // Children
          ), // Column
        ), // SingleChildScrollView
      ), // Scaffold
    ); // SafeArea
  }
}
