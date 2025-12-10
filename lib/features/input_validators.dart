// validators.dart

String? validateEmail(String? value) {
  if (value == null || value.isEmpty) {
    return 'Enter your e-mail';
  }

  const emailPattern = r'^[^@\s]+@[^@\s]+\.[^@\s]+$';
  final regex = RegExp(emailPattern);

  if (!regex.hasMatch(value)) {
    return 'Enter a valid e-mail';
  }

  return null;
}

String? validatePw(String? value) {
  if (value == null || value.isEmpty) {
    return 'Enter the password';
  }
  if (value.length < 8) {
    return 'Minimum 8 characters';
  }
  return null;
}
