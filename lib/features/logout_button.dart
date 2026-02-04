// ignore_for_file: file_names, camel_case_types

import 'package:flutter/material.dart';
// Supabase package
import 'package:supabase_flutter/supabase_flutter.dart';

class Logout_Button extends StatelessWidget {
  const Logout_Button({super.key, required this.exitIcon});

  final Icon exitIcon;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: exitIcon,
      onPressed: () async {
        await Supabase.instance.client.auth.signOut();
        if (context.mounted) {
          /*  
          ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Container(
                  width: double.infinity,
                  alignment: Alignment.center,
                  child: const Text(
                    'Logout successful !',
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontFamily: 'Arial'),
                  ), // Text
                ), // Container
                duration: Duration(seconds: 2),
              ), // SnackBar
            ); 
          */
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: const Text(
                'Logout successful!',
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontFamily: 'Arial'),
              ), // Text
              duration: Duration(seconds: 2),
              backgroundColor: Colors.white,
            ), // SnackBar
          );
          Navigator.pushNamed(context, '/home');
        }
      },
    ); // IconButton
  }
}
