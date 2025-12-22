// ignore_for_file: camel_case_types, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'features/login_button.dart';
import 'features/input_validators.dart';
// import 'package:flutter_application_one/auth_Service.dart';
// import 'package:provider/provider.dart';

class LoginWidget extends StatefulWidget {
  const LoginWidget({super.key});

  @override
  State<LoginWidget> createState() => _LoginWidgetState();
}

class _LoginWidgetState extends State<LoginWidget> {
  final TextEditingController _emailController = TextEditingController(), _passwordController = TextEditingController();
  final ValueNotifier<bool> isValid = ValueNotifier<bool>(false);
  final Text heading01 = Text(
    'ATVPG',
    style: TextStyle(fontSize: 50.0, letterSpacing: 2.2, fontFamily: 'Audiowide'),
  ); // Text
  final Text heading02 = Text('LOGIN', style: TextStyle(fontSize: 35.0, letterSpacing: 2.0, fontFamily: 'Arial'));

  @override
  void initState() {
    super.initState();

    _passwordController.addListener(_validate);
  }

  void _validate() {
    final email_Ok = validateEmail(_emailController.text) == null;
    final pw_Ok = validatePw(_passwordController.text) == null;

    isValid.value = email_Ok && pw_Ok;
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          automaticallyImplyLeading: false,
          toolbarHeight: 100.0,
          shape: Border(
            bottom: BorderSide(color: Colors.white, width: 2.0),
            top: BorderSide(color: Colors.white, width: 2.0),
          ), // Border
          centerTitle: true,
          title: heading01,
        ), // AppBar
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(left: 60.0, right: 60.0),
            child: Column(
              children: [
                Padding(padding: EdgeInsets.only(top: 200.0), child: heading02),
                SizedBox(height: 20.0),
                TextFormField(
                  autocorrect: false,
                  controller: _emailController,
                  obscureText: false,
                  validator: validateEmail,
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.only(top: 16.0, left: 10.0),
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(25.0)),
                    labelText: 'E-Mail',
                  ), // InputDecoration
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                ), // TextFormField
                SizedBox(height: 20.0),
                TextFormField(
                  autocorrect: false,
                  controller: _passwordController,
                  obscureText: true,
                  validator: validatePw,
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.only(top: 16.0, left: 10.0),
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(25.0)),
                    labelText: 'Password',
                  ), // InputDecoration
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                ), // TextFormField
                SizedBox(height: 25.0),
                // ############################# Login Button #############################
                LoginButton(
                  isValid: isValid,
                  emailController: _emailController,
                  passwordController: _passwordController,
                ), // LoginButton
                // ########################################################################
                SizedBox(height: 15.0),
                GestureDetector(
                  onTap: () => Navigator.pushNamed(context, '/forgot'),
                  child: Text(
                    'Forgot your password?',
                    style: TextStyle(
                      color: Colors.grey[400],
                      fontFamily: 'Arial',
                      fontSize: 17.0,
                      decoration: TextDecoration.underline,
                    ), // TextStyle
                  ), // Text
                ), // GestureDetector
                SizedBox(height: 8.0),
                Text(
                  'or',
                  style: TextStyle(color: Colors.grey[400], fontFamily: 'Arial', fontSize: 17.0),
                ), // Text
                SizedBox(height: 8.0),
                GestureDetector(
                  onTap: () => Navigator.pushNamed(context, '/registry'),
                  child: Text(
                    'Registration',
                    style: TextStyle(
                      color: Colors.grey[400],
                      fontFamily: 'Arial',
                      fontSize: 17.0,
                      decoration: TextDecoration.underline,
                    ), // TextStyle
                  ), // Text
                ), // GestureDetector
                SizedBox(height: 85.0),
                Text(
                  '2025 \u00a9 ATVPG All Rights Reserved',
                  style: TextStyle(color: Colors.grey[600], fontFamily: 'Arial'),
                ),
              ], // children
            ), // Column
          ), // Padding
        ), // SingleChildScrollView
      ), // Scaffold
    ); // SafeArea
  }
}
