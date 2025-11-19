import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class LoginArchitectureWidget extends StatelessWidget {
  const LoginArchitectureWidget({
    super.key,
    required ButtonStyle buttonStyle,
    required TextEditingController usernameController,
    required TextEditingController passwordController,
    required TextStyle buttonTextStyle,
  }) : _buttonStyle = buttonStyle,
       _usernameController = usernameController,
       _passwordController = passwordController,
       _buttonTextStyle = buttonTextStyle;

  final ButtonStyle _buttonStyle;
  final TextEditingController _usernameController;
  final TextEditingController _passwordController;
  final TextStyle _buttonTextStyle;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 150.0,
      child: ElevatedButton(
        style: _buttonStyle,
        onPressed: () async {
          await Supabase.instance.client.auth.signInWithPassword(
            email: _usernameController.text,
            password: _passwordController.text,
          );
          if (context.mounted) {
            SnackBar snackBar = SnackBar(
              content: Text('Login successful!'),
              duration: Duration(seconds: 2),
            ); // SnackBar
            ScaffoldMessenger.of(context).showSnackBar(snackBar);
            Navigator.pushNamed(context, '/start');
          }
        },
        child: Text('Login', style: _buttonTextStyle),
      ), // ElevatedButtton
    ); // SizedBox
  }
}
