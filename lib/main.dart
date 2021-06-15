import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:trips_app_flutter/trips.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIOverlays([]); // remove the android status bar color
    return MaterialApp(
      title: 'Flutter Demo', // title of the task manager
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Trips()
    );
  }
}

