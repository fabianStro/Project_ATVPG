// ignore_for_file: file_names, camel_case_types

import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class exitButton extends StatelessWidget {
  const exitButton({super.key, required this.exitIcon});

  final Icon exitIcon;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: exitIcon,
      onPressed: () async {
        await Supabase.instance.client.auth.signOut();
        if (context.mounted) {
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
          Navigator.pushNamed(context, '/home');
        }
      },
    ); // IconButton
  }
}
