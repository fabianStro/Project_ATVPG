// login_button.dart
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_application_one/services/auth_Service.dart';

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
              side: BorderSide(color: valid ? Colors.white : Colors.black12, width: 2.5),
              backgroundColor: valid ? Colors.grey : Colors.black12,
            ),
            onPressed: valid
                ? () async {
                    context.read<AuthService>().login(emailController.text, passwordController.text);

                    if (context.mounted) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Container(
                            width: double.infinity,
                            alignment: Alignment.center,
                            child: const Text(
                              'Login successful !',
                              textAlign: TextAlign.center,
                              style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontFamily: 'Arial'),
                            ), // Text
                          ), // Container
                          duration: Duration(seconds: 2),
                        ), // SnackBar
                      );
                      Navigator.pushNamed(context, '/start');
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
              ),
            ),
          ); // OutlinedButton
        },
      ), // ValueListenableBuilder
    ); // SizedBox
  }
}
