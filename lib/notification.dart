import 'package:flutter/material.dart';

class NotificationWidget extends StatefulWidget {
  const NotificationWidget({super.key});

  @override
  State<NotificationWidget> createState() => _NotificationWidgetState();
}

class _NotificationWidgetState extends State<NotificationWidget> {
  //String selectedValue = 'Option 1';

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
          title: Text('Notification', style: TextStyle(fontSize: 50.0, letterSpacing: 4.0, fontFamily: 'Arial')),
        ), // AppBar
        body: Padding(
          padding: const EdgeInsets.only(top: 16.0, left: 16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('When would you like to be reminded', style: TextStyle(fontSize: 20.0, fontFamily: 'Arial')),
              SizedBox(height: 10.0),
              SizedBox(
                height: 50.0,
                width: 200.0,
                child: TextField(
                  obscureText: false,
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(10.0),
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(25.0)),
                    labelText: 'Min before',
                    filled: true,
                    fillColor: Colors.black,
                  ), // InputDecoration
                ), // TextField
              ), // SizedBox
              SizedBox(height: 30.0),
              Text('Choose Reminder Sound', style: TextStyle(fontSize: 20.0, fontFamily: 'Arial')),
              SizedBox(height: 10.0),
              DropdownMenu<String>(
                label: Text(
                  'Select Sound',
                  style: TextStyle(color: Colors.white, fontFamily: 'Arial'),
                ),
                width: 200,
                menuStyle: MenuStyle(
                  backgroundColor: WidgetStatePropertyAll(Colors.black),
                  shape: WidgetStatePropertyAll(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25), // Dropdown rund
                    ),
                  ),
                ),
                inputDecorationTheme: InputDecorationTheme(
                  filled: true,
                  fillColor: Colors.black,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25), // Feld rund
                    borderSide: BorderSide(color: Colors.grey),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25),
                    borderSide: BorderSide(color: Colors.grey),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25),
                    borderSide: BorderSide(color: Colors.blue, width: 2),
                  ),
                ),
                dropdownMenuEntries: const [
                  DropdownMenuEntry(value: "none", label: "System Default"),
                  DropdownMenuEntry(value: "blob", label: "Blob"),
                  DropdownMenuEntry(value: "swoosh", label: "Swoosh"),
                  DropdownMenuEntry(value: "crystal", label: "Crystal"),
                  DropdownMenuEntry(value: "bFrog", label: "Bull Frog"),
                  DropdownMenuEntry(value: "digital", label: "Digital"),
                ],
              ),
              SizedBox(height: 120.0),
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
                            'Back to Start',
                            style: TextStyle(color: Colors.white, fontFamily: 'Arial'),
                          ), // Text
                        ), // ElevatedButton
                      ), // Center
                    ), // SizedBox
                  ],
                ), // Column
              ), // Center
              /*  DropdownMenu<String>(
                //menuHeight: 16.0,
                initialSelection: selectedValue,
                onSelected: (value) {
                  setState(() {
                    selectedValue = value!;
                  });
                },
                dropdownMenuEntries: const [
                  DropdownMenuEntry(value: "Option 1", label: "Blob"),
                  DropdownMenuEntry(value: "Option 2", label: "Crystal"),
                  DropdownMenuEntry(value: "Option 3", label: "Guitar"),
                  DropdownMenuEntry(value: "Option 4", label: "Bull Frog"),
                  DropdownMenuEntry(value: "Option 5", label: "Digital"),
                ],
              ), */
            ],
          ), // Column
        ), // Padding
      ), // Scaffold
    ); // SafeArea
  }
}
