import 'package:flutter/material.dart';
import 'package:flutter_application_one/login.dart';
import 'package:flutter_application_one/notification.dart';
import 'package:flutter_application_one/registry.dart';
import 'package:flutter_application_one/share.dart';
import 'package:flutter_application_one/startScreen.dart';
import 'package:flutter_application_one/broadcastDetail.dart';
import 'package:flutter_application_one/profile.dart';

// import 'package:sqflite/sqflite.dart';
/*
var db = await openDatabase('my_db.db');

// Get a location using getDatabasesPath
var databasesPath = await getDatabasesPath();
String path = join(databasesPath, 'demo.db');

// Delete the database
await deleteDatabase(path);

// open the database
Database database = await openDatabase(path, version: 1,
    onCreate: (Database db, int version) async {
  // When creating the db, create the table
  await db.execute(
      'CREATE TABLE Test (id INTEGER PRIMARY KEY, name TEXT, value INTEGER, num REAL)');
});

// Insert some records in a transaction
await database.transaction((txn) async {
  int id1 = await txn.rawInsert(
      'INSERT INTO Test(name, value, num) VALUES("some name", 1234, 456.789)');
  print('inserted1: $id1');
  int id2 = await txn.rawInsert(
      'INSERT INTO Test(name, value, num) VALUES(?, ?, ?)',
      ['another name', 12345678, 3.1416]);
  print('inserted2: $id2');
});

// Get the records
List<Map> list = await database.rawQuery('SELECT * FROM Test');
List<Map> expectedList = [
  {'name': 'updated name', 'id': 1, 'value': 9876, 'num': 456.789},
  {'name': 'another name', 'id': 2, 'value': 12345678, 'num': 3.1416}
]; */

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Project',
      theme: ThemeData(brightness: Brightness.dark, fontFamily: 'Arial'),
      /* theme: ThemeData(fontFamily: 'Arial'), */
      initialRoute: '/home',
      routes: {
        '/home': (context) => LoginWidget(),
        '/registry': (context) => RegistryWidget(),
        '/start': (context) => StartScreenWidget(),
        '/detail': (context) => DetailWidget(),
        '/profile': (context) => ProfileWidget(),
        '/notification': (context) => NotificationWidget(),
        '/share': (context) => ShareWidget(title: '', picture: ''),
        // '/forgot': (context) => PasswordForgotWidget(),
      }, // routes
    ); // MaterialApp
  }
}
