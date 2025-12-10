// ignore_for_file: file_names

import 'package:supabase_flutter/supabase_flutter.dart';

class AuthService {
  //final SupabaseAuth _supaAuth = Supabase.instance;
  // Functionen für Supabase Auth
  Future<void> login(String _email, String _password) async {
    await Supabase.instance.client.auth.signInWithPassword(email: _email, password: _password);
  }
}
