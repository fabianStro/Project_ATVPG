import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import '../features/input_validators.dart';

class RegistryWidget extends StatefulWidget {
  const RegistryWidget({super.key});

  @override
  State<RegistryWidget> createState() => _RegistryWidgetState();
}

class _RegistryWidgetState extends State<RegistryWidget> {
  final _emailController = TextEditingController();
  final _firstNameController = TextEditingController();
  final _lastNameController = TextEditingController();
  final _passwordController = TextEditingController();
  final _passwordConfirmController = TextEditingController();

  static const _appBarBorder = BorderSide(color: Colors.white, width: 2.0);

  static final _buttonStyle = ElevatedButton.styleFrom(backgroundColor: Colors.grey);

  static const _buttonTextStyle = TextStyle(color: Colors.white, fontFamily: 'Arial');

  @override
  void dispose() {
    _emailController.dispose();
    _firstNameController.dispose();
    _lastNameController.dispose();
    _passwordController.dispose();
    _passwordConfirmController.dispose();
    super.dispose();
  }

  Future<void> _register() async {
    await Supabase.instance.client.auth.signUp(email: _emailController.text.trim(), password: _passwordController.text);

    if (!mounted) return;

    ScaffoldMessenger.of(
      context,
    ).showSnackBar(const SnackBar(content: Text('Registration successful!'), duration: Duration(seconds: 2)));

    Navigator.pushNamed(context, '/home');
  }

  InputDecoration _inputDecoration(String label) {
    return InputDecoration(
      contentPadding: const EdgeInsets.only(top: 16.0),
      border: OutlineInputBorder(borderRadius: BorderRadius.circular(25.0)),
      labelText: label,
    ); // Common input decoration for all text fields
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          toolbarHeight: 100,
          centerTitle: true,
          shape: const Border(bottom: _appBarBorder, top: _appBarBorder),
          title: const Text('Registry', style: TextStyle(fontSize: 50, letterSpacing: 4, fontFamily: 'Audiowide')),
        ), // AppBar
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 40, left: 60, right: 60),
                child: Column(
                  children: [
                    TextFormField(
                      controller: _emailController,
                      autocorrect: false,
                      validator: validateEmail,
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      decoration: _inputDecoration('E-mail'),
                    ), // TextFormField
                    const SizedBox(height: 20),
                    TextFormField(
                      controller: _firstNameController,
                      autocorrect: false,
                      decoration: _inputDecoration('First name'),
                    ), // TextFormField
                    const SizedBox(height: 20),
                    TextFormField(
                      controller: _lastNameController,
                      autocorrect: false,
                      decoration: _inputDecoration('Last name'),
                    ), // TextFormField
                    const SizedBox(height: 20),
                    TextFormField(
                      controller: _passwordController,
                      autocorrect: false,
                      obscureText: true,
                      validator: validatePw,
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      decoration: _inputDecoration('Password'),
                    ), // TextFormField
                    const SizedBox(height: 20),
                    TextFormField(
                      controller: _passwordConfirmController,
                      autocorrect: false,
                      obscureText: true,
                      validator: _validatePwdRepeat,
                      decoration: _inputDecoration('Confirm password'),
                    ), // TextFormField
                    const SizedBox(height: 40),
                    SizedBox(
                      width: 150,
                      child: ElevatedButton(
                        style: _buttonStyle,
                        onPressed: _register,
                        child: const Text('Register', style: _buttonTextStyle),
                      ), // ElevatedButton
                    ), // SizedBox
                  ], // children
                ), // Column
              ), // Padding
              const SizedBox(height: 50),
              const Divider(height: 20, thickness: 2, color: Colors.white),
              Text(
                'You already have an account?',
                style: TextStyle(color: Colors.grey[400], fontFamily: 'Arial'),
              ), // Text
              Text(
                'Login here',
                style: TextStyle(color: Colors.grey[400], fontFamily: 'Arial'),
              ), // Text
              const SizedBox(height: 20),
              SizedBox(
                width: 150,
                child: ElevatedButton(
                  style: _buttonStyle,
                  onPressed: () => Navigator.pushNamed(context, '/home'),
                  child: const Text('Go to Login', style: _buttonTextStyle),
                ), // ElevatedButton
              ), // SizedBox
            ], // children
          ), // Column
        ), // SingleChildScrollView
      ), // Scaffold
    ); // SafeArea
  }

  String? _validatePwdRepeat(String? _) {
    return _passwordController.text == _passwordConfirmController.text ? null : "Passwords don't match";
  }
}
