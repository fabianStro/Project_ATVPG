import 'package:flutter/material.dart';
import 'package:hive_ce/hive.dart';
import 'package:toggle_switch/toggle_switch.dart';

import '../models/notificationData.dart';

class NotificationWidget extends StatefulWidget {
  const NotificationWidget({super.key});

  @override
  State<NotificationWidget> createState() => _NotificationWidgetState();
}

class _NotificationWidgetState extends State<NotificationWidget> {
  String minLabel = '', reminderSoundLabel = '', notificationMethodLabel = '';
  bool activeNotification = false;

  @override
  void initState() {
    super.initState();
    loadNotificationLabels();
  }

  void loadNotificationLabels() {
    final minLabelBox = Hive.box<NotificationData>('notificationBox');
    final reminderSoundBox = Hive.box<NotificationData>('notificationBox');
    final notificationMethodBox = Hive.box<NotificationData>('notificationBox');

    if (minLabelBox.isNotEmpty) {
      final minLabelData = minLabelBox.getAt(0)!;
      final reminderSoundData = reminderSoundBox.getAt(0)!;
      final notificationMethodData = notificationMethodBox.getAt(0)!;

      setState(() {
        minLabel = minLabelData.minBefore;
        reminderSoundLabel = reminderSoundData.notificationSound;
        notificationMethodLabel = notificationMethodData.notificationMethod;
      });
    }
  }

  // ############################################################################
  // Controllers for TextFormFields and DropdownMenus
  // ############################################################################

  final TextEditingController _minBeforeController = TextEditingController();
  final TextEditingController _reminderSoundController = TextEditingController();
  final TextEditingController _notificationMethodController = TextEditingController();

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
      DropdownMenuEntry(value: 'none', label: 'None'),
      DropdownMenuEntry(value: 'push', label: 'Push Notification'),
      DropdownMenuEntry(value: 'mail', label: 'Mail Notification'),
      DropdownMenuEntry(value: 'sms', label: 'SMS Notification'),
    ];
  }

  // ############################################################################
  // Functions to save/update data in Hive
  // ############################################################################

  /* void saveNotificationSettings() {
    final box = Hive.box<NotificationData>('notificationBox');

    final notificationSetting = NotificationData(
      minBefore: _minBeforeController.text,
      notificationSound: _reminderSoundController.text,
      notificationMethod: _notificationMethodController.text,
    );

    box.add(notificationSetting);
  } */

  void updateNotificationSettings() {
    final box = Hive.box<NotificationData>('notificationBox');

    final notificationSetting = box.getAt(0);
    if (notificationSetting == null) return;

    notificationSetting.minBefore = _minBeforeController.text;
    notificationSetting.notificationSound = _reminderSoundController.text;
    notificationSetting.notificationMethod = _notificationMethodController.text;

    box.putAt(0, notificationSetting);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Colors.black,
          foregroundColor: Colors.white,
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
            padding: const EdgeInsets.only(top: 15.0, left: 16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Enable/ Disable Notification', style: TextStyle(fontSize: 20.0, fontFamily: 'Arial')),
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
                  fontSize: 18.0,
                  onToggle: (index) {
                    setState(() {
                      activeNotification = (index == 1);
                    });
                  },
                ), // ToggleSwitch
                SizedBox(height: 30.0),
                if (!activeNotification) Text('Reminder Time', style: TextStyle(fontSize: 20.0, fontFamily: 'Arial')),
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
                        labelText: minLabel.isNotEmpty ? minLabel : 'Minutes Before',
                        labelStyle: TextStyle(fontSize: 18.0, color: Colors.white, fontFamily: 'Arial'),
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
                    label: reminderSoundLabel.isNotEmpty
                        ? Text(
                            reminderSoundLabel,
                            style: TextStyle(fontSize: 18.0, color: Colors.white, fontFamily: 'Arial'),
                          ) // Text
                        : Text(
                            'Select Sound',
                            style: TextStyle(fontSize: 18.0, color: Colors.white, fontFamily: 'Arial'),
                          ), // Text
                    width: 210.0,
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
                  Text('Notification Method', style: TextStyle(fontSize: 20.0, fontFamily: 'Arial')),
                SizedBox(height: 10.0),
                if (!activeNotification)
                  DropdownMenu<String>(
                    controller: _notificationMethodController,
                    label: notificationMethodLabel.isNotEmpty
                        ? Text(
                            notificationMethodLabel,
                            style: TextStyle(fontSize: 18.0, color: Colors.white, fontFamily: 'Arial'),
                          ) // Text
                        : Text(
                            'Select Method',
                            style: TextStyle(fontSize: 18.0, color: Colors.white, fontFamily: 'Arial'),
                          ), // Text
                    width: 210.0,
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
                              updateNotificationSettings();
                              // saveNotificationSettings();
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                  content: Container(
                                    width: double.infinity,
                                    alignment: Alignment.center,
                                    child: const Text(
                                      'Settings successfully updated !',
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
                            },
                            style: ElevatedButton.styleFrom(alignment: Alignment.center, backgroundColor: Colors.grey),
                            child: Text(
                              'Save Settings',
                              style: TextStyle(color: Colors.white, fontFamily: 'Arial'),
                            ), // Text
                          ), // ElevatedButton
                        ), // Center
                      ), // SizedBox
                      SizedBox(height: 20.0),
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
