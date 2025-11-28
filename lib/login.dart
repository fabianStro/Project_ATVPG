// import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:flutter/material.dart';
import 'loginArchitecture.dart';

class LoginWidget extends StatefulWidget {
  const LoginWidget({super.key});

  @override
  State<LoginWidget> createState() => _LoginWidgetState();
}

class _LoginWidgetState extends State<LoginWidget> {
  // ############################################################################
  // Controller für Textfelder
  // ############################################################################
  final TextEditingController _emailController = TextEditingController(), _passwordController = TextEditingController();

  // ############################################################################
  // Stile und Konstanten
  // ############################################################################
  final ButtonStyle buttonStyle = ElevatedButton.styleFrom(backgroundColor: Colors.grey);
  final TextStyle buttonTextStyle = TextStyle(color: Colors.white, fontFamily: 'Arial'),
      registryAndForgotTextStyle = TextStyle(
        color: Colors.grey[400],
        fontFamily: 'Arial',
        fontSize: 17.0,
        decoration: TextDecoration.underline,
      );
  final Text heading = Text('ATVPG', style: TextStyle(fontSize: 50.0, letterSpacing: 2.2, fontFamily: 'Audiowide'));
  final Text heading2 = Text('LOGIN', style: TextStyle(fontSize: 35.0, letterSpacing: 2.0, fontFamily: 'Arial'));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        //resizeToAvoidBottomInset: false,
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          //backgroundColor: Colors.black,
          automaticallyImplyLeading: false,
          toolbarHeight: 100.0,
          shape: Border(
            bottom: BorderSide(color: Colors.white, width: 2.0),
            top: BorderSide(color: Colors.white, width: 2.0),
          ), // Border
          centerTitle: true,
          title: heading,
        ), // AppBar
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(left: 60.0, right: 60.0),
            child: Column(
              children: [
                Padding(padding: const EdgeInsets.only(top: 200.0), child: heading2), // Padding
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
                LoginArchitectureWidget(
                  buttonStyle: buttonStyle,
                  emailController: _emailController,
                  passwordController: _passwordController,
                  buttonTextStyle: buttonTextStyle,
                ), // LoginArchitectureWidget
                SizedBox(height: 15.0),
                Align(
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, '/forgot');
                    },
                    child: Text('Forgot your password?', style: registryAndForgotTextStyle),
                  ), // GestureDetector
                ), // Align
                SizedBox(height: 8.0),
                Text(
                  'or',
                  style: TextStyle(color: Colors.grey[400], fontFamily: 'Arial', fontSize: 17.0),
                ), // Text
                SizedBox(height: 8.0),
                Align(
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, '/registry');
                    },
                    child: Text('Registration', style: registryAndForgotTextStyle),
                  ), // GestureDetector
                ), // Align
              ], // Children
            ), // Column
          ), // Padding
        ), // SingleChildScrollView
      ), // Scaffold
    ); // SafeArea
  }

  String? validatePw(String? value) {
    if (value == null || value == '') {
      return 'Enter the password';
    } else if (value.length >= 8) {
      return null;
    } else {
      return 'minimum 8 characters';
    }
  }
}

String? validateEmail(String? value) {
  final emailPattern = r'^[^@\s]+@[^@\s]+\.[^@\s]+$';
  final regex = RegExp(emailPattern);

  if (!regex.hasMatch(value!)) {
    return 'Enter a valid e-mail';
  }
  return null;
}
