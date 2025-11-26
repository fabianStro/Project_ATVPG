import 'package:flutter/material.dart';
import 'package:toggle_switch/toggle_switch.dart';

class NotificationWidget extends StatefulWidget {
  const NotificationWidget({super.key});

  @override
  State<NotificationWidget> createState() => _NotificationWidgetState();
}

class _NotificationWidgetState extends State<NotificationWidget> {
  // ############################################################################
  // Controller für Textfelder
  // ############################################################################
  final TextEditingController _minBeforeController = TextEditingController();
  final TextEditingController _reminderSoundController = TextEditingController();
  final TextEditingController _notificationMethodController = TextEditingController();

  // ############################################################################
  // Stile und Konstanten
  // ############################################################################
  bool activeNotification = false;

  // ############################################################################
  // Feste Werte (Functions to get dropdown entries)
  // ############################################################################
  List<DropdownMenuEntry<String>> get dropDowmEntriesSound {
    return const [
      DropdownMenuEntry(value: 'none', label: 'System Default'),
      DropdownMenuEntry(value: 'blob', label: 'Blob'),
      DropdownMenuEntry(value: 'swoosh', label: 'Swoosh'),
      DropdownMenuEntry(value: 'crystal', label: 'Crystal'),
      DropdownMenuEntry(value: 'bFrog', label: 'Bull Frog'),
      DropdownMenuEntry(value: 'digital', label: 'Digital'),
    ];
  }

  List<DropdownMenuEntry<String>> get _dropDownEntriesNotificationStyle {
    return const [
      DropdownMenuEntry(value: 'push', label: 'Push Notification'),
      DropdownMenuEntry(value: 'mail', label: 'Mail Notification'),
      DropdownMenuEntry(value: 'sms', label: 'SMS Notification'),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          toolbarHeight: 100.0,
          shape: Border(
            bottom: BorderSide(color: Colors.white, width: 2.0),
            top: BorderSide(color: Colors.white, width: 2.0),
          ), // Border
          centerTitle: true,
          title: Text('Notification', style: TextStyle(fontSize: 50.0, letterSpacing: 2.2, fontFamily: 'Audiowide')),
        ), // AppBar
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(top: 25.0, left: 16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Enable Notification', style: TextStyle(fontSize: 20.0, fontFamily: 'Arial')),
                SizedBox(height: 10.0),
                ToggleSwitch(
                  initialLabelIndex: activeNotification ? 1 : 0,
                  centerText: true,
                  customWidths: [100.0, 100.0],
                  cornerRadius: 20.0,
                  borderColor: [Colors.white],
                  borderWidth: 1.0,
                  dividerColor: Colors.white,
                  activeBgColors: [
                    [Colors.green],
                    [Colors.red],
                  ],
                  inactiveBgColor: Colors.black,
                  inactiveFgColor: Colors.white,
                  totalSwitches: 2,
                  labels: ['Enabled', 'Disabled'],
                  onToggle: (index) {
                    setState(() {
                      // index == 0 -> 'Enabled', index == 1 -> 'Disabled'
                      activeNotification = (index == 1);
                    });
                  },
                ), // ToggleSwitch
                SizedBox(height: 30.0),
                if (!activeNotification)
                  Text('When would you like to be reminded', style: TextStyle(fontSize: 20.0, fontFamily: 'Arial')),
                SizedBox(height: 10.0),
                if (!activeNotification)
                  SizedBox(
                    height: 50.0,
                    width: 200.0,
                    child: TextFormField(
                      controller: _minBeforeController,
                      obscureText: false,
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.all(10.0),
                        border: OutlineInputBorder(borderRadius: BorderRadius.circular(25.0)),
                        labelText: 'Min before',
                        filled: true,
                        fillColor: Colors.black,
                      ), // InputDecoration
                    ), // TextFormField
                  ), // SizedBox
                SizedBox(height: 30.0),
                if (!activeNotification) Text('Reminder Sound', style: TextStyle(fontSize: 20.0, fontFamily: 'Arial')),
                SizedBox(height: 10.0),
                if (!activeNotification)
                  DropdownMenu<String>(
                    controller: _reminderSoundController,
                    label: Text(
                      'Select Sound',
                      style: TextStyle(color: Colors.white, fontFamily: 'Arial'),
                    ), // Text
                    width: 200,
                    menuStyle: MenuStyle(
                      backgroundColor: WidgetStatePropertyAll(Colors.black),
                      shape: WidgetStatePropertyAll(
                        RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)), // RoundedRectangleBorder
                      ), // WidgetStatePropertyAll
                    ), // MenuStyle
                    inputDecorationTheme: InputDecorationTheme(
                      filled: true,
                      fillColor: Colors.black,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25),
                        borderSide: BorderSide(color: Colors.grey),
                      ), // OutlineInputBorder
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25),
                        borderSide: BorderSide(color: Colors.grey),
                      ), // OutlineInputBorder
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25),
                        borderSide: BorderSide(color: Colors.blue, width: 2),
                      ), // OutlineInputBorder
                    ), // InputDecorationTheme
                    dropdownMenuEntries: dropDowmEntriesSound,
                  ), // DropdownMenu
                SizedBox(height: 30.0),
                if (!activeNotification)
                  Text('Notification method', style: TextStyle(fontSize: 20.0, fontFamily: 'Arial')),
                SizedBox(height: 10.0),
                if (!activeNotification)
                  DropdownMenu<String>(
                    controller: _notificationMethodController,
                    label: Text(
                      'Select method',
                      style: TextStyle(color: Colors.white, fontFamily: 'Arial'),
                    ), // Text
                    width: 200,
                    menuStyle: MenuStyle(
                      backgroundColor: WidgetStatePropertyAll(Colors.black),
                      shape: WidgetStatePropertyAll(
                        RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)), // RoundedRectangleBorder
                      ), // WidgetStatePropertyAll
                    ), // MenuStyle
                    inputDecorationTheme: InputDecorationTheme(
                      filled: true,
                      fillColor: Colors.black,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25),
                        borderSide: BorderSide(color: Colors.grey),
                      ), // OutlineInputBorder
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25),
                        borderSide: BorderSide(color: Colors.grey),
                      ), // OutlineInputBorder
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25),
                        borderSide: BorderSide(color: Colors.blue, width: 2),
                      ),
                      // OutlineInputBorder
                    ), // InputDecorationTheme
                    dropdownMenuEntries: _dropDownEntriesNotificationStyle,
                  ), // DropdownMenu
                if (!activeNotification) SizedBox(height: 40.0),
                if (activeNotification) SizedBox(height: 290.0),
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
                              'Back to Main Screen',
                              style: TextStyle(color: Colors.white, fontFamily: 'Arial'),
                            ), // Text
                          ), // ElevatedButton
                        ), // Center
                      ), // SizedBox
                    ],
                  ), // Column
                ), // Center
                SizedBox(height: 20.0),
              ],
            ), // Column
          ), // Padding
        ), // SingleChildScrollView
      ), // Scaffold
    ); // SafeArea
  }
}
