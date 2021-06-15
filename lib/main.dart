import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:trips_app_flutter/header_app_bar.dart';
import 'package:trips_app_flutter/review_list.dart';
import 'description_place.dart';
import 'gradient_back.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.

  final String descriptionDummy = 'Lorem ipsum dolor sit amet consectetur adipiscing '
      'elit congue consequat orci fusce pretium sem, duis ultricies neque vel '
      'pellentesque magnis tincidunt viverra volutpat urna luctus justo. Iaculis '
      'per ligula suspendisse lacus commodo gravida ultrices vestibulum odio nunc velit, '
      'condimentum vel volutpat nam ante quis eros hendrerit enim dis.'
      ''
      'Lorem ipsum dolor sit amet consectetur adipiscing '
      'elit congue consequat orci fusce pretium sem, duis ultricies neque vel '
      'pellentesque magnis tincidunt viverra volutpat urna luctus justo. Iaculis '
      'per ligula suspendisse lacus commodo gravida ultrices vestibulum odio nunc velit, '
      'condimentum vel volutpat nam ante quis eros hendrerit enim dis.';

  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIOverlays([]); // remove the android status bar color
    return MaterialApp(
      title: 'Flutter Demo', // title of the task manager
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
          body: Stack(
            children: [
              ListView( // separate the description and review list from the gradient part of the application
                children: [
                  DescriptionPlace('Bahamas', 4, descriptionDummy),
                  ReviewList()
                ],
              ),
              HeaderAppBar()
            ],
          ),
      )
    );
  }
}

