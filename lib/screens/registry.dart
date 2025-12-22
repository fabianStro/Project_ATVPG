// ignore_for_file: no_leading_underscores_for_local_identifiers, avoid_print

import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import '../features/input_validators.dart';

class RegistryWidget extends StatefulWidget {
  const RegistryWidget({super.key});

  @override
  State<RegistryWidget> createState() => _RegistryWidgetState();
}

class _RegistryWidgetState extends State<RegistryWidget> {
  final TextEditingController _emailController = TextEditingController(),
      _clearFirstNameController = TextEditingController(),
      _clearLastNameController = TextEditingController(),
      _passwordController = TextEditingController(),
      _passwordConfirmController = TextEditingController();

  final BorderSide appBarBorderStyle = BorderSide(color: Colors.white, width: 2.0);

  final ButtonStyle buttonStyle = ElevatedButton.styleFrom(backgroundColor: Colors.grey);
  final TextStyle buttonTextStyle = TextStyle(color: Colors.white, fontFamily: 'Arial');

  Future<void> insertUserData(
    String uid,
    //String username,
    String firstName,
    String lastName,
    String pictureURL,
    String email,
  ) async {
    try {
      final result = await Supabase.instance.client.from('user_data').insert({
        'uid': uid,
        'firstName': firstName,
        'lastName': lastName,
        'pictureURL': pictureURL,
        'email': email,
      });

      print("Erfolgreich eingefügt: $result");
    } catch (e) {
      print("Insert-Fehler: $e");
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          toolbarHeight: 100,
          shape: Border(bottom: appBarBorderStyle, top: appBarBorderStyle), // Border
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
                    TextFormField(
                      controller: _emailController,
                      autocorrect: false,
                      validator: validateEmail,
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.only(top: 16.0),
                        border: OutlineInputBorder(borderRadius: BorderRadius.circular(25.0)),
                        labelText: 'E-mail',
                      ), // InputDecoration
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                    ), // TextFormField
                    SizedBox(height: 20.0),
                    TextFormField(
                      controller: _clearFirstNameController,
                      autocorrect: false,
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.only(top: 16.0),
                        border: OutlineInputBorder(borderRadius: BorderRadius.circular(25.0)),
                        labelText: 'First name',
                      ), // InputDecoration
                    ), // TextFormField
                    SizedBox(height: 20.0),
                    TextFormField(
                      controller: _clearLastNameController,
                      autocorrect: false,
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.only(top: 16.0),
                        border: OutlineInputBorder(borderRadius: BorderRadius.circular(25.0)),
                        labelText: 'Last name',
                      ), // InputDecoration
                    ), // TextFormField
                    SizedBox(height: 20.0),
                    TextFormField(
                      controller: _passwordController,
                      validator: validatePw,
                      autocorrect: false,
                      obscureText: true,
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.only(top: 16.0),
                        border: OutlineInputBorder(borderRadius: BorderRadius.circular(25.0)),
                        labelText: 'Password',
                      ), // InputDecoration
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                    ), // TextFormField
                    SizedBox(height: 20.0),
                    TextFormField(
                      controller: _passwordConfirmController,
                      validator: validatePwRepeat,
                      autocorrect: false,
                      obscureText: true,
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.only(top: 16.0),
                        border: OutlineInputBorder(borderRadius: BorderRadius.circular(25.0)),
                        labelText: 'Confirm Password',
                      ), // InputDecoration
                    ), // TextFormField
                    SizedBox(height: 40.0),
                    SizedBox(
                      width: 150.0,
                      child: ElevatedButton(
                        style: buttonStyle,
                        onPressed: () async {
                          await Supabase.instance.client.auth.signUp(
                            email: _emailController.text,
                            password: _passwordController.text,
                          );
                          /*   insertUserData(
                            Supabase.instance.client.auth.currentUser?.uid,
                            _clearLastNameController.text,
                            _clearFirstNameController.text,
                            pictureURL,
                            _emailController.text,
                          ); */
                          if (context.mounted) {
                            SnackBar snackBar = SnackBar(
                              content: Text('Registration successful!'),
                              duration: Duration(seconds: 2),
                            ); // SnackBar
                            ScaffoldMessenger.of(context).showSnackBar(snackBar);
                            Navigator.pushNamed(context, '/home');
                          }
                        },
                        child: Text('Register', style: buttonTextStyle), // Text
                      ), // ElevatedButton
                    ), // SizedBox
                  ],
                ), // Column
              ), // Padding
              SizedBox(height: 50.0),
              const Divider(height: 20, thickness: 2, indent: 0, endIndent: 0, color: Colors.white),
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
                  style: buttonStyle,
                  onPressed: () {
                    Navigator.pushNamed(context, '/home');
                  },
                  child: Text('Go to Login', style: buttonTextStyle), // Text
                ), // ElevatedButton
              ), // SizedBox
            ], // Children
          ), // Column
        ), // SingleChildScrollView
      ), // Scaffold
    ); // SafeArea
  }

  String? validatePwRepeat(String? value) {
    if (_passwordController.text == _passwordConfirmController.text) {
      return null;
    } else {
      return "Passwords don't match";
    }
  }
}
