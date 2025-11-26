// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class LoginArchitectureWidget extends StatelessWidget {
  const LoginArchitectureWidget({
    super.key,
    required this.buttonStyle,
    required TextEditingController emailController,
    required TextEditingController passwordController,
    required this.buttonTextStyle,
  }) : _emailController = emailController,
       _passwordController = passwordController;

  final ButtonStyle buttonStyle;
  final TextEditingController _emailController;
  final TextEditingController _passwordController;
  final TextStyle buttonTextStyle;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 150.0,
      child: ElevatedButton(
        style: buttonStyle,
        onPressed: () async {
          await Supabase.instance.client.auth.signInWithPassword(
            email: _emailController.text,
            password: _passwordController.text,
          );
          if (context.mounted) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(
                  'Login successful!',
                  style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
                ), // Text
                duration: Duration(seconds: 2),
              ), // SnachBar
            );
            Navigator.pushNamed(context, '/start');
          }
        },
        child: Text('Login', style: buttonTextStyle),
      ), // ElevatedButtton
    ); // SizedBox
  }
}
