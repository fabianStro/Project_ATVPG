// ignore_for_file: use_build_context_synchronously

/* // ignore_for_file: file_names

import 'package:flutter/material.dart';

class PasswordForgotWidget extends StatefulWidget {
  const PasswordForgotWidget({super.key});

  @override
  State<PasswordForgotWidget> createState() => _PasswordForgotWidgetState();
}

class _PasswordForgotWidgetState extends State<PasswordForgotWidget> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          automaticallyImplyLeading: false,
          toolbarHeight: 100.0,
          shape: Border(
            bottom: BorderSide(color: Colors.white, width: 2.0),
            top: BorderSide(color: Colors.white, width: 2.0),
          ), // Border
          centerTitle: true,
          title: Text('Pwd Forgot', style: TextStyle(fontSize: 40.0, letterSpacing: 4.0, fontFamily: 'Audiowide')),
        ), // AppBar
        body: Column(
          children: [
            SizedBox(height: 30.0),
            Text('Please enter your email address', style: TextStyle(fontSize: 20.0, fontFamily: 'Arial')),
            SizedBox(height: 30.0),
            SizedBox(
              width: 300.0,
              child: TextFormField(
                obscureText: false,
                autocorrect: false,
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.all(10.0),
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(25.0)),
                  labelText: 'E-mail',
                  filled: true,
                  fillColor: Colors.black,
                ), // InputDecoration
              ), // TextFormField
            ), // TextFormField
            SizedBox(height: 320.0),
            Center(
              child: Column(
                children: [
                  SizedBox(
                    width: 200.0,
                    child: Center(
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.pushNamed(context, '/start');
                        },
                        style: ElevatedButton.styleFrom(alignment: Alignment.center, backgroundColor: Colors.grey),
                        child: Text(
                          'Confirm',
                          style: TextStyle(color: Colors.white, fontFamily: 'Arial'),
                        ), // Text
                      ), // ElevatedButton
                    ), // Center
                  ), // SizedBox
                ], // children
              ), // Column
            ), // Center
            SizedBox(height: 20.0),
            Center(
              child: Column(
                children: [
                  SizedBox(
                    width: 200.0,
                    child: Center(
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.pushNamed(context, '/home');
                        },
                        style: ElevatedButton.styleFrom(alignment: Alignment.center, backgroundColor: Colors.grey),
                        child: Text(
                          'Cancel',
                          style: TextStyle(color: Colors.white, fontFamily: 'Arial'),
                        ), // Text
                      ), // ElevatedButton
                    ), // Center
                  ), // SizedBox
                ], // children
              ), // Column
            ), // Center
          ], // children
        ), // Column
      ), // Scaffold
    ); // SafeArea
  }
}
 */
import 'package:flutter/material.dart';
// import '../features/input_validators.dart';

class PasswordForgotWidget extends StatefulWidget {
  const PasswordForgotWidget({super.key});

  @override
  State<PasswordForgotWidget> createState() => _PasswordForgotWidgetState();
}

class _PasswordForgotWidgetState extends State<PasswordForgotWidget> {
  final _emailController = TextEditingController();
  bool _isValidEmail = false;

  @override
  void dispose() {
    _emailController.dispose();
    super.dispose();
  }

  bool _validateEmail(String email) {
    return RegExp(r'^[^@\s]+@[^@\s]+\.[^@\s]+$').hasMatch(email);
  }

  void _onConfirmShowSnackBar() {
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text('Password reset link sent successfully!', textAlign: TextAlign.center),
        duration: Duration(seconds: 2),
        backgroundColor: Colors.green,
      ), // SnackBar
    );

    Future.delayed(const Duration(seconds: 2), () {
      Navigator.pushNamed(context, '/start');
    }); // Future.delayed
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          toolbarHeight: 100,
          centerTitle: true,
          automaticallyImplyLeading: false,
          shape: const Border(
            top: BorderSide(color: Colors.white, width: 2),
            bottom: BorderSide(color: Colors.white, width: 2),
          ), // Border
          title: const Text(
            'Pwd Forgot',
            style: TextStyle(fontSize: 40, letterSpacing: 4, fontFamily: 'Audiowide'),
          ), // Text
        ), // AppBar
        body: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text(
                  'Please enter your e-mail address',
                  style: TextStyle(fontSize: 20, fontFamily: 'Arial'),
                  textAlign: TextAlign.center,
                ), // Text
                const SizedBox(height: 30),
                SizedBox(
                  width: 300,
                  child: TextFormField(
                    controller: _emailController,
                    autocorrect: false,
                    keyboardType: TextInputType.emailAddress,
                    onChanged: (value) {
                      setState(() {
                        _isValidEmail = _validateEmail(value);
                      });
                    },
                    decoration: InputDecoration(
                      labelText: 'E-mail',
                      filled: true,
                      fillColor: Colors.black,
                      contentPadding: const EdgeInsets.all(10),
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(25)),
                    ), // InputDecoration
                    style: const TextStyle(color: Colors.white),
                  ), // TextFormField
                ), // SizedBox
                const SizedBox(height: 60),
                _actionButton(context, label: 'Confirm', enabled: _isValidEmail, onPressed: _onConfirmShowSnackBar),
                const SizedBox(height: 20),
                _actionButton(
                  context,
                  label: 'Cancel',
                  enabled: true,
                  onPressed: () => Navigator.pushNamed(context, '/home'),
                ),
              ], // children
            ), // Column
          ), // SingleChildScrollView
        ), // Center
      ), // Scaffold
    ); // SafeArea
  }

  Widget _actionButton(
    BuildContext context, {
    required String label,
    required bool enabled,
    required VoidCallback onPressed,
  }) {
    return SizedBox(
      width: 200,
      child: ElevatedButton(
        onPressed: enabled ? onPressed : null,
        style: ElevatedButton.styleFrom(backgroundColor: enabled ? Colors.grey : Colors.grey.shade700),
        child: Text(
          label,
          style: const TextStyle(color: Colors.white, fontFamily: 'Arial'),
        ), // Text
      ), // ElevatedButton
    ); // SizedBox
  }
}
