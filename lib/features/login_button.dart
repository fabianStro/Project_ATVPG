// login_button.dart
import 'package:flutter/material.dart';
// Provider package
import 'package:provider/provider.dart';
// Service imports
import 'package:flutter_application_one/services/auth_Service.dart';
import 'package:flutter_application_one/services/movieProvider_Service.dart';

class LoginButton extends StatelessWidget {
  final ValueNotifier<bool> isValid;
  final TextEditingController emailController;
  final TextEditingController passwordController;

  const LoginButton({
    super.key,
    required this.isValid,
    required this.emailController,
    required this.passwordController,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 150.0,
      child: ValueListenableBuilder<bool>(
        valueListenable: isValid,
        builder: (context, valid, _) {
          return OutlinedButton(
            style: OutlinedButton.styleFrom(
              padding: const EdgeInsets.symmetric(vertical: 14),
              side: BorderSide(color: valid ? Colors.white : Colors.black12, width: 2.5), // BorderSide
              backgroundColor: valid ? Colors.grey : Colors.black12,
            ),
            onPressed: valid
                ? () async {
                    try {
                      final authService = context.read<AuthService>();
                      final animeProvider = context.read<AnimeMovieProvider>();

                      await authService.login(emailController.text, passwordController.text);

                      // Direkt nach Login: Hive-Datenbank initial befüllen
                      await animeProvider.ensureInitialized();

                      if (!context.mounted) return;
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Container(
                            width: double.infinity,
                            alignment: Alignment.center,
                            child: const Text(
                              'Login successful !',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Arial',
                              ), // TextStyle
                            ), // Text
                          ), // Container
                          duration: Duration(seconds: 2),
                        ), // SnackBar
                      );
                      Navigator.pushNamed(context, '/start');
                    } catch (e) {
                      if (!context.mounted) return;
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Login failed: $e')));
                    }
                  }
                : null,
            child: Text(
              valid ? 'Login' : ' ',
              style: TextStyle(
                color: Colors.black,
                fontFamily: 'Audiowide',
                fontWeight: FontWeight.bold,
                fontSize: 16.0,
              ), // TextStyle
            ), // Text
          ); // OutlinedButton
        },
      ), // ValueListenableBuilder
    ); // SizedBox
  }
}
