// login_button.dart
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_application_one/auth_Service.dart';

class LoginButton extends StatelessWidget {
  final ValueNotifier<bool> isValid;
  final TextEditingController emailController;
  final TextEditingController passwordController;
  final TextStyle buttonTextStyle;

  const LoginButton({
    super.key,
    required this.isValid,
    required this.emailController,
    required this.passwordController,
    required this.buttonTextStyle,
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
              side: BorderSide(color: valid ? Colors.grey : const Color.fromARGB(255, 21, 16, 24), width: 2.5),
              backgroundColor: valid ? Colors.grey : const Color.fromARGB(255, 21, 16, 24),
            ),
            onPressed: valid
                ? () async {
                    context.read<AuthService>().login(emailController.text, passwordController.text);

                    if (context.mounted) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text(
                            'Login successful!',
                            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
                          ),
                          duration: Duration(seconds: 2),
                        ),
                      );

                      Navigator.pushNamed(context, '/start');
                    }
                  }
                : null,
            child: Text(valid ? 'Login' : '', style: buttonTextStyle),
          );
        },
      ),
    );
  }
}
