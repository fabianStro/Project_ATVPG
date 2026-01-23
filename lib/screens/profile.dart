import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class ProfileWidget extends StatefulWidget {
  const ProfileWidget({super.key});

  @override
  State<ProfileWidget> createState() => _ProfileWidgetState();
}

class _ProfileWidgetState extends State<ProfileWidget> {
  Future<String> loadUserEmail() async => Supabase.instance.client.auth.currentUser?.email ?? 'No user logged in';

  @override
  Widget build(BuildContext context) {
    // Farben basierend auf dem aktuellen Theme
    final isLight = Theme.of(context).brightness == Brightness.light;
    final backgroundColor = isLight ? Colors.white : Colors.black;
    final textColor = isLight ? Colors.black : Colors.white;
    final dividerColor = isLight ? Colors.black : Colors.white;
    final appBarBgColor = isLight ? Colors.white : Colors.black;
    final appBarFgColor = isLight ? Colors.black : Colors.white;

    return SafeArea(
      child: Scaffold(
        backgroundColor: backgroundColor,
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: appBarBgColor,
          foregroundColor: appBarFgColor,
          toolbarHeight: 100.0,
          shape: Border(
            bottom: BorderSide(color: dividerColor, width: 2.0),
            top: BorderSide(color: dividerColor, width: 2.0),
          ),
          centerTitle: true,
          title: Text(
            'Profile',
            style: TextStyle(fontSize: 50.0, letterSpacing: 2.2, fontFamily: 'Audiowide', color: appBarFgColor),
          ),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(top: 30.0),
              child: Center(
                child: ClipOval(
                  child: Image.asset('assets/images/profile2.png', width: 180, height: 180, fit: BoxFit.cover),
                ),
              ),
            ),
            SizedBox(height: 15.0),
            Divider(height: 30, thickness: 2, color: dividerColor),
            SizedBox(height: 15.0),
            FutureBuilder(
              future: loadUserEmail(),
              builder: (context, snapshot) {
                if (!snapshot.hasData) {
                  return Center(child: CircularProgressIndicator(color: textColor));
                }
                final userEmail = snapshot.data!;
                return Padding(
                  padding: EdgeInsets.only(left: 16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('E-Mail: $userEmail', style: TextStyle(fontSize: 20.0, color: textColor)),
                      SizedBox(height: 15),
                      Text('First name: XXX', style: TextStyle(fontSize: 20.0, color: textColor)),
                      SizedBox(height: 15),
                      Text('Last name: XXX', style: TextStyle(fontSize: 20.0, color: textColor)),
                      SizedBox(height: 15),
                      Text('Password:', style: TextStyle(fontSize: 20.0, color: textColor)),
                    ],
                  ),
                );
              },
            ),
            SizedBox(height: 85.0),
            Center(
              child: SizedBox(
                width: 200.0,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/start');
                  },
                  style: ElevatedButton.styleFrom(alignment: Alignment.center, backgroundColor: Colors.grey),
                  child: Text(
                    'Back to Main Screen',
                    style: TextStyle(color: Colors.white, fontFamily: 'Arial'),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
